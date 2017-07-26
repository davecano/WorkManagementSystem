using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class Student : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ShowNotice();
            ShowGoodProject();
            ShowUserName();
        }
    }

    private void ShowUserName()
    {
        StudentsManger sm=new StudentsManger();
       Literalstudent.Text= sm.StudentsName(Convert.ToInt32(Session["stuID"]));
        Image1.ImageUrl=sm.ShowStudentsMessageById(Convert.ToInt32(Session["stuID"])).Rows[0]["image"].ToString();
    }

    private void ShowGoodProject()
    {
        subHomeworkManagea shm = new subHomeworkManagea();
        Rpcontent2.DataSource = shm.SelectmessageOfGoofProject();
        Rpcontent2.DataBind();
    }

    private void ShowNotice()
    {
        NoticeManager nm = new NoticeManager();
        Rtnotice.DataSource = nm.SelectAllNotices();
        Rtnotice.DataBind();
    }
}
