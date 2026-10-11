using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCellCancelEventArgs : SyncfusionCancelEventArgs
{
	private int rowIndex;

	private int colIndex;

	[TraceProperty(true)]
	public int RowIndex => rowIndex;

	[TraceProperty(true)]
	public int ColIndex => colIndex;

	public GridCellCancelEventArgs(int rowIndex, int colIndex)
	{
		this.rowIndex = rowIndex;
		this.colIndex = colIndex;
	}
}
