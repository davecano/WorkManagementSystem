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
    public class AdminManager
    {
        private AdminDao _adminDao;
        public  AdminManager()
        {
            _adminDao = new AdminDao();
        }
        /// <summary>
        /// 登陆
        /// </summary>
        /// <param name="n"></param>
        /// <returns></returns>
        public bool AdminLogin(Admin n)
        {
            return _adminDao.Login(n);

        }

        /// <summary>
        /// 得到管理员名字
        /// </summary>
        /// <param name="n"></param>
        /// <returns></returns>
        public string AdminQuery(int n)
        {
            return _adminDao.AdminQuery(n);
        }

        public DataTable SelectAdmin()
        {
            return _adminDao.SelectAdmin();
        }

        public bool UpdateAdmin(Admin n)
        {
            return _adminDao.UpdateAdmin(n);
        }
    }
}
