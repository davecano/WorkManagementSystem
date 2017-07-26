using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;


public partial class admin_viewNotice : System.Web.UI.Page
{
       Notice n=new Notice();
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (!IsPostBack)
        {
            if (Request.QueryString["NoticeID"] != null)
            {
                NoticeManager nm=new NoticeManager();
               DataTable dt= nm.SelectNoticeById(int.Parse(Request.QueryString["NoticeID"]));
                TxtTitle.Text = dt.Rows[0]["noticeName"].ToString();
                txtContent.InnerHtml= dt.Rows[0]["noticeContent"].ToString();
                TxtDate.Text= dt.Rows[0]["noticeDate"].ToString();
                Author.Text = dt.Rows[0]["author"].ToString();
                UsernameBind();
            }
        }
    }

    private void UsernameBind()
    {
        AdminManager am = new AdminManager();

        string adminName = am.AdminQuery(Convert.ToInt32(Session["adminID"]));
        Lradmin.Text = adminName;
    }

    protected void LbSubmit_OnClick(object sender, EventArgs e) {

        NoticeManager nm = new NoticeManager();
        n.NoticeName = TxtTitle.Text.Trim();
        n.NoticeContent = txtContent.InnerHtml;
        n.NoticeDate = TxtDate.Text.Trim();
        n.Author = Author.Text.Trim();
        if (Request.QueryString["NoticeID"] != null)
        {
            n.NoticeId = int.Parse(Request.QueryString["NoticeID"]);
            if (!nm.UpdateNotice(n))
            Response.Write("<script>alert('修改成功');window.location='notice.aspx';</script>");
        }
        else
        {
            if (!nm.InsertNotice(n))
           Response.Write("<script>alert('新增成功');window.location='notice.aspx';</script>");  
        }
      
    }
}