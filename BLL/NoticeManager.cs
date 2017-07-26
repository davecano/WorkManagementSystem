using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using Model;

namespace BLL
{
   public class NoticeManager
   {
       private noticeDAO _nd;

       public NoticeManager()
       {
            _nd=new noticeDAO();
       }
        #region 全部公告

       public DataTable SelectAllNotices()
       {
           return _nd.SelectAllNotice();
       }

       #endregion

       public DataTable SelectNoticeById(int noticeId)
       {
           return _nd.SelectNoticeById(noticeId);
       }

       public bool InsertNotice(Notice n)
       {
           return _nd.NoticeAdd(n);
       }

       public bool UpdateNotice(Notice n)
       {
           return _nd.NoticeEdit(n);
       }

       public int DeleteNotice(int noticeId)
       {
           return _nd.DeleteNotice(noticeId);
       }
   }
}
