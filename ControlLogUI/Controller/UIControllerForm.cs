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
            userName = DB.GetUserData(Properties.Settings.Default.connectionString);
            int i = 0;
        }
    }
}