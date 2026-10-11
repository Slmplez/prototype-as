using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridDragColumnHeaderMouseController : GridDragColumnHeaderMouseControllerBase
{
	internal sealed class GridDragHeaderHitTestInfo
	{
		internal GridRangeInfo cellRange;

		internal int rowIndex;

		internal int colIndex;

		internal int hitTestResult;

		internal Point point;

		internal GridDragHeaderHitTestInfo(GridControlBase grid, Point point)
		{
			if (!grid.GridBounds.Contains(point))
			{
				return;
			}
			cellRange = grid.PointToRangeInfo(point, -1);
			rowIndex = cellRange.Top;
			colIndex = cellRange.Left;
			if (rowIndex <= grid.Model.Rows.HeaderCount)
			{
				this.point = point;
				if (colIndex > grid.Model.Cols.HeaderCount)
				{
					hitTestResult = 4;
				}
			}
		}
	}

	private GridDragHeaderHitTestInfo hitTestInfo;

	private GridRangeInfo _cellRange;

	private bool doubleClick;

	public GridDragColumnHeaderMouseController(GridControlBaseImp grid)
		: base(grid)
	{
		clickCellsController = new GridClickCellsMouseController(grid);
	}

	public override void MouseDown(MouseEventArgs e)
	{
		if (hitTestInfo == null)
		{
			base.MouseDown(e);
			return;
		}
		ResetClickCellsController();
		if (e.Clicks == 2)
		{
			base.grid.PointToRowCol(new Point(e.X, e.Y), out var rowIndex, out var colIndex);
			base.grid.RaiseCellDoubleClick(rowIndex, colIndex, e);
			doubleClick = true;
			return;
		}
		doubleClick = false;
		OpenDragHeader();
		OpenRedArrowIndicator();
		base.grid.PrepareViewStyleInfo += grid_PrepareViewStyleInfo;
		base.grid.InvalidateRange(_cellRange);
		base.grid.GetGridWindow().AutoScrolling = ScrollBars.Horizontal;
		base.grid.GetGridWindow().AutoScrollBounds = Rectangle.Empty;
	}

	public override void MouseMove(MouseEventArgs e)
	{
		if (hitTestInfo == null)
		{
			base.MouseMove(e);
			return;
		}
		ResetClickCellsController();
		if (ShouldShowRemoveCursor())
		{
			cursor = Cursors.Default;
		}
		else
		{
			cursor = Cursors.Default;
		}
		UpdateDragHeader();
		UpdateRedArrowIndicator();
		wasDragged |= base.DragHeaderVisible;
	}

	public override void MouseUp(MouseEventArgs e)
	{
		if (hitTestInfo == null)
		{
			base.MouseUp(e);
			return;
		}
		ResetClickCellsController();
		cursor = null;
		bool flag = base.DragHeaderVisible;
		base.DragHeaderVisible = false;
		CloseDragHeader();
		CloseRedArrowIndicator();
		base.grid.GetGridWindow().AutoScrolling = ScrollBars.None;
		base.grid.GetGridWindow().Capture = false;
		base.grid.PrepareViewStyleInfo -= grid_PrepareViewStyleInfo;
		base.grid.InvalidateRange(_cellRange);
		if (!wasDragged)
		{
			if (!doubleClick)
			{
				base.grid.RaiseCellClick(_rowIndex, _colIndex, e);
			}
		}
		else
		{
			if (!flag || !ShouldShowRedArrowIndicator())
			{
				return;
			}
			GridQueryDragColumnHeaderEventArgs e2 = new GridQueryDragColumnHeaderEventArgs(base.grid, column, targetColIndex, GridQueryDragColumnHeaderReason.MouseUp);
			base.grid.RaiseQueryAllowDragColumn(e2);
			if (e2.AllowDrag)
			{
				if (targetColIndex > column)
				{
					targetColIndex--;
				}
				base.grid.Model.Cols.MoveRange(column, 1, targetColIndex);
			}
			Cursor.Current = Cursors.Default;
		}
	}

	public override void CancelMode()
	{
		base.CancelMode();
		if (hitTestInfo != null)
		{
			cursor = null;
			base.DragHeaderVisible = false;
			CloseDragHeader();
			CloseRedArrowIndicator();
			base.grid.GetGridWindow().AutoScrolling = ScrollBars.None;
			base.grid.GetGridWindow().Capture = false;
			base.grid.GetGridWindow().AutoScrolling = ScrollBars.None;
			base.grid.GetGridWindow().Capture = false;
			base.grid.PrepareViewStyleInfo -= grid_PrepareViewStyleInfo;
			base.grid.InvalidateRange(_cellRange);
		}
	}

	public override int HitTest(MouseEventArgs e, IMouseController controller)
	{
		Point point = new Point(e.X, e.Y);
		hitTestInfo = null;
		if (CheckMouseButtons(e) && (controller == null || controller.Name != "ResizeCells"))
		{
			hitTestInfo = new GridDragHeaderHitTestInfo(base.grid, point);
			if (hitTestInfo.hitTestResult == 0)
			{
				hitTestInfo = null;
			}
			else
			{
				GridQueryDragColumnHeaderEventArgs e2 = new GridQueryDragColumnHeaderEventArgs(base.grid, hitTestInfo.colIndex, -1, GridQueryDragColumnHeaderReason.HitTest);
				base.grid.RaiseQueryAllowDragColumn(e2);
				if (e2.AllowDrag)
				{
					_rowIndex = hitTestInfo.rowIndex;
					_colIndex = hitTestInfo.colIndex;
					_cellRange = hitTestInfo.cellRange;
					originBounds = base.grid.GridRectangleToScreen(base.grid.RangeInfoToRectangle(_cellRange));
					origin = base.grid.GetGridWindow().LastMousePosition;
					column = hitTestInfo.colIndex;
					wasDragged = false;
				}
				else
				{
					hitTestInfo = null;
				}
			}
		}
		if (hitTestInfo != null)
		{
			base.HitTest(e, controller);
			return hitTestInfo.hitTestResult;
		}
		return 0;
	}

	private void grid_PrepareViewStyleInfo(object sender, GridPrepareViewStyleInfoEventArgs e)
	{
		if (e.ColIndex == _colIndex && e.RowIndex == _rowIndex)
		{
			e.Style.CellAppearance = GridCellAppearance.Sunken;
		}
	}
}
