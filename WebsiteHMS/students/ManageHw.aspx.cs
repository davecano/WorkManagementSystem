using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class students_ManageHw : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            noticeBind();
            projectBind();
            courseprojectBind();
        }
    }

    private void courseprojectBind()
    {
        StudentsManger sm = new StudentsManger();
        DataTable dt = sm.SelectCoursesMessageByStuId(int.Parse(Session["stuID"].ToString()));
        Rpcoursecontent.DataSource = dt;
        Rpcoursecontent.DataBind();
    }

    private void projectBind()
    {
        subHomeworkManagea shm = new subHomeworkManagea();
        DataTable dt=shm.SelectmessageOfGoofProject();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (shm.selectshouldbelooked(int.Parse(Session["stuID"].ToString()),
                    int.Parse(dt.Rows[i]["toWhichWorkID"].ToString())).Rows.Count == 0)
            {
                dt.Rows[i]["SubContent"] = "~/404.aspx";
            }
        }
        
        Rpcontent2.DataSource = dt;
        Rpcontent2.DataBind();
    }

    private void noticeBind()
    {
        NoticeManager nm = new NoticeManager();
        Rpcontent.DataSource = nm.SelectAllNotices();
        Rpcontent.DataBind();
    }



    protected void Rpcoursecontent_OnItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            subHomeworkManagea shm = new subHomeworkManagea();
            Repeater rep = e.Item.FindControl("Rpinside") as Repeater; //找到里层的repeater对象
            DataRowView record = (DataRowView) e.Item.DataItem;
            //rep.ItemCommand += new RepeaterCommandEventHandler(Rep_ItemCommand);
            DataTable dt = shm.SelectLatestSubHwBycourseId(int.Parse(record["courseID"].ToString()));
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (
                    shm.selectshouldbelooked(int.Parse(Session["stuID"].ToString()),
                        int.Parse(dt.Rows[i]["toWhichWorkID"].ToString())).Rows.Count == 0)
                    dt.Rows[i]["SubContent"] = "~/404.aspx";
            }
            rep.DataSource = dt;
            rep.DataBind();
        }
    }


  
}