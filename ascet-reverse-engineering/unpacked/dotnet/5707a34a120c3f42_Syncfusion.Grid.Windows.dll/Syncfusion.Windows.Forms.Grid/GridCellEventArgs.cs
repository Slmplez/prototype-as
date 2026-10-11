using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCellEventArgs : SyncfusionEventArgs
{
	private int rowIndex;

	private int colIndex;

	[TraceProperty(true)]
	public int RowIndex => rowIndex;

	[TraceProperty(true)]
	public int ColIndex => colIndex;

	public GridCellEventArgs(int rowIndex, int colIndex)
	{
		this.rowIndex = rowIndex;
		this.colIndex = colIndex;
	}
}
