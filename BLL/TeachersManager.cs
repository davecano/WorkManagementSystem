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
    public class TeachersManager
    {
        private TeachersDao _teachersDao;

        public TeachersManager()
        {
            _teachersDao=new TeachersDao();
        }

        public bool TeachersLogin(Teachers t)
        {
            return _teachersDao.TeachersLogin(t);
        }

        public string TeachersName(int t)
        {
            return _teachersDao.TeacherName(t);
        }

        public DataTable _TeachersTable()
        {
            return _teachersDao._TeacherTable();
        }

        public DataTable _TeachersTableById(int n)
        {
            return _teachersDao.SelectTeacherById(n);
        }
        public bool DeleteTeacher(int teaId)
        {
            return _teachersDao.DeleteTeacher(teaId);
        }

        public bool UpdateTeacher(Teachers t)
        {
            return _teachersDao.UpdateTeacher(t);
        }
        public bool UpdatequanTeacher(Teachers t)
        {
            return _teachersDao.UpdatequanTeacher(t);
        }
        public bool InsertTeacher(Teachers t)
        {
            return _teachersDao.InsertTeacher(t);
        }
    }

}
