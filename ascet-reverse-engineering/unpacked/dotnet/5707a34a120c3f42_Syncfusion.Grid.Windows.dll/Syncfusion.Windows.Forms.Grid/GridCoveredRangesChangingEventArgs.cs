using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridCoveredRangesChangingEventArgs : SyncfusionCancelEventArgs
{
	private GridRangeInfoList ranges;

	private bool setOrReset;

	[TraceProperty(true)]
	public GridRangeInfoList Ranges => ranges;

	[TraceProperty(true)]
	public bool SetOrReset => setOrReset;

	public GridCoveredRangesChangingEventArgs(GridRangeInfoList ranges, bool setOrReset)
	{
		this.ranges = ranges;
		this.setOrReset = setOrReset;
	}
}
