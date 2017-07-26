using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class StudentsBlankpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            StudentsManger stuManager=new StudentsManger();
            Literalstu.Text= stuManager.StudentsName(Int32.Parse(Session["stuID"].ToString())); 
        }
        convertdatetimeandstring();
    }

    private void convertdatetimeandstring()
    {
        string dateString = "20141010";
        DateTime dt = DateTime.ParseExact(dateString, "yyyyMMdd", System.Globalization.CultureInfo.CurrentCulture);
       
    }
}