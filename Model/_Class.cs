using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    class Class
    {
        private int _classId;
        public int ClassId {
            get { return _classId; }
            set { _classId = value; }
        }
        private string _className;
        public string ClassName {
            get { return _className; }
            set { _className = value; }
        }
        private string _college;
        public string College {
            get { return _college; }
            set { _college = value; }
        }
    }
}
