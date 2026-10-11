#define TRACE
using System;
using System.Collections;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms.Grid;

public class GridOleDropTarget : GridSubComponent, IGridOleDragDropEventsTarget
{
	private int dragDropLastRow;

	private int dragDropLastCol;

	private Rectangle dragDropLastRect;

	private int dragDropRowExt;

	private int dragDropColExt;

	private DragDropEffects dragDropDropeffect;

	private ArrayList dataObjectConsumerOptions = new ArrayList();

	private IGridDataObjectConsumer activeConsumer;

	private GridControlBase grid;

	public GridOleDropTarget(GridControlBase grid)
		: base(grid)
	{
		this.grid = grid;
		grid.OleDragDropEventsTarget = this;
		grid.LeftColChanging += GridBeforeScrolling;
		grid.TopRowChanging += GridBeforeScrolling;
	}

	public void Register(int flags)
	{
		grid.Model.Options.DragDropDropTargetFlags = flags;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (grid.OleDragDropEventsTarget == this)
			{
				grid.OleDragDropEventsTarget = null;
			}
			grid.LeftColChanging -= GridBeforeScrolling;
			grid.TopRowChanging -= GridBeforeScrolling;
		}
		base.Dispose(disposing);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected virtual void GridBeforeScrolling(object sender, GridRowColIndexChangingEventArgs e)
	{
		OutlineDropTargetRange(Point.Empty, bEraseOld: true, bDrawNew: false);
	}

	public void RegisterConsumer(IGridDataObjectConsumer consumer)
	{
		if (!dataObjectConsumerOptions.Contains(consumer))
		{
			dataObjectConsumerOptions.Add(consumer);
		}
	}

	public void UnregisterConsumer(IGridDataObjectConsumer consumer)
	{
		if (dataObjectConsumerOptions.Contains(consumer))
		{
			dataObjectConsumerOptions.Remove(consumer);
		}
	}

	public virtual void OnDragEnter(DragEventArgs drgevent)
	{
		Trace.WriteLineIf(Switches.DragDrop.TraceVerbose, "Effect: " + drgevent.Effect.ToString() + " / AllowedEffect: " + drgevent.AllowedEffect);
		dragDropDropeffect = DragDropEffects.None;
		activeConsumer = QueryAcceptData(drgevent.Data);
		if (activeConsumer == null)
		{
			return;
		}
		int num;
		int num2;
		if (GridModel.InternalGridDragDropData.dndGridSource)
		{
			num = GridModel.InternalGridDragDropData.dndRowsCopied;
			num2 = GridModel.InternalGridDragDropData.dndColsCopied;
		}
		else
		{
			Size size = activeConsumer.DetermineRowColCount(drgevent.Data);
			num = size.Height;
			num2 = size.Width;
		}
		dragDropRowExt = num;
		dragDropColExt = num2;
		if (dragDropRowExt == 0 && dragDropColExt == 0)
		{
			dragDropDropeffect = DragDropEffects.Scroll;
			drgevent.Effect = DragDropEffects.None;
			activeConsumer = null;
			return;
		}
		Form parentFrame = GridUtil.GetParentFrame(grid);
		if (parentFrame != null)
		{
			parentFrame.Activate();
			grid.Refresh();
		}
		if (GridUtil.IsSet(grid.Model.Options.DragDropDropTargetFlags, 128))
		{
			EnableEdgeScrolling(ScrollBars.Both);
		}
		OnDragOver(drgevent);
		dragDropDropeffect = DragDropEffects.None;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected void EnableEdgeScrolling(ScrollBars sb)
	{
		Rectangle gridBounds = grid.GridBounds;
		int rowRangeHeight = grid.ViewLayout.GetRowRangeHeight(0, grid.InternalGetFrozenRows(), GridCellSizeKind.VisibleSize);
		int colRangeWidth = grid.ViewLayout.GetColRangeWidth(0, grid.InternalGetFrozenCols(), GridCellSizeKind.VisibleSize);
		grid.AutoScrollBounds = Rectangle.FromLTRB(colRangeWidth, rowRangeHeight, gridBounds.Right, gridBounds.Bottom);
		grid.AutoScrolling = sb;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected virtual IGridDataObjectConsumer QueryAcceptData(IDataObject dataObject)
	{
		IGridDataObjectConsumer gridDataObjectConsumer = null;
		for (int i = 0; i < dataObjectConsumerOptions.Count; i++)
		{
			IGridDataObjectConsumer gridDataObjectConsumer2 = dataObjectConsumerOptions[i] as IGridDataObjectConsumer;
			if (gridDataObjectConsumer2.QueryAcceptData(dataObject, gridDataObjectConsumer, null))
			{
				gridDataObjectConsumer = gridDataObjectConsumer2;
			}
		}
		return gridDataObjectConsumer;
	}

	public virtual void OnDragDrop(DragEventArgs drgevent)
	{
		dragDropDropeffect = DragDropEffects.None;
		if ((dragDropRowExt == 0 && dragDropColExt == 0) || dragDropLastRow >= 2147483646)
		{
			return;
		}
		if (GridUtil.IsSet(grid.Model.Options.DragDropDropTargetFlags, 128))
		{
			grid.AutoScrolling = ScrollBars.None;
		}
		Point p = new Point(drgevent.X, drgevent.Y);
		p = grid.PointToClient(p);
		OutlineDropTargetRange(p, bEraseOld: true, bDrawNew: false);
		if (drgevent.Effect == DragDropEffects.None)
		{
			return;
		}
		DragDropEffects dragDropEffects = drgevent.Effect;
		GridRangeInfo gridRangeInfo = grid.PointToRangeInfo(p);
		int val = gridRangeInfo.Top;
		int val2 = gridRangeInfo.Left;
		int val3 = ((!GridUtil.IsSet(grid.Model.Options.DragDropDropTargetFlags, 2)) ? (grid.InternalGetHeaderRows() + 1) : 0);
		int val4 = ((!GridUtil.IsSet(grid.Model.Options.DragDropDropTargetFlags, 1)) ? (grid.InternalGetHeaderCols() + 1) : 0);
		if (grid.Model.DragDropData.dndSource)
		{
			val = Math.Max(val, grid.Model.DragDropData.dndRowOffset) - grid.Model.DragDropData.dndRowOffset;
			val2 = Math.Max(val2, grid.Model.DragDropData.dndColOffset) - grid.Model.DragDropData.dndColOffset;
			val = Math.Min(grid.Model.DragDropData.dndForceDropRow, val);
			val2 = Math.Min(grid.Model.DragDropData.dndForceDropCol, val2);
		}
		val = Math.Max(val, val3);
		val2 = Math.Max(val2, val4);
		if (GridUtil.IsSet(grid.Model.Options.DragDropDropTargetFlags, 512))
		{
			int val5 = grid.Model.RowCount - dragDropRowExt + 1;
			val = Math.Min(val, val5);
		}
		if (GridUtil.IsSet(grid.Model.Options.DragDropDropTargetFlags, 1024))
		{
			int val6 = grid.Model.ColCount - dragDropColExt + 1;
			val2 = Math.Min(val2, val6);
		}
		if (grid.Model.DragDropData.dndSource)
		{
			if (grid.Model.DragDropData.dndStartRow == val && grid.Model.DragDropData.dndStartCol == val2)
			{
				drgevent.Effect = DragDropEffects.None;
				return;
			}
			dragDropDropeffect = dragDropEffects;
			if (grid.Model.DragDropData.directDragDrop && !grid.Model.DragDropData.dndCurrentCellText && grid.Model.DragDropData.dndSelList.Count == 1)
			{
				DropDataAtRowCol(drgevent.Data, val, val2);
			}
			else
			{
				grid.NotifySelectionFrameChanging(null);
				grid.Model.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll);
				bool flag = true;
				try
				{
					if ((dragDropEffects & DragDropEffects.Copy) == DragDropEffects.Copy)
					{
						grid.Model.CommandStack.BeginTrans(SR.GetString("GRID_IDM_DRAGDROP_COPY"));
					}
					else
					{
						grid.Model.CommandStack.BeginTrans(SR.GetString("GRID_IDM_DRAGDROP_MOVE"));
						if (!grid.Model.DragDropData.dndCurrentCellText)
						{
							flag = ((!drgevent.Data.GetDataPresent(typeof(GridData)) || !GridUtil.IsSet(grid.Model.Options.DragDropDropTargetFlags, 16)) ? grid.Model.ClearCells(grid.Model.DragDropData.dndSelList, clearStyle: false) : grid.Model.ClearCells(grid.Model.DragDropData.dndSelList, clearStyle: true));
						}
						else
						{
							_ = grid.Model.DragDropData.dndCurrentCellControl;
							grid.CurrentCell.EndEdit();
							flag = true;
						}
						dragDropEffects = DragDropEffects.Copy;
					}
					if (flag)
					{
						flag = DropDataAtRowCol(drgevent.Data, val, val2);
					}
					if (flag)
					{
						grid.Model.CommandStack.CommitTrans();
					}
					else
					{
						grid.Model.CommandStack.Rollback();
					}
				}
				finally
				{
					grid.Model.EndUpdate();
				}
			}
			dragDropDropeffect = DragDropEffects.None;
			dragDropEffects = DragDropEffects.None;
		}
		else
		{
			dragDropDropeffect = dragDropEffects;
			activeConsumer.DropAtRowCol(drgevent.Data, val, val2);
			dragDropDropeffect = DragDropEffects.None;
		}
		dragDropRowExt = 0;
		dragDropColExt = 0;
		drgevent.Effect = dragDropEffects;
		dragDropDropeffect = DragDropEffects.None;
	}

	public virtual void OnDragLeave(EventArgs e)
	{
		if (GridUtil.IsSet(grid.Model.Options.DragDropDropTargetFlags, 128))
		{
			grid.AutoScrolling = ScrollBars.None;
		}
		OutlineDropTargetRange(Point.Empty, bEraseOld: true, bDrawNew: false);
		dragDropDropeffect = DragDropEffects.None;
		dragDropRowExt = 0;
		dragDropColExt = 0;
		activeConsumer = null;
	}

	public virtual void OnDragOver(DragEventArgs drgevent)
	{
		if (dragDropDropeffect != DragDropEffects.None)
		{
			drgevent.Effect = dragDropDropeffect;
			return;
		}
		Point p = new Point(drgevent.X, drgevent.Y);
		p = grid.PointToClient(p);
		OutlineDropTargetRange(p, bEraseOld: true, bDrawNew: true);
		if (dragDropLastRow == int.MaxValue)
		{
			if (dragDropDropeffect != DragDropEffects.None)
			{
				drgevent.Effect = DragDropEffects.None;
			}
		}
		else if ((Control.ModifierKeys & Keys.Control) != Keys.None)
		{
			drgevent.Effect = DragDropEffects.Copy;
		}
		else
		{
			drgevent.Effect = DragDropEffects.Move;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected virtual bool DropDataAtRowCol(IDataObject dataObject, int rowIndex, int colIndex)
	{
		try
		{
			GridOleDropAtRowColEventArgs e = new GridOleDropAtRowColEventArgs(dataObject, rowIndex, colIndex, result: false);
			grid.Model.RaiseOleDropAtRowCol(e);
			if (e.Handled)
			{
				return e.Result;
			}
			if (!grid.Model.IgnoreReadOnly && grid.Model.ReadOnly)
			{
				return false;
			}
			grid.BeginUpdate(BeginUpdateOptions.Invalidate);
			try
			{
				bool flag = activeConsumer.DropAtRowCol(dataObject, rowIndex, colIndex);
				if (flag)
				{
					grid.Selections.Clear();
					grid.CurrentCell.MoveTo(rowIndex, colIndex, GridSetCurrentCellOptions.NoSelectRange | GridSetCurrentCellOptions.ScrollInView);
					if (dragDropRowExt > 1 || dragDropColExt > 1)
					{
						int bottom = Math.Min(rowIndex + dragDropRowExt - 1, grid.Model.RowCount);
						int right = Math.Min(colIndex + dragDropColExt - 1, grid.Model.ColCount);
						GridRangeInfo range = GridRangeInfo.Cells(rowIndex, colIndex, bottom, right);
						if (grid.Model.DragDropData.dndSource)
						{
							if (grid.Model.DragDropData.dndForceDropCol < 2147483646)
							{
								range = ((grid.Model.DragDropData.dndForceDropRow >= 2147483646) ? GridRangeInfo.Rows(rowIndex, bottom) : GridRangeInfo.Table());
							}
							else if (grid.Model.DragDropData.dndForceDropRow != 2147483646)
							{
								range = GridRangeInfo.Cols(colIndex, right);
							}
						}
						grid.Model.Selections.Add(range);
					}
					grid.Model.RaiseOleDroppedData(e);
				}
				return flag;
			}
			catch (Exception ex)
			{
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex))
				{
					throw;
				}
				MessageBox.Show(FindFormHelper.FindForm(grid), ex.Message);
				return false;
			}
		}
		finally
		{
			grid.EndUpdate(update: true);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	protected virtual void OutlineDropTargetRange(Point point, bool bEraseOld, bool bDrawNew)
	{
		if (grid == null || (dragDropRowExt == 0 && dragDropColExt == 0))
		{
			return;
		}
		Rectangle rectangle = dragDropLastRect;
		if (!bEraseOld && !bDrawNew && !rectangle.IsEmpty)
		{
			grid.InternalInvalidate(rectangle);
			grid.Update();
			rectangle = (dragDropLastRect = Rectangle.Empty);
		}
		if (bEraseOld && !bDrawNew && rectangle.IsEmpty)
		{
			return;
		}
		GridRangeInfo gridRangeInfo = grid.PointToRangeInfo(point, 1);
		int num = ((dragDropColExt > 0) ? gridRangeInfo.Top : 0);
		int num2 = ((dragDropRowExt > 0) ? gridRangeInfo.Left : 0);
		if (num == int.MaxValue || (num > grid.Model.RowCount && GridUtil.IsSet(grid.Model.Options.DragDropDropTargetFlags, 512)) || num2 == int.MaxValue || (num2 > grid.Model.ColCount && GridUtil.IsSet(grid.Model.Options.DragDropDropTargetFlags, 1024)))
		{
			num = (num2 = int.MaxValue);
			bDrawNew = false;
		}
		else
		{
			int val = ((!GridUtil.IsSet(grid.Model.Options.DragDropDropTargetFlags, 2)) ? (grid.InternalGetHeaderRows() + 1) : 0);
			int val2 = ((!GridUtil.IsSet(grid.Model.Options.DragDropDropTargetFlags, 1)) ? (grid.InternalGetHeaderCols() + 1) : 0);
			if (grid.Model.DragDropData.dndSource)
			{
				num = Math.Max(num, grid.Model.DragDropData.dndRowOffset) - grid.Model.DragDropData.dndRowOffset;
				num2 = Math.Max(num2, grid.Model.DragDropData.dndColOffset) - grid.Model.DragDropData.dndColOffset;
				num = Math.Min(grid.Model.DragDropData.dndForceDropRow, num);
				num2 = Math.Min(grid.Model.DragDropData.dndForceDropCol, num2);
			}
			num = Math.Max(num, val);
			num2 = Math.Max(num2, val2);
			if (GridUtil.IsSet(grid.Model.Options.DragDropDropTargetFlags, 512))
			{
				int val3 = grid.Model.RowCount - dragDropRowExt + 1;
				num = Math.Min(num, val3);
			}
			if (GridUtil.IsSet(grid.Model.Options.DragDropDropTargetFlags, 1024))
			{
				int val4 = grid.Model.ColCount - dragDropColExt + 1;
				num2 = Math.Min(num2, val4);
			}
		}
		if (bEraseOld && bDrawNew && num == dragDropLastRow && num2 == dragDropLastCol && !rectangle.IsEmpty)
		{
			return;
		}
		bEraseOld &= !rectangle.IsEmpty;
		bDrawNew &= num != dragDropLastRow || num2 != dragDropLastCol || rectangle.IsEmpty;
		if (!bEraseOld && !bDrawNew)
		{
			return;
		}
		Graphics graphics = grid.CreateGridGraphics();
		graphics.IntersectClip(grid.GridBounds);
		if (bEraseOld)
		{
			if (!rectangle.IsEmpty)
			{
				GridUtil.DrawDragRectHelper(graphics, rectangle, grid.GridBounds);
			}
			dragDropLastRect = Rectangle.Empty;
			dragDropLastRow = int.MaxValue;
			dragDropLastCol = int.MaxValue;
		}
		if (bDrawNew)
		{
			int num3 = num + Math.Max(dragDropRowExt, 1) - 1;
			int num4 = num2 + Math.Max(dragDropColExt, 1) - 1;
			int bottom = Math.Min(grid.Model.RowCount + 1, num3);
			int right = Math.Min(grid.Model.ColCount + 1, num4);
			GridRangeInfo gridRangeInfo2 = GridRangeInfo.Cells(num, num2, bottom, right);
			int num5 = 0;
			int num6 = 0;
			Rectangle rect;
			if (dragDropColExt == 0)
			{
				GridRangeInfo visibleCellsRange = grid.ViewLayout.VisibleCellsRange;
				visibleCellsRange = GridRangeInfo.Cells(0, visibleCellsRange.Left, visibleCellsRange.Bottom, visibleCellsRange.Right + 1);
				gridRangeInfo2 = gridRangeInfo2.IntersectRange(visibleCellsRange);
				rect = grid.RangeInfoToRectangle(gridRangeInfo2);
				rect.Width = 0;
			}
			else if (dragDropRowExt == 0)
			{
				GridRangeInfo visibleCellsRange2 = grid.ViewLayout.VisibleCellsRange;
				visibleCellsRange2 = GridRangeInfo.Cells(visibleCellsRange2.Top, 0, visibleCellsRange2.Bottom + 1, visibleCellsRange2.Right);
				gridRangeInfo2 = gridRangeInfo2.IntersectRange(visibleCellsRange2);
				rect = grid.RangeInfoToRectangle(gridRangeInfo2);
				rect.Height = 0;
			}
			else
			{
				GridRangeInfo visibleCellsRange3 = grid.ViewLayout.VisibleCellsRange;
				if (GridUtil.IsSet(grid.Model.Options.DragDropDropTargetFlags, 2048) && num3 > visibleCellsRange3.Bottom)
				{
					num6 = (num3 - visibleCellsRange3.Bottom) * grid.Model.Rows.DefaultSize;
				}
				if (GridUtil.IsSet(grid.Model.Options.DragDropDropTargetFlags, 4096) && num4 > visibleCellsRange3.Right)
				{
					num5 = (num4 - visibleCellsRange3.Right) * grid.Model.Cols.DefaultSize;
				}
				gridRangeInfo2 = gridRangeInfo2.IntersectRange(visibleCellsRange3);
				rect = grid.RangeInfoToRectangle(gridRangeInfo2);
				rect.Width += num5;
				rect.Height += num6;
				if (grid.Model.Properties.DisplayVertLines)
				{
					rect.Width--;
				}
				else if (grid.Model.Properties.DisplayHorzLines)
				{
					rect.Height--;
				}
			}
			GridUtil.DrawDragRectHelper(graphics, rect, grid.GridBounds);
			dragDropLastRect = rect;
			dragDropLastRow = num;
			dragDropLastCol = num2;
		}
		graphics.Dispose();
	}
}
