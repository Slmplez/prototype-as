using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridRangeRemovingEventArgs : SyncfusionCancelEventArgs
{
	private int from;

	private int to;

	[TraceProperty(true)]
	public int From => from;

	[TraceProperty(true)]
	public int To => to;

	public GridRangeRemovingEventArgs(int from, int last)
	{
		this.from = from;
		to = last;
	}
}
