using System;
using System.Threading.Tasks;

namespace ControlLogUI.Interfaces
{
    public interface IDispatcher
    {
        void Dispatch(Action action);

        Task DispatchAsync(Func<Task> action);

        bool IsMainThread { get; }

        void VerifyMainThread();
    }
}