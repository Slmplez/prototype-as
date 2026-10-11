using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal class GridUpdater
{
	public static void UpdateCoveredCellsRange(GridControlBase pGrid, GridRangeInfo range, bool setOrReset)
	{
		_ = GridRangeInfo.Empty;
		if (pGrid.ShouldPrepareUpdate(markPaintPending: true))
		{
			if (setOrReset && pGrid.CurrentCell.GetCurrentCell(out var rowIndex, out var colIndex) && range.Contains(GridRangeInfo.Cell(rowIndex, colIndex)))
			{
				pGrid.CurrentCell.MoveTo(range.Top, range.Left, GridSetCurrentCellOptions.ScrollInView);
			}
			pGrid.InvalidateRange(range);
		}
	}
}
