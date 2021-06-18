using System;
using System.Collections.Generic;
using ControlLogUI.Interfaces;
using ControlLogUI.Classes;
using Qml.Net;

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

            user = Properties.Settings.Default.username;
            selecteddbIndex = Login.GetProp().IndexOf(Properties.Settings.Default.selectedDB);
            password = "12qwaszx";
            
            Console.WriteLine(Properties.Settings.Default.username);
            Console.WriteLine(Properties.Settings.Default.selectedDB);

            return Login.GetProp();
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

            Properties.Settings.Default.username = user;
            Properties.Settings.Default.selectedDB = selecteddbList;
            Properties.Settings.Default.Save();

            if(DB.CheckLogin(user, password, Login.connProp[selecteddbList]))
                QCoreApplication.Exit(1);
            else
                QCoreApplication.Exit(2);


        }

    }
}