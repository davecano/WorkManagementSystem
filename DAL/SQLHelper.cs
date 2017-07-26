using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DAL
{
    public class SqlHelper
    {
        private SqlConnection _conn = null;
        private SqlCommand _cmd = null;
        private SqlDataReader _sdr = null;
        public SqlHelper()
        {
            string connStr = ConfigurationManager.ConnectionStrings["SQLSERVER"].ConnectionString;
            _conn = new SqlConnection(connStr);
        }

        private SqlConnection GetConn()
        {
            if (_conn.State == ConnectionState.Closed)
            {
                _conn.Open();
            }
            return _conn;
        }

        #region 执行不带参数的增删改SQL语句或存储过程
        /// <summary>
        ///  执行不带参数的增删改SQL语句或存储过程
        /// </summary>
        /// <param name="cmdText">增删改SQL语句或存储过程</param>
        /// <param name="ct">命令类型</param>
        /// <returns></returns>
        public int ExecuteNonQuery(string cmdText, CommandType ct)
        {
            int res;
            using (_cmd = new SqlCommand(cmdText, GetConn()))
            {
                _cmd.CommandType = ct;

                res = _cmd.ExecuteNonQuery();
            }
            return res;
        }
        #endregion

        #region 执行带参数的增删改SQL语句或存储过程
        /// <summary>
        ///  执行带参数的增删改SQL语句或存储过程
        /// </summary>
        /// <param name="cmdText">增删改SQL语句或存储过程</param>
        /// <param name="ct">命令类型</param>
        /// <returns></returns>
        public int ExecuteNonQuery(string cmdText, SqlParameter[] paras, CommandType ct)
        {
            int res;
            using (_cmd = new SqlCommand(cmdText, GetConn()))
            {
                _cmd.CommandType = ct;
                _cmd.Parameters.AddRange(paras);
                res = _cmd.ExecuteNonQuery();
            }
            return res;
        }
        #endregion

        #region 执行不带参数的查询SQL语句或存储过程
        /// <summary>
        ///  执行不带参数的查询SQL语句或存储过程
        /// </summary>
        /// <param name="cmdText">查询SQL语句或存储过程</param>
        /// <param name="ct">命令类型</param>
        /// <returns></returns>
        public DataTable ExecuteQuery(string cmdText, CommandType ct)
        {
            DataTable dt = new DataTable();
            _cmd = new SqlCommand(cmdText, GetConn());
            _cmd.CommandType = ct;
            using (_sdr = _cmd.ExecuteReader(CommandBehavior.CloseConnection))
            {
                dt.Load(_sdr);
            }
            return dt;
        }
        #endregion

        #region 执行带参数的查询SQL语句或存储过程
        /// <summary>
        ///  执行带参数的查询SQL语句或存储过程
        /// </summary>
        /// <param name="cmdText">查询SQL语句或存储过程</param>
        /// <param name="paras">参数集合</param>
        /// <param name="ct">命令类型</param>
        /// <returns></returns>
        public DataTable ExecuteQuery(string cmdText, SqlParameter[] paras, CommandType ct)
        {
            DataTable dt = new DataTable();
            _cmd = new SqlCommand(cmdText, GetConn());
            _cmd.CommandType = ct;
            _cmd.Parameters.AddRange(paras);
            using (_sdr = _cmd.ExecuteReader(CommandBehavior.CloseConnection))
            {
                dt.Load(_sdr);
            }
            return dt;
        }
        #endregion
    }
}
