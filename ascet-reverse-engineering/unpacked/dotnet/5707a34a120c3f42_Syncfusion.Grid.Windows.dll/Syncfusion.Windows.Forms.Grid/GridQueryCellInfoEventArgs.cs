using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridQueryCellInfoEventArgs : GridCellHandledEventArgs
{
	private GridStyleInfo style;

	[TraceProperty(true)]
	public GridStyleInfo Style => style;

	public GridQueryCellInfoEventArgs(int rowIndex, int colIndex, GridStyleInfo style)
		: base(rowIndex, colIndex)
	{
		this.style = style;
	}
}
