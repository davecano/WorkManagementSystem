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
    public class StudentsDao
    {
        private SqlHelper _sqlhelper;

        public StudentsDao()
        {
            _sqlhelper=new SqlHelper();
        }
        #region 学生登陆
  public bool StudentsLogin(Students s)
  {
      bool flag = false;
      SqlParameter[] myp = new SqlParameter[]
      {
          new SqlParameter("@studentsID", s.StuId),
          new SqlParameter("@studentsPwd", s.StuPwd),
      };
      DataTable dt =
          _sqlhelper.ExecuteQuery("select * from students where stuID=@studentsID AND stuPwd=@studentsPwd", myp,
              CommandType.Text);
            if(dt.Rows.Count>0)
            {
                flag = true;
            }
      return flag;
  }
        #endregion
        #region 根据id查名字啊
 public string StudentsName(int s)
        {
            SqlParameter[] myp = new SqlParameter[]
            {
                new SqlParameter("@studentsID", s),
            };
            DataTable dt = _sqlhelper.ExecuteQuery("select stuName from students where stuID=@studentsID", myp,
                CommandType.Text);
            return dt.Rows[0][0].ToString();
        }
        #endregion 
        #region 注册学生哦

        public bool StudentsRegistration(Students s)
        {
            bool flag = false;
            SqlParameter[] myp = new SqlParameter[]
            {
                new SqlParameter("@stuID", s.StuId),
                new SqlParameter("@stuName",s.StuName),
                new SqlParameter("@stuPwd",s.StuPwd),
                new SqlParameter("@college",s.College),
                new SqlParameter("@stuPhone",s.StuPhone),
                new SqlParameter("@stuEmail",s.Email),
                new SqlParameter("@class",s.Class),   
            };
            int reg= _sqlhelper.ExecuteNonQuery("StudentsRegistration", myp, CommandType.StoredProcedure);
            if (reg>0) flag = true;
            return flag;
        }

        #endregion
        #region 学生信息表
        public DataTable _StudentsTable()
        {
            DataTable dt = _sqlhelper.ExecuteQuery("select * from students", CommandType.Text);
            return dt;
        }
        #endregion
        #region datatable by stuid
        public DataTable SelectStudentsById(int s)
        {
        
            SqlParameter[] myp = new SqlParameter[]
                      {
                new SqlParameter("@stuID", s)

                      };
           return  _sqlhelper.ExecuteQuery("selectStudentById", myp, CommandType.StoredProcedure);
       
        }
        #endregion
        #region 删除学生 根据id
        public bool DeleteStudents(int s)
        {
            bool l = false;
            SqlParameter[] myp = new SqlParameter[]
                      {
                new SqlParameter("@stuID", s)

                      };
            int r = _sqlhelper.ExecuteNonQuery("deleteStudentById", myp, CommandType.StoredProcedure);
            if (r > 0)
                l = true;
            return l;
        }
        #endregion
        #region 编辑学生 根据id
        public bool UpdateStudent(Students s)
        {
            bool flag = false;
            SqlParameter[] myp = new SqlParameter[]
            {
                new SqlParameter("@stuID",s.StuId),
                 new SqlParameter("@stuName", s.StuName),
                    new SqlParameter("@college", s.College),
                  new SqlParameter("@stuclass", s.Class),
                   new SqlParameter("@phone",s.StuPhone),
                    new SqlParameter("@email",s.Email)
            };
            int res = _sqlhelper.ExecuteNonQuery("updateStudentById", myp, CommandType.StoredProcedure);
            if (res > 0) flag = true;
            return flag;
        }
        public bool UpdatequanStudent(Students s)
        {
            bool flag = false;
            SqlParameter[] myp = new SqlParameter[]
            {
                new SqlParameter("@stuID",s.StuId),
                 new SqlParameter("@stuName", s.StuName),
                    new SqlParameter("@college", s.College),
                  new SqlParameter("@stuclass", s.Class),
                   new SqlParameter("@phone",s.StuPhone),
                    new SqlParameter("@email",s.Email),
                    new SqlParameter("@stuPwd",s.StuPwd), 
                    new SqlParameter("@image",s.Image), 
            };
            int res = _sqlhelper.ExecuteNonQuery("updatequanStudentById", myp, CommandType.StoredProcedure);
            if (res > 0) flag = true;
            return flag;
        }
        #endregion
        #region 添加学生
        public bool InsertStudent(Students s)
        {
            bool flag = false;
            SqlParameter[] myp = new SqlParameter[]
            {
                new SqlParameter("@stuID",s.StuId),
                 new SqlParameter("@stuName", s.StuName),
                    new SqlParameter("@college", s.College),
                  new SqlParameter("@stuclass", s.Class),
                   new SqlParameter("@phone",s.StuPhone),
                    new SqlParameter("@email",s.Email)
            };
            int res = _sqlhelper.ExecuteNonQuery("insertStudent", myp, CommandType.StoredProcedure);
            if (res > 0) flag = true;
            return flag;
        }
        #endregion
        #region stucourse by stuid
        public DataTable SelectCoursesMessageByStuId(int s)
        {

            SqlParameter[] myp = new SqlParameter[]
                      {
                new SqlParameter("@stuID", s)

                      };
            return _sqlhelper.ExecuteQuery("SelectcoursesMessageBystuID", myp, CommandType.StoredProcedure);

        }
        #endregion
    }
}
