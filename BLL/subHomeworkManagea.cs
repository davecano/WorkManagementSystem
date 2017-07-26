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
   public class subHomeworkManagea
    {
        private subHomeworkDAO shd;

        public subHomeworkManagea()
        {
          shd= new subHomeworkDAO();
        }

        public bool insertSubHomework(SubHomework sh)
        {
            return shd.SubHomework(sh);
        }

        public DataTable SelectsubhwBystuIDANDcourseID(int stuID,int courseID)
        {
            return shd.SelectsubhwBystuIDANDcourseID(stuID, courseID);
        }
        public DataTable SelectsubhwBystuIDANDcourseID(int stuID, int courseID,int times)
        {
            return shd.SelectsubhwBystuIDANDcourseID(stuID, courseID,times);
        }
        public DataTable SelectMessageByworkId(int workId)
        {
            return shd.SelectMessageByworkId(workId);
        }
        public DataTable SelectSubhwByworkID(int workId)
        {
            return shd.SelectSubhwByworkId(workId);
        }
        public DataTable SelectCourseSingleTimesStuHw(int workId)
        {
            return shd.SelectCourseSingleTimesStuHw(workId);
        }
        public bool insertSubHwGrade(SubHomework sh)
        {
            return shd.insertSubHwGrade(sh);
        }
        public bool updateSubHwGrade(SubHomework sh)
        {
            return shd.updateSubHwGrade(sh);
        }
        public DataTable SelectSubHwGrade(int subworkId)
        {
            return shd.SelectSubHwGrade(subworkId);
        }
        public DataTable SelectmessageOfGoofProject()
        {
            return shd.SelectmessageOfGoofProject();
        }
        public DataTable SelectLatestSubHwBycourseId(int courseId)
        {
            return shd.SelectLatestSubHwBycourseId(courseId);
        }
        public DataTable selectshouldbelooked(int stuID,int towhichworkID)
        {
            return shd.selectshouldbelooked(stuID, towhichworkID);
        }
       
    }
}
