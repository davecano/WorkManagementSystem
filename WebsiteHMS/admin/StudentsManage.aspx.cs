using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.ServiceModel.Syndication;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

public partial class AdminStudentsManage : System.Web.UI.Page
{
    private int _id = 0; //保存指定行操作所在的ID号
   Students _s=new Students();
         
    /// <summary>
                                        /// 窗体加载时绑定数据
                                        /// </summary>
                                        /// <param name="sender"></param>
                                        /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!Page.IsPostBack)
        {
            DataBindToRepeater();//将数据绑定到Repeater控件上
            UsernameBind();
        }
    }

    private void UsernameBind()
    {
        AdminManager am = new AdminManager();

        string adminName = am.AdminQuery(Convert.ToInt32(Session["adminID"]));
        Lradmin.Text = adminName;
    }

    /// <summary>
    /// 将数据源绑定Repeater控件上
    /// </summary>
    /// 
    /// 
    private void DataBindToRepeater()
    {
        StudentsManger sm=new StudentsManger();
        userRepeat.DataSource = sm.ShowStudentsMessage();
        userRepeat.DataBind();

    }

    /// <summary>
    /// Repeater控件命令事件
    /// </summary>
    /// <param name="source"></param>
    /// <param name="e"></param>
    protected void userRepeat_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        //获取命令文本，判断发出的命令为何种类型，根据命令类型调用事件
        switch (e.CommandName)
        {
            case "Edit":
                _id = int.Parse(e.CommandArgument.ToString());   //获取命令ID号
                break;
            case "Cancel":
                _id = -1;
                break;
            case "Delete":
                _id = int.Parse(e.CommandArgument.ToString());   //获取删除行的ID号
                                                                //删除选定的行，并重新指定绑定操作

                this.DeleteRepeater(_id);
                break;
            case "Update":
                _s.StuId= int.Parse(((Label)e.Item.FindControl("lblID")).Text);
                _s.StuName = ((TextBox)e.Item.FindControl("txtName")).Text.Trim();
                _s.College = ((TextBox)e.Item.FindControl("txtCollege")).Text.Trim();
                _s.Class= int.Parse(((TextBox)e.Item.FindControl("txtClass")).Text.Trim());
                _s.StuPhone= ((TextBox)e.Item.FindControl("txtstuPhone")).Text.Trim();
                _s.Email= ((TextBox)e.Item.FindControl("txtstuEmail")).Text.Trim();
                //获取更新行的内容和ID号
                //string strText = ((TextBox)e.Item.FindControl("txtName")).Text.Trim();
                //int intId = int.Parse(((Label)e.Item.FindControl("lblID")).Text);
                ////更新Repeater控件的内容

                this.UpdateRepeater(_s);
                break;
        }

        //重新绑定控件上的内容
        this.DataBindToRepeater();
    }

    /// <summary>
    /// 删除行内容
    /// </summary>
    /// <param name="intId">删除行所在内容的ID</param>
    private void DeleteRepeater(int intId)
    {
       StudentsManger sm=new StudentsManger();
        sm.DeleteStudents(intId);
        ScriptManager.RegisterStartupScript(this, this.GetType(), "updateScript", "alert(\"删除成功\");", true);
    }

    /// <summary>
    /// 更新Repeater控件中的内容
    /// </summary>
    /// <param name="strText">修改后的内容</param>
    /// <param name="intId">内容所在行的ID号</param>
    private void UpdateRepeater(Students s)
    {
        StudentsManger sm=new StudentsManger();
        sm.UpdateStudents(s);
        ScriptManager.RegisterStartupScript(this, this.GetType(), "updateScript", "alert(\"更新成功\");", true);
    }

    /// <summary>
    /// Repeater控件数据绑定时发生的事件
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void userRepeat_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        //判断Repeater控件中的数据是否是绑定的数据源，如果是的话将会验证是否进行了编辑操作
        //ListItemType 枚举表示在一个列表控件可以包括，例如 DataGrid、 DataList和 Repeater 控件的不同项目。 
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            //获取绑定的数据源，这里要注意上面使用sqlReader的方法来绑定数据源，所以下面使用的DbDataRecord方法获取的
            //如果绑定数据源是DataTable类型的使用下面的语句就会报错.
            // System.Data.Common.DbDataRecord record = (System.Data.Common.DbDataRecord)e.Item.DataItem;
            //DataTable类型的数据源验证方式
            System.Data.DataRowView record = (DataRowView)e.Item.DataItem;
            //判断数据源的id是否等于现在的id，如果相等的话证明现点击了编辑触发了userRepeat_ItemCommand事件
            if (_id == int.Parse(record["stuID"].ToString()))
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

    protected void LbAdd_Click(object sender, EventArgs e)
    {
        ((Panel)userRepeat.Controls[0].FindControl("Paneladd")).Visible = true;
    }

    protected void Lbcancel_OnClick(object sender, EventArgs e)
    {
        ((Panel)userRepeat.Controls[0].FindControl("Paneladd")).Visible = false;
    }

    protected void Lbsave_OnClick(object sender, EventArgs e)
    {
        StudentsManger sm = new StudentsManger();
        Panel panel1 = (Panel) userRepeat.Controls[0].FindControl("Paneladd");
        TextBox tb1 = (TextBox) panel1.FindControl("TxtStuID");
        TextBox tb2 = (TextBox) panel1.FindControl("TxtStuName");
        TextBox tb3 = (TextBox) panel1.FindControl("TxtStuCollege");
        TextBox tb4 = (TextBox) panel1.FindControl("TxtStuClass");
        TextBox tb5 = (TextBox) panel1.FindControl("TxtPhone");
        TextBox tb6 = (TextBox) panel1.FindControl("TxtEmail");
        _s.StuId = int.Parse(tb1.Text.Trim());
        _s.StuName = tb2.Text.Trim();
        _s.College = tb3.Text.Trim();
        _s.Class = int.Parse(tb4.Text.Trim());
        _s.StuPhone = tb5.Text.Trim();
        _s.Email = tb6.Text.Trim();
        if (!sm.InsertStudents(_s))
        {
            panel1.Visible = false;
            DataBindToRepeater();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "updateScript", "alert(\"新增成功\");", true);
        }
}
}