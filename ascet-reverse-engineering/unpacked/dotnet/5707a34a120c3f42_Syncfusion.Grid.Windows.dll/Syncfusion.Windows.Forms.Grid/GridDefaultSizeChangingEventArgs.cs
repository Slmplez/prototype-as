using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridDefaultSizeChangingEventArgs : SyncfusionCancelEventArgs
{
	private int value;

	[TraceProperty(true)]
	public int Value => value;

	public GridDefaultSizeChangingEventArgs(int value)
	{
		this.value = value;
	}
}
