using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridRowRangeEventArgs : SyncfusionCancelEventArgs
{
	private int from;

	private int to;

	[TraceProperty(true)]
	public int From => from;

	[TraceProperty(true)]
	public int To => to;

	public GridRowRangeEventArgs(int from, int last)
	{
		this.from = from;
		to = last;
	}
}
