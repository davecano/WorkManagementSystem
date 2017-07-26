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

public partial class teachers_HistoryHw : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           MessageBind();
            HistoryMessageBind();
        }
      
    }

    private void HistoryMessageBind()
    {
       HomeworkManage hm=new HomeworkManage();
      RpaddHw.DataSource= hm.SelectHwByid(int.Parse(Request.QueryString["courseID"]));
        RpaddHw.DataBind();
    }

    private void MessageBind()
    {
        LbcID.Text = Request.QueryString["courseID"];
        LbcName.Text = Request.QueryString["courseName"];
        LacCollege.Text = Request.QueryString["college"];
        LbcClass.Text = Request.QueryString["class"];
    }
}