using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridCellButtonClickedEventArgs : GridCellCancelEventArgs
{
	private int buttonIndex;

	private GridCellButton button;

	[TraceProperty(true)]
	public int ButtonIndex => buttonIndex;

	[TraceProperty(true)]
	public GridCellButton Button => button;

	public GridCellButtonClickedEventArgs(int rowIndex, int colIndex, int buttonIndex, GridCellButton button)
		: base(rowIndex, colIndex)
	{
		this.buttonIndex = buttonIndex;
		this.button = button;
	}
}
