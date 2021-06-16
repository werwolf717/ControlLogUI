using ControlLogUI.Interfaces;

namespace ControlLogUI.Controller
{
    public partial class UIControllerMain
    {
        private IDispatcher _dispatcher;
        public bool enableWait { get; set; }
    }
}