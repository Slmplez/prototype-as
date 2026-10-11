using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridInvalidateRangeRequestEventArgs : SyncfusionEventArgs
{
	private GridRangeInfo range;

	private GridRangeOptions options;

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
	public GridRangeOptions Options
	{
		get
		{
			return options;
		}
		set
		{
			options = value;
		}
	}

	public GridInvalidateRangeRequestEventArgs(GridRangeInfo range, GridRangeOptions options)
	{
		this.range = range;
		this.options = options;
	}
}
