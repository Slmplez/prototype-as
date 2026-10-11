namespace Syncfusion.Windows.Forms.Grid;

public class GridCurrentCellDeactivatedEventArgs : GridCellEventArgs
{
	public GridCurrentCellDeactivatedEventArgs(int rowIndex, int colIndex)
		: base(rowIndex, colIndex)
	{
	}
}
