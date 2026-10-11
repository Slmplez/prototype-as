using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridBanneredRangesChangedEventArgs : SyncfusionSuccessEventArgs
{
	private GridRangeInfoList ranges;

	private bool setOrReset;

	public GridRangeInfoList Ranges => ranges;

	[TraceProperty(true)]
	public bool SetOrReset => setOrReset;

	public GridBanneredRangesChangedEventArgs(GridRangeInfoList ranges, bool setOrReset, bool success)
		: base(success)
	{
		this.ranges = ranges;
		this.setOrReset = setOrReset;
	}
}
