using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridClearingCellsEventArgs : SyncfusionHandledEventArgs
{
	private GridRangeInfoList rangeList;

	private bool clearStyle;

	private bool result;

	[TraceProperty(true)]
	public GridRangeInfoList RangeList
	{
		get
		{
			return rangeList;
		}
		set
		{
			rangeList = value;
		}
	}

	[TraceProperty(true)]
	public bool ClearStyle
	{
		get
		{
			return clearStyle;
		}
		set
		{
			clearStyle = value;
		}
	}

	[TraceProperty(true)]
	public bool Result
	{
		get
		{
			return result;
		}
		set
		{
			result = value;
		}
	}

	public GridClearingCellsEventArgs(GridRangeInfoList rangeList, bool clearStyle, bool result)
	{
		this.rangeList = rangeList;
		this.clearStyle = clearStyle;
		this.result = result;
	}
}
