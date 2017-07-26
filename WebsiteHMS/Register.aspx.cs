using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLL;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnRegSub_Click(object sender, EventArgs e)
    {
        #region 先实现功能 不判定，判定在javascript中完成

        Students s = new Students();
        StudentsManger sm = new StudentsManger();
        s.StuId = Int32.Parse(TxtuserID.Text.Trim());
        s.StuName = TxtuserName.Text.Trim();
        s.College = TxtuserCollege.Text.Trim();
        s.Class = Int32.Parse(TxtuserClass.Text.Trim());
        s.Email = TxtuserEmail.Text.Trim();
        s.StuPhone = TxtuserPhone.Text.Trim();
        s.StuPwd = TxtuserPwd.Text.Trim();
        bool n = sm.StudentRegistration(s);
        if (n)
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('注册失败了哦，请重试');</script>");
        }
        else
        {
            Response.Write("<script>alert('注册成功');window.location='Login.aspx';</script>");
            //Response.Redirect("Login.aspx");
        }

    }

    #endregion
}