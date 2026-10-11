namespace Syncfusion.Windows.Forms.Grid;

public class GridCurrentCellActivateFailedEventArgs : GridCellEventArgs
{
	public GridCurrentCellActivateFailedEventArgs(int rowIndex, int colIndex)
		: base(rowIndex, colIndex)
	{
	}
}
