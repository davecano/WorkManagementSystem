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
   public  class CoursesManager
    {
          private CoursesDao _cd=null;

        public CoursesManager()
        {
            _cd=new CoursesDao();
        }
        #region 选择全部科目

        public DataTable SelectAllCourses()
        {
            return _cd.Coursesmessage();
        }

        #endregion
        #region 乱了乱了，这是根据科目查出老师

        public DataTable SelectClassByCoursesId(int n)
        {
            return _cd.SelectMessageByCourseId(n);
        }

        #endregion
        #region 根据id来查学生

        public DataTable SelectStudentsByCourseId(int n)
        {
            return _cd.SelectMessageByClassId(n);
        }

        #endregion
        #region 添加科目

        public bool InsertCourses(Courses c)
        {
            return _cd.insertCourses(c);
        }

        #endregion

        public bool DeleteCourses(int c)
        {
            return _cd.deleteCourses(c);
        }

        public DataTable SelectCoursesByteacherId(int id)
        {
            return _cd.SelectcoursesByteacherId(id);

        }
    }
}
