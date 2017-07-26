using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

public partial class students_subHomeworkmain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MessageBind();

        }

    }

    private void MessageBind()
    {
        if (Session["stuID"] != null)
        {
            LbstuID.Text = Session["stuID"].ToString();
            StudentsManger sm = new StudentsManger();
           Lbname.Text= sm.StudentsName(int.Parse(Session["stuID"].ToString()));
            subHomeworkManagea shm = new subHomeworkManagea();
            DataTable dt = shm.SelectMessageByworkId(int.Parse(Request.QueryString["workId"]));
            Lbcoursename.Text = dt.Rows[0]["coursesID"].ToString();
            Lbtimes.Text = dt.Rows[0]["Times"].ToString();
            TxtTitle.Text = dt.Rows[0]["workTitle"].ToString();
            Txtdate.Text= DateTime.Now.ToString("yyyy-MM-dd");
            if (bool.Parse(Request.QueryString["isSub"]))
            {
                txtRequire.InnerText = "您已经提交过作业，防止抄袭嫌疑，无法再做更改！";
            }
            else
            {
                if (Request.QueryString["overdue"] == "已过期")
                {
                    txtRequire.InnerText = "该作业已过期，已经无法再提交！";
                }
            }
        }
        else
        {
           Response.Redirect("../Login.aspx");
        }
    }

    protected void LbSubmit_OnClick(object sender, EventArgs e)
    {
     if (bool.Parse(Request.QueryString["isSub"])) //已经提交
        {
      Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('您已经提交作业，无法再提交！');</script>");
        }
     else
        {
           if(Request.QueryString["overdue"]=="已过期")
           Page.ClientScript.RegisterStartupScript(Page.GetType(), "message", "<script language='javascript' defer>alert('该作业已过期，无法再提交！');</script>");
           else
           {
                SubHomework sh = new SubHomework();
                subHomeworkManagea shm = new subHomeworkManagea();
                sh.ByStuId = int.Parse(Session["stuID"].ToString());
                sh.ToWhichWorkID = int.Parse(Request.QueryString["workId"]);
                sh.SubNotice = txtRequire.InnerText;
                sh.SubTime = Txtdate.Text;
                string path = Server.MapPath("~/upload/" + Session["stuID"].ToString() + Lbname.Text + "/" + Lbcoursename.Text + "/第" + Lbtimes.Text + "次作业/");
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }
                FileUpload1.SaveAs(path + FileUpload1.FileName);
                sh.SubContent = "~/upload/" + Session["stuID"].ToString() + Lbname.Text + "/" + Lbcoursename.Text + "/第" + Lbtimes.Text + "次作业/" + FileUpload1.FileName;
                if (!shm.insertSubHomework(sh))
                {
                    Response.Write("<script>alert('提交作业成功');window.location='SubHomework.aspx';</script>");
                }
            }
        }
    }
}