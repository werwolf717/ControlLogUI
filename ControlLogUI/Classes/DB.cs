using System;
using ControlLogUI.Interfaces;
using Oracle.ManagedDataAccess.Client;

namespace ControlLogUI.Classes
{
    public class DB
    {
        public static bool CheckLogin(string _user, string _pass, ILogin.ConnectionProperties _connProp)
        {
            using (OracleConnection connection = new OracleConnection())
            {
                try
                {
                    connection.ConnectionString = "User ID=" + _user + "; Password=" + _pass + "; Data Source=(DESCRIPTION =" +
                                                  " (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = " + _connProp.Host + ")(PORT = " +
                                                  _connProp.Port + ")))(CONNECT_DATA = (SERVICE_NAME = " + _connProp.ServiceName + ")));";
                    connection.Open();
                }
                catch (Exception e)
                {
                    Console.WriteLine(e);
                    return false;
                }
            }

            return true;
        }
    }
}