using System;
using System.Collections.Generic;
using ControlLogUI.Interfaces;
using ControlLogUI.Classes;
using Qml.Net;

namespace ControlLogUI.Controller
{
    public partial class UIControllerForm
    {
        public UIControllerForm(IDispatcher dispatcher)
        {
            _dispatcher = dispatcher;
            User? _user = DB.GetUserData(Properties.Settings.Default.connectionString);

            if (_user != null)
            {
                userName = ((User) _user).fullName + ",";
                userRole = ((User) _user).role;
            }
        }
    }
}