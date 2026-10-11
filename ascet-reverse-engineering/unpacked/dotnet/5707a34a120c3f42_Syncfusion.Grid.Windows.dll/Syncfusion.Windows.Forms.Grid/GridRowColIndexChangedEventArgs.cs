using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridRowColIndexChangedEventArgs : SyncfusionSuccessEventArgs
{
	private int savedRowColIndex;

	[TraceProperty(true)]
	public int SavedValue => savedRowColIndex;

	public GridRowColIndexChangedEventArgs(int savedRowColIndex, bool success)
		: base(success)
	{
		this.savedRowColIndex = savedRowColIndex;
	}
}
