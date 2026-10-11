using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public class GridDragSelectMouseController : GridMouseController
{
	private DragHelper dragHelper;

	private int selDragRow;

	private int selDragCol;

	private GridRangeInfo selDragRange = GridRangeInfo.Empty;

	internal new GridControlBase Grid;

	private bool forceMoveTarget;

	private GridDragSelectHitTestInfo hitTestInfo;

	private GridDragMode DragSelectionMode
	{
		get
		{
			if (hitTestInfo == null)
			{
				return GridDragMode.None;
			}
			if (selDragRange.IsRows)
			{
				return GridDragMode.DragRow;
			}
			return GridDragMode.DragColumn;
		}
	}

	public override string Name => "DragSelect";

	public override Cursor Cursor
	{
		get
		{
			if (hitTestInfo != null)
			{
				return GridCursors.DragSelectionCursor;
			}
			return null;
		}
	}

	public GridDragSelectMouseController(GridControlBase Grid)
		: base(Grid)
	{
		this.Grid = Grid;
	}

	public override bool GetAllowFixFocus()
	{
		return hitTestInfo == null;
	}

	private void LeftMouseDown(Point point, MouseEventArgs e, int ht, int rowIndex, int colIndex)
	{
		if (BeginDragSelection(hitTestInfo.rowSelected ? rowIndex : 0, hitTestInfo.colSelected ? colIndex : 0))
		{
			int top = 0;
			int left = 0;
			Rectangle gridBounds = Grid.GridBounds;
			ScrollBars scrollBars = ScrollBars.None;
			if (hitTestInfo.rowSelected && !Grid.InternalIsFrozenRow(rowIndex))
			{
				top = Grid.ViewLayout.GetRowRangeHeight(0, Grid.InternalGetFrozenRows(), GridCellSizeKind.VisibleSize);
				scrollBars |= ScrollBars.Vertical;
			}
			if (hitTestInfo.colSelected && !Grid.InternalIsFrozenCol(colIndex))
			{
				left = Grid.ViewLayout.GetColRangeWidth(0, Grid.InternalGetFrozenCols(), GridCellSizeKind.VisibleSize);
				scrollBars |= ScrollBars.Horizontal;
			}
			Grid.AutoScrolling = scrollBars;
			Grid.AutoScrollBounds = Rectangle.FromLTRB(left, top, gridBounds.Right, gridBounds.Bottom);
			if (!Grid.CurrentCell.StaticDrawing)
			{
				Grid.Capture = true;
			}
		}
		else
		{
			Grid.NotifyCancelMode();
		}
	}

	private void LeftMouseMove(Point point, MouseEventArgs e)
	{
		point = GridUtil.MinMax(point, Grid.GridBounds.Location, new Point(Grid.GridBounds.Right, Grid.GridBounds.Bottom));
		GridRangeInfo gridRangeInfo = Grid.PointToRangeInfo(point, 1);
		int rowIndex;
		int colIndex;
		if (selDragRange.IsRows)
		{
			rowIndex = Math.Max(Grid.Model.Rows.HeaderCount + 1, gridRangeInfo.Top);
			colIndex = 0;
		}
		else
		{
			colIndex = Math.Max(Grid.Model.Cols.HeaderCount + 1, gridRangeInfo.Left);
			rowIndex = 0;
		}
		MoveTarget(selDragRow, selDragCol, rowIndex, colIndex);
	}

	private void LeftMouseUp(Point point, MouseEventArgs e)
	{
		if (Grid.Capture)
		{
			Grid.Capture = false;
		}
		point = GridUtil.MinMax(point, Grid.GridBounds.Location, new Point(Grid.GridBounds.Right, Grid.GridBounds.Bottom));
		GridRangeInfo gridRangeInfo = Grid.PointToRangeInfo(point, 1);
		int top;
		int colIndex;
		if (selDragRange.IsRows)
		{
			top = gridRangeInfo.Top;
			top = ((Grid.TopRowIndex <= Grid.InternalGetFrozenRows() + 1) ? Math.Max(Grid.InternalGetHeaderRows() + 1, top) : Math.Max(Grid.TopRowIndex, top));
			colIndex = 0;
		}
		else
		{
			colIndex = gridRangeInfo.Left;
			colIndex = ((colIndex <= Grid.InternalGetFrozenCols() || Grid.LeftColIndex <= Grid.InternalGetFrozenCols() + 1) ? Math.Max(Grid.InternalGetHeaderCols() + 1, colIndex) : Math.Max(Grid.LeftColIndex, colIndex));
			top = 0;
		}
		GridRangeInfo gridRangeInfo2 = selDragRange;
		EndDragSelection(gridRangeInfo2.Top, gridRangeInfo2.Left, top, colIndex);
	}

	private Point CalcCenterPoint(int rowIndex, int colIndex)
	{
		Grid.ViewLayout.Reset();
		int x;
		int y;
		if (Grid.RightToLeft == RightToLeft.Yes)
		{
			Point point = new Point(Grid.GridBounds.Right, Grid.GridBounds.Y);
			x = point.X - Grid.GetColWidth(0) / 2;
			y = point.Y + Grid.GetRowHeight(0) / 2;
		}
		else
		{
			Point location = Grid.GridBounds.Location;
			x = Grid.GetColWidth(0) / 2 + location.X;
			y = Grid.GetRowHeight(0) / 2 + location.Y;
		}
		if (selDragRange.IsRows)
		{
			y = Grid.ViewLayout.RowColToPoint(rowIndex, 0, GridCellSizeKind.ActualSize).Y;
		}
		else
		{
			x = Grid.ViewLayout.RowColToPoint(0, colIndex, GridCellSizeKind.ActualSize).X;
		}
		Point p = new Point(x, y);
		return Grid.GridPointToScreen(p);
	}

	private GridRangeInfo CalcDestRange(GridRangeInfo sourceRange, int rowIndex, int colIndex)
	{
		GridRangeInfo gridRangeInfo;
		if (sourceRange.IsRows)
		{
			gridRangeInfo = GridRangeInfo.Row(rowIndex);
			if (sourceRange.Contains(gridRangeInfo))
			{
				gridRangeInfo = GridRangeInfo.Row(sourceRange.Bottom + 1);
			}
		}
		else
		{
			gridRangeInfo = GridRangeInfo.Col(colIndex);
			if (sourceRange.Contains(gridRangeInfo))
			{
				gridRangeInfo = GridRangeInfo.Col(sourceRange.Right + 1);
			}
		}
		return gridRangeInfo;
	}

	private bool BeginDragSelection(int rowIndex, int colIndex)
	{
		selDragRow = Math.Max(rowIndex, 1);
		selDragCol = Math.Max(colIndex, 1);
		GridRangeInfoList ranges = Grid.Model.Selections.Ranges;
		selDragRange = ranges.GetRangesIntersecting(GridRangeInfo.Cell(rowIndex, colIndex)).ActiveRange;
		if (!selDragRange.IsRows && !selDragRange.IsCols)
		{
			return false;
		}
		GridRangeInfo destination = CalcDestRange(selDragRange, rowIndex, colIndex);
		if (!RaiseSelectionDragging(selDragRange, ref destination, GridDragSelectionReason.MouseDown))
		{
			return false;
		}
		selDragRow = selDragRange.Top;
		selDragCol = selDragRange.Left;
		Point startPoint = CalcCenterPoint(selDragRow, selDragCol);
		Bitmap bmp = CreateHeaderBitmap(selDragRow, selDragCol);
		dragHelper = new DragHelper();
		dragHelper.StartDrag(bmp, startPoint, DragDropEffects.Move);
		Grid.Model.FloatingCells.LockEvaluate();
		return true;
	}

	internal bool RaiseSelectionDragging(GridRangeInfo range, ref GridRangeInfo destination, GridDragSelectionReason reason)
	{
		GridSelectionDragEventArgs e = new GridSelectionDragEventArgs(range, destination, reason);
		Grid.RaiseSelectionDragging(e);
		destination = e.Destination;
		return !e.Cancel;
	}

	private bool RaiseSelectionDragged(GridRangeInfo range, ref GridRangeInfo destination, GridDragSelectionReason reason)
	{
		GridSelectionDragEventArgs e = new GridSelectionDragEventArgs(range, destination, reason);
		Grid.RaiseSelectionDragged(e);
		destination = e.Destination;
		return !e.Cancel;
	}

	private bool MoveTarget(int nRow1, int nCol1, int rowIndex, int colIndex)
	{
		colIndex = ((Grid.LeftColIndex <= Grid.InternalGetFrozenCols() + 1) ? Math.Max(Grid.InternalGetHeaderCols() + 1, colIndex) : Math.Max(Grid.LeftColIndex, colIndex));
		rowIndex = ((Grid.TopRowIndex <= Grid.InternalGetFrozenRows() + 1) ? Math.Max(Grid.InternalGetHeaderRows() + 1, rowIndex) : Math.Max(Grid.TopRowIndex, rowIndex));
		GridRangeInfo destination = CalcDestRange(selDragRange, rowIndex, colIndex);
		if (dragHelper == null || !RaiseSelectionDragging(selDragRange, ref destination, GridDragSelectionReason.MouseDown))
		{
			return false;
		}
		if (destination.Top == selDragRow && destination.Left == selDragCol && !forceMoveTarget)
		{
			return true;
		}
		selDragRow = destination.Top;
		selDragCol = destination.Left;
		DragDropEffects e = (RaiseSelectionDragging(selDragRange, ref destination, GridDragSelectionReason.MouseMove) ? DragDropEffects.Move : DragDropEffects.None);
		Point point = CalcCenterPoint(destination.Top, destination.Left);
		if (Grid.GridRectangleToScreen(Grid.GridBounds).Contains(point))
		{
			dragHelper.DoDrag(point, e);
			forceMoveTarget = false;
		}
		else
		{
			dragHelper.DoDrag(new Point(-1000, -1000), e);
			forceMoveTarget = true;
		}
		return true;
	}

	private bool EndDragSelection(int nRow1, int nCol1, int rowIndex, int colIndex)
	{
		Grid.Model.FloatingCells.UnlockEvaluate();
		if (dragHelper != null)
		{
			dragHelper.EndDrag();
			dragHelper = null;
		}
		if (selDragRange.IsRows && rowIndex == 0)
		{
			return false;
		}
		if (selDragRange.IsCols && colIndex == 0)
		{
			return false;
		}
		colIndex = Math.Max(1, colIndex);
		rowIndex = Math.Max(1, rowIndex);
		GridRangeInfo destination = CalcDestRange(selDragRange, rowIndex, colIndex);
		GridRangeInfo gridRangeInfo = selDragRange;
		if (!RaiseSelectionDragging(gridRangeInfo, ref destination, GridDragSelectionReason.MouseUp))
		{
			return false;
		}
		if (RaiseSelectionDragged(gridRangeInfo, ref destination, GridDragSelectionReason.MouseUp))
		{
			selDragRow = destination.Top;
			selDragCol = destination.Left;
			if (selDragRange.Contains(destination))
			{
				return false;
			}
			if (selDragRange.IsRows)
			{
				Grid.Model.Rows.MoveRange(gridRangeInfo.Top, gridRangeInfo.Height, (selDragRow > gridRangeInfo.Top) ? (selDragRow - gridRangeInfo.Height) : selDragRow);
			}
			else
			{
				Grid.Model.Cols.MoveRange(gridRangeInfo.Left, gridRangeInfo.Width, (selDragCol > gridRangeInfo.Left) ? (selDragCol - gridRangeInfo.Width) : selDragCol);
			}
			return true;
		}
		return false;
	}

	private void CancelDragSelection(GridControlBase Grid)
	{
		Grid.Model.FloatingCells.UnlockEvaluate();
		if (dragHelper != null)
		{
			dragHelper.CancelDrag();
		}
		dragHelper = null;
		GridRangeInfo destination = GridRangeInfo.Empty;
		RaiseSelectionDragged(selDragRange, ref destination, GridDragSelectionReason.CancelMode);
	}

	private Bitmap CreateHeaderBitmap(int rowIndex, int colIndex)
	{
		Bitmap bitmap = null;
		Graphics graphics = null;
		Size size = new Size((rowIndex > 0) ? Grid.GetColWidth(colIndex) : 6, (colIndex > 0) ? Grid.GetRowHeight(rowIndex) : 6);
		Rectangle rect = new Rectangle(Point.Empty, size);
		try
		{
			bitmap = new Bitmap(size.Width, size.Height);
			graphics = Graphics.FromImage(bitmap);
			GridStyleInfo gridStyleInfo = Grid.Model[rowIndex, colIndex];
			Color color = Color.FromArgb(255, gridStyleInfo.Interior.BackColor);
			graphics.FillRectangle(new SolidBrush(color), new Rectangle(0, 0, 1000, 1000));
			Brush brush = new SolidBrush((color != Color.Black) ? Color.Black : Color.Blue);
			if (selDragRange.IsRows)
			{
				Rectangle rect2 = GridUtil.CenterInRect(size: new Size(rect.Width, 2), rect: rect);
				graphics.FillRectangle(brush, rect2);
				Rectangle rect3 = new Rectangle(0, rect2.Top - 3, 1, rect2.Height + 6);
				graphics.FillRectangle(brush, rect3);
				rect3 = new Rectangle(1, rect2.Top - 2, 1, rect2.Height + 4);
				graphics.FillRectangle(brush, rect3);
				rect3 = new Rectangle(2, rect2.Top - 1, 1, rect2.Height + 2);
				graphics.FillRectangle(brush, rect3);
				rect3 = new Rectangle(rect2.Right - 3, rect2.Top - 1, 1, rect2.Height + 2);
				graphics.FillRectangle(brush, rect3);
				rect3 = new Rectangle(rect2.Right - 2, rect2.Top - 2, 1, rect2.Height + 4);
				graphics.FillRectangle(brush, rect3);
				rect3 = new Rectangle(rect2.Right - 1, rect2.Top - 3, 1, rect2.Height + 6);
				graphics.FillRectangle(brush, rect3);
			}
			else
			{
				Rectangle rect4 = GridUtil.CenterInRect(size: new Size(2, rect.Height), rect: rect);
				graphics.FillRectangle(brush, rect4);
				Rectangle rect3 = new Rectangle(rect4.Left - 3, 0, rect4.Width + 6, 1);
				graphics.FillRectangle(brush, rect3);
				rect3 = new Rectangle(rect4.Left - 2, 1, rect4.Width + 4, 1);
				graphics.FillRectangle(brush, rect3);
				rect3 = new Rectangle(rect4.Left - 1, 2, rect4.Width + 2, 1);
				graphics.FillRectangle(brush, rect3);
				rect3 = new Rectangle(rect4.Left - 1, rect4.Bottom - 3, rect4.Width + 2, 1);
				graphics.FillRectangle(brush, rect3);
				rect3 = new Rectangle(rect4.Left - 2, rect4.Bottom - 2, rect4.Width + 4, 1);
				graphics.FillRectangle(brush, rect3);
				rect3 = new Rectangle(rect4.Left - 3, rect4.Bottom - 1, rect4.Width + 6, 1);
				graphics.FillRectangle(brush, rect3);
			}
			bitmap.MakeTransparent(color);
			brush.Dispose();
			return bitmap;
		}
		finally
		{
			graphics?.Dispose();
		}
	}

	public override void MouseHoverEnter()
	{
	}

	public override void MouseHover(MouseEventArgs e)
	{
	}

	public override void MouseHoverLeave(EventArgs e)
	{
	}

	public override void MouseDown(MouseEventArgs e)
	{
		if (hitTestInfo != null && CheckMouseButtons(e) && e.Clicks == 1)
		{
			LeftMouseDown(hitTestInfo.point, e, hitTestInfo.hitTestResult, hitTestInfo.rowIndex, hitTestInfo.colIndex);
		}
	}

	public override void MouseMove(MouseEventArgs e)
	{
		Point point = new Point(e.X, e.Y);
		LeftMouseMove(point, e);
	}

	public override void MouseUp(MouseEventArgs e)
	{
		Point point = new Point(e.X, e.Y);
		LeftMouseUp(point, e);
		Grid.AutoScrolling = ScrollBars.None;
	}

	public override void CancelMode()
	{
		CancelDragSelection(Grid);
	}

	private bool CheckMouseButtons(MouseEventArgs e)
	{
		if (e.Button != MouseButtons.None || Grid.Model.Options.DragSelectedCellsMouseButtonsMask == MouseButtons.None)
		{
			return (e.Button & Grid.Model.Options.DragSelectedCellsMouseButtonsMask) != 0;
		}
		return true;
	}

	public override int HitTest(MouseEventArgs e, IMouseController controller)
	{
		Point point = new Point(e.X, e.Y);
		hitTestInfo = null;
		if (CheckMouseButtons(e) && e.Clicks < 2 && (controller == null || controller.Name == "SelectCells"))
		{
			hitTestInfo = new GridDragSelectHitTestInfo(this, Grid, point);
			if (hitTestInfo.hitTestResult == 0)
			{
				hitTestInfo = null;
			}
		}
		if (hitTestInfo == null)
		{
			return 0;
		}
		return hitTestInfo.hitTestResult;
	}
}
