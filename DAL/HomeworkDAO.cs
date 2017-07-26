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
    public class HomeworkDAO
    {
        private SqlHelper sqlHelper;

        public HomeworkDAO()
        {
            sqlHelper =new SqlHelper();
        }
        #region 先来新增几个作业

        public  bool InsertHomework(Homework n)
        {
            bool flag = false;
            SqlParameter[] paras = new SqlParameter[]
                    {
                new SqlParameter("@coursesId",n.CoursesId),
                new SqlParameter("@closeTime",n.CloseTime),
                new SqlParameter("@Requirement",n.Requirement),
                new SqlParameter("@workTitle",n.WorkTitle),
                new SqlParameter("@publishTime",n.PublishTime),
                new SqlParameter("@byteacherId",n.ByTeacherId ),
                //new SqlParameter("@referenceAnswer",n.ReferenceAnswer ),
                  new SqlParameter("@workcontent",n.WorkContent ),
                new SqlParameter("@Times",n.Times )
                    };
            int res = sqlHelper.ExecuteNonQuery("insertHomework", paras, CommandType.StoredProcedure);
            if (res > 0) flag = true;
            return flag;
        }

        #endregion
        #region 查看班级作业 根据班级id和times

        public DataTable SelectHwById(int c,int t)
        {
            SqlParameter[] paras = new SqlParameter[]
                       {
                 new SqlParameter ("@CoursesId",c ),
                   new SqlParameter ("@Times",t ),
                       };
           return  sqlHelper.ExecuteQuery("SelectHwByCourseID", paras, CommandType.StoredProcedure);


        }
        public DataTable SelectHwById(int c)
        {
            SqlParameter[] paras = new SqlParameter[]
                       {
                 new SqlParameter ("@CoursesId",c ),
                
                       };
            return sqlHelper.ExecuteQuery("SelectHwByCourseIDNoTimes", paras, CommandType.StoredProcedure);


        }
        #endregion
        #region 课程共几次作业
        public DataTable SelectTopTimesById(int c)
        {
            SqlParameter[] paras = new SqlParameter[]
                       {
                 new SqlParameter ("@CoursesId",c ),
                       };
            return sqlHelper.ExecuteQuery("SelectTimesByCourseID", paras, CommandType.StoredProcedure);


        }
        #endregion
        #region 修改一下作业吧
        public bool updateHomework(Homework n)
        {
            bool flag = false;
            SqlParameter[] paras = new SqlParameter[]
                    {
                new SqlParameter("@coursesId",n.CoursesId),
                new SqlParameter("@closeTime",n.CloseTime),
                new SqlParameter("@Requirement",n.Requirement),
                new SqlParameter("@workTitle",n.WorkTitle),
                new SqlParameter("@publishTime",n.PublishTime),
                new SqlParameter("@byteacherId",n.ByTeacherId ),
                //new SqlParameter("@referenceAnswer",n.ReferenceAnswer ),
                  new SqlParameter("@workcontent",n.WorkContent ),
                new SqlParameter("@Times",n.Times )
                    };
            int res = sqlHelper.ExecuteNonQuery("updateHomework", paras, CommandType.StoredProcedure);
            if (res > 0) flag = true;
            return flag;
        }
        #endregion
        #region 根据id来查看布置作业
        public DataTable SelectHwByteacherId(int t)
        {
            SqlParameter[] paras = new SqlParameter[]
                       {
                 new SqlParameter ("@teacherID",t ),

                       };
            return sqlHelper.ExecuteQuery("SelectHwByteacherID", paras, CommandType.StoredProcedure);


        }
        #endregion
    }
}
