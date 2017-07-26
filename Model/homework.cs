using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
   public class Homework
    {
        private int _workId;
        public int WorkId {
            get { return _workId; }
            set { _workId = value; }
        }
        private string _workTitle;
        public string WorkTitle {
            get { return _workTitle; }
            set { _workTitle = value; }
        }
        private string _workContent;
        public string WorkContent {
            get { return _workContent; }
            set { _workContent = value; }
        }
        private string _requirement;
        public string Requirement {
            get { return _requirement; }
            set { _requirement = value; }
        }
        private string _publishTime;
        public string PublishTime {
            get { return _publishTime; }
            set { _publishTime = value; }
        }
        private  string _closeTime;
        public string CloseTime {
            get { return _closeTime; }
            set { _closeTime = value; }
        }
        private int _byTeacherId;
        public int ByTeacherId {
            get { return _byTeacherId; }
            set { _byTeacherId = value; }
        }
        private int _coursesId;
        public int CoursesId {
            get { return _coursesId; }
            set { _coursesId = value; }
        }

        private int times;
        public int Times
        {
            get { return times;}
            set { times = value; }
        }
    }
}
