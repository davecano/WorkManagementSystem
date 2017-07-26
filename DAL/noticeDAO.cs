using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography.X509Certificates;

namespace DAL
{
     public class noticeDAO
       
    {
 private SqlHelper _sqlhelper;

        public noticeDAO()
        {
            _sqlhelper = new SqlHelper();
        }
        #region 全部公告

        public DataTable SelectAllNotice()
        {
            return _sqlhelper.ExecuteQuery("showALLnotice", CommandType.StoredProcedure);
        }

        #endregion
        #region 根据id找公告
        public  DataTable SelectNoticeById(int noticeId)
        {
            SqlParameter[] paras = new SqlParameter[]
                        {
                new SqlParameter("@noticeID", noticeId)
                        };
            return _sqlhelper.ExecuteQuery("selectNoticeById", paras, CommandType.StoredProcedure);
        }
        
        #endregion
        #region 新增公告

        public bool NoticeAdd(Notice n)
        {
            bool flag = false;
            SqlParameter[] paras = new SqlParameter[]
                       {
                 new SqlParameter ("@noticeName",n.NoticeName ),
                       new SqlParameter ("@noticeContent",n.NoticeContent),
                             new SqlParameter ("@noticeDate",n.NoticeDate),
                                   new SqlParameter ("@author",n.Author)
                       };
            int res = _sqlhelper.ExecuteNonQuery("insertNotice", paras, CommandType.StoredProcedure);
            if (res > 0)
                flag = true;
            return flag;
        }

        #endregion
        #region 修改公告
        public bool NoticeEdit(Notice n)
        {
            bool flag = false;
            SqlParameter[] paras = new SqlParameter[]
                       {
                           new SqlParameter ("@noticeID",n.NoticeId ),
                 new SqlParameter ("@noticeName",n.NoticeName ),
                       new SqlParameter ("@noticeContent",n.NoticeContent),
                             new SqlParameter ("@noticeDate",n.NoticeDate),
                                   new SqlParameter ("@author",n.Author)
                       };
            int res = _sqlhelper.ExecuteNonQuery("updateNotice", paras, CommandType.StoredProcedure);
            if (res > 0)
                flag = true;
            return flag;
        }
        #endregion
        #region 删除公告

        public int DeleteNotice(int noticeId)
        {
            SqlParameter[] paras = new SqlParameter[]
            {
                new SqlParameter("@noticeID", noticeId)
            };
            return _sqlhelper.ExecuteNonQuery("deleteNotice",paras, CommandType.StoredProcedure);
        }

        #endregion
    }
}
