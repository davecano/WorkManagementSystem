using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

public partial class students_SubHomework : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dataBind();
        }
    }

    private void dataBind()
    {
        HomeworkManage hm=new HomeworkManage();
        StudentsManger sm=new StudentsManger(); 
        subHomeworkManagea shm=new subHomeworkManagea();
        DataTable dt = sm.SelectCoursesMessageByStuId(Convert.ToInt32(Session["stuID"].ToString()));
        DataColumn dc=new DataColumn();
        dc.ColumnName = "NOsubhw";
        dc.DataType = typeof(int);
        dt.Columns.Add(dc);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            int k;
            DataTable dt2 = shm.SelectsubhwBystuIDANDcourseID(Convert.ToInt32(Session["stuID"].ToString()), Convert.ToInt32(dt.Rows[i]["courseID"]));
            DataTable dt3 = hm.SelectHwByid(Convert.ToInt32(dt.Rows[i]["courseID"]));
            k = dt3.Rows.Count - dt2.Rows.Count;
            dt.Rows[i]["NOsubhw"] = k;
        }
        RpCoursesEdit.DataSource = dt;
        RpCoursesEdit.DataBind();
    }
}