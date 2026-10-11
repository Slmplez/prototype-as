using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridCellsChangedEventArgs : SyncfusionSuccessEventArgs
{
	private GridRangeInfo range;

	private GridStyleInfo[] savedCellsInfo;

	[TraceProperty(true)]
	public GridRangeInfo Range => range;

	public GridStyleInfo[] SavedCellsInfo => savedCellsInfo;

	public GridCellsChangedEventArgs(GridRangeInfo range, GridStyleInfo[] savedCellsInfo, bool success)
		: base(success)
	{
		this.range = range;
		this.savedCellsInfo = savedCellsInfo;
	}
}
