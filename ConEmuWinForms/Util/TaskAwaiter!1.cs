using System.Runtime.CompilerServices;

using ConEmu.WinForms.Util;

#pragma warning disable CheckNamespace

namespace System.Threading.Tasks
{
	internal struct TaskAwaiter2<TResult> : INotifyCompletion
	{
		private readonly bool _isctx;

		private readonly Task<TResult> _task;

		public TaskAwaiter2(Task<TResult> task, bool isctx = true)
		{
			_task = task;
			_isctx = isctx;
		}

		public bool IsCompleted => _task.IsCompleted;

		public TResult GetResult()
		{
#pragma warning disable VSTHRD002, VSTHRD110
			return _task.Result;
		}

		public void OnCompleted(Action continuation)
		{
			_task.ContinueWith(param0 => continuation(), _isctx ? TaskHelpers.GetTaskSchedulerFromContext() : TaskScheduler.Default);
		}
	}
}