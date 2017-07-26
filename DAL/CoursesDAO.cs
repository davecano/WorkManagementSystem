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
    public class CoursesDao
    {
        private SqlHelper _sqlhelper;

        public CoursesDao()
        {
            _sqlhelper = new SqlHelper();
        }

        #region 全部科目信息

        public DataTable Coursesmessage()
        {
            return _sqlhelper.ExecuteQuery("AllCoursesMessage", CommandType.StoredProcedure);
        }

        #endregion
        #region 根据老师id找课程信息
        public DataTable SelectcoursesByteacherId(int n)
        {
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@teacherID", n),
            };
            return _sqlhelper.ExecuteQuery("selectCoursesByTeacherId", paras, CommandType.StoredProcedure);
        }

        #endregion

        #region 搜索就在前端做吧

        #endregion

        #region 依据科目id查看老师成员

        public DataTable SelectMessageByCourseId(int n)
        {
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@value", n),
            };
            return _sqlhelper.ExecuteQuery("SelectMessageByCourseID", paras, CommandType.StoredProcedure);
        }

        #endregion

        #region 依据科目id查看学生成员

        public DataTable SelectMessageByClassId(int n)
        {
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@courseID", n),
            };
            return _sqlhelper.ExecuteQuery("SelectStudentsByClassID", paras, CommandType.StoredProcedure);
        }

        #endregion

        #region 添加科目

        public bool insertCourses(Courses c)
        {
            bool flag = false;
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@courseName", c.CourseName),
                new SqlParameter("@teacherID", c.TeacherId),
                new SqlParameter("@teacherName", c.TeacherName),
                new SqlParameter("@college", c.College),
                new SqlParameter("@class", c.Class),

            };
            int res = _sqlhelper.ExecuteNonQuery("insertCourse", paras, CommandType.StoredProcedure);
            if (res > 0)
                flag = true;
            return flag;
        }

        #endregion

        #region 删除科目

        public bool deleteCourses(int c)
        {
            bool flag = false;
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@courseID", c),

            };
            int res = _sqlhelper.ExecuteNonQuery("deleteCourseById", paras, CommandType.StoredProcedure);
            if (res > 0)
                flag = true;
            return flag;

            #endregion
        }

    }
}
