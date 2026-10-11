using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridCellClickEventArgs : GridCellCancelEventArgs
{
	private MouseEventArgs mouseEventArgs;

	private bool overImage;

	public MouseEventArgs MouseEventArgs => mouseEventArgs;

	public bool IsOverImage => overImage;

	public GridCellClickEventArgs(int rowIndex, int colIndex, MouseEventArgs e, bool overImage)
		: base(rowIndex, colIndex)
	{
		mouseEventArgs = e;
		this.overImage = overImage;
	}
}
