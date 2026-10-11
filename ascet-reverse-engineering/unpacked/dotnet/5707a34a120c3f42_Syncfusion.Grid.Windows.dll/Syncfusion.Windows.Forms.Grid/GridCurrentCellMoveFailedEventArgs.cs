using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCurrentCellMoveFailedEventArgs : SyncfusionEventArgs
{
	private GridSetCurrentCellOptions options;

	private int rowIndex;

	private int colIndex;

	[TraceProperty(true)]
	public GridSetCurrentCellOptions Options
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

	public GridCurrentCellMoveFailedEventArgs(int rowIndex, int colIndex, GridSetCurrentCellOptions options)
	{
		this.options = options;
		this.rowIndex = rowIndex;
		this.colIndex = colIndex;
	}
}
