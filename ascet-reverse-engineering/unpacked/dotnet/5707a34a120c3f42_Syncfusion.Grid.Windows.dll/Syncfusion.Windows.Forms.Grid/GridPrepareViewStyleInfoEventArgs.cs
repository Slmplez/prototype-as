using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridPrepareViewStyleInfoEventArgs : GridCellCancelEventArgs
{
	private GridStyleInfo style;

	[TraceProperty(true)]
	public GridStyleInfo Style => style;

	public GridPrepareViewStyleInfoEventArgs(int rowIndex, int colIndex, GridStyleInfo style)
		: base(rowIndex, colIndex)
	{
		this.style = style;
	}
}
