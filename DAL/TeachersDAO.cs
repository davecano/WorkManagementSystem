using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
   public class TeachersDao
   {
       private SqlHelper _sqlhelper;

       public TeachersDao()
       {
            _sqlhelper =new SqlHelper();
       }
        #region 教师登陆，重复性劳动真的烦

       public bool TeachersLogin(Teachers t)
       {
           bool flag = false;
           SqlParameter[] myp = new SqlParameter[]
           {
               new SqlParameter("@teachersID", t.TeacherId),
               new SqlParameter("@teachersPwd", t.TeacherPwd)
           };

           DataTable dt =
               _sqlhelper.ExecuteQuery("select * from teachers where teacherID=@teachersID AND teacherPwd=@teachersPwd",
                   myp, CommandType.Text);
           if (dt.Rows.Count > 0)
           {
               flag = true;
           }
           return flag;
       }

        #endregion
        #region 得到老师名字
    public string TeacherName(int t)
        {
            SqlParameter[] myp = new SqlParameter[]
            {
                new SqlParameter("@teacherID", t)

            };
            DataTable dt = _sqlhelper.ExecuteQuery("select teacherName from teachers where teacherID=@teacherID", myp,
                CommandType.Text);
            return dt.Rows[0][0].ToString();
        }
        #endregion
        #region 所有老师信息表
      public DataTable _TeacherTable()
      {
          DataTable dt = _sqlhelper.ExecuteQuery("select * from teachers", CommandType.Text);
          return dt;
      }

        #endregion
        #region datatable 根据id
        public DataTable SelectTeacherById(int t)
        {
           
            SqlParameter[] myp = new SqlParameter[]
                      {
                new SqlParameter("@teacherID", t)

                      };
          return _sqlhelper.ExecuteQuery("selectTeacherById", myp, CommandType.StoredProcedure);
           
        }
        #endregion
        #region 根据id删除老师 来个存储过程的

        public bool DeleteTeacher(int t)
       {
           bool l = false;
            SqlParameter[] myp = new SqlParameter[]
                      {
                new SqlParameter("@teacherID", t)

                      };
         int r = _sqlhelper.ExecuteNonQuery("deleteTeacherById", myp, CommandType.StoredProcedure);
           if (r > 0)
               l = true;
           return l;
       }

        #endregion
        #region 根据id编辑老师，再来次存储过程

       public bool UpdateTeacher(Teachers t)
       {
           bool flag = false;
            SqlParameter[] myp = new SqlParameter[]
            {
                new SqlParameter("@teacherID", t.TeacherId),
                 new SqlParameter("@teacherName", t.TeacherName),
                  new SqlParameter("@post", t.Post),
                   new SqlParameter("@phone", t.Phone),
                    new SqlParameter("@email", t.Email)
            };
           int res = _sqlhelper.ExecuteNonQuery("updateTeacherById", myp, CommandType.StoredProcedure);
           if (res > 0) flag = true;
           return flag;
       }
        public bool UpdatequanTeacher(Teachers t)
        {
            bool flag = false;
            SqlParameter[] myp = new SqlParameter[]
            {
                new SqlParameter("@teacherID", t.TeacherId),
                 new SqlParameter("@teacherName", t.TeacherName),
                  new SqlParameter("@teacherPwd", t.TeacherPwd),
                  new SqlParameter("@post", t.Post),
                   new SqlParameter("@phone", t.Phone),
                    new SqlParameter("@email", t.Email),
                      new SqlParameter("@image", t.Image),
            };
            int res = _sqlhelper.ExecuteNonQuery("updatequanTeacherById", myp, CommandType.StoredProcedure);
            if (res > 0) flag = true;
            return flag;
        }
        #endregion
        #region 添加老师
        public bool InsertTeacher(Teachers t)
        {
            bool flag = false;
            SqlParameter[] myp = new SqlParameter[]
            {
                new SqlParameter("@teacherID", t.TeacherId),
                 new SqlParameter("@teacherName", t.TeacherName),
                  new SqlParameter("@post", t.Post),
                   new SqlParameter("@phone", t.Phone),
                    new SqlParameter("@email", t.Email)
            };
            int res = _sqlhelper.ExecuteNonQuery("insertTeacher", myp, CommandType.StoredProcedure);
            if (res > 0) flag = true;
            return flag;
        }
        #endregion
   
    }

}
