using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
   public  class SubHomework
    {
        private int _subWorkId;
        public int SubWorkId {
            get { return _subWorkId; }
            set { _subWorkId = value; }
        }
        private string _subContent;
        public string SubContent {
            get { return _subContent; }
            set { _subContent = value; }
        }
        private int _byStuId;
        public int ByStuId {
            get { return _byStuId; }
            set { _byStuId = value; }
        }
        private int _toWhichWorkID;
        public int ToWhichWorkID
        {
            get { return _toWhichWorkID; }
            set { _toWhichWorkID = value; }
        }
        private string _subTime;
        public string SubTime
        {
            get { return _subTime; }
            set { _subTime = value; }
        }
        private string _subNotice;
        public string SubNotice
        {
            get { return _subNotice; }
            set { _subNotice = value; }
        }
        private int _byteacherID;
        public int ByteacherID
        {
            get { return _byteacherID; }
            set { _byteacherID = value; }
        }

        private int _grade;
        public int Grade
        {
            get { return _grade; }
            set { _grade = value; }
        }
        private string _evaluate;
        public string Evaluate
        {
            get { return _evaluate; }
            set { _evaluate = value; }
        }
    }
}
