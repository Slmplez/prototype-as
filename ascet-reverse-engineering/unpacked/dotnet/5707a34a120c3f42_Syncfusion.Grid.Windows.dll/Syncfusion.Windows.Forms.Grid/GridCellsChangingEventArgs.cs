using Syncfusion.ComponentModel;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridCellsChangingEventArgs : SyncfusionCancelEventArgs
{
	private GridRangeInfo range;

	private GridStyleInfo[] cellsInfo;

	private StyleModifyType mt;

	[TraceProperty(true)]
	public GridRangeInfo Range => range;

	public GridStyleInfo[] CellsInfo => cellsInfo;

	[TraceProperty(true)]
	public StyleModifyType ModiyType => mt;

	public GridCellsChangingEventArgs(GridRangeInfo range, GridStyleInfo[] cellsInfo, StyleModifyType mt)
	{
		this.range = range;
		this.cellsInfo = cellsInfo;
		this.mt = mt;
	}
}
