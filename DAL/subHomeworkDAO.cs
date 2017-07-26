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
    public class subHomeworkDAO
    {
        private SqlHelper _sqlHelper;

        public subHomeworkDAO()
        {
            _sqlHelper = new SqlHelper();
        }
        #region 提交个作业吧 根据课程id
        public bool SubHomework(SubHomework sh)
        {
            bool flag = false;
            SqlParameter[] myp = new SqlParameter[]
            {
                new SqlParameter("@SubContent",sh.SubContent),
                 new SqlParameter("@byStuID",sh.ByStuId),
                    new SqlParameter("@toWhichWorkID", sh.ToWhichWorkID),
                  new SqlParameter("@subTime", sh.SubTime),
                   new SqlParameter("@subntice",sh.SubNotice),
                 
            };
            int res = _sqlHelper.ExecuteNonQuery("insertSubHomework", myp, CommandType.StoredProcedure);
            if (res > 0) flag = true;
            return flag;
        }
        #endregion
        #region 认定一门课程所交的所有作业

        public DataTable SelectsubhwBystuIDANDcourseID(int stuID,int courseID)
        {
            SqlParameter[] myp = new SqlParameter[]
          {
                new SqlParameter("@stuID ",stuID),
                 new SqlParameter("@courseID",courseID),

          };
            return _sqlHelper.ExecuteQuery("SelectsubhwBystuIDANDcourseID", myp, CommandType.StoredProcedure);
        }

        #endregion
        #region 认定一门课程具体一次所交的作业

        public DataTable SelectsubhwBystuIDANDcourseID(int stuID, int courseID,int times)
        {
            SqlParameter[] myp = new SqlParameter[]
          {
                new SqlParameter("@stuID ",stuID),
                 new SqlParameter("@courseID",courseID),
                    new SqlParameter("@times",times),

          };
            return _sqlHelper.ExecuteQuery("SelectsubhwBystuIDANDcourseIDAndTimes", myp, CommandType.StoredProcedure);
        }

        #endregion
        #region 根据workid找homework的message
        public DataTable SelectMessageByworkId(int workId)
        {
            SqlParameter[] myp = new SqlParameter[]
          {
                new SqlParameter("@workId ",workId),
                 
          };
            return _sqlHelper.ExecuteQuery("SelectMessageByworkId", myp, CommandType.StoredProcedure);
        }

        #endregion
        #region 根据workid找subhw
        public DataTable SelectSubhwByworkId(int workId)
        {
            SqlParameter[] myp = new SqlParameter[]
          {
                new SqlParameter("@workId ",workId),

          };
            return _sqlHelper.ExecuteQuery("SelectSubhwByworkID", myp, CommandType.StoredProcedure);
        }

        #endregion
        #region 根据workid找学生作业（已交的哦）
        public DataTable SelectCourseSingleTimesStuHw(int workId)
        {
            SqlParameter[] myp = new SqlParameter[]
          {
                new SqlParameter("@workId ",workId),

          };
            return _sqlHelper.ExecuteQuery("SelectCourseSingleTimesStuHw", myp, CommandType.StoredProcedure);
        }

        #endregion
        #region zengjia教师对作业的评论
        public bool insertSubHwGrade(SubHomework sh)
        {
            bool flag = false;
            //@subWorkID int, @byteacherID int, @grade int, @evaluate nvarchar(50)
            SqlParameter[] myp = new SqlParameter[]
            {
                new SqlParameter("@subWorkID",sh.SubWorkId),
                 new SqlParameter("@byteacherID",sh.ByteacherID),
                    new SqlParameter("@grade", sh.Grade),
                  new SqlParameter("@evaluate" ,sh.Evaluate),
              

            };
            int res = _sqlHelper.ExecuteNonQuery("insertSubHwGrade", myp, CommandType.StoredProcedure);
            if (res > 0) flag = true;
            return flag;
        }
        #endregion
        #region gengxin教师对作业的评论
        public bool updateSubHwGrade(SubHomework sh)
        {
            bool flag = false;
            //@subWorkID int, @byteacherID int, @grade int, @evaluate nvarchar(50)
            SqlParameter[] myp = new SqlParameter[]
            {
                new SqlParameter("@subWorkID",sh.SubWorkId),
                 new SqlParameter("@byteacherID",sh.ByteacherID),
                    new SqlParameter("@grade", sh.Grade),
                  new SqlParameter("@evaluate" ,sh.Evaluate),


            };
            int res = _sqlHelper.ExecuteNonQuery("updateSubHwGrade", myp, CommandType.StoredProcedure);
            if (res > 0) flag = true;
            return flag;
        }
        #endregion
        #region 根据subworkid查看有没有评分
        public DataTable SelectSubHwGrade(int subworkId)
        {
            SqlParameter[] myp = new SqlParameter[]
          {
                new SqlParameter("@subWorkID",subworkId),

          };
            return _sqlHelper.ExecuteQuery("SelectSubHwGrade", myp, CommandType.StoredProcedure);
        }

        #endregion
        #region 优秀作品的

        public DataTable SelectmessageOfGoofProject()
        {
            
            return _sqlHelper.ExecuteQuery("SelectmessageOfGoofProject",  CommandType.StoredProcedure);
        }

        #endregion
        #region 根据课程id来找top10的优秀作品

        public DataTable SelectLatestSubHwBycourseId(int courseID)
        {
            SqlParameter[] myp = new SqlParameter[]
         {
                new SqlParameter("@courseID",courseID),

         };

            return _sqlHelper.ExecuteQuery("SelectLatestSubHwBycourseId", myp,CommandType.StoredProcedure);
        }

        #endregion
        #region 看看你有没有资格查看下载
        public DataTable selectshouldbelooked(int stuID,int towhichworkID)
        {
            SqlParameter[] myp = new SqlParameter[]
         {
                new SqlParameter("@toWhichWorkID",towhichworkID),
                    new SqlParameter("@stuID",stuID),
         };

            return _sqlHelper.ExecuteQuery("selectshouldbelooked", myp, CommandType.StoredProcedure);
        }

#endregion
    }

}