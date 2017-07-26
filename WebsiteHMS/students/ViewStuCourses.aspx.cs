using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class students_ViewStuCourses : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            upmessageBind();
     
            SelectStudentsBycourseBind();

          

        }
    }




    private void upmessageBind()
    {
        LbcID.Text = Request.QueryString["courseID"];
        LbcName.Text = Request.QueryString["courseName"];

        LbteaID.Text = Request.QueryString["teacherID"];
        LbteaName.Text = Request.QueryString["teacherName"];
    }


    private void SelectStudentsBycourseBind()
    {

        HomeworkManage hm = new HomeworkManage();
        DataTable dt = hm.SelectHwByid(Convert.ToInt32(Request.QueryString["courseID"].ToString()));
        DataColumn dc=new DataColumn();
        dc.ColumnName = "YoN";
        dc.DataType = typeof(bool);
        dt.Columns.Add(dc);

        DataColumn dc2 = new DataColumn();
        dc2.ColumnName = "date";
        dc2.DataType = typeof(string);
        dt.Columns.Add(dc2);

      

        DataColumn dc4 = new DataColumn();
        dc4.ColumnName = "grade";
        dc4.DataType = typeof(int);
        dt.Columns.Add(dc4);

        DataColumn dc5 = new DataColumn();
        dc5.ColumnName = "evaluate";
        dc5.DataType = typeof(string);
        dt.Columns.Add(dc5);


        for (int i = 0; i < dt.Rows.Count; i++)
        {
            dateConvertmanage dm=new dateConvertmanage();
            subHomeworkManagea shm = new subHomeworkManagea();
            DataTable dt2 = shm.SelectsubhwBystuIDANDcourseID(Convert.ToInt32(Session["stuID"].ToString()), Convert.ToInt32(Request.QueryString["courseID"]), Convert.ToInt32(dt.Rows[i]["Times"].ToString()));    /*这里写的很帅！*/
       
           DateTime et = dm.ConvertTime(dt.Rows[i]["CloseTime"].ToString());
            if (DateTime.Now <= et)
            {
                dt.Rows[i]["date"] = "未过期";
            }
            else
            {
                dt.Rows[i]["date"] = "已过期";
            }
            if (dt2.Rows.Count != 0)
            {
                dt.Rows[i]["YoN"] = true;
                DataTable dt3=shm.SelectSubHwGrade(int.Parse(dt2.Rows[0]["subWorkID"].ToString()));
                if (dt3.Rows.Count != 0)
                {
                 dt.Rows[i]["grade"] = dt3.Rows[0]["grade"];
                dt.Rows[i]["evaluate"] = dt3.Rows[0]["evaluate"];
                }
                else
                {
                    dt.Rows[i]["grade"] = DBNull.Value;
                    dt.Rows[i]["evaluate"] = "教师还未批阅";
                }
              
            }
            else
            {
                dt.Rows[i]["YoN"] = false;
                dt.Rows[i]["grade"] = DBNull.Value;
                dt.Rows[i]["evaluate"] = "您还未提交作业";
            }
        
        }
        userRepeat.DataSource = dt;
        userRepeat.DataBind();
      
    }


    
}