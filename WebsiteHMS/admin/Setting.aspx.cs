using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;
using Model;

public partial class admin_Setting : System.Web.UI.Page
{
  Admin a=new Admin();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            AdminMessageBind();
            UsernameBind();
        }
    }

    private void UsernameBind()
    {
        AdminManager am = new AdminManager();

        string adminName = am.AdminQuery(Convert.ToInt32(Session["adminID"]));
        Lradmin.Text = adminName;
    }

    private void AdminMessageBind()
    {
       AdminManager am=new AdminManager();
         DataTable dt=am.SelectAdmin();
        LbID.Text = dt.Rows[0][0].ToString();
        LbName.Text = dt.Rows[0][1].ToString();
        Lbpsw.Text = dt.Rows[0][2].ToString();
    }

    protected void lbsave_OnClick(object sender, EventArgs e)
    {
        AdminManager am = new AdminManager();
        a.AdminName = TxtuserName.Text.Trim();
        a.AdminPassword = TxtuserPwd.Text.Trim();
        if (!am.UpdateAdmin(a))
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "updateScript", "alert(\"修改成功\");", true);
        }
        AdminMessageBind();
    }
}