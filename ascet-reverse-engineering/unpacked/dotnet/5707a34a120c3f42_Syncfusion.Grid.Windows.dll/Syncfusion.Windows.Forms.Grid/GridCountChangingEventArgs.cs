using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridCountChangingEventArgs : SyncfusionCancelEventArgs
{
	private int count;

	[TraceProperty(true)]
	public int Value => count;

	public GridCountChangingEventArgs(int count)
	{
		this.count = count;
	}
}
