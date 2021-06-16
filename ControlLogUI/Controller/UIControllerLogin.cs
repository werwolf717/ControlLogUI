using System;
using System.Collections.Generic;
using ControlLogUI.Interfaces;
using ControlLogUI.Classes;
using Qml.Net;
using Oracle.ManagedDataAccess.Client;

namespace ControlLogUI.Controller
{
    public partial class UIController
    {
        public UIController(IDispatcher dispatcher)
        {
            _dispatcher = dispatcher;
        }

        private List<string> GetConnectionNames()
        {
            Login Clogin = new Login();
            ILogin.test();
            return Clogin.GetProp();
        }
        
        public void Cancel_button_click()
        {
            Console.WriteLine("Press the cancel button!");
            _dispatcher.ExitApp();
        }
        public void Access_button_click()
        {
            Console.WriteLine("Press the ok button!");
            Console.WriteLine(user);
            Console.WriteLine(password);
            Console.WriteLine(selecteddbList);
            Console.WriteLine(Resources.test);

            using (OracleConnection connection = new OracleConnection())
            {
                connection.ConnectionString = "User ID=droppings; Password=droppings; Data Source=(DESCRIPTION = (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = 10.0.1.27)(PORT = 1521)))(CONNECT_DATA = (SERVICE_NAME = vonppdb)));";
                connection.Open();
            }
            
            QCoreApplication.Exit(1);
        }

    }
}