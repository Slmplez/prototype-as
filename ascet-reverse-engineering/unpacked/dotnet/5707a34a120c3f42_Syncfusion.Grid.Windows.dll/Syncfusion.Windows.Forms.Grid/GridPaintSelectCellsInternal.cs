using System;
using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal sealed class GridPaintSelectCellsInternal
{
	internal GridControlBase grid;

	public void UpdateSelectRange(GridRangeInfo range, GridRangeInfoList pOldRangeList)
	{
		if (grid.Updating)
		{
			grid.UpdateSelectRange_Range = range;
			grid.UpdateSelectRange_OldRange = pOldRangeList;
			return;
		}
		GridRangeInfoList selectedRanges = grid.Model.SelectedRanges;
		int lastVisibleRow = grid.ViewLayout.LastVisibleRow;
		int lastVisibleCol = grid.ViewLayout.LastVisibleCol;
		GridRangeInfo gridRangeInfo = range.ExpandRange(0, 0, grid.Model.RowCount, grid.Model.ColCount);
		int rowIndex = ((gridRangeInfo.Top <= grid.InternalGetFrozenRows()) ? gridRangeInfo.Top : Math.Max(gridRangeInfo.Top, grid.TopRowIndex));
		int colIndex = ((gridRangeInfo.Left <= grid.InternalGetFrozenCols()) ? gridRangeInfo.Left : Math.Max(gridRangeInfo.Left, grid.LeftColIndex));
		int rowIndex2 = Math.Min(gridRangeInfo.Bottom, lastVisibleRow);
		int colIndex2 = Math.Min(gridRangeInfo.Right, lastVisibleCol);
		rowIndex = grid.GetClientRow(rowIndex);
		colIndex = grid.GetClientCol(colIndex);
		rowIndex2 = grid.GetClientRow(rowIndex2);
		colIndex2 = grid.GetClientCol(colIndex2);
		if (rowIndex2 == 0)
		{
			rowIndex2 = grid.InternalGetFrozenRows();
		}
		if (colIndex2 == 0)
		{
			colIndex2 = grid.InternalGetFrozenCols();
		}
		if (pOldRangeList != null && pOldRangeList.Count > 0 && pOldRangeList.AnyRangeContains(GridRangeInfo.Table()))
		{
			rowIndex = (colIndex = 0);
		}
		Graphics graphics = grid.CreateGridGraphics();
		_ = grid.InvalidBounds;
		grid.NotifySelectionFrameChanging(graphics);
		for (int i = rowIndex; i <= rowIndex2; i++)
		{
			int row = grid.GetRow(i);
			grid.RangeInfoToRectangle(GridRangeInfo.Row(row));
			for (int j = colIndex; j <= colIndex2; j++)
			{
				int col = grid.GetCol(j);
				GridRangeInfo range2 = GridRangeInfo.Cell(row, col);
				Rectangle rectItem = grid.RangeInfoToRectangle(range2);
				bool invertStateRowCol = grid.Selections.GetInvertStateRowCol(row, col, pOldRangeList);
				bool invertStateRowCol2 = grid.Selections.GetInvertStateRowCol(row, col, selectedRanges);
				if (invertStateRowCol2 != invertStateRowCol)
				{
					grid.IntDrawInvertCell(graphics, row, col, rectItem, inPaint: false);
				}
			}
		}
		grid.NotifySelectionFrameChanged(graphics);
		graphics.Dispose();
	}

	public void PrepareClearSelection()
	{
		int lastVisibleRow = grid.ViewLayout.LastVisibleRow;
		int lastVisibleCol = grid.ViewLayout.LastVisibleCol;
		lastVisibleRow = grid.GetClientRow(lastVisibleRow);
		lastVisibleCol = grid.GetClientCol(lastVisibleCol);
		if (!grid.Updating)
		{
			grid.Update();
		}
		Graphics graphics = grid.CreateGridGraphics();
		_ = grid.InvalidBounds;
		grid.NotifySelectionFrameChanging(graphics);
		GridRangeInfoList selectedRanges = grid.Model.SelectedRanges;
		if (grid.HScrollPixel || grid.VScrollPixel)
		{
			for (int i = 0; i <= lastVisibleRow; i++)
			{
				int row = grid.GetRow(i);
				grid.RangeInfoToRectangle(GridRangeInfo.Row(row));
				int col = grid.GetCol(0);
				GridRangeInfo range = GridRangeInfo.Cell(row, col);
				Rectangle rectItem = grid.RangeInfoToRectangle(range);
				if (grid.Selections.GetInvertStateRowCol(row, col, selectedRanges))
				{
					grid.IntDrawInvertCell(graphics, row, col, rectItem, inPaint: false);
				}
				for (int j = 1; j <= lastVisibleCol; j++)
				{
					col = grid.GetCol(j);
					range = GridRangeInfo.Cell(row, col);
					if (grid.Selections.GetInvertStateRowCol(row, col, selectedRanges))
					{
						rectItem = grid.RangeInfoToRectangle(range);
						grid.IntDrawInvertCell(graphics, row, col, rectItem, inPaint: false);
					}
				}
			}
		}
		else
		{
			for (int k = 0; k <= lastVisibleRow; k++)
			{
				int row2 = grid.GetRow(k);
				Rectangle rect = grid.RangeInfoToRectangle(GridRangeInfo.Row(row2));
				int col2 = grid.GetCol(0);
				GridRangeInfo range2 = GridRangeInfo.Cell(row2, col2);
				Rectangle rectItem2 = grid.RangeInfoToRectangle(range2);
				rectItem2.Intersect(rect);
				if (grid.Selections.GetInvertStateRowCol(row2, col2, selectedRanges))
				{
					grid.IntDrawInvertCell(graphics, row2, col2, rectItem2, inPaint: false);
				}
				for (int l = 1; l <= lastVisibleCol; l++)
				{
					col2 = grid.GetCol(l);
					range2 = GridRangeInfo.Cell(row2, col2);
					if (grid.IsRightToLeft())
					{
						rectItem2.Width = grid.GetColWidth(col2);
						rectItem2.X -= rectItem2.Width;
					}
					else
					{
						rectItem2.X += rectItem2.Width;
						rectItem2.Width = grid.GetColWidth(col2);
					}
					rectItem2.Intersect(rect);
					if (grid.Selections.GetInvertStateRowCol(row2, col2, selectedRanges))
					{
						grid.IntDrawInvertCell(graphics, row2, col2, rectItem2, inPaint: false);
					}
				}
			}
		}
		graphics.Dispose();
	}

	public void PrepareChangeSelection(GridRangeInfo oldRange, GridRangeInfo newRange)
	{
		int lastVisibleRow = grid.ViewLayout.LastVisibleRow;
		int lastVisibleCol = grid.ViewLayout.LastVisibleCol;
		grid.Model.FloatingCells.LockEvaluate();
		GridRangeInfoList selectedRanges = grid.Model.SelectedRanges;
		_ = grid.Model.RowCount;
		_ = grid.Model.ColCount;
		GridRangeInfo range = GridRangeInfo.Cells(0, 0, grid.GetClientRow(lastVisibleRow), grid.GetClientCol(lastVisibleCol));
		GridRangeInfo gridRangeInfo = grid.MakeClientRange(oldRange).UnionRange(grid.MakeClientRange(newRange));
		GridRangeInfo gridRangeInfo2 = gridRangeInfo.IntersectRange(range);
		if (!gridRangeInfo2.IsEmpty)
		{
			if (!grid.Updating)
			{
				grid.Update();
			}
			int num = gridRangeInfo2.Top;
			int num2 = gridRangeInfo2.Left;
			int num3 = gridRangeInfo2.Bottom;
			int num4 = gridRangeInfo2.Right;
			if (num3 == 0)
			{
				num3 = grid.InternalGetFrozenRows();
			}
			if (num4 == 0)
			{
				num4 = grid.InternalGetFrozenCols();
			}
			if (gridRangeInfo.IsRows || gridRangeInfo.IsTable)
			{
				num2 = 0;
			}
			if (gridRangeInfo.IsCols || gridRangeInfo.IsTable)
			{
				num = 0;
			}
			Graphics graphics = grid.CreateGridGraphics();
			_ = grid.InvalidBounds;
			if (grid.ExcelLikeFrameSelections != null)
			{
				grid.ExcelLikeFrameSelections.DrawSelectionFrame(grid, graphics, bDrawOld: true, newRange);
			}
			for (int i = num; i <= num3; i++)
			{
				int row = grid.GetRow(i);
				Rectangle rect = grid.RangeInfoToRectangle(GridRangeInfo.Row(row));
				int col = grid.GetCol(num2);
				GridRangeInfo range2 = GridRangeInfo.Cell(row, col);
				Rectangle rectItem = grid.RangeInfoToRectangle(range2);
				rectItem.Intersect(rect);
				if (!grid.Selections.GetInvertStateRowCol(row, col, selectedRanges))
				{
					bool flag = oldRange.Contains(range2);
					bool flag2 = newRange.Contains(range2);
					if (flag2 != flag)
					{
						grid.IntDrawInvertCell(graphics, row, col, rectItem, inPaint: false);
					}
				}
				for (int j = num2 + 1; j <= num4; j++)
				{
					col = grid.GetCol(j);
					range2 = GridRangeInfo.Cell(row, col);
					int num5 = grid.GetColWidth(col);
					if (col == grid.LeftColIndex)
					{
						num5 -= grid.GetCurrentHScrollPixelDelta();
					}
					if (grid.IsRightToLeft())
					{
						rectItem.Width = num5;
						rectItem.X -= rectItem.Width;
					}
					else
					{
						rectItem.X += rectItem.Width;
						rectItem.Width = num5;
					}
					rectItem.Intersect(rect);
					if (!grid.Selections.GetInvertStateRowCol(row, col, selectedRanges))
					{
						bool flag3 = oldRange.Contains(range2);
						bool flag4 = newRange.Contains(range2);
						if (flag4 != flag3)
						{
							grid.IntDrawInvertCell(graphics, row, col, rectItem, inPaint: false);
						}
					}
				}
			}
			graphics.Dispose();
		}
		grid.Model.FloatingCells.UnlockEvaluate();
	}
}
