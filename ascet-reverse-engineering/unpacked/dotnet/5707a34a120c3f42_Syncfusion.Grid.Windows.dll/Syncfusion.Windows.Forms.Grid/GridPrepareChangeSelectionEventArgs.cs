using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridPrepareChangeSelectionEventArgs : SyncfusionEventArgs
{
	private GridRangeInfo oldRange;

	private GridRangeInfo newRange;

	[TraceProperty(true)]
	public GridRangeInfo OldRange => oldRange;

	[TraceProperty(true)]
	public GridRangeInfo NewRange => newRange;

	public GridPrepareChangeSelectionEventArgs(GridRangeInfo oldRange, GridRangeInfo newRange)
	{
		this.oldRange = oldRange;
		this.newRange = newRange;
	}
}
