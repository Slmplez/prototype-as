using System.ComponentModel;
using System.Diagnostics;

namespace Syncfusion.ComponentModel;

public class SyncfusionCancelEventArgs : CancelEventArgs
{
	public SyncfusionCancelEventArgs()
	{
	}

	public SyncfusionCancelEventArgs(bool cancel)
		: base(cancel)
	{
	}

	[DebuggerStepThrough]
	public override string ToString()
	{
		return TraceProperties.ToString(this);
	}
}
