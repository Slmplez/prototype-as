using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridMergeCellsChangedEventArgs : SyncfusionSuccessEventArgs
{
	private GridRangeInfo range;

	[TraceProperty(true)]
	public GridRangeInfo Range => range;

	internal GridMergeCellsChangedEventArgs(GridRangeInfo range, bool success)
		: base(success)
	{
		this.range = range;
	}
}
