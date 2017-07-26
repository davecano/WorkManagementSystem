using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLL;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        if (RadioButton1.Checked)
        {
            Admin admodel = new Admin();
            AdminManager am = new AdminManager();


            admodel.AdminId = Int32.Parse(TxtuserID.Text.Trim());
            admodel.AdminPassword = TxtuserPwd.Text.Trim();


            bool n = am.AdminLogin(admodel);

            if (n)
            {
                Session["adminID"] = TxtuserID.Text.Trim();
                Response.Redirect("~/admin/TeacherManage.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('登陆失败，账号或者密码错误！');</script>");
            }
        }
        if (RadioButton3.Checked)
        {
            Students stumodel = new Students();
            StudentsManger stuManger = new StudentsManger();
            stumodel.StuId = Int32.Parse(TxtuserID.Text.Trim());
            stumodel.StuPwd = TxtuserPwd.Text.Trim();
            bool n = stuManger.StudentsLogin(stumodel);
            if (n)
            {
                Session["stuID"] = TxtuserID.Text.Trim();
                Response.Redirect("students/Mycourses.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message",
                    "<script language='javascript' defer>alert('登陆失败，账号或者密码错误！');</script>");
            }
        }
        if (RadioButton2.Checked)
        {
            Teachers teachermodel = new Teachers();
            TeachersManager teaManger = new TeachersManager();
            teachermodel.TeacherId = Int32.Parse(TxtuserID.Text.Trim());
            teachermodel.TeacherPwd = TxtuserPwd.Text.Trim();
            bool t = teaManger.TeachersLogin(teachermodel);
            if (t)
            {
                Session["teacherID"] = TxtuserID.Text.Trim();
                Response.Redirect("teachers/StudentsManage.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('登陆失败，账号或者密码错误！');</script>");
            }
        }
    }
}
