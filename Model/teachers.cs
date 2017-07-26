using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
   public class Teachers
    {
        private int _teacherId;
            public int TeacherId {
            get { return _teacherId; }
            set { _teacherId = value; }
        }
        private string _teacherName;
        public string TeacherName {
            get { return _teacherName; }
            set { _teacherName = value; }
        }
        private string _teacherPwd;
        public string TeacherPwd {
            get { return _teacherPwd; }
            set { _teacherPwd = value; }
        }
        private string _post;
        public string Post {
            get { return _post; }
            set { _post = value; }
        }
        private string _phone;
        public string Phone {
            get { return _phone; }
            set { _phone = value; }
        }
        private string _email;
        public string Email {
            get { return _email; }
            set { _email = value; }
        }

        private string image;

        public string Image
        {
            get { return image; }
            set { image = value; }
        }
    }
}
