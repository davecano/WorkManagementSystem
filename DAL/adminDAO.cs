using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Model;
namespace DAL
{
   public class AdminDao
   {
       private SqlHelper _sqlhelper;
        public AdminDao()
        {
           _sqlhelper=new SqlHelper();
        }
        #region 实现管理员登陆

        public bool Login(Admin n)
        {
            bool flag = false;
            SqlParameter[] myp = new SqlParameter[]
            {
                new SqlParameter("@adminid", n.AdminId),
                new SqlParameter("@adminpwd",n.AdminPassword)
            };
            //DataTable dt = sqlhelper.ExecuteQuery("adminvalidate",myp, CommandType.StoredProcedure);
            DataTable dt = _sqlhelper.ExecuteQuery("select * from admin where adminPwd=@adminpwd AND adminID=@adminid",myp, CommandType.Text);
            if (dt.Rows.Count > 0)
            {
                flag = true;
            }
            return flag;
        }

        #endregion
        #region datatable admin

        public DataTable SelectAdmin()
        {
            
            DataTable dt = _sqlhelper.ExecuteQuery("select* from admin ",CommandType.Text);
            return dt;

        }
        #endregion
        #region 查看管理员名字

        public string AdminQuery(int n)
       {
           SqlParameter[] myp = new SqlParameter[]
           {
               new SqlParameter("@adminid", n)
           };
           DataTable dt = _sqlhelper.ExecuteQuery("select adminName from admin where adminID=@adminid", myp,
               CommandType.Text);
           return dt.Rows[0][0].ToString();

       }

        #endregion
        #region 修改名字密码

       public bool UpdateAdmin(Admin n)
       {
           bool flag = false;
            SqlParameter[] myp = new SqlParameter[]
           {
                new SqlParameter("@adminName", n.AdminName),
                new SqlParameter("@adminpwd",n.AdminPassword)
           };
           int res = _sqlhelper.ExecuteNonQuery("updateAdmin", myp, CommandType.StoredProcedure);
           if (res > 0)
               flag = true;
           return flag;
       }

       #endregion
    }
}
