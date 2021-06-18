using System;
using ControlLogUI.Interfaces;
using Oracle.ManagedDataAccess.Client;

namespace ControlLogUI.Classes
{
    public class DB
    {
        public static bool CheckLogin(string _user, string _pass, ILogin.ConnectionProperties _connProp)
        {

            string connectionStr = "User ID=" + _user + "; Password=" + _pass + "; Data Source=(DESCRIPTION =" +
                                   " (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = " + _connProp.Host +
                                   ")(PORT = " +
                                   _connProp.Port + ")))(CONNECT_DATA = (SERVICE_NAME = " + _connProp.ServiceName +
                                   ")));";

            if (GetUserData(connectionStr) == "")
                return false;
            
            Properties.Settings.Default.connectionString = connectionStr;
            Properties.Settings.Default.Save();

            return true;
        }

        public static string GetUserData(string _connectionStr)
        {
            string name = "";
            
            string queryString = "select " +
                                    "t.USERNAME," +
                                    "t1.wor_family," +
                                    "t1.wor_name," +
                                    "t1.wor_surname," +
                                    "t.GRANTED_ROLE" + 
                                 " from " + 
                                    "user_role_privs t" +
                                 " left join " +
                                    "WORKER t1" +
                                 " on " +
                                    "t.USERNAME = t1.wor_user" +
                                 " where " +
                                    "t.GRANTED_ROLE like 'CL_%'";
            
            using (OracleConnection connection = new OracleConnection())
            {
                try
                {
                    OracleCommand command = new OracleCommand(queryString);
                    connection.ConnectionString = _connectionStr;
                    command.Connection = connection;
                    
                    connection.Open();
                    OracleDataReader reader = command.ExecuteReader();

                    string _name = "", _sname = "", _family = "", _role = "";
                    
                    while (reader.Read())
                    {
                        _family = reader["wor_family"].ToString();
                        _name = reader["wor_name"].ToString();
                        _sname = reader["wor_surname"].ToString();
                        _role = reader["GRANTED_ROLE"].ToString();
                        if (_role == "CL_ADMIN")
                        {
                            _role = "admin";
                            break;
                        }
                        else
                            _role = "user";
                    }

                    name = _family + " " + _name.Substring(0, 1) + "." + _sname.Substring(0, 1) + "., " + _role;
                }
                catch (Exception e)
                {
                    Console.WriteLine(e);
                    return "";
                }
            }
            
            return name;
        }

    }
}