using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using DAL;

namespace BLL
{
   public class StudentsManger
   {
       private StudentsDao _studentsDao;

       public StudentsManger()
       {
        _studentsDao=new StudentsDao();
       }

       public bool StudentsLogin(Students s)
       {
            return  _studentsDao.StudentsLogin(s);
       }

       public string StudentsName(int s)
       {
           return _studentsDao.StudentsName(s);
       }

       public bool StudentRegistration(Students s)
       {
           return _studentsDao.StudentsRegistration(s);
       }

       public DataTable ShowStudentsMessage()
       {
           return _studentsDao._StudentsTable();
       }

        public DataTable ShowStudentsMessageById(int n)
        {
            return _studentsDao.SelectStudentsById(n);
        }
        public bool DeleteStudents(int s)
       {
           return _studentsDao.DeleteStudents(s);
       }

       public bool UpdateStudents(Students s)
       {
           return _studentsDao.UpdateStudent(s);
       }
        public bool UpdatequanStudents(Students s)
        {
            return _studentsDao.UpdatequanStudent(s);
        }
        public bool InsertStudents(Students s)
        {
            return _studentsDao.InsertStudent(s);
        }

       public DataTable SelectCoursesMessageByStuId(int s)
       {
           return _studentsDao.SelectCoursesMessageByStuId(s);
       }
   }
}
