using System.Runtime.CompilerServices;

using ConEmu.WinForms.Util;

#pragma warning disable CheckNamespace

namespace System.Threading.Tasks
{
	internal struct TaskAwaiter2 : INotifyCompletion
	{
		private readonly bool _isctx;

		private readonly Task _task;

		internal TaskAwaiter2(Task task, bool isctx = true)
		{
			_task = task;
			_isctx = isctx;
		}

		public bool IsCompleted => _task.IsCompleted;

		public void GetResult()
		{
#pragma warning disable VSTHRD002, VSTHRD110
			_task.Wait();
		}

		public void OnCompleted(Action continuation)
		{
			_task.ContinueWith(param0 => continuation(), _isctx ? TaskHelpers.GetTaskSchedulerFromContext() : TaskScheduler.Default);
		}
	}
}