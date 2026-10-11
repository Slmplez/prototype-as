using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCurrentCellActivatingEventArgs : SyncfusionCancelEventArgs
{
	internal int rowIndex;

	internal int colIndex;

	internal GridSetCurrentCellOptions options;

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

	public GridCurrentCellActivatingEventArgs(int rowIndex, int colIndex, GridSetCurrentCellOptions options)
		: base(cancel: false)
	{
		this.rowIndex = rowIndex;
		this.colIndex = colIndex;
		this.options = options;
	}
}
