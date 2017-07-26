using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

public partial class teachers_ViewCourses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LbcID.Text = Request.QueryString["courseID"];
            LbcName.Text = Request.QueryString["courseName"];
        
            LacCollege.Text = Request.QueryString["college"];
            LbcClass.Text = Request.QueryString["class"];
            SelectStudentsBycourseBind();
          
        }
    }

  

    private void SelectStudentsBycourseBind()
    {
        CoursesManager cm = new CoursesManager();

        userRepeat.DataSource = cm.SelectStudentsByCourseId(int.Parse(Request.QueryString["courseID"]));
        userRepeat.DataBind();
    }

    protected void LbDelete_OnClick(object sender, EventArgs e)
    {
        CoursesManager cm = new CoursesManager();
        if (!cm.DeleteCourses(int.Parse(Request.QueryString["courseID"])))
        {
            Response.Write("<script>alert('删除成功');window.location='StudentsManage.aspx';</script>");
        }
    }
}