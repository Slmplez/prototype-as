using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal sealed class GridDragSelectHitTestInfo
{
	internal GridRangeInfoList selections;

	internal GridRangeInfo cellRange;

	internal int rowIndex;

	internal int colIndex;

	internal int headerRowCount;

	internal int headerColCount;

	internal bool cellSelected;

	internal bool tableSelected;

	internal bool colSelected;

	internal bool rowSelected;

	internal int hitTestResult;

	internal Point point;

	internal GridDragSelectHitTestInfo(GridDragSelectMouseController dsc, GridControlBase Grid, Point point)
	{
		selections = Grid.Model.Selections.Ranges;
		cellRange = Grid.PointToRangeInfo(point, -1);
		rowIndex = cellRange.Top;
		colIndex = cellRange.Left;
		this.point = point;
		headerRowCount = Grid.InternalGetHeaderRows();
		headerColCount = Grid.InternalGetHeaderCols();
		cellSelected = selections.AnyRangeContains(cellRange);
		tableSelected = selections.AnyRangeContains(GridRangeInfo.Table());
		colSelected = rowIndex <= 0 && colIndex > headerColCount && selections.AnyRangeContains(GridRangeInfo.Col(colIndex));
		rowSelected = colIndex <= 0 && rowIndex > headerRowCount && selections.AnyRangeContains(GridRangeInfo.Row(rowIndex));
		if ((tableSelected || !cellSelected || !colSelected || !Grid.Model.Options.AllowDragSelectedCols) && (tableSelected || !cellSelected || !rowSelected || !Grid.Model.Options.AllowDragSelectedRows))
		{
			return;
		}
		GridRangeInfo activeRange = selections.GetRangesIntersecting(GridRangeInfo.Cell(rowIndex, colIndex)).ActiveRange;
		if (activeRange.IsRows || activeRange.IsCols)
		{
			GridRangeInfo destination = GridRangeInfo.Empty;
			if (dsc.RaiseSelectionDragging(activeRange, ref destination, GridDragSelectionReason.HitTest))
			{
				hitTestResult = 5;
			}
		}
	}
}
