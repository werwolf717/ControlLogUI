using Qml.Net;
using System;
using System.Collections.Generic;
using ControlLogUI.Interfaces;
using ControlLogUI.Classes;
using System.Linq;

namespace ControlLogUI.Controller
{
    public class UIController
    {
        private IDispatcher _dispatcher;
        
        [NotifySignal]
        public List<string> dbList => new List<string>(){"1", "2"};
        public string SelecteddbList { get; set; }
    }
}