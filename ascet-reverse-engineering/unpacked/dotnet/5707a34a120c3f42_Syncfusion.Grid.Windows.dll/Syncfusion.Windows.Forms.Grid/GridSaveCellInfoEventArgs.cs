using Syncfusion.ComponentModel;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridSaveCellInfoEventArgs : GridCellHandledEventArgs
{
	private GridStyleInfo style;

	private StyleModifyType modifyType;

	[TraceProperty(true)]
	public GridStyleInfo Style => style;

	[TraceProperty(true)]
	public StyleModifyType ModifyType => modifyType;

	public GridSaveCellInfoEventArgs(int rowIndex, int colIndex, GridStyleInfo style, StyleModifyType modifyType)
		: base(rowIndex, colIndex)
	{
		this.style = style;
		this.modifyType = modifyType;
	}
}
