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
    public class HomeworkManage
    {
        private HomeworkDAO hd;

        public HomeworkManage()
        {
            hd=new HomeworkDAO();
        }

        public bool InsertHomework(Homework h)
        {
            return hd.InsertHomework(h);
        }

        public bool UpdateHomework(Homework h)
        {
            return hd.updateHomework(h);
        }

        public DataTable SelectHwByid(int c,int t)
        {
            return hd.SelectHwById(c,t);
        }
        public DataTable SelectHwByid(int c)
        {
            return hd.SelectHwById(c);
        }

        public DataTable SelectTopTimes(int c)
        {
            return hd.SelectTopTimesById(c);
        }

        public DataTable SelectHwByteacherId(int t)
        {
            return hd.SelectHwByteacherId(t);
        }
    }
}
