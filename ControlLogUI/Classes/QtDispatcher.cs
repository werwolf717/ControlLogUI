using Qml.Net;
using System;
using System.Threading.Tasks;
using ControlLogUI.Interfaces;

namespace ControlLogUI.Classes
{
    public class QtDispatcher : IDispatcher
    {
        private readonly QCoreApplication _application;
        
        public QtDispatcher(QCoreApplication application)
        {
            _application = application;
        }
        
        public void Dispatch(Action action)
        {
            _application.Dispatch(action);
        }

        public Task DispatchAsync(Func<Task> action)
        {
            return _application.DispatchAsync(action);
        }

        public bool IsMainThread => QCoreApplication.IsMainThread;
        
        public void VerifyMainThread()
        {
            if (IsMainThread) 
                return;
            Console.WriteLine("Not main thread!");
            throw new InvalidOperationException(
                "The calling thread cannot access this object because a different thread owns it.");
        }
        public void ExitApp()
        {
            QCoreApplication.Quit();
        }
    }
}