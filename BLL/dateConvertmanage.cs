using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public  class dateConvertmanage
    {
        #region dd/mm/yyyy的date time转换

        public DateTime ConvertTime(string dateString)

        {
            DateTime dt = DateTime.ParseExact(dateString, "MM/dd/yyyy", System.Globalization.CultureInfo.CurrentCulture);
            return dt;
        }


        #endregion
        #region yyyy-mm-dd的date time转换

        public DateTime ConvertTime2(string dateString)

        {
            DateTime dt = DateTime.ParseExact(dateString, "yyyy-MM-dd", System.Globalization.CultureInfo.CurrentCulture);
            return dt;
        }


        #endregion
    }
}
