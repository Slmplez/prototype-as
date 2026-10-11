using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridActivateToolTipEventArgs : SyncfusionCancelEventArgs
{
	private int rowIndex;

	private int colIndex;

	private GridStyleInfo style;

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
	public GridStyleInfo Style
	{
		get
		{
			return style;
		}
		set
		{
			style = value;
		}
	}

	public GridActivateToolTipEventArgs(int rowIndex, int colIndex, GridStyleInfo style)
	{
		this.rowIndex = rowIndex;
		this.colIndex = colIndex;
		this.style = style;
	}
}
