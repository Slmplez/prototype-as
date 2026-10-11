using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridMoveCurrentCellDirectionEventArgs : GridQueryNextCurrentCellPositionEventArgs
{
	private int numCells;

	private bool extendSelection;

	[TraceProperty(true)]
	public int NumCells => numCells;

	[TraceProperty(true)]
	public bool ExtendSelection => extendSelection;

	public GridMoveCurrentCellDirectionEventArgs(GridDirectionType direction, int numCells, bool extendSelection, int rowIndex, int colIndex)
		: base(direction, rowIndex, colIndex)
	{
		this.numCells = numCells;
		this.extendSelection = extendSelection;
	}
}
