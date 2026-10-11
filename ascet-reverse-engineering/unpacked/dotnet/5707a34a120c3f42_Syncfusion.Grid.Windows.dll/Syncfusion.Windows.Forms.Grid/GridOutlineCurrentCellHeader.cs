using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal class GridOutlineCurrentCellHeader : GridSubComponent
{
	private GridControlBase grid;

	public GridOutlineCurrentCellHeader(GridControlBase grid)
		: base(grid)
	{
		this.grid = grid;
	}

	public void OutlineCurrentCellHeader(int currentCellRow, int currentCellCol, ScrollBars direction)
	{
		_ = grid.ViewLayout.LastVisibleRow;
		_ = grid.ViewLayout.LastVisibleCol;
		bool flag = direction == ScrollBars.None || direction == ScrollBars.Vertical;
		bool flag2 = direction == ScrollBars.None || direction == ScrollBars.Horizontal;
		if (flag && grid.Model.Properties.MarkRowHeader && grid.ViewLayout.IsRangeVisible(GridRangeInfo.Row(currentCellRow)))
		{
			Rectangle rc = grid.ViewLayout.RangeInfoToRectangle(GridRangeInfo.Cells(currentCellRow, 0, currentCellRow, grid.InternalGetHeaderCols()), GridCellSizeKind.VisibleSize);
			grid.Invalidate(rc);
			grid.Update();
		}
		if (flag2 && grid.Model.Properties.MarkColHeader && grid.ViewLayout.IsRangeVisible(GridRangeInfo.Col(currentCellCol)))
		{
			Rectangle rc2 = grid.ViewLayout.RangeInfoToRectangle(GridRangeInfo.Cells(0, currentCellCol, grid.InternalGetHeaderRows(), currentCellCol), GridCellSizeKind.VisibleSize);
			grid.Invalidate(rc2);
			grid.Update();
		}
	}

	public bool GetMarkHeaderState(GridCellRendererBase pControl, int rowIndex, int colIndex, GridStyleInfo style)
	{
		bool flag = false;
		int rowIndex2;
		int colIndex2;
		bool currentCell = grid.CurrentCell.GetCurrentCell(out rowIndex2, out colIndex2);
		grid.Model.GetSpannedRangeInfo(rowIndex, colIndex, out var range);
		if (rowIndex2 <= grid.InternalGetHeaderRows() || colIndex2 <= grid.InternalGetHeaderCols())
		{
			return false;
		}
		flag |= rowIndex > 0 && grid.Model.Options.ListBoxSelectionMode == SelectionMode.None && currentCell && range.IntersectsWith(GridRangeInfo.Row(rowIndex2)) && grid.Model.Properties.MarkRowHeader;
		return flag | (colIndex > 0 && currentCell && range.IntersectsWith(GridRangeInfo.Col(colIndex2)) && grid.Model.Properties.MarkColHeader);
	}
}
