using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mime;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

public partial class teachers_ReviewHwinagain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
         UpMessageBind();
          RepeaterMessageBind();
        }
       
    }

    private void RepeaterMessageBind()
    {
        subHomeworkManagea shm=new subHomeworkManagea();
        DataTable dt=shm.SelectCourseSingleTimesStuHw(int.Parse(Request.QueryString["workId"].ToString()));
        DataColumn dc=new DataColumn();
        dc.ColumnName = "grade";
        dc.DataType = typeof(string);
        DataColumn dc2=new DataColumn();
        dc2.ColumnName = "evaluate";
        dc2.DataType = typeof(string);
        dt.Columns.Add(dc);
        dt.Columns.Add(dc2);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (shm.SelectSubHwGrade(int.Parse(dt.Rows[i]["subWorkID"].ToString())).Rows.Count == 0)
            {
                dt.Rows[i]["grade"] = null;
                 dt.Rows[i]["evaluate"] = null;
            }
            else
            {
                dt.Rows[i]["grade"] = shm.SelectSubHwGrade(int.Parse(dt.Rows[i]["subWorkID"].ToString())).Rows[0]["grade"].ToString();
                dt.Rows[i]["evaluate"]= shm.SelectSubHwGrade(int.Parse(dt.Rows[i]["subWorkID"].ToString())).Rows[0]["evaluate"].ToString();
            }

        }
      
        userRepeat.DataSource = dt;
        userRepeat.DataBind();
    }

    private void UpMessageBind()
    {
        LbcID.Text = Request.QueryString["courseID"];
        LbcName.Text = Request.QueryString["courseName"];
        LacCollege.Text = Request.QueryString["college"];
        LbcClass.Text = Request.QueryString["class"];
    }

 

    protected void userRepeat_OnItemCommand(object source, RepeaterCommandEventArgs e)
    {
        subHomeworkManagea shm=new subHomeworkManagea();
        SubHomework sh=new SubHomework();
        switch (e.CommandName)
        {
            case "save":
                sh.Grade = int.Parse(((TextBox) e.Item.FindControl("Txtgrade")).Text.Trim());
                sh.Evaluate = ((TextBox) e.Item.FindControl("Txtmsg")).Text.Trim();
                sh.SubWorkId = int.Parse(((Label) e.Item.FindControl("LbID")).Text.Trim());
                sh.ByteacherID = int.Parse(Session["teacherID"].ToString());
                if (shm.SelectSubHwGrade(int.Parse(((Label)e.Item.FindControl("LbID")).Text.Trim())).Rows.Count!=0)
                    shm.updateSubHwGrade(sh);
                else
          
                shm.insertSubHwGrade(sh);

                break;
        }
    }
}