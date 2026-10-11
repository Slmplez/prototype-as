using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

public class GridOleDataSourceMouseController : GridMouseController
{
	[DocumentationExclude]
	internal sealed class OleDataSourceHitTestInfo
	{
		private const int hitTestFrame = 8;

		internal int hitTestResult;

		internal Point point;

		internal Rectangle cellBounds = Rectangle.Empty;

		internal int clientCol;

		internal int clientRow;

		internal int rowIndex;

		internal int colIndex;

		internal GridRangeInfoList pSelList;

		internal GridRangeInfo activeRange;

		internal bool bTableSel;

		internal OleDataSourceHitTestInfo(GridControlBase grid, Point point)
		{
			this.point = point;
			clientCol = grid.ViewLayout.PointToClientCol(point, fixBackHidden: false, GridCellSizeKind.VisibleSize);
			clientRow = grid.ViewLayout.PointToClientRow(point, fixBackHidden: false, GridCellSizeKind.VisibleSize);
			if (clientCol < 0 || clientRow < 0)
			{
				return;
			}
			rowIndex = grid.GetRow(clientRow);
			colIndex = grid.GetCol(clientCol);
			if (!grid.HitTestSelectionEdge || clientCol >= grid.ViewLayout.VisibleCols || clientRow >= grid.ViewLayout.VisibleRows || rowIndex > grid.Model.RowCount || colIndex > grid.Model.ColCount)
			{
				return;
			}
			cellBounds = grid.ViewLayout.RangeInfoToRectangle(GridRangeInfo.Cell(rowIndex, colIndex), GridCellSizeKind.VisibleSize);
			int hitTestSelectionEdge = GridOleDataSourceMouseController.hitTestSelectionEdge;
			bool flag = false;
			pSelList = grid.Model.Selections.Ranges;
			activeRange = GridRangeInfo.Empty;
			bTableSel = pSelList.AnyRangeContains(GridRangeInfo.Table());
			if (bTableSel)
			{
				flag = rowIndex == 0 && colIndex == 0 && ((point.X >= cellBounds.Left && point.X - cellBounds.Left <= hitTestSelectionEdge) || (point.Y >= cellBounds.Top && point.Y - cellBounds.Top <= hitTestSelectionEdge));
			}
			else
			{
				activeRange = pSelList.ActiveRange;
				if (activeRange.IsEmpty)
				{
					grid.Model.CoveredRanges.Find(rowIndex, colIndex, out var range);
					if (range != null && grid.CurrentCell.HasCurrentCellAt(range.Top, range.Left))
					{
						activeRange = range;
					}
				}
				GridRangeInfo range2 = GridRangeInfo.Cell(rowIndex, colIndex);
				if (activeRange.Contains(range2))
				{
					if (!flag && point.X >= cellBounds.Left && point.X - cellBounds.Left <= hitTestSelectionEdge)
					{
						flag = !activeRange.IsRows && activeRange.Left == colIndex;
					}
					if (!flag && point.X <= cellBounds.Right && cellBounds.Right - point.X <= hitTestSelectionEdge)
					{
						flag = !activeRange.IsRows && activeRange.Right == colIndex;
					}
					if (!flag && point.Y >= cellBounds.Top && point.Y - cellBounds.Top <= hitTestSelectionEdge)
					{
						flag = !activeRange.IsCols && activeRange.Top == rowIndex;
					}
					if (!flag && point.Y <= cellBounds.Bottom && cellBounds.Bottom - point.Y <= hitTestSelectionEdge)
					{
						flag = !activeRange.IsCols && activeRange.Bottom == rowIndex;
					}
				}
			}
			if (flag && RaiseQueryCanOleDragRange(grid, activeRange))
			{
				hitTestResult = 6;
			}
			else
			{
				hitTestResult = 0;
			}
		}

		private bool RaiseQueryCanOleDragRange(GridControlBase grid, GridRangeInfo range)
		{
			GridQueryCanOleDragRangeEventArgs e = new GridQueryCanOleDragRangeEventArgs(range);
			grid.RaiseQueryCanOleDragRange(e);
			return !e.Cancel;
		}
	}

	private int dragDropFlags;

	private GridControlBase grid;

	private OleDataSourceHitTestInfo hitTestInfo;

	private static int hitTestSelectionEdge = 4;

	[DocumentationExclude]
	public static int HitTestSelectionEdge
	{
		get
		{
			return hitTestSelectionEdge;
		}
		set
		{
			hitTestSelectionEdge = value;
		}
	}

	public override string Name => "OleDataSource";

	public override Cursor Cursor
	{
		get
		{
			if (hitTestInfo != null && hitTestInfo.hitTestResult == 6)
			{
				return GridCursors.DragSelectionCursor;
			}
			return null;
		}
	}

	public GridOleDataSourceMouseController(GridControlBase grid)
		: base(grid)
	{
		this.grid = grid;
	}

	public bool EnableOleDataSource(int flags)
	{
		dragDropFlags = flags;
		grid.HitTestSelectionEdge |= flags != 0;
		return true;
	}

	public override bool GetAllowFixFocus()
	{
		return false;
	}

	public bool DndStartDragDrop(int rowIndex, int colIndex)
	{
		if (dragDropFlags == 0)
		{
			return false;
		}
		if (grid.Selections.GetSelectedRanges(out var ranges, considerCurrentCell: true) && ranges.AnyRangeContains(GridRangeInfo.Cell(rowIndex, colIndex)))
		{
			if (!GridUtil.IsSet(dragDropFlags, 4))
			{
				GridRangeInfo activeRange = ranges.GetRangesContaining(GridRangeInfo.Cell(rowIndex, colIndex)).ActiveRange;
				ranges = new GridRangeInfoList();
				ranges.Add(activeRange);
			}
			grid.Model.DragDropData.dndForceDropCol = 2147483646;
			grid.Model.DragDropData.dndForceDropRow = 2147483646;
			int num = 0;
			int num2 = 0;
			if (GridUtil.IsNotSet(dragDropFlags, 2))
			{
				num2 = grid.InternalGetHeaderCols() + 1;
			}
			if (GridUtil.IsNotSet(dragDropFlags, 1))
			{
				num = grid.InternalGetHeaderRows() + 1;
			}
			foreach (GridRangeInfo item in ranges)
			{
				if (item.IsTable)
				{
					grid.Model.DragDropData.dndForceDropCol = num2;
					grid.Model.DragDropData.dndForceDropRow = num;
				}
				else if (item.IsRows)
				{
					grid.Model.DragDropData.dndForceDropCol = num2;
				}
				else if (item.IsCols)
				{
					grid.Model.DragDropData.dndForceDropRow = num;
				}
			}
			ranges = ranges.ExpandRanges(num, num2, grid.Model.RowCount, grid.Model.ColCount);
			grid.Model.DragDropData.dndCurrentCellText = false;
			grid.Model.DragDropData.dndCurrentCellControl = null;
			DataObject dataObject = new DataObject();
			OnDndCacheGlobalData(dataObject, ranges, out var nDndRowExt, out var nDndColExt);
			GridModel.InternalGridDragDropData.dndRowsCopied = nDndRowExt;
			GridModel.InternalGridDragDropData.dndColsCopied = nDndColExt;
			grid.Model.DragDropData.dndSource = true;
			grid.Model.DragDropData.dndSelList = ranges;
			grid.Model.DragDropData.dndStartRow = Math.Min(grid.Model.DragDropData.dndForceDropRow, Math.Max(rowIndex, num));
			grid.Model.DragDropData.dndStartCol = Math.Min(grid.Model.DragDropData.dndForceDropCol, Math.Max(colIndex, num2));
			GridRangeInfo activeRange2 = ranges.ActiveRange;
			if (ranges.Count == 1 && !activeRange2.IsEmpty)
			{
				grid.Model.DragDropData.dndRowOffset = Math.Max(grid.Model.DragDropData.dndStartRow, activeRange2.Top) - activeRange2.Top;
				grid.Model.DragDropData.dndColOffset = Math.Max(grid.Model.DragDropData.dndStartCol, activeRange2.Left) - activeRange2.Left;
				grid.Model.DragDropData.dndStartRow = Math.Min(grid.Model.DragDropData.dndStartRow, activeRange2.Top);
				grid.Model.DragDropData.dndStartCol = Math.Min(grid.Model.DragDropData.dndStartCol, activeRange2.Left);
			}
			else
			{
				grid.Model.DragDropData.dndRowOffset = 0;
				grid.Model.DragDropData.dndColOffset = 0;
			}
			Rectangle rect = grid.RangeInfoToRectangle(GridRangeInfo.Cell(rowIndex, colIndex), GridRangeOptions.MergeCoveredCells);
			rect = grid.GridRectangleToScreen(rect);
			GridModel.InternalGridDragDropData.dndGridSource = true;
			GridModel.InternalGridDragDropData.dndGridTargetStyle = false;
			DragDropEffects dragDropEffects = grid.DoDragDrop(dataObject, DragDropEffects.Copy | DragDropEffects.Move);
			if ((dragDropEffects & DragDropEffects.Move) == DragDropEffects.Move)
			{
				CancelEventArgs e = new CancelEventArgs();
				grid.Model.RaiseQueryDragDropMoveClearCells(e);
				if (!e.Cancel)
				{
					if (grid.Model.DragDropData.dndCurrentCellText)
					{
						grid.Model.CommandStack.BeginTrans(SR.GetString("GRID_IDM_CUTDATA"));
						_ = grid.Model.DragDropData.dndCurrentCellControl;
						grid.CurrentCell.EndEdit();
						grid.Model.CommandStack.CommitTrans();
					}
					else
					{
						grid.Model.ClearCells(ranges, GridModel.InternalGridDragDropData.dndGridTargetStyle);
					}
				}
			}
			GridModel.InternalGridDragDropData.dndGridSource = false;
			GridModel.InternalGridDragDropData.dndGridTargetStyle = false;
			grid.Model.DragDropData.dndSource = false;
			grid.Model.DragDropData.dndStartRow = 0;
			grid.Model.DragDropData.dndStartCol = 0;
			grid.Model.DragDropData.dndSelList = null;
			grid.Model.DragDropData.dndCurrentCellText = false;
			grid.Model.DragDropData.dndCurrentCellControl = null;
			return true;
		}
		return false;
	}

	private bool OnDndCacheGlobalData(IDataObject dataObject, GridRangeInfoList selList, out int nDndRowExt, out int nDndColExt)
	{
		nDndRowExt = (nDndColExt = 0);
		GridQueryOleDataSourceDataEventArgs e = new GridQueryOleDataSourceDataEventArgs(dataObject, selList, dragDropFlags, 0, 0);
		grid.Model.RaiseQueryOleDataSourceData(e);
		dragDropFlags = e.DragDropFlags;
		nDndRowExt = e.RowCount;
		nDndColExt = e.ColCount;
		if (e.Handled)
		{
			return e.Result;
		}
		bool flag = GridUtil.IsSet(dragDropFlags, 8);
		bool flag2 = GridUtil.IsSet(dragDropFlags, 16);
		bool result = false;
		if (flag)
		{
			int rowIndex;
			int colIndex;
			bool flag3 = grid.CurrentCell.GetCurrentCell(out rowIndex, out colIndex) && !e.IgnoreCurrentCell;
			if (selList.Count == 1 && flag3 && selList[0] == GridRangeInfo.Cell(rowIndex, colIndex) && grid.CurrentCell.HasControlFocus && grid.CurrentCell.Renderer.GetSelectedText(out var buffer) && buffer.Length > 0)
			{
				dataObject.SetData(DataFormats.UnicodeText, buffer);
				flag2 = false;
				nDndRowExt = 1;
				nDndColExt = 1;
				grid.Model.DragDropData.dndCurrentCellText = true;
				grid.Model.DragDropData.dndCurrentCellControl = grid.CurrentCell.Renderer;
			}
			else if (grid.Model.TextDataExchange.CopyTextToBuffer(out buffer, selList, out nDndRowExt, out nDndColExt))
			{
				dataObject.SetData(DataFormats.UnicodeText, buffer);
			}
		}
		if (flag2 && grid.Model.DataExchange.CopyCellsToDataObject(out var data, selList, GridUtil.IsSet(dragDropFlags, 32), dragDropFlags, out nDndRowExt, out nDndColExt))
		{
			dataObject.SetData(data);
			result = true;
		}
		return result;
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
			grid.Model.CoveredRanges.Find(hitTestInfo.rowIndex, hitTestInfo.colIndex, out var range);
			DndStartDragDrop(range.Top, range.Left);
		}
	}

	public override void MouseMove(MouseEventArgs e)
	{
	}

	public override void MouseUp(MouseEventArgs e)
	{
	}

	public override void CancelMode()
	{
	}

	public override int HitTest(MouseEventArgs e, IMouseController controller)
	{
		Point point = new Point(e.X, e.Y);
		hitTestInfo = null;
		if (e.Button == MouseButtons.Left && e.Clicks < 2 && (controller == null || controller.Name == "SelectCells" || grid.MouseControllerDispatcher.LastHitTestCode != 7))
		{
			hitTestInfo = new OleDataSourceHitTestInfo(grid, point);
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
