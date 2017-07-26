using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

public partial class students_StuSettings : System.Web.UI.Page
{
   Students s=new Students();
    private int _id;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            StuMessageBind();
        }
    }

    private void StuMessageBind()
    {
      StudentsManger sm=new StudentsManger();
        DataTable dt =sm.ShowStudentsMessageById(int.Parse(Session["stuID"].ToString()));
        Repeateritem.DataSource = dt;
        Repeateritem.DataBind();
        ImgPhoto.ImageUrl = dt.Rows[0]["image"].ToString();
    }


    protected void Repeateritem_OnItemCommand(object source, RepeaterCommandEventArgs e)
    {
        StudentsManger sm=new StudentsManger();
        switch (e.CommandName)
        {
            case "edit":
                _id = int.Parse(e.CommandArgument.ToString()); //获取命令ID号
                break;
            case "cancel":
                _id = -1;
                break;


            case "ok":


               s.StuId= int.Parse(((TextBox)e.Item.FindControl("TxtstuId")).Text.Trim());
               s.StuName= ((TextBox)e.Item.FindControl("TxtstuName")).Text.Trim();
               s.StuPwd = ((TextBox)e.Item.FindControl("TxtstuPwd")).Text.Trim();
               s.College = ((TextBox)e.Item.FindControl("Txtcollege")).Text.Trim();
                s.Class = int.Parse(((TextBox)e.Item.FindControl("Txtclass")).Text.Trim());
                s.StuPhone = ((TextBox)e.Item.FindControl("TxtPhone")).Text.Trim();
              s.Email = ((TextBox)e.Item.FindControl("TxtEmail")).Text.Trim();
                FileUpload fupload = (FileUpload)e.Item.FindControl("fupload");
                //获取更新行的内容和ID号
                //string strText = ((TextBox)e.Item.FindControl("txtName")).Text.Trim();
                //int intId = int.Parse(((Label)e.Item.FindControl("lblID")).Text);
                ////更新Repeater控件的内容
                string path = Server.MapPath("~/images/" + Session["stuID"].ToString() + "/");
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }

                fupload.SaveAs(path + fupload.FileName);
               s.Image = "~/images/" + Session["stuID"].ToString() + "/" + fupload.FileName;
                sm.UpdatequanStudents(s);

                break;
        }
      StuMessageBind();
    }



    protected void Repeateritem_OnItemDataBound(object sender, RepeaterItemEventArgs e)
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
                ((Panel)e.Item.FindControl("plitem")).Visible = false;
                ((Panel)e.Item.FindControl("pledit")).Visible = true;
            }
            else
            {
                ((Panel)e.Item.FindControl("plitem")).Visible = true;
                ((Panel)e.Item.FindControl("pledit")).Visible = false;
            }
        }
    }
}