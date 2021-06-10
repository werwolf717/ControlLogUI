using System;
using System.Collections.Generic;
using ControlLogUI.Interfaces;
using ControlLogUI.Classes;

namespace ControlLogUI.Controller
{
    public partial class UIController
    {
        public UIController(IDispatcher dispatcher)
        {
            _dispatcher = dispatcher;
        }
        public void Initialize()
        {
        }
        public void Cancel_button_click()
        {
            Console.WriteLine("Press the button!");
        }
    }
}