using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class teachers_ReviewHwin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MessageBind();
            wouldbeCorrectedANDMessageBind();
        }
    }

    private void wouldbeCorrectedANDMessageBind()
    {
        subHomeworkManagea shm=new subHomeworkManagea();
        HomeworkManage hm = new HomeworkManage();
        DataTable dt = hm.SelectHwByid(Convert.ToInt32(Request.QueryString["courseID"].ToString()));//dedao kecheng de suoyouzuoye
        DataColumn dc=new DataColumn();
        dc.ColumnName = "daipigai";
        dc.DataType = typeof(int);
        dt.Columns.Add(dc);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            DataTable dt2 = shm.SelectSubhwByworkID(int.Parse(dt.Rows[i]["workId"].ToString()));
            dt.Rows[i]["daipigai"] = dt2.Rows.Count;
        }
        userRepeat.DataSource = dt;
        userRepeat.DataBind();
    }

    private void MessageBind()
    {
        LbcID.Text = Request.QueryString["courseID"];
        LbcName.Text = Request.QueryString["courseName"];
        LacCollege.Text = Request.QueryString["college"];
        LbcClass.Text = Request.QueryString["class"];
    }
}