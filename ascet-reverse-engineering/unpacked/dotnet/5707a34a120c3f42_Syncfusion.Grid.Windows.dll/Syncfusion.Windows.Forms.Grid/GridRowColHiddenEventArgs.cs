using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridRowColHiddenEventArgs : SyncfusionSuccessEventArgs
{
	private int from;

	private int to;

	private bool[] savedValues;

	[TraceProperty(true)]
	public int From => from;

	[TraceProperty(true)]
	public int To => to;

	public bool[] SavedValues => savedValues;

	public GridRowColHiddenEventArgs(int from, int last, bool[] savedValues, bool success)
		: base(success)
	{
		this.from = from;
		to = last;
		this.savedValues = savedValues;
	}
}
