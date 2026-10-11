using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridEndUpdateRequestEventArgs : SyncfusionEventArgs
{
	private bool value;

	[TraceProperty(true)]
	public bool Value
	{
		get
		{
			return value;
		}
		set
		{
			this.value = value;
		}
	}

	public GridEndUpdateRequestEventArgs()
	{
		value = false;
	}

	public GridEndUpdateRequestEventArgs(bool value)
	{
		this.value = value;
	}
}
