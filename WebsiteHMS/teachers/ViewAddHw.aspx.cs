using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;
using System.IO;

public partial class teachers_ViewAddHw : System.Web.UI.Page
{
    Homework h=new Homework();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["Times"] == null)
            {
                MessageBind();
                TimesBind();
            }
            else
            {
                 MessageBind();
                HomeworkEditBind();
            }
     
        }

    }

    private void HomeworkEditBind()
    {
        HomeworkManage hm=new HomeworkManage();
        DataTable dt = hm.SelectHwByid(int.Parse(Request.QueryString["courseID"]),int.Parse(Request.QueryString["Times"]));
        Lbtimes.Text = dt.Rows[0]["Times"].ToString();
        TxtTitle.Text = dt.Rows[0]["workTitle"].ToString();
        txtRequire.InnerText = dt.Rows[0]["requirement"].ToString();
        Txtfrom.Text = dt.Rows[0]["PublishTime"].ToString();
        Txtto.Text = dt.Rows[0]["CloseTime"].ToString();
       
    }

    private void TimesBind()
    {
       HomeworkManage hm=new HomeworkManage();
        DataTable dt = hm.SelectTopTimes(int.Parse(Request.QueryString["courseID"]));
        if (dt.Rows.Count > 0)
        {
            Lbtimes.Text = (int.Parse(dt.Rows[0][0].ToString()) + 1).ToString();
        }
        else
        {
            Lbtimes.Text = "1";
        }
    }

    private void MessageBind()
    {
        LbcID.Text = Request.QueryString["courseID"];
        LbcName.Text = Request.QueryString["courseName"];
        LacCollege.Text = Request.QueryString["college"];
        LbcClass.Text = Request.QueryString["class"];
    }

    protected void LbSubmit_OnClick(object sender, EventArgs e)
    {

       HomeworkManage hm=new HomeworkManage();
        h.WorkTitle = TxtTitle.Text;
       h.Requirement =txtRequire.InnerHtml  ;
         h.PublishTime=Txtfrom.Text ;
         h.CloseTime=Txtto.Text ;
         h.ByTeacherId=int.Parse(Session["teacherID"].ToString()) ;
        h.CoursesId = int.Parse(LbcID.Text);
        h.Times=int.Parse(Lbtimes.Text);
        string path = Server.MapPath("~/upload/" + Session["teacherID"].ToString() + "/" + Request.QueryString["courseName"] + Request.QueryString["class"] + "/第" + Lbtimes.Text + "次作业/");
        if (!Directory.Exists(path))
        {
            Directory.CreateDirectory(path);
        }
        FileUpload1.SaveAs(path + FileUpload1.FileName);
        h.WorkContent = "~/upload/" + Session["teacherID"].ToString() + "/" + Request.QueryString["courseName"] + Request.QueryString["class"] + "/第" + Lbtimes.Text + "次作业/" + FileUpload1.FileName;
        if (Request.QueryString["Times"] == null)
        {
            if (!hm.InsertHomework(h))
            Response.Write("<script>alert('布置作业成功');window.location='AddHomework.aspx';</script>");
        }
        else
        {
            if (!hm.UpdateHomework(h))
                Response.Write("<script>alert('修改作业成功');window.location='AddHomework.aspx';</script>");
        }
      
    }
}