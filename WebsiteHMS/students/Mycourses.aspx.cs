using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class students_Mycourses : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            StuCoursesBind();
        }
    }

    private void StuCoursesBind()
    {
        StudentsManger sm=new StudentsManger();
     RpCoursesEdit.DataSource= sm.SelectCoursesMessageByStuId(int.Parse(Session["stuID"].ToString()));
     RpCoursesEdit.DataBind();
    }
}