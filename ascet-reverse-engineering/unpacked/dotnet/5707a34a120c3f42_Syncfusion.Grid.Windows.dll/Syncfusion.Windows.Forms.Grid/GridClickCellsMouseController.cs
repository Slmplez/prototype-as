using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

public class GridClickCellsMouseController : GridMouseController
{
	[DocumentationExclude]
	internal sealed class ClickCellsHitTestInfo
	{
		internal int hitTestResult;

		internal Point point = Point.Empty;

		internal Rectangle cellBounds = Rectangle.Empty;

		private int clientCol;

		private int clientRow;

		internal int rowIndex;

		internal int colIndex;

		internal GridCellRendererBase cellRenderer;

		internal ClickCellsHitTestInfo(GridControlBase grid, MouseEventArgs e, IMouseController controller)
		{
			point = new Point(e.X, e.Y);
			clientCol = grid.ViewLayout.PointToClientCol(point, fixBackHidden: false, GridCellSizeKind.VisibleSize);
			clientRow = grid.ViewLayout.PointToClientRow(point, fixBackHidden: false, GridCellSizeKind.VisibleSize);
			cellRenderer = null;
			hitTestResult = 0;
			if (clientCol < 0 || clientRow < 0)
			{
				return;
			}
			rowIndex = grid.GetRow(clientRow);
			colIndex = grid.GetCol(clientCol);
			if (clientCol < grid.ViewLayout.VisibleCols && clientRow < grid.ViewLayout.VisibleRows && rowIndex <= grid.Model.RowCount && colIndex <= grid.Model.ColCount)
			{
				if (grid.Model.GetSpannedRangeInfo(rowIndex, colIndex, out var range))
				{
					rowIndex = range.Top;
					colIndex = range.Left;
					cellBounds = grid.RangeInfoToRectangle(GridRangeInfo.Cell(rowIndex, colIndex), GridRangeOptions.MergeAllSpannedCells);
				}
				else
				{
					cellBounds = grid.RangeInfoToRectangle(GridRangeInfo.Cell(rowIndex, colIndex), GridRangeOptions.None);
				}
				cellRenderer = grid.GetCellRenderer(rowIndex, colIndex);
				hitTestResult = cellRenderer.RaiseHitTest(rowIndex, colIndex, e, controller);
				if (hitTestResult == 0)
				{
					hitTestResult = 3;
				}
			}
		}
	}

	internal ClickCellsHitTestInfo hitTestInfo;

	private ClickCellsHitTestInfo mouseHoverInfo;

	private GridCellRendererBase cellRenderer;

	public override string Name => "CellRenderer";

	public override Cursor Cursor
	{
		get
		{
			if (hitTestInfo == null || hitTestInfo.cellRenderer == null)
			{
				return null;
			}
			return hitTestInfo.cellRenderer.RaiseGetCursor(hitTestInfo.rowIndex, hitTestInfo.colIndex);
		}
	}

	public GridClickCellsMouseController(GridControlBase grid)
		: base(grid)
	{
	}

	public override void MouseHoverEnter()
	{
		mouseHoverInfo = hitTestInfo;
		hitTestInfo.cellRenderer.RaiseMouseHoverEnter(hitTestInfo.rowIndex, hitTestInfo.colIndex);
	}

	public override void MouseHover(MouseEventArgs e)
	{
		if (mouseHoverInfo == null || mouseHoverInfo.rowIndex != hitTestInfo.rowIndex || mouseHoverInfo.colIndex != hitTestInfo.colIndex || mouseHoverInfo.cellRenderer != hitTestInfo.cellRenderer)
		{
			if (mouseHoverInfo != null)
			{
				mouseHoverInfo.cellRenderer.RaiseMouseHoverLeave(mouseHoverInfo.rowIndex, mouseHoverInfo.colIndex, e);
			}
			hitTestInfo.cellRenderer.RaiseMouseHoverEnter(hitTestInfo.rowIndex, hitTestInfo.colIndex);
			mouseHoverInfo = hitTestInfo;
		}
		cellRenderer.RaiseMouseHover(hitTestInfo.rowIndex, hitTestInfo.colIndex, e);
	}

	public override void MouseHoverLeave(EventArgs e)
	{
		mouseHoverInfo.cellRenderer.RaiseMouseHoverLeave(mouseHoverInfo.rowIndex, mouseHoverInfo.colIndex, e);
		mouseHoverInfo = null;
	}

	public override void MouseDown(MouseEventArgs e)
	{
		if (hitTestInfo != null)
		{
			cellRenderer.RaiseMouseDown(hitTestInfo.rowIndex, hitTestInfo.colIndex, e);
		}
	}

	public override void MouseMove(MouseEventArgs e)
	{
		cellRenderer.RaiseMouseMove(hitTestInfo.rowIndex, hitTestInfo.colIndex, e);
	}

	public override void MouseUp(MouseEventArgs e)
	{
		cellRenderer.RaiseMouseUp(hitTestInfo.rowIndex, hitTestInfo.colIndex, e);
	}

	public override void CancelMode()
	{
		cellRenderer.RaiseCancelMode(hitTestInfo.rowIndex, hitTestInfo.colIndex);
	}

	public override int HitTest(MouseEventArgs e, IMouseController controller)
	{
		hitTestInfo = null;
		if (base.Grid.IsDesignMode() && e.Button != MouseButtons.Left)
		{
			return 0;
		}
		if (controller == null || controller.Name != "ResizeCells")
		{
			hitTestInfo = new ClickCellsHitTestInfo(base.Grid, e, controller);
			if (hitTestInfo.cellRenderer != null)
			{
				cellRenderer = hitTestInfo.cellRenderer;
			}
		}
		if (hitTestInfo == null)
		{
			return 0;
		}
		return hitTestInfo.hitTestResult;
	}
}
