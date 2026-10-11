using System;
using System.Diagnostics;

namespace Syncfusion.ComponentModel;

public class SyncfusionEventArgs : EventArgs
{
	[DebuggerStepThrough]
	public override string ToString()
	{
		return TraceProperties.ToString(this);
	}
}
