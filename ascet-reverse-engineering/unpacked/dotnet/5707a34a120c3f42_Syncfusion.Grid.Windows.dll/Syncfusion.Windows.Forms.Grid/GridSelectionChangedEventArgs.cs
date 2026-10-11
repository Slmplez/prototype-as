using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridSelectionChangedEventArgs : SyncfusionEventArgs
{
	private GridRangeInfo range;

	private GridSelectionReason reason;

	private GridRangeInfoList oldRanges;

	[TraceProperty(true)]
	public GridRangeInfo Range => range;

	[TraceProperty(true)]
	public GridSelectionReason Reason => reason;

	[TraceProperty(true)]
	public GridRangeInfoList OldRanges => oldRanges;

	public GridSelectionChangedEventArgs(GridRangeInfo range, GridRangeInfoList oldRanges, GridSelectionReason reason)
	{
		this.range = range;
		this.reason = reason;
		this.oldRanges = oldRanges;
	}
}
