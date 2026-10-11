using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridQueryNextCurrentCellPositionEventArgs : SyncfusionHandledEventArgs
{
	private GridDirectionType direction;

	private int rowIndex;

	private int colIndex;

	private bool result;

	[TraceProperty(true)]
	public GridDirectionType Direction
	{
		get
		{
			return direction;
		}
		set
		{
			direction = value;
		}
	}

	[TraceProperty(true)]
	public int RowIndex
	{
		get
		{
			return rowIndex;
		}
		set
		{
			rowIndex = value;
		}
	}

	[TraceProperty(true)]
	public int ColIndex
	{
		get
		{
			return colIndex;
		}
		set
		{
			colIndex = value;
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

	public GridQueryNextCurrentCellPositionEventArgs(GridDirectionType direction, int rowIndex, int colIndex)
	{
		this.direction = direction;
		this.rowIndex = rowIndex;
		this.colIndex = colIndex;
	}
}
