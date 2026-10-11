using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridSelectionDragEventArgs : SyncfusionCancelEventArgs
{
	private GridRangeInfo range;

	private GridRangeInfo destination;

	private GridDragSelectionReason reason;

	[TraceProperty(true)]
	public GridRangeInfo Range => range;

	[TraceProperty(true)]
	public GridRangeInfo Destination
	{
		get
		{
			return destination;
		}
		set
		{
			destination = value;
		}
	}

	[TraceProperty(true)]
	public GridDragSelectionReason Reason => reason;

	public GridSelectionDragEventArgs(GridRangeInfo range, GridRangeInfo destination, GridDragSelectionReason reason)
	{
		this.range = range;
		this.reason = reason;
		this.destination = destination;
	}
}
