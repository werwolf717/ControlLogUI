using System;
using System.Collections.Generic;
using ControlLogUI.Interfaces;
using ControlLogUI.Classes;
using Qml.Net;

namespace ControlLogUI.Controller
{
    public partial class UIControllerForm
    {
        private IDispatcher _dispatcher;
        
        [NotifySignal] 
        public string userName { get; set; }
    }
}