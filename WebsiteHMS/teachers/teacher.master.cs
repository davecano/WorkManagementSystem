using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

public partial class TeachersTeacher : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        ShowNotice();
            projectBind();
        ShowUserName();
        ShowpProject();//buzhizuoye
        }

    }

    private void ShowpProject()
    {
        HomeworkManage hm=new HomeworkManage();
       Repeater1.DataSource=hm.SelectHwByteacherId(Convert.ToInt32(Session["teacherID"]));
        Repeater1.DataBind();
    }

    private void ShowUserName()
    {
        TeachersManager tm=new TeachersManager();
        Literalteacher.Text = tm.TeachersName(Convert.ToInt32(Session["teacherID"]));
        Image1.ImageUrl = tm._TeachersTableById(Convert.ToInt32(Session["teacherID"])).Rows[0]["image"].ToString();
    }

    private void projectBind()
    {
        subHomeworkManagea shm = new subHomeworkManagea();
        Rpcontent2.DataSource = shm.SelectmessageOfGoofProject();
        Rpcontent2.DataBind();

    }

    private void ShowNotice()
    {
       NoticeManager nm=new NoticeManager();
       Rtnotice.DataSource= nm.SelectAllNotices();
        Rtnotice.DataBind();
    }
}
