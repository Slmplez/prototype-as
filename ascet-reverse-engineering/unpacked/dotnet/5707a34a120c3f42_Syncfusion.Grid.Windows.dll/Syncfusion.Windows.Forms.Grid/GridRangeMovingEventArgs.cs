using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridRangeMovingEventArgs : SyncfusionCancelEventArgs
{
	private int from;

	private int count;

	private int target;

	[TraceProperty(true)]
	public int From => from;

	[TraceProperty(true)]
	public int Count => count;

	[TraceProperty(true)]
	public int Target => target;

	public GridRangeMovingEventArgs(int from, int count, int target)
	{
		this.from = from;
		this.count = count;
		this.target = target;
	}
}
