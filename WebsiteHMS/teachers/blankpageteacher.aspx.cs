using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
public partial class TeachersBlankpageteacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TeachersManager tm=new TeachersManager();
            //Literalteacher.Text = tm.TeachersName(Int32.Parse(Session["teacherID"].ToString()));
        }
    }
}