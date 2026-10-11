using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridRowColSizeChangedEventArgs : SyncfusionSuccessEventArgs
{
	private int from;

	private int to;

	private int[] savedValues;

	[TraceProperty(true)]
	public int From => from;

	[TraceProperty(true)]
	public int To => to;

	public int[] SavedValues => savedValues;

	public GridRowColSizeChangedEventArgs(int from, int last, int[] savedValues, bool success)
		: base(success)
	{
		this.from = from;
		to = last;
		this.savedValues = savedValues;
	}
}
