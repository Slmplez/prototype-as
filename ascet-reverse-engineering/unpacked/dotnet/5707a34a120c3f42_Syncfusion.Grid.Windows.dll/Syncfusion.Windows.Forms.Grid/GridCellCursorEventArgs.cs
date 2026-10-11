using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridCellCursorEventArgs : GridCellCancelEventArgs
{
	private GridCellButton cellButton;

	private Cursor cursor;

	[TraceProperty(true)]
	public GridCellButton CellButton => cellButton;

	[TraceProperty(true)]
	public Cursor Cursor
	{
		get
		{
			return cursor;
		}
		set
		{
			cursor = value;
		}
	}

	public GridCellCursorEventArgs(int rowIndex, int colIndex, GridCellButton cellButton, Cursor cursor)
		: base(rowIndex, colIndex)
	{
		this.cellButton = cellButton;
		this.cursor = cursor;
	}
}
