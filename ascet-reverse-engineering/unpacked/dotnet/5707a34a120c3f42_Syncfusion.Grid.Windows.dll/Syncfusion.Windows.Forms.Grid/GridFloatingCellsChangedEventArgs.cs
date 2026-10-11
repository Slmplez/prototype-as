using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridFloatingCellsChangedEventArgs : SyncfusionSuccessEventArgs
{
	private GridRangeInfo range;

	[TraceProperty(true)]
	public GridRangeInfo Range => range;

	internal GridFloatingCellsChangedEventArgs(GridRangeInfo range, bool success)
		: base(success)
	{
		this.range = range;
	}
}
