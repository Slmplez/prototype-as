using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

public class GridResizeCellsMouseController : GridMouseController
{
	[DocumentationExclude]
	internal sealed class ResizeCellsHitTestInfo
	{
		private const int hitTestFrame = 4;

		internal int hitTestResult;

		internal Point point;

		internal Rectangle cellBounds = Rectangle.Empty;

		internal int clientCol;

		internal int clientRow;

		internal int rowIndex;

		internal int colIndex;

		internal GridResizeCellsMouseController resizeUI;

		internal ResizeCellsHitTestInfo(GridResizeCellsMouseController resizeUI, GridControlBase grid, Point point, GridResizeCellsReason reason)
		{
			this.resizeUI = resizeUI;
			this.point = point;
			clientCol = grid.ViewLayout.PointToClientCol(point, fixBackHidden: false, GridCellSizeKind.VisibleSize);
			clientRow = grid.ViewLayout.PointToClientRow(point, fixBackHidden: false, GridCellSizeKind.VisibleSize);
			if (clientCol < 0 || clientRow < 0)
			{
				return;
			}
			rowIndex = grid.GetRow(clientRow);
			colIndex = grid.GetCol(clientCol);
			if (colIndex == grid.Model.ColCount + 1 && rowIndex == grid.Model.RowCount + 1)
			{
				cellBounds = grid.RangeInfoToRectangle(GridRangeInfo.Cell(rowIndex - 1, colIndex - 1));
				cellBounds.Offset(grid.Model.ColWidths[colIndex - 1], grid.Model.RowHeights[rowIndex - 1]);
			}
			else if (colIndex == grid.Model.ColCount + 1)
			{
				cellBounds = grid.RangeInfoToRectangle(GridRangeInfo.Cell(rowIndex, colIndex - 1));
				cellBounds.Offset(grid.Model.ColWidths[colIndex - 1], 0);
			}
			else if (rowIndex == grid.Model.RowCount + 1)
			{
				cellBounds = grid.RangeInfoToRectangle(GridRangeInfo.Cell(rowIndex - 1, colIndex));
				cellBounds.Offset(0, grid.Model.RowHeights[rowIndex - 1]);
			}
			else
			{
				cellBounds = grid.RangeInfoToRectangle(GridRangeInfo.Cell(rowIndex, colIndex));
			}
			if (clientCol <= grid.ViewLayout.VisibleCols && clientRow <= grid.ViewLayout.VisibleRows && rowIndex <= grid.Model.RowCount + 1 && colIndex <= grid.Model.ColCount + 1)
			{
				bool flag = resizeUI.CanResizeCols && (clientRow == 0 || resizeUI.HasResizeColOptions(GridResizeCellsBehavior.InsideGrid));
				bool flag2 = resizeUI.CanResizeRows && (clientCol == 0 || resizeUI.HasResizeRowOptions(GridResizeCellsBehavior.InsideGrid));
				if (grid.IsRightToLeft() && flag && Math.Abs(cellBounds.Left - point.X) <= 2)
				{
					if (clientCol > grid.InternalGetHeaderCols() || !resizeUI.HasResizeColOptions(GridResizeCellsBehavior.IgnoreHeaders))
					{
						hitTestResult = 1;
					}
				}
				else if (grid.IsRightToLeft() && flag && Math.Abs(cellBounds.Right - point.X) <= 2 && clientCol > 0)
				{
					if (clientCol > grid.InternalGetHeaderCols() + 1 || !resizeUI.HasResizeColOptions(GridResizeCellsBehavior.IgnoreHeaders))
					{
						while (clientCol > 0 && grid.GetColWidth(grid.GetCol(--clientCol)) == 0)
						{
						}
						if (clientCol > 0 || grid.ShouldDisplayHeaderCol())
						{
							hitTestResult = 1;
						}
						colIndex = grid.GetCol(clientCol);
						cellBounds = grid.RangeInfoToRectangle(GridRangeInfo.Cell(rowIndex, colIndex));
					}
				}
				else if (!grid.IsRightToLeft() && flag && Math.Abs(cellBounds.Right - point.X) <= 2)
				{
					if (clientCol > grid.InternalGetHeaderCols() || !resizeUI.HasResizeColOptions(GridResizeCellsBehavior.IgnoreHeaders))
					{
						hitTestResult = 1;
					}
				}
				else if (!grid.IsRightToLeft() && flag && Math.Abs(cellBounds.Left - point.X) <= 2 && clientCol > 0)
				{
					if (clientCol > grid.InternalGetHeaderCols() + 1 || !resizeUI.HasResizeColOptions(GridResizeCellsBehavior.IgnoreHeaders))
					{
						while (clientCol > 0 && grid.GetColWidth(grid.GetCol(--clientCol)) == 0)
						{
						}
						if (clientCol > 0 || grid.ShouldDisplayHeaderCol())
						{
							hitTestResult = 1;
						}
						colIndex = grid.GetCol(clientCol);
						cellBounds = grid.RangeInfoToRectangle(GridRangeInfo.Cell(rowIndex, colIndex));
					}
				}
				else if (flag2 && Math.Abs(cellBounds.Bottom - point.Y) <= 2)
				{
					if (clientRow > grid.InternalGetHeaderRows() || !resizeUI.HasResizeRowOptions(GridResizeCellsBehavior.IgnoreHeaders))
					{
						hitTestResult = 2;
					}
				}
				else if (flag2 && Math.Abs(cellBounds.Top - point.Y) <= 2 && clientRow > 0 && (clientRow > grid.InternalGetHeaderRows() + 1 || !resizeUI.HasResizeRowOptions(GridResizeCellsBehavior.IgnoreHeaders)))
				{
					while (clientRow > 0 && grid.GetRowHeight(grid.GetRow(--clientRow)) == 0)
					{
					}
					if (clientRow > 0 || grid.ShouldDisplayHeaderRow())
					{
						hitTestResult = 2;
					}
					rowIndex = grid.GetRow(clientRow);
					cellBounds = grid.RangeInfoToRectangle(GridRangeInfo.Cell(rowIndex, colIndex));
				}
				if (rowIndex > grid.Model.RowCount || colIndex > grid.Model.ColCount)
				{
					hitTestResult = 0;
				}
			}
			int height = -1;
			if (hitTestResult == 1)
			{
				if (!resizeUI.RaiseResizingColumns(GridRangeInfo.Col(colIndex), ref height, reason, point))
				{
					hitTestResult = 0;
				}
			}
			else if (hitTestResult == 2 && !resizeUI.RaiseResizingRows(GridRangeInfo.Row(rowIndex), ref height, reason, point))
			{
				hitTestResult = 0;
			}
		}
	}

	private bool inResizingCells;

	private Rectangle resizeBounds = Rectangle.Empty;

	private Rectangle originalInvertBarBounds = Rectangle.Empty;

	private GridResizingCellsMode resizingCellsMode;

	private int rowResizing;

	private int colResizing;

	private bool outlineBounds;

	private bool drawInvertLine;

	private bool outlineHeader;

	private Size originalSize = Size.Empty;

	private Rectangle invertBarBounds = Rectangle.Empty;

	private bool movedMarker;

	private bool defaultSize;

	private ResizeCellsHitTestInfo hitTestInfo;

	private GridControlBase grid;

	private int dragOutsideValue;

	[ThreadStatic]
	private static GridBorder sizeIndicatorBorder;

	[ThreadStatic]
	private static GridBorder boundsIndicatorBorder;

	[ThreadStatic]
	private static GridDragLineWindow _dragWindow;

	[ThreadStatic]
	private static GridDragLineWindow _oldBoundsWindow;

	private static GridDragLineWindow dragWindow
	{
		get
		{
			if (_dragWindow == null)
			{
				_dragWindow = new GridDragLineWindow();
			}
			return _dragWindow;
		}
	}

	private static GridDragLineWindow oldBoundsWindow
	{
		get
		{
			if (_oldBoundsWindow == null)
			{
				_oldBoundsWindow = new GridDragLineWindow();
			}
			return _oldBoundsWindow;
		}
	}

	private bool CanResizeRows => HasResizeRowOptions(GridResizeCellsBehavior.ResizeAll | GridResizeCellsBehavior.ResizeSingle);

	private bool CanResizeCols => HasResizeColOptions(GridResizeCellsBehavior.ResizeAll | GridResizeCellsBehavior.ResizeSingle);

	public override string Name => "ResizeCells";

	public override Cursor Cursor
	{
		get
		{
			if (hitTestInfo != null)
			{
				if (hitTestInfo.hitTestResult != 2)
				{
					return GridCursors.ColumnWidthCursor;
				}
				return GridCursors.RowHeightCursor;
			}
			return null;
		}
	}

	public override bool GetAllowFixFocus()
	{
		return !inResizingCells;
	}

	public GridResizeCellsMouseController(GridControlBase grid)
		: base(grid)
	{
		this.grid = grid;
	}

	private bool HasResizeColOptions(GridResizeCellsBehavior flags)
	{
		return (grid.Model.Options.ResizeColsBehavior & flags) != 0;
	}

	private bool HasResizeRowOptions(GridResizeCellsBehavior flags)
	{
		return (grid.Model.Options.ResizeRowsBehavior & flags) != 0;
	}

	private void LeftMouseDown(Point point, MouseEventArgs e, int ht, int rowIndex, int colIndex)
	{
		if (ht == 1 && CanResizeCols)
		{
			if (BeginResizing(rowIndex, colIndex, GridResizingCellsMode.ResizeColumn, point) && !grid.Capture && !grid.CurrentCell.StaticDrawing)
			{
				grid.Capture = true;
			}
		}
		else if (ht == 2 && CanResizeRows && BeginResizing(rowIndex, colIndex, GridResizingCellsMode.ResizeRow, point) && !grid.Capture && !grid.CurrentCell.StaticDrawing)
		{
			grid.Capture = true;
		}
	}

	private void LeftMouseMove(Point point, MouseEventArgs e)
	{
		try
		{
			if (inResizingCells)
			{
				Rectangle rectangle = resizeBounds;
				Size size = ((!grid.IsRightToLeft()) ? new Size(point.X - rectangle.X, point.Y - rectangle.Y) : new Size(rectangle.Right - point.X, point.Y - rectangle.Y));
				if (resizingCellsMode == GridResizingCellsMode.ResizeRow)
				{
					size.Width = 0;
				}
				else
				{
					size.Height = 0;
				}
				MoveMarker(size, point);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	private void LeftMouseUp(Point point, MouseEventArgs e)
	{
		if (inResizingCells)
		{
			Rectangle rectangle = resizeBounds;
			Size size = ((!grid.IsRightToLeft()) ? new Size(point.X - rectangle.X, point.Y - rectangle.Y) : new Size(rectangle.Right - point.X, point.Y - rectangle.Y));
			if (resizingCellsMode == GridResizingCellsMode.ResizeRow)
			{
				size.Width = 0;
			}
			else
			{
				size.Height = 0;
			}
			EndResizing(size, point);
			grid.Capture = false;
		}
	}

	private void LeftMouseDoubleClick(Point point, EventArgs e, int ht, int rowIndex, int colIndex)
	{
		int height = -1;
		if (ht == 1 && CanResizeCols)
		{
			GridRangeInfoList ranges = grid.Model.Selections.Ranges;
			if (!RaiseResizingColumns(GridRangeInfo.Col(colIndex), ref height, GridResizeCellsReason.DoubleClick, point))
			{
				return;
			}
			height = -1;
			if (colIndex > 0 && HasResizeColOptions(GridResizeCellsBehavior.ResizeAll))
			{
				return;
			}
			if (grid.GetColHidden(colIndex) || (colIndex < grid.Model.ColCount && grid.GetColHidden(colIndex + 1)))
			{
				int num = colIndex;
				int i = colIndex + 1;
				int colCount = grid.Model.ColCount;
				while (num > 0 && grid.GetColHidden(num - 1) && RaiseResizingColumns(GridRangeInfo.Col(num - 1), ref height, GridResizeCellsReason.ResetHide, point))
				{
					num--;
				}
				for (; i <= colCount && grid.GetColHidden(i) && RaiseResizingColumns(GridRangeInfo.Col(i), ref height, GridResizeCellsReason.ResetHide, point); i++)
				{
				}
				if (i > num && RaiseResizingColumns(GridRangeInfo.Cols(num, i - 1), ref height, GridResizeCellsReason.ResetHide, point))
				{
					grid.Model.HideCols.SetRange(num, i - 1, value: false);
				}
			}
			else
			{
				if (colIndex > 0 && ranges.AnyRangeContains(GridRangeInfo.Col(colIndex)))
				{
					if (ranges.AnyRangeContains(GridRangeInfo.Table()))
					{
						return;
					}
					GridRangeInfoList colRanges = ranges.GetColRanges(GridRangeInfoType.Cols);
					{
						foreach (GridRangeInfo item in colRanges)
						{
							if (grid.GetColHidden(item.Left))
							{
								if (RaiseResizingColumns(item, ref height, GridResizeCellsReason.ResetHide, point))
								{
									grid.Model.HideCols.SetRange(item.Left, item.Right, value: false);
								}
							}
							else if (RaiseResizingColumns(item, ref height, GridResizeCellsReason.ResetDefault, point))
							{
								grid.Model.ColWidths.SetRange(item.Left, item.Right, -1);
							}
						}
						return;
					}
				}
				if (RaiseResizingColumns(GridRangeInfo.Col(colResizing), ref height, GridResizeCellsReason.ResetDefault, point))
				{
					grid.Model.ColWidths[colResizing] = -1;
				}
			}
		}
		else
		{
			if (ht != 2 || !CanResizeRows)
			{
				return;
			}
			GridRangeInfoList ranges2 = grid.Model.Selections.Ranges;
			if (!RaiseResizingRows(GridRangeInfo.Row(rowIndex), ref height, GridResizeCellsReason.DoubleClick, point))
			{
				return;
			}
			height = -1;
			if (rowIndex > 0 && HasResizeRowOptions(GridResizeCellsBehavior.ResizeAll))
			{
				return;
			}
			if (grid.GetRowHidden(rowIndex) || (rowIndex < grid.Model.RowCount && grid.GetRowHidden(rowIndex + 1) && RaiseResizingRows(GridRangeInfo.Row(rowIndex + 1), ref height, GridResizeCellsReason.ResetHide, point)))
			{
				int num2 = rowIndex;
				int j = rowIndex + 1;
				int rowCount = grid.Model.RowCount;
				while (num2 > 0 && grid.GetRowHidden(num2 - 1) && RaiseResizingRows(GridRangeInfo.Row(num2 - 1), ref height, GridResizeCellsReason.ResetHide, point))
				{
					num2--;
				}
				for (; j <= rowCount && grid.GetRowHidden(j) && RaiseResizingRows(GridRangeInfo.Row(j), ref height, GridResizeCellsReason.ResetHide, point); j++)
				{
				}
				if (j > num2 && RaiseResizingRows(GridRangeInfo.Rows(num2, j - 1), ref height, GridResizeCellsReason.ResetHide, point))
				{
					grid.Model.HideRows.SetRange(num2, j - 1, value: false);
				}
			}
			else
			{
				if (rowIndex > 0 && ranges2.AnyRangeContains(GridRangeInfo.Row(rowIndex)))
				{
					if (ranges2.AnyRangeContains(GridRangeInfo.Table()))
					{
						return;
					}
					GridRangeInfoList rowRanges = ranges2.GetRowRanges(GridRangeInfoType.Rows);
					{
						foreach (GridRangeInfo item2 in rowRanges)
						{
							if (grid.GetRowHidden(item2.Top))
							{
								if (RaiseResizingRows(item2, ref height, GridResizeCellsReason.ResetHide, point))
								{
									grid.Model.HideRows.SetRange(item2.Top, item2.Bottom, value: false);
								}
							}
							else if (RaiseResizingRows(item2, ref height, GridResizeCellsReason.ResetDefault, point))
							{
								grid.Model.RowHeights.SetRange(item2.Top, item2.Bottom, -1);
							}
						}
						return;
					}
				}
				if (RaiseResizingRows(GridRangeInfo.Row(rowResizing), ref height, GridResizeCellsReason.ResetDefault, point))
				{
					grid.Model.RowHeights[rowResizing] = -1;
				}
			}
		}
	}

	private void DrawInvertRect(Rectangle rect, bool setOrReset)
	{
		if (!setOrReset || sizeIndicatorBorder == null || sizeIndicatorBorder.Style == GridBorderStyle.None)
		{
			dragWindow.Fade();
			return;
		}
		int num = sizeIndicatorBorder.Width - 1;
		rect.Inflate(num / 2, num / 2);
		rect.Intersect(grid.GetVisibleBounds());
		Rectangle rectangle = grid.GridRectangleToScreen(rect);
		Control topLevelControl = grid.GetWindow().TopLevelControl;
		if (topLevelControl != null)
		{
			rectangle.Intersect(topLevelControl.RectangleToScreen(topLevelControl.ClientRectangle));
		}
		if (rectangle == oldBoundsWindow.Bounds)
		{
			dragWindow.Fade();
		}
		else
		{
			dragWindow.ShowAt(rectangle, sizeIndicatorBorder);
		}
	}

	private void DrawMarkerRect(Rectangle rect, bool setOrReset)
	{
		if (!setOrReset || boundsIndicatorBorder == null || boundsIndicatorBorder.Style == GridBorderStyle.None)
		{
			oldBoundsWindow.Fade();
			return;
		}
		int num = boundsIndicatorBorder.Width - 1;
		rect.Inflate(num / 2, num / 2);
		rect.Intersect(grid.GridBounds);
		rect.Intersect(grid.GetVisibleBounds());
		Rectangle bounds = grid.GridRectangleToScreen(rect);
		Control topLevelControl = grid.GetWindow().TopLevelControl;
		if (topLevelControl != null)
		{
			bounds.Intersect(topLevelControl.RectangleToScreen(topLevelControl.ClientRectangle));
		}
		oldBoundsWindow.ShowAt(bounds, boundsIndicatorBorder);
	}

	private bool BeginResizing(int rowIndex, int colIndex, GridResizingCellsMode nResizingCellsMode, Point point)
	{
		sizeIndicatorBorder = new GridBorder(GridBorderStyle.Dashed, grid.Model.Properties.ResizingCellsLinesColor, GridBorderWeight.Medium);
		boundsIndicatorBorder = new GridBorder(GridBorderStyle.Dotted, grid.Model.Properties.GridLineColor, GridBorderWeight.Thick);
		dragOutsideValue = 0;
		if ((nResizingCellsMode == GridResizingCellsMode.ResizeColumn && colIndex <= grid.InternalGetHeaderCols() && HasResizeColOptions(GridResizeCellsBehavior.IgnoreHeaders)) || (nResizingCellsMode == GridResizingCellsMode.ResizeRow && rowIndex <= grid.InternalGetHeaderRows() && HasResizeRowOptions(GridResizeCellsBehavior.IgnoreHeaders)))
		{
			return false;
		}
		int width = -1;
		if ((nResizingCellsMode == GridResizingCellsMode.ResizeColumn && !RaiseResizingColumns(GridRangeInfo.Col(colIndex), ref width, GridResizeCellsReason.MouseDown, point)) || (nResizingCellsMode == GridResizingCellsMode.ResizeRow && !RaiseResizingRows(GridRangeInfo.Row(rowIndex), ref width, GridResizeCellsReason.MouseDown, point)))
		{
			return false;
		}
		if (nResizingCellsMode == GridResizingCellsMode.ResizeColumn)
		{
			rowIndex = 0;
		}
		if (nResizingCellsMode == GridResizingCellsMode.ResizeRow)
		{
			colIndex = 0;
		}
		Rectangle gridBounds = grid.GridBounds;
		Rectangle bounds = grid.RangeInfoToRectangle(GridRangeInfo.Cell(rowIndex, colIndex));
		resizingCellsMode = nResizingCellsMode;
		rowResizing = rowIndex;
		colResizing = colIndex;
		bounds.Offset(-1, -1);
		if (resizingCellsMode == GridResizingCellsMode.ResizeColumn)
		{
			outlineBounds = grid.Model.Properties.DisplayVertLines && HasResizeColOptions(GridResizeCellsBehavior.OutlineBounds);
			drawInvertLine = true;
			outlineHeader = HasResizeColOptions(GridResizeCellsBehavior.OutlineHeaders);
			originalSize = new Size(grid.GetColWidth(colIndex), 0);
			if (HasResizeColOptions(GridResizeCellsBehavior.AllowDragOutside))
			{
				dragOutsideValue = 1000;
			}
			defaultSize = !grid.Model.ColWidths.IsDefault(colResizing);
			int y = grid.ViewLayout.Corner.Y;
			if (grid.IsRightToLeft())
			{
				resizeBounds = Rectangle.FromLTRB(bounds.Right - 1, gridBounds.Top, bounds.Right, y);
				originalInvertBarBounds = Rectangle.FromLTRB(bounds.Left - 1, gridBounds.Top, bounds.Left, y);
			}
			else
			{
				resizeBounds = Rectangle.FromLTRB(bounds.Left, gridBounds.Top, bounds.Left + 1, y);
				originalInvertBarBounds = Rectangle.FromLTRB(bounds.Right, gridBounds.Top, bounds.Right + 1, y);
			}
		}
		else if (resizingCellsMode == GridResizingCellsMode.ResizeRow)
		{
			outlineBounds = grid.Model.Properties.DisplayHorzLines && HasResizeRowOptions(GridResizeCellsBehavior.OutlineBounds);
			drawInvertLine = true;
			outlineHeader = HasResizeRowOptions(GridResizeCellsBehavior.OutlineHeaders);
			originalSize = new Size(0, grid.GetRowHeight(rowIndex));
			if (HasResizeRowOptions(GridResizeCellsBehavior.AllowDragOutside))
			{
				dragOutsideValue = 1000;
			}
			defaultSize = !grid.Model.RowHeights.IsDefault(rowResizing);
			int x = grid.ViewLayout.Corner.X;
			if (grid.IsRightToLeft())
			{
				resizeBounds = Rectangle.FromLTRB(x, bounds.Top, gridBounds.Right, bounds.Top + 1);
				originalInvertBarBounds = Rectangle.FromLTRB(x, bounds.Bottom, gridBounds.Right, bounds.Bottom + 1);
			}
			else
			{
				resizeBounds = Rectangle.FromLTRB(gridBounds.Left, bounds.Top, x, bounds.Top + 1);
				originalInvertBarBounds = Rectangle.FromLTRB(gridBounds.Left, bounds.Bottom, x, bounds.Bottom + 1);
			}
		}
		if (outlineBounds)
		{
			DrawMarkerRect(originalInvertBarBounds, setOrReset: true);
		}
		movedMarker = false;
		invertBarBounds = originalInvertBarBounds;
		inResizingCells = true;
		if (outlineHeader)
		{
			grid.InternalInvalidate(bounds);
		}
		return true;
	}

	private void MoveMarker(Size size, Point point)
	{
		movedMarker = true;
		int rowIndex = rowResizing;
		int colIndex = colResizing;
		bool flag = false;
		if (resizingCellsMode == GridResizingCellsMode.ResizeColumn)
		{
			if (size.Width < grid.Model.Options.MinResizeColSize)
			{
				size.Width = grid.Model.Options.MinResizeColSize;
			}
			int width = size.Width;
			flag = RaiseResizingColumns(GridRangeInfo.Col(colIndex), ref width, GridResizeCellsReason.MouseMove, point);
			size.Width = width;
		}
		else if (resizingCellsMode == GridResizingCellsMode.ResizeRow)
		{
			if (size.Height < grid.Model.Options.MinResizeRowSize)
			{
				size.Height = grid.Model.Options.MinResizeRowSize;
			}
			int height = size.Height;
			flag = RaiseResizingRows(GridRangeInfo.Row(rowIndex), ref height, GridResizeCellsReason.MouseMove, point);
			size.Height = height;
		}
		if (!flag)
		{
			return;
		}
		Rectangle gridBounds = grid.GridBounds;
		Rectangle rectangle = resizeBounds;
		Rectangle rectangle2 = originalInvertBarBounds;
		Point point2 = ((!grid.IsRightToLeft() || resizingCellsMode != GridResizingCellsMode.ResizeColumn) ? (rectangle.Location + size) : (rectangle.Location - size));
		Rectangle rectangle3 = invertBarBounds;
		if (resizingCellsMode == GridResizingCellsMode.ResizeColumn)
		{
			Rectangle rectangle4 = (invertBarBounds = ((!grid.IsRightToLeft()) ? Rectangle.FromLTRB(Math.Min(gridBounds.Right + dragOutsideValue - 7, Math.Max(rectangle.Left, point2.X)), rectangle2.Top, Math.Min(gridBounds.Right + dragOutsideValue - 6, Math.Max(point2.X + 1, rectangle.Right)), rectangle2.Bottom) : Rectangle.FromLTRB(Math.Max(gridBounds.Left - dragOutsideValue + 6, Math.Min(rectangle.Left, point2.X)), rectangle2.Top, Math.Max(gridBounds.Left - dragOutsideValue + 7, Math.Min(point2.X + 1, rectangle.Right)), rectangle2.Bottom)));
			if (rectangle3 != rectangle4 && drawInvertLine)
			{
				if (rectangle3 != rectangle2)
				{
					DrawInvertRect(rectangle3, setOrReset: false);
				}
				if (rectangle4 != rectangle2)
				{
					DrawInvertRect(rectangle4, setOrReset: true);
				}
			}
		}
		else
		{
			if (resizingCellsMode != GridResizingCellsMode.ResizeRow)
			{
				return;
			}
			Rectangle rect = (invertBarBounds = Rectangle.FromLTRB(rectangle2.Left, Math.Min(gridBounds.Bottom + dragOutsideValue - 7, Math.Max(point2.Y, rectangle.Top)), rectangle2.Right, Math.Min(gridBounds.Bottom + dragOutsideValue - 6, Math.Max(point2.Y + 1, rectangle.Bottom))));
			if (rectangle3 != invertBarBounds && drawInvertLine)
			{
				if (rectangle3 != originalInvertBarBounds)
				{
					DrawInvertRect(rectangle3, setOrReset: false);
				}
				if (drawInvertLine && invertBarBounds != originalInvertBarBounds)
				{
					DrawInvertRect(rect, setOrReset: true);
				}
			}
		}
	}

	private void CancelResizing()
	{
		inResizingCells = false;
		DrawMarkerRect(Rectangle.Empty, setOrReset: false);
		DrawInvertRect(Rectangle.Empty, setOrReset: false);
		_ = grid.GridBounds;
		int height = -1;
		if (resizingCellsMode == GridResizingCellsMode.ResizeColumn)
		{
			RaiseResizingColumns(GridRangeInfo.Col(colResizing), ref height, GridResizeCellsReason.CancelMode, Point.Empty);
			if (outlineHeader)
			{
				grid.InvalidateRange(GridRangeInfo.Cell(0, colResizing));
			}
		}
		else if (resizingCellsMode == GridResizingCellsMode.ResizeRow)
		{
			RaiseResizingRows(GridRangeInfo.Row(rowResizing), ref height, GridResizeCellsReason.CancelMode, Point.Empty);
			if (outlineHeader)
			{
				grid.InvalidateRange(GridRangeInfo.Cell(rowResizing, 0));
			}
		}
	}

	private void EndResizing(Size size, Point point)
	{
		if (movedMarker)
		{
			MoveMarker(size, point);
		}
		DrawMarkerRect(Rectangle.Empty, setOrReset: false);
		DrawInvertRect(Rectangle.Empty, setOrReset: false);
		int rowIndex = rowResizing;
		int colIndex = colResizing;
		if (resizingCellsMode == GridResizingCellsMode.ResizeColumn)
		{
			if (size.Width < grid.Model.Options.MinResizeColSize)
			{
				size.Width = grid.Model.Options.MinResizeColSize;
			}
		}
		else if (resizingCellsMode == GridResizingCellsMode.ResizeRow && size.Height < grid.Model.Options.MinResizeRowSize)
		{
			size.Height = grid.Model.Options.MinResizeRowSize;
		}
		Rectangle rectangle = resizeBounds;
		if (grid.IsRightToLeft() && resizingCellsMode == GridResizingCellsMode.ResizeColumn)
		{
			_ = rectangle.Location - size;
		}
		else
		{
			_ = rectangle.Location + size;
		}
		_ = grid.GridBounds;
		GridRangeInfoList ranges = grid.Model.Selections.Ranges;
		inResizingCells = false;
		if ((resizingCellsMode & GridResizingCellsMode.ResizeColumn) != GridResizingCellsMode.None)
		{
			Rectangle rectangle2 = invertBarBounds;
			Rectangle rectangle3 = originalInvertBarBounds;
			int num = rectangle2.Left - rectangle3.Left;
			if (grid.IsRightToLeft())
			{
				num = -num;
			}
			int width = num + grid.GetColWidth(colResizing);
			if (RaiseResizingColumns(GridRangeInfo.Col(colIndex), ref width, GridResizeCellsReason.MouseUp, point) && Math.Abs(num) > 1 && movedMarker)
			{
				if (colResizing > 0 && HasResizeColOptions(GridResizeCellsBehavior.ResizeAll))
				{
					if (RaiseResizingColumns(GridRangeInfo.Table(), ref width, GridResizeCellsReason.MouseUp, point))
					{
						grid.Model.Cols.DefaultSize = width;
					}
				}
				else if (colResizing > 0 && ranges.AnyRangeContains(GridRangeInfo.Col(colResizing)))
				{
					if (ranges.AnyRangeContains(GridRangeInfo.Table()))
					{
						if (RaiseResizingColumns(GridRangeInfo.Table(), ref width, GridResizeCellsReason.MouseUp, point))
						{
							grid.Model.Cols.DefaultSize = width;
						}
					}
					else
					{
						GridRangeInfoList colRanges = ranges.GetColRanges(GridRangeInfoType.Cols);
						foreach (GridRangeInfo item in colRanges)
						{
							if (RaiseResizingColumns(item, ref width, GridResizeCellsReason.MouseUp, point))
							{
								if (width > 0)
								{
									grid.Model.ColWidths.SetRange(item.Left, item.Right, width);
								}
								else
								{
									grid.Model.HideCols.SetRange(item.Left, item.Right, value: true);
								}
							}
						}
					}
				}
				else if (width > 0)
				{
					grid.Model.ColWidths[colResizing] = width;
				}
				else
				{
					grid.Model.HideCols[colResizing] = true;
				}
			}
			else
			{
				grid.InternalInvalidate(grid.RangeInfoToRectangle(GridRangeInfo.Cell(0, colResizing)));
				int colWidth = grid.GetColWidth(colResizing);
				UpdateColWidths(colResizing, colResizing, new int[1] { colWidth });
			}
			grid.ScrollCellInView(grid.TopRowIndex, colResizing, GridScrollCurrentCellReason.ResizedCells);
			return;
		}
		Rectangle rectangle4 = invertBarBounds;
		Rectangle rectangle5 = originalInvertBarBounds;
		int num2 = rectangle4.Top - rectangle5.Top;
		int height = num2 + grid.GetRowHeight(rowResizing);
		if (RaiseResizingRows(GridRangeInfo.Row(rowIndex), ref height, GridResizeCellsReason.MouseUp, point) && Math.Abs(num2) > 1 && movedMarker)
		{
			if (rowResizing > 0 && HasResizeRowOptions(GridResizeCellsBehavior.ResizeAll))
			{
				if (RaiseResizingRows(GridRangeInfo.Table(), ref height, GridResizeCellsReason.MouseUp, point))
				{
					grid.Model.Rows.DefaultSize = height;
				}
			}
			else if (rowResizing > 0 && ranges.AnyRangeContains(GridRangeInfo.Row(rowResizing)))
			{
				if (ranges.AnyRangeContains(GridRangeInfo.Table()))
				{
					if (RaiseResizingRows(GridRangeInfo.Table(), ref height, GridResizeCellsReason.MouseUp, point))
					{
						grid.Model.Rows.DefaultSize = height;
					}
				}
				else
				{
					GridRangeInfoList rowRanges = ranges.GetRowRanges(GridRangeInfoType.Rows);
					foreach (GridRangeInfo item2 in rowRanges)
					{
						if (RaiseResizingRows(item2, ref height, GridResizeCellsReason.MouseUp, point))
						{
							if (height > 0)
							{
								grid.Model.RowHeights.SetRange(item2.Top, item2.Bottom, height);
							}
							else
							{
								grid.Model.HideRows.SetRange(item2.Top, item2.Bottom, value: true);
							}
						}
					}
				}
			}
			else if (height > 0)
			{
				grid.Model.RowHeights[rowResizing] = height;
			}
			else
			{
				grid.Model.HideRows[rowResizing] = true;
			}
		}
		else
		{
			grid.InternalInvalidate(grid.RangeInfoToRectangle(GridRangeInfo.Cell(rowResizing, 0)));
			int rowHeight = grid.GetRowHeight(rowResizing);
			UpdateRowHeights(rowResizing, rowResizing, new int[1] { rowHeight });
		}
		grid.ScrollCellInView(rowResizing, grid.LeftColIndex, GridScrollCurrentCellReason.ResizedCells);
	}

	private void UpdateRowHeights(int fromRowIndex, int toRowIndex, int[] savedHeights)
	{
		grid.ViewLayout.Reset();
		GridRangeInfo range = GridRangeInfo.Rows(fromRowIndex, toRowIndex);
		GridRangeInfo gridRangeInfo = grid.ViewLayout.CombineSpannedRanges(range);
		if (grid.ViewLayout.IsRangeVisible(gridRangeInfo))
		{
			grid.InternalInvalidate(grid.ViewLayout.RectangleBottomOfRow(gridRangeInfo.Top, GridCellSizeKind.VisibleSize));
		}
	}

	private void UpdateColWidths(int fromColIndex, int toColIndex, int[] savedWidths)
	{
		grid.ViewLayout.Reset();
		_ = grid.GridBounds;
		GridRangeInfo range = GridRangeInfo.Cols(fromColIndex, toColIndex);
		GridRangeInfo gridRangeInfo = grid.ViewLayout.CombineSpannedRanges(range);
		if (grid.Model.Options.FloatCellsMode != GridFloatCellsMode.None)
		{
			grid.Model.FloatingCells.DelayFloatCells(gridRangeInfo);
			grid.InternalInvalidate(grid.GridBounds);
		}
		else if (grid.ViewLayout.IsRangeVisible(gridRangeInfo))
		{
			grid.InternalInvalidate(grid.ViewLayout.RectangleRightOfCol(gridRangeInfo.Left, GridCellSizeKind.VisibleSize));
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
		if (hitTestInfo != null && e.Button == MouseButtons.Left)
		{
			if (e.Clicks == 1)
			{
				LeftMouseDown(hitTestInfo.point, e, hitTestInfo.hitTestResult, hitTestInfo.rowIndex, hitTestInfo.colIndex);
			}
			else if (e.Clicks == 2)
			{
				LeftMouseDoubleClick(hitTestInfo.point, e, hitTestInfo.hitTestResult, hitTestInfo.rowIndex, hitTestInfo.colIndex);
			}
		}
	}

	public override void MouseMove(MouseEventArgs e)
	{
		if (Control.ModifierKeys != Keys.None)
		{
			grid.NotifyCancelMode();
			return;
		}
		Point point = new Point(e.X, e.Y);
		LeftMouseMove(point, e);
	}

	public override void MouseUp(MouseEventArgs e)
	{
		Point point = new Point(e.X, e.Y);
		LeftMouseUp(point, e);
	}

	public override void CancelMode()
	{
		CancelResizing();
	}

	public override int HitTest(MouseEventArgs e, IMouseController controller)
	{
		Point point = new Point(e.X, e.Y);
		hitTestInfo = null;
		if (e.Button == MouseButtons.Left && (controller == null || controller.Name == "SelectCells" || controller.Name == "DragCells"))
		{
			hitTestInfo = new ResizeCellsHitTestInfo(this, grid, point, GridResizeCellsReason.HitTest);
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

	private bool RaiseResizingColumns(GridRangeInfo columns, ref int width, GridResizeCellsReason reason, Point point)
	{
		GridResizingColumnsEventArgs e = new GridResizingColumnsEventArgs(columns, width, reason, sizeIndicatorBorder, boundsIndicatorBorder, point);
		grid.RaiseResizingColumns(e);
		width = e.Width;
		sizeIndicatorBorder = e.SizeIndicatorBorder;
		boundsIndicatorBorder = e.BoundsIndicatorBorder;
		return !e.Cancel;
	}

	private bool RaiseResizingRows(GridRangeInfo rows, ref int height, GridResizeCellsReason reason, Point point)
	{
		GridResizingRowsEventArgs e = new GridResizingRowsEventArgs(rows, height, reason, sizeIndicatorBorder, boundsIndicatorBorder, point);
		grid.RaiseResizingRows(e);
		height = e.Height;
		sizeIndicatorBorder = e.SizeIndicatorBorder;
		boundsIndicatorBorder = e.BoundsIndicatorBorder;
		return !e.Cancel;
	}
}
