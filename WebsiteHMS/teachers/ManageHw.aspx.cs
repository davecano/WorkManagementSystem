using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

public partial class teachers_ManageHw : System.Web.UI.Page
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
        CoursesManager cm = new CoursesManager();
        DataTable dt = cm.SelectCoursesByteacherId(int.Parse(Session["teacherID"].ToString()));
        Rpcoursecontent.DataSource = dt;
        Rpcoursecontent.DataBind();
    }

    private void projectBind()
    {
      subHomeworkManagea shm=new subHomeworkManagea();
        Rpcontent2.DataSource = shm.SelectmessageOfGoofProject();
        Rpcontent2.DataBind();
    }

    private void noticeBind()
    {
        NoticeManager nm=new NoticeManager();
        Rpcontent.DataSource=nm.SelectAllNotices();
        Rpcontent.DataBind();
    }

    protected void Rpcoursecontent_OnItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            subHomeworkManagea shm=new subHomeworkManagea();
            Repeater rep = e.Item.FindControl("Rpinside") as Repeater;//找到里层的repeater对象
            DataRowView record = (DataRowView)e.Item.DataItem;

            rep.DataSource = shm.SelectLatestSubHwBycourseId(int.Parse(record["courseID"].ToString()));
            rep.DataBind();
        }
    }
}