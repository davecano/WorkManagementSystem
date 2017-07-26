using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
  public  class Courses
    {
        private string _courseId;
        public string CourseId {
            get { return _courseId; }
            set { _courseId = value; }
        }
        private string _courseName;
        public string CourseName {
            get { return _courseName; }
            set { _courseName = value; }
        }
       
        private int _teacherId;
        public int TeacherId {
            get { return _teacherId; }
            set { _teacherId = value; }
        }
        private string _teacherName;
        public string TeacherName
        {
            get { return _teacherName; }
            set { _teacherName = value; }
        }
        private string _college;
        public string College {
            get { return _college; }
            set { _college = value; }
        }
        private int _class;
        public int Class
        {
            get { return _class; }
            set { _class = value; }
        }
    }
}
