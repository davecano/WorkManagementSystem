using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLL;

public partial class AdminCourses : System.Web.UI.Page
{

    Courses _c=new Courses();
    
    protected void Page_Load(object sender, EventArgs e)
    {

      
        if (!IsPostBack)
        { CoursesBind();
              TeacherIdBind(); 
            UsernameBind();  
        }
      
    }



    private void TeacherIdBind()
    {
        TeachersManager tm=new TeachersManager();
        Panel panel1 = (Panel)RpCoursesEdit.Controls[0].FindControl("Paneladd");
       DropDownList dpId=(DropDownList)panel1.FindControl("TxtcTeaId");
        dpId.DataSource = tm._TeachersTable();
        dpId.DataValueField = "teacherID";
        dpId.DataTextField = "teacherID";
        dpId.DataBind();
    }

    private void UsernameBind()
    {
        AdminManager am = new AdminManager();

        string adminName = am.AdminQuery(Convert.ToInt32(Session["adminID"]));
        Lradmin.Text = adminName;
    }


    private void CoursesBind()
    {
        CoursesManager cm=new CoursesManager();
       RpCoursesEdit.DataSource= cm.SelectAllCourses();
        RpCoursesEdit.DataBind();
    }

    protected void Lbsave_OnClick(object sender, EventArgs e)
    { 
       CoursesManager cm=new CoursesManager();
        Panel panel1 = (Panel)RpCoursesEdit.Controls[0].FindControl("Paneladd");
        TextBox tb1 = (TextBox) panel1.FindControl("TxtcName");
        DropDownList tb2 = (DropDownList)panel1.FindControl("TxtcTeaId");
        TextBox tb3 = (TextBox)panel1.FindControl("TxtcTea");
        TextBox tb4 = (TextBox)panel1.FindControl("TxtcCollege");
        TextBox tb5 = (TextBox)panel1.FindControl("TxtcClass");
        LinkButton lb = (LinkButton) panel1.FindControl("Lbsave");
        _c.CourseName = tb1.Text.Trim();
        _c.TeacherId= int.Parse(tb2.Text.Trim());
        _c.TeacherName = tb3.Text.Trim();
        _c.College = tb4.Text.Trim();
    _c.Class= int.Parse(tb5.Text.Trim());
      //PostBackTrigger pt=new PostBackTrigger();
      //  pt.ControlID = lb.ClientID;
      //   UpdatePanel1.Triggers.Add(pt);
        if (!cm.InsertCourses(_c))
        {
            panel1.Visible = false;
            CoursesBind();
         
            Response.Redirect(Request.Url.ToString());

        }

      


    }

    protected void Lbaddcourses_OnClick(object sender, EventArgs e)
    {
        ((Panel)RpCoursesEdit.Controls[0].FindControl("Paneladd")).Visible = true;
    }


    protected void TxtcTeaId_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        TeachersManager tm=new TeachersManager();
        Panel panel1 = (Panel)RpCoursesEdit.Controls[0].FindControl("Paneladd");
        DropDownList dpId = (DropDownList)panel1.FindControl("TxtcTeaId");
        TextBox tb3 = (TextBox)panel1.FindControl("TxtcTea");
       tb3.Text= tm.TeachersName(int.Parse(dpId.SelectedValue));
    }
}