using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridQueryCoveredRangeEventArgs : GridCellHandledEventArgs
{
	private GridRangeInfo range;

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

	public GridQueryCoveredRangeEventArgs(int rowIndex, int colIndex)
		: base(rowIndex, colIndex)
	{
		range = null;
	}

	public GridQueryCoveredRangeEventArgs(int rowIndex, int colIndex, GridRangeInfo range)
		: base(rowIndex, colIndex)
	{
		this.range = range;
	}
}
