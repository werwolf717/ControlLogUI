using Qml.Net;
using System;
using System.Collections.Generic;
using ControlLogUI.Interfaces;
using ControlLogUI.Classes;
using System.Linq;

namespace ControlLogUI.Controller
{
    public partial class UIController
    {
        private IDispatcher _dispatcher;
        
        [NotifySignal]
        public List<string> dbList => GetConnectionNames();
        
        [NotifySignal]
        public string selecteddbList { get; set; }
        
        [NotifySignal]
        public int selecteddbIndex { get; set; }

        [NotifySignal] 
        public string user { get; set; }

        [NotifySignal]
        public string password { get; set; }
        
    }
}