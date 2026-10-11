using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridCellHitTestEventArgs : GridCellCancelEventArgs
{
	private MouseEventArgs mouseEventArgs;

	private IMouseController controller;

	private int result;

	private GridCellButton cellButton;

	[TraceProperty(true)]
	public MouseEventArgs MouseEventArgs => mouseEventArgs;

	[TraceProperty(true)]
	public IMouseController Controller => controller;

	[TraceProperty(true)]
	public GridCellButton CellButton => cellButton;

	[TraceProperty(true)]
	public int Result
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

	public GridCellHitTestEventArgs(int rowIndex, int colIndex, MouseEventArgs mouseEventArgs, IMouseController controller, GridCellButton cellButton, int result)
		: base(rowIndex, colIndex)
	{
		this.mouseEventArgs = mouseEventArgs;
		this.controller = controller;
		this.result = result;
		this.cellButton = cellButton;
	}
}
