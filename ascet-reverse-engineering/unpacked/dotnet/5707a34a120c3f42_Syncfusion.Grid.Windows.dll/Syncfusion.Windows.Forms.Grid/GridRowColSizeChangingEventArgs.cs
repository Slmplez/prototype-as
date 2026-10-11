using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridRowColSizeChangingEventArgs : SyncfusionCancelEventArgs
{
	private int from;

	private int to;

	private int[] values;

	[TraceProperty(true)]
	public int From => from;

	[TraceProperty(true)]
	public int To => to;

	public int[] Values => values;

	public GridRowColSizeChangingEventArgs(int from, int last, int[] values)
	{
		this.from = from;
		to = last;
		this.values = values;
	}
}
