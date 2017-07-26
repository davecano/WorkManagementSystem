using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLL;

public partial class AdminTeacherManage : System.Web.UI.Page
{

    private int _id = 0;
    Teachers _t = new Teachers();
   

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            UsernameBind();
            this.TeachertableBind();

        }
    }

    private void TeachertableBind()
    {
        TeachersManager tm = new TeachersManager();
        RpTeaEdit.DataSource = tm._TeachersTable();
        RpTeaEdit.DataBind();
    }

    private void UsernameBind()
    {
        AdminManager am = new AdminManager();

        string adminName = am.AdminQuery(Convert.ToInt32(Session["adminID"]));
        Lradmin.Text = adminName;
    }

    protected void RpTeaEdit_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "edit":
                _id = int.Parse(e.CommandArgument.ToString());
              
                break;
            case "cancel":
                _id = -1;
             
                break;
            case "delete":
                _id = int.Parse(e.CommandArgument.ToString());
                 DeleteRepeater(_id);
                break;
          
            case "save":
                _t.TeacherId = int.Parse(((Label) e.Item.FindControl("LbteaID")).Text);
                _t.TeacherName = ((TextBox) e.Item.FindControl("Txtteaname")).Text.Trim();
                _t.Post = ((TextBox) e.Item.FindControl("txtteapost")).Text.Trim();
                _t.Phone = ((TextBox) e.Item.FindControl("txtteatel")).Text.Trim();
                _t.Email = ((TextBox) e.Item.FindControl("txtteaemail")).Text.Trim();
              this.UpdateRepeater(_t);
                break;        
        }
        this.TeachertableBind();
    }

    private void UpdateRepeater(Teachers t)
    {
        TeachersManager tm=new TeachersManager();
        tm.UpdateTeacher(t);
        ScriptManager.RegisterStartupScript(this, this.GetType(), "updateScript", "alert(\"更新成功\");", true);
    }

    private void DeleteRepeater(int teaid)
    {
        TeachersManager tm=new TeachersManager();
        tm.DeleteTeacher(teaid);
        ScriptManager.RegisterStartupScript(this, this.GetType(), "updateScript", "alert(\"删除成功\");", true);
    }

    protected void RpTeaEdit_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        //判断Repeater控件中的数据是否是绑定的数据源，如果是的话将会验证是否进行了编辑操作  
        //ListItemType 枚举表示在一个列表控件可以包括，例如 DataGrid、 DataList和 Repeater 控件的不同项目。   
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            //获取绑定的数据源，这里要注意上面使用sqlReader的方法来绑定数据源，所以下面使用的DbDataRecord方法获取的  
            //如果绑定数据源是DataTable类型的使用下面的语句就会报错.  
            // System.Data.Common.DbDataRecord record = (System.Data.Common.DbDataRecord)e.Item.DataItem;
            //DataTable类型的数据源验证方式  
            DataRowView record = (DataRowView)e.Item.DataItem;
         
            //判断数据源的id是否等于现在的id，如果相等的话证明现点击了编辑触发了userRepeat_ItemCommand事件  
            if (_id == int.Parse(record["teacherID"].ToString()))
            {
                ((Panel)e.Item.FindControl("plItem")).Visible = false;
                ((Panel)e.Item.FindControl("plEdit")).Visible = true;
            }
            else
            {
                ((Panel)e.Item.FindControl("plItem")).Visible = true;
                ((Panel)e.Item.FindControl("plEdit")).Visible = false;
            }
        }
    }

    protected void Lbcancel_OnClick(object sender, EventArgs e)
    {
        ((Panel)RpTeaEdit.Controls[0].FindControl("Paneladd")).Visible = false;
    }

    protected void Lbsave_OnClick(object sender, EventArgs e)
    {
        TeachersManager tm=new TeachersManager();
        Panel panel1 = (Panel)RpTeaEdit.Controls[0].FindControl("Paneladd");
        TextBox tb1 = (TextBox)panel1.FindControl("TxtTeaID");
        TextBox tb2 = (TextBox)panel1.FindControl("TxtTeaName");
        TextBox tb3 = (TextBox)panel1.FindControl("TxtPost");
        TextBox tb4 = (TextBox)panel1.FindControl("TxtPhone");
        TextBox tb5 = (TextBox)panel1.FindControl("TxtEmail");
        _t.TeacherId= int.Parse(tb1.Text.Trim());
        _t.TeacherName = tb2.Text.Trim();
        _t.Post = tb3.Text.Trim();
        _t.Phone = tb4.Text.Trim();
        _t.Email = tb5.Text.Trim();
        if (!tm.InsertTeacher(_t))
        {
            panel1.Visible = false;
            TeachertableBind();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "updateScript", "alert(\"新增成功\");", true);
        }
    }

    protected void LbAdd_OnClick(object sender, EventArgs e)
    {
        ((Panel)RpTeaEdit.Controls[0].FindControl("Paneladd")).Visible = true;
    }
}