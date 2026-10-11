namespace Syncfusion.Windows.Forms.Grid;

public class GridCurrentCellMovingEventArgs : GridCurrentCellActivatingEventArgs
{
	public GridCurrentCellMovingEventArgs(int rowIndex, int colIndex, GridSetCurrentCellOptions options)
		: base(rowIndex, colIndex, options)
	{
	}
}
