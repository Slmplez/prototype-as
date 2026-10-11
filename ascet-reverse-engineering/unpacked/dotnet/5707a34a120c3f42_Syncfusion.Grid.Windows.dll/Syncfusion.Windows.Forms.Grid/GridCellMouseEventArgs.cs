using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridCellMouseEventArgs : GridCellCancelEventArgs
{
	private MouseEventArgs mouseEventArgs;

	private GridCellButton cellButton;

	[TraceProperty(true)]
	public GridCellButton CellButton => cellButton;

	[TraceProperty(true)]
	public MouseEventArgs MouseEventArgs => mouseEventArgs;

	public GridCellMouseEventArgs(int rowIndex, int colIndex, GridCellButton cellButton, MouseEventArgs mouseEventArgs)
		: base(rowIndex, colIndex)
	{
		this.mouseEventArgs = mouseEventArgs;
		this.cellButton = cellButton;
	}
}
