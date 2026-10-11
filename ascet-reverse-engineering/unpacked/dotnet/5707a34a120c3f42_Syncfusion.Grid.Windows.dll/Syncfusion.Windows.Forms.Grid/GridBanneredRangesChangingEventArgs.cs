using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridBanneredRangesChangingEventArgs : SyncfusionCancelEventArgs
{
	private GridRangeInfoList ranges;

	private bool setOrReset;

	[TraceProperty(true)]
	public GridRangeInfoList Ranges => ranges;

	[TraceProperty(true)]
	public bool SetOrReset => setOrReset;

	public GridBanneredRangesChangingEventArgs(GridRangeInfoList ranges, bool setOrReset)
	{
		this.ranges = ranges;
		this.setOrReset = setOrReset;
	}
}
