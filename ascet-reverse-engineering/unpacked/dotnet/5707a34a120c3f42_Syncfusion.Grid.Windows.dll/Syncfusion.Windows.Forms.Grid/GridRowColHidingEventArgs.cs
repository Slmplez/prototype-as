using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridRowColHidingEventArgs : SyncfusionCancelEventArgs
{
	private int from;

	private int to;

	private bool[] values;

	[TraceProperty(true)]
	public int From => from;

	[TraceProperty(true)]
	public int To => to;

	public bool[] Values => values;

	public GridRowColHidingEventArgs(int from, int last, bool[] values)
	{
		this.from = from;
		to = last;
		this.values = values;
	}
}
