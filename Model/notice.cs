using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public  class Notice
    {
        private int _noticeId;
        public int NoticeId {
            get { return _noticeId; }
            set { _noticeId = value; }
        }
        private string _noticeName;
        public string NoticeName {
            get { return _noticeName; }
            set { _noticeName = value; }
        }
        private string _noticeContent;
        public string NoticeContent {
            get { return _noticeContent; }
            set { _noticeContent = value; }
        }
        private string _noticeDate;
        public string NoticeDate {
        get { return _noticeDate; }
            set { _noticeDate = value; }
        }
        private string _author;
        public string Author {
            get { return _author; }
            set { _author = value; }
        }
    }
}
