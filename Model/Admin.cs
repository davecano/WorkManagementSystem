using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
   public class Admin
    {
        private int _adminId;
        public int AdminId
        {
            get { return _adminId; }
            set { _adminId = value; }
        }      
            private string _adminName;
       public string AdminName
        {
            get { return _adminName; }
            set { _adminName = value; }
        }

        private string _adminPassword;

        public string AdminPassword
        {
            get { return _adminPassword; }
            set { _adminPassword = value; }
        }

    }
}
