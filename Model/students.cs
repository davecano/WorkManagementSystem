using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
   public class Students
    {
        private int _stuId;
        public int StuId {
            get { return _stuId; }
            set { _stuId = value; }
        }
        private string _stuName;
        public string StuName {
            get { return _stuName; }
            set { _stuName = value; }
        }
        private string _stuPwd;
        public string StuPwd {
            get { return _stuPwd; }
            set { _stuPwd = value; }
        }
        private string _college;
        public string College {
            get { return _college; }
            set { _college = value; }
        }
        private string _stuPhone;
        public string StuPhone {
            get { return _stuPhone; }
            set { _stuPhone = value; }
        }
        private string _email;
        public string Email {
            get { return _email; }
            set { _email = value; }
        }
        private int _class;
        public int Class {
            get { return _class; }
            set { _class = value; }
        }

        private string image;

        public string Image
        {
            get { return image; }
            set { image = value; }
        }
    }
}
