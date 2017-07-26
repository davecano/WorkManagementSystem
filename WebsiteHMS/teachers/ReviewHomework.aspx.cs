using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

public partial class teachers_ReviewHomework : System.Web.UI.Page
{
    Courses c = new Courses();
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            CoursesBind();


        }

    }







    private void CoursesBind()
    {
        CoursesManager cm = new CoursesManager();
        RpaddHw.DataSource = cm.SelectCoursesByteacherId(Convert.ToInt32(Session["teacherID"]));
        RpaddHw.DataBind();
    }

}