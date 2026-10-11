using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public abstract class GridDragColumnHeaderMouseControllerBase : IMouseController, IGridFocusHelper
{
	internal const int GroupDropAreaRowIndex = 2;

	internal GridControlBaseImp _grid;

	internal int column;

	internal bool wasDragged;

	internal Rectangle originBounds = Rectangle.Empty;

	private GridDragColumnHeaderHelper headerDragHelper;

	internal Bitmap dragHeaderBitmap;

	internal Point origin = Point.Empty;

	private bool dragHeaderVisible;

	internal Cursor cursor;

	internal int _rowIndex;

	internal int _colIndex;

	private Point hiddenPoint = new Point(10000, 10000);

	private GridDragColumnHeaderHelper redArrowIndicatorDragHelper;

	internal GridClickCellsMouseController clickCellsController;

	private int clickCellsControllerHitTest;

	private static bool firstShowRedArrowIndicator = true;

	internal int targetColIndex;

	private bool entered;

	public GridClickCellsMouseController ClickCellsController => clickCellsController;

	internal GridControlBaseImp grid => GetGridControl();

	[DocumentationExclude]
	public bool DragHeaderVisible
	{
		get
		{
			return dragHeaderVisible;
		}
		set
		{
			if (dragHeaderVisible != value)
			{
				dragHeaderVisible = value;
				if (value && headerDragHelper == null)
				{
					OpenDragHeader();
				}
				else if (!value)
				{
					CloseDragHeader();
				}
			}
		}
	}

	public virtual string Name => "DragGroupHeader";

	public virtual Cursor Cursor
	{
		get
		{
			if (cursor != null)
			{
				return cursor;
			}
			return clickCellsController.Cursor;
		}
	}

	public void ResetClickCellsController()
	{
		if (entered)
		{
			clickCellsController.MouseHoverLeave(EventArgs.Empty);
		}
		else if (clickCellsControllerHitTest != 0)
		{
			clickCellsController.CancelMode();
		}
		entered = false;
		clickCellsControllerHitTest = 0;
	}

	public GridDragColumnHeaderMouseControllerBase()
	{
	}

	public GridDragColumnHeaderMouseControllerBase(GridControlBaseImp grid)
	{
		_grid = grid;
	}

	protected virtual GridControlBaseImp GetGridControl()
	{
		return _grid;
	}

	public bool ShouldShowRemoveCursor()
	{
		if (grid == null)
		{
			return false;
		}
		Point mousePosition = Control.MousePosition;
		mousePosition = grid.GridPointToClient(mousePosition);
		return !grid.GridBounds.Contains(mousePosition);
	}

	internal bool CheckMouseButtons(MouseEventArgs e)
	{
		return e.Button == MouseButtons.Left;
	}

	internal GridRangeInfo GetRangeOfColumnHeaderSection()
	{
		if (grid != null)
		{
			return GridRangeInfo.Rows(0, grid.Model.Rows.HeaderCount);
		}
		return GridRangeInfo.Empty;
	}

	public int GetColumnAtMousePosition()
	{
		Point mousePosition = Control.MousePosition;
		mousePosition = grid.GridPointToClient(mousePosition);
		return grid.GetCol(grid.ViewLayout.PointToClientCol(mousePosition, GridCellSizeKind.ActualSize));
	}

	internal static bool SupportsTransparentForm()
	{
		if (Environment.OSVersion.Platform != PlatformID.Win32NT || Environment.OSVersion.Version.Major < 5)
		{
			return false;
		}
		return true;
	}

	internal void OpenRedArrowIndicator()
	{
		Bitmap bmp = CreateRedArrowIndicatorBitmap();
		redArrowIndicatorDragHelper = new GridDragColumnHeaderHelper();
		redArrowIndicatorDragHelper.StartDrag(bmp, hiddenPoint, DragDropEffects.Move);
		redArrowIndicatorDragHelper.DragWindow.Paint += DragWindow_Paint;
		if (!SupportsTransparentForm())
		{
			GridRangeInfo rangeOfColumnHeaderSection = GetRangeOfColumnHeaderSection();
			int top = rangeOfColumnHeaderSection.Top;
			GridStyleInfo gridStyleInfo = grid.Model[top, 0];
			Color backColor = Color.FromArgb(255, gridStyleInfo.Interior.BackColor);
			redArrowIndicatorDragHelper.DragWindow.BackColor = backColor;
		}
	}

	internal void CloseRedArrowIndicator()
	{
		if (redArrowIndicatorDragHelper != null)
		{
			redArrowIndicatorDragHelper.EndDrag();
			redArrowIndicatorDragHelper.Dispose();
			redArrowIndicatorDragHelper = null;
		}
	}

	private Bitmap CreateRedArrowIndicatorBitmap()
	{
		Bitmap bitmap = null;
		Graphics graphics = null;
		GridRangeInfo rangeOfColumnHeaderSection = GetRangeOfColumnHeaderSection();
		int top = rangeOfColumnHeaderSection.Top;
		Bitmap redDownBitmap = GridDragColumnHeaderBitmaps.RedDownBitmap;
		Bitmap redUpBitmap = GridDragColumnHeaderBitmaps.RedUpBitmap;
		Size size = new Size(redDownBitmap.Width, grid.GetRowHeight(top) + redDownBitmap.Height * 2 - 1);
		new Rectangle(Point.Empty, size);
		try
		{
			bitmap = new Bitmap(size.Width, size.Height);
			graphics = Graphics.FromImage(bitmap);
			graphics.FillRectangle(new SolidBrush(Color.Red), new Rectangle(Point.Empty, size));
			graphics.DrawImageUnscaled(redUpBitmap, 0, bitmap.Height - redUpBitmap.Height);
			graphics.DrawImageUnscaled(redDownBitmap, 1, 0);
		}
		finally
		{
			graphics?.Dispose();
		}
		bitmap.MakeTransparent(Color.Red);
		return bitmap;
	}

	private void DrawRedArrowIndicator(Graphics g)
	{
		GridRangeInfo rangeOfColumnHeaderSection = GetRangeOfColumnHeaderSection();
		int top = rangeOfColumnHeaderSection.Top;
		Bitmap redDownBitmap = GridDragColumnHeaderBitmaps.RedDownBitmap;
		Bitmap redUpBitmap = GridDragColumnHeaderBitmaps.RedUpBitmap;
		Size size = new Size(redDownBitmap.Width, grid.GetRowHeight(top) + redDownBitmap.Height * 2 - 1);
		new Rectangle(Point.Empty, size);
		Color color = Color.Red;
		if (!SupportsTransparentForm())
		{
			GridStyleInfo gridStyleInfo = grid.Model[top, 0];
			color = Color.FromArgb(255, gridStyleInfo.Interior.BackColor);
		}
		g.FillRectangle(new SolidBrush(color), new Rectangle(Point.Empty, size));
		g.DrawImageUnscaled(redUpBitmap, 0, size.Height - redUpBitmap.Height);
		g.DrawImageUnscaled(redDownBitmap, 0, 0);
	}

	private void DragWindow_Paint(object sender, PaintEventArgs e)
	{
		DrawRedArrowIndicator(e.Graphics);
	}

	public bool ShouldShowRedArrowIndicator()
	{
		if (ShouldShowRemoveCursor())
		{
			return false;
		}
		if (targetColIndex > grid.Model.Cols.HeaderCount)
		{
			return column != targetColIndex;
		}
		return false;
	}

	public Point GetRedArrowIndicatorLocation(int colIndex)
	{
		if (colIndex >= 0)
		{
			Rectangle rectangle = grid.RangeInfoToRectangle(GridRangeInfo.Cell(0, colIndex));
			Point p = (grid.IsRightToLeft() ? new Point(rectangle.Right, rectangle.Top) : rectangle.Location);
			return grid.GridPointToScreen(p);
		}
		return Point.Empty;
	}

	[DocumentationExclude]
	public void UpdateRedArrowIndicator()
	{
		Point mousePosition = Control.MousePosition;
		mousePosition = grid.GridPointToClient(mousePosition);
		GridControlBase gridWindow = grid.GetGridWindow();
		if (mousePosition.X >= gridWindow.GridBounds.Left && mousePosition.X <= gridWindow.GridBounds.Right)
		{
			targetColIndex = grid.GetCol(grid.ViewLayout.PointToClientCol(mousePosition, GridCellSizeKind.ActualSize));
			if (ShouldShowRedArrowIndicator())
			{
				Bitmap redDownBitmap = GridDragColumnHeaderBitmaps.RedDownBitmap;
				_ = GridDragColumnHeaderBitmaps.RedUpBitmap;
				Point p = Point.Empty;
				GridQueryDragColumnHeaderEventArgs e = new GridQueryDragColumnHeaderEventArgs(grid, _colIndex, targetColIndex, GridQueryDragColumnHeaderReason.ShowRedArrowIndicator);
				grid.RaiseQueryAllowDragColumn(e);
				if (!e.AllowDrag)
				{
					mousePosition = hiddenPoint;
				}
				else
				{
					p = GetRedArrowIndicatorLocation(targetColIndex);
					p.X -= redDownBitmap.Width / 2;
					p.Y -= redDownBitmap.Height;
					mousePosition = grid.GridPointToClient(p);
				}
				if (redArrowIndicatorDragHelper == null)
				{
					return;
				}
				if (mousePosition.X < gridWindow.GridBounds.Left - redDownBitmap.Width / 2 || mousePosition.X > gridWindow.GridBounds.Right)
				{
					redArrowIndicatorDragHelper.DoDrag(hiddenPoint, DragDropEffects.Copy);
					return;
				}
				redArrowIndicatorDragHelper.DoDrag(p, DragDropEffects.Copy);
				redArrowIndicatorDragHelper.DragWindow.ShowWindowTopMost();
				if (firstShowRedArrowIndicator)
				{
					firstShowRedArrowIndicator = false;
					redArrowIndicatorDragHelper.DoDrag(hiddenPoint, DragDropEffects.Copy);
					UpdateRedArrowIndicator();
				}
				return;
			}
		}
		if (redArrowIndicatorDragHelper != null)
		{
			redArrowIndicatorDragHelper.DoDrag(hiddenPoint, DragDropEffects.Copy);
		}
	}

	internal Point GetMovementDelta()
	{
		Point mousePosition = Control.MousePosition;
		return new Point(mousePosition.X - origin.X, mousePosition.Y - origin.Y);
	}

	public bool ShouldShowDragBitmap()
	{
		return !originBounds.Contains(Control.MousePosition);
	}

	internal Point GetDragWindowLocation(Point srcLocation)
	{
		Point mousePosition = Control.MousePosition;
		return new Point(srcLocation.X + mousePosition.X - origin.X, srcLocation.Y + mousePosition.Y - origin.Y);
	}

	internal void OpenDragHeader()
	{
		Bitmap bmp = CreateHeaderBitmap(grid, _rowIndex, _colIndex);
		headerDragHelper = new GridDragColumnHeaderHelper();
		cursor = Cursors.Default;
		headerDragHelper.StartDrag(bmp, hiddenPoint, DragDropEffects.Move);
	}

	internal void CloseDragHeader()
	{
		if (headerDragHelper != null)
		{
			headerDragHelper.EndDrag();
			headerDragHelper.Dispose();
			headerDragHelper = null;
		}
	}

	internal void UpdateDragHeader()
	{
		Point mousePosition = Control.MousePosition;
		DragHeaderVisible = !originBounds.Contains(mousePosition);
		if (DragHeaderVisible)
		{
			headerDragHelper.DragWindow.WindowCursor = Cursor;
			Point dragWindowLocation = GetDragWindowLocation(originBounds.Location);
			headerDragHelper.DoDrag(dragWindowLocation, DragDropEffects.Move);
			if (redArrowIndicatorDragHelper != null)
			{
				redArrowIndicatorDragHelper.DragWindow.ShowWindowTopMost();
			}
		}
	}

	private Bitmap CreateHeaderBitmap(GridControlBase grid, int rowIndex, int colIndex)
	{
		Graphics graphics = null;
		Size size = new Size(grid.GetColWidth(colIndex), grid.GetRowHeight(rowIndex));
		Rectangle rectangle = new Rectangle(Point.Empty, size);
		GridStyleInfo gridStyleInfo = grid.Model[rowIndex, colIndex];
		GridCellRendererBase gridCellRendererBase = grid.CellRenderers[gridStyleInfo.CellType];
		Bitmap bitmap = new Bitmap(Math.Max(1, size.Width), Math.Max(1, size.Height));
		try
		{
			graphics = Graphics.FromImage(bitmap);
			BrushPaint.FillRectangle(graphics, rectangle, gridStyleInfo.Interior);
			gridCellRendererBase.Draw(graphics, rectangle, rowIndex, colIndex, gridStyleInfo);
			return bitmap;
		}
		finally
		{
			graphics?.Dispose();
		}
	}

	public virtual bool GetAllowFixFocus()
	{
		return false;
	}

	public virtual void MouseHoverEnter()
	{
		if (clickCellsControllerHitTest != 0)
		{
			entered = true;
			clickCellsController.MouseHoverEnter();
		}
	}

	public virtual void MouseHover(MouseEventArgs e)
	{
		if (clickCellsControllerHitTest != 0)
		{
			clickCellsController.MouseHover(e);
		}
	}

	public virtual void MouseHoverLeave(EventArgs e)
	{
		if (entered)
		{
			clickCellsController.MouseHoverLeave(e);
			entered = false;
		}
	}

	public virtual void MouseDown(MouseEventArgs e)
	{
		if (clickCellsControllerHitTest != 0)
		{
			clickCellsController.MouseDown(e);
		}
	}

	public virtual void MouseMove(MouseEventArgs e)
	{
		if (clickCellsControllerHitTest != 0)
		{
			clickCellsController.MouseMove(e);
		}
	}

	public virtual void MouseUp(MouseEventArgs e)
	{
		if (clickCellsControllerHitTest != 0)
		{
			clickCellsController.MouseUp(e);
		}
	}

	public virtual void CancelMode()
	{
		if (clickCellsControllerHitTest != 0)
		{
			clickCellsController.CancelMode();
		}
	}

	public virtual int HitTest(MouseEventArgs e, IMouseController controller)
	{
		clickCellsControllerHitTest = clickCellsController.HitTest(e, controller);
		return clickCellsControllerHitTest;
	}
}
