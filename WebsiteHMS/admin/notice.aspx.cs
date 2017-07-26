using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class admin_notice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            allnoticebind();
            UsernameBind();
        }
    }

    private void UsernameBind()
    {
        AdminManager am = new AdminManager();

        string adminName = am.AdminQuery(Convert.ToInt32(Session["adminID"]));
        Lradmin.Text = adminName;
    }

    private void allnoticebind()
    {
        NoticeManager nm = new NoticeManager();
        RptNotice.DataSource = nm.SelectAllNotices();
        RptNotice.DataBind();
    }

    protected void lbdeleteNotice_OnClick(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;  //强转一下。  
       NoticeManager nm=new NoticeManager();
        nm.DeleteNotice(int.Parse(btn.CommandArgument.ToString()));
        ScriptManager.RegisterStartupScript(this, this.GetType(), "updateScript", "alert(\"删除成功\");", true);
    }
}