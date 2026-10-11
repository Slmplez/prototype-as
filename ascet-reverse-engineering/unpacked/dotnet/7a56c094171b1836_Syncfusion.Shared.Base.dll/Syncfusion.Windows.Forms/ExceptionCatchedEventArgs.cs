using System;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms;

public sealed class ExceptionCatchedEventArgs : SyncfusionEventArgs
{
	private Exception ex;

	[TraceProperty(true)]
	public Exception Exception => ex;

	public ExceptionCatchedEventArgs(Exception ex)
	{
		this.ex = ex;
	}
}
