using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridRangeMovedEventArgs : SyncfusionSuccessEventArgs
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

	public GridRangeMovedEventArgs(int from, int count, int target, bool success)
		: base(success)
	{
		this.from = from;
		this.count = count;
		this.target = target;
	}
}
