using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridSelectionChangingEventArgs : SyncfusionCancelEventArgs
{
	private GridRangeInfo range;

	private GridSelectionReason reason;

	private GridRangeInfo clickRange = GridRangeInfo.Empty;

	[TraceProperty(true)]
	public GridRangeInfo Range
	{
		get
		{
			return range;
		}
		set
		{
			range = value;
		}
	}

	[TraceProperty(true)]
	public GridRangeInfo ClickRange => clickRange;

	[TraceProperty(true)]
	public GridSelectionReason Reason => reason;

	public GridSelectionChangingEventArgs(GridRangeInfo range, GridSelectionReason reason, GridRangeInfo clickRange)
		: this(range, reason)
	{
		this.clickRange = clickRange;
	}

	public GridSelectionChangingEventArgs(GridRangeInfo range, GridSelectionReason reason)
	{
		this.range = range;
		this.reason = reason;
	}
}
