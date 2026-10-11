using System;
using System.Runtime.Serialization;
using Syncfusion.ComponentModel;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[DocumentationExclude]
internal sealed class GridModelRowOperations : GridModelRowColOperations
{
	[NonSerialized]
	private const int delta = 1;

	public override string RowColName => "Row";

	public override GridModelRowColSizeIndexer Size => model.RowHeights;

	public override GridModelHideRowColsIndexer Hidden => model.HideRows;

	private GridModelRowOperations(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public GridModelRowOperations(GridModel model)
		: base(model)
	{
	}

	public override bool OnDefaultSizeChanging(GridDefaultSizeChangingEventArgs e)
	{
		try
		{
			base.Model.RaiseDefaultRowHeightChanging(e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
		return !e.Cancel;
	}

	public override void OnDefaultSizeChanged(GridDefaultSizeChangedEventArgs e)
	{
		try
		{
			base.Model.RaiseDefaultRowHeightChanged(e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			TraceUtil.TraceExceptionCatched(ex);
		}
	}

	protected override bool OnHeaderCountChanging(GridCountChangingEventArgs e)
	{
		try
		{
			base.Model.RaiseHeaderRowCountChanging(e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
		return !e.Cancel;
	}

	protected override void OnHeaderCountChanged(GridCountChangedEventArgs e)
	{
		try
		{
			base.Model.RaiseHeaderRowCountChanged(e);
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

	protected override bool OnFrozenCountChanging(GridCountChangingEventArgs e)
	{
		try
		{
			base.Model.RaiseFrozenRowCountChanging(e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
		return !e.Cancel;
	}

	protected override void OnFrozenCountChanged(GridCountChangedEventArgs e)
	{
		try
		{
			base.Model.RaiseFrozenRowCountChanged(e);
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

	private bool RaiseMoving(GridRangeMovingEventArgs e)
	{
		try
		{
			base.Model.RaiseRowsMoving(e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
		return !e.Cancel;
	}

	public override void OnRangeMoved(GridRangeMovedEventArgs e)
	{
		try
		{
			base.Model.RaiseRowsMoved(e);
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

	protected override bool RaiseRemoving(GridRangeRemovingEventArgs e)
	{
		try
		{
			base.Model.RaiseRowsRemoving(e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
		return !e.Cancel;
	}

	public override void OnRangeRemoved(GridRangeRemovedEventArgs e)
	{
		try
		{
			base.Model.RaiseRowsRemoved(e);
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

	private bool RaiseInserting(GridRangeInsertingEventArgs e)
	{
		try
		{
			base.Model.RaiseRowsInserting(e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			e.Cancel = true;
		}
		return !e.Cancel;
	}

	public override void OnRangeInserted(GridRangeInsertedEventArgs e)
	{
		try
		{
			base.Model.RaiseRowsInserted(e);
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

	public override GridStyleInfoStoreTable GetCells(int from, int lastCell, bool rangeStyles, bool cellStyles)
	{
		using OperationFeedback operationFeedback = new OperationFeedback(model);
		int num = lastCell - from + 1;
		int num2 = (cellStyles ? (model.ColCount + 1) : 0);
		int num3 = num2 - 1;
		int num4 = (rangeStyles ? (-1) : 0);
		int num5 = num * (num3 - num4 + 1);
		GridStyleInfoStoreTable gridStyleInfoStoreTable = new GridStyleInfoStoreTable(num, num2);
		int num6 = 0;
		if (num5 > 0)
		{
			for (int i = 0; i < num; i++)
			{
				for (int j = num4; j <= num3; j++)
				{
					GridStyleInfo gridStyleInfo = new GridStyleInfo();
					model.GetCellInfo(from + i, j, gridStyleInfo);
					gridStyleInfoStoreTable[i, j] = gridStyleInfo.Store;
					operationFeedback.PercentComplete = ++num6 * 100 / num5;
					if (operationFeedback.ShouldCancel)
					{
						throw new GridUserCanceledException();
					}
				}
			}
		}
		return gridStyleInfoStoreTable;
	}

	public override void SetCells(int index, GridStyleInfoStoreTable data, bool extendRows, bool extendCols)
	{
		OperationFeedback operationFeedback = new OperationFeedback(model);
		try
		{
			int num = data.RowCount;
			int num2 = data.ColCount;
			int num3 = model.RowCount + 1;
			int num4 = model.ColCount + 1;
			if (num + index > num3)
			{
				if (extendRows)
				{
					model.Rows.InsertRange(num3 + 1, num + index - num3);
					num3 = model.RowCount + 1;
				}
				if (num + index > num3)
				{
					num = num3 - index;
				}
			}
			if (num2 > num4)
			{
				if (extendCols)
				{
					model.Cols.InsertRange(num4 + 1, num2 - num4);
					num4 = model.ColCount + 1;
				}
				if (num2 > num4)
				{
					num2 = num4;
				}
			}
			int num5 = num2 - 1;
			int num6 = -1;
			int num7 = num * (num5 - num6 + 1);
			int num8 = 0;
			if (num7 <= 0)
			{
				return;
			}
			for (int i = 0; i < num; i++)
			{
				for (int j = num6; j <= num5; j++)
				{
					GridStyleInfoStore gridStyleInfoStore = data[i, j];
					if (gridStyleInfoStore != null)
					{
						GridStyleInfo style = new GridStyleInfo(gridStyleInfoStore);
						model.SetCellInfo(index + i, j, style, StyleModifyType.Copy);
					}
					else
					{
						model.SetCellInfo(index + i, j, null, StyleModifyType.Copy);
					}
					operationFeedback.PercentComplete = ++num8 * 100 / num7;
					if (operationFeedback.ShouldCancel)
					{
						throw new GridUserCanceledException();
					}
				}
			}
		}
		finally
		{
			operationFeedback.Close();
		}
	}

	protected override void DataRemoveRange(int removeAt, int count)
	{
		model.Data.RemoveRows(removeAt, count);
	}

	protected override void DataInsertRange(int insertAt, int count)
	{
		model.Data.InsertRows(insertAt, count);
	}

	protected override void DataMoveRange(int from, int count, int target)
	{
		model.Data.MoveRows(from, count, target);
	}

	public override void DelayFloatingCells(int from, int to)
	{
		base.Model.FloatingCells.DelayFloatCells(GridRangeInfo.Rows(from, to));
	}

	protected override void GetRangeFromTo(GridRangeInfo range, out int from, out int last)
	{
		from = range.Top;
		last = range.Bottom;
	}

	public override GridRangeInfo CreateRangeFromTo(int from, int to)
	{
		return GridRangeInfo.Rows(from, to);
	}

	public override GridRangeInfoList GetSelectedRowColRanges()
	{
		return base.Model.SelectedRanges.GetRowRanges(GridRangeInfoType.Rows);
	}

	public override bool OnRangeInserting(GridRangeInsertingEventArgs e)
	{
		if (RaiseInserting(e))
		{
			int insertAt = e.InsertAt;
			int count = e.Count;
			if (insertAt <= model.RowCount)
			{
				Hidden.Dictionary.InsertItems(insertAt, count);
				Size.Dictionary.InsertItems(insertAt, count);
				base.Model.FloatingCells.InsertRows(insertAt, count);
				base.Model.SelectedRanges.InsertRows(insertAt, count);
				base.Model.CoveredRanges.InsertRows(insertAt, count);
				base.Model.BanneredRanges.InsertRows(insertAt, count);
				base.Model.FloatingCells.InsertRows(insertAt, count);
				base.Model.FloatingCells.DelayFloatCells(GridRangeInfo.Rows(insertAt, base.Model.RowCount));
				base.Model.MergeCells.DelayMergeCells(GridRangeInfo.Rows(insertAt, base.Model.RowCount));
			}
			return true;
		}
		return false;
	}

	public override bool OnRangeMoving(GridRangeMovingEventArgs e)
	{
		if (RaiseMoving(e))
		{
			int num = e.From;
			int target = e.Target;
			int count = e.Count;
			int num2 = num + count - 1;
			int rowCount = base.Model.RowCount;
			Hidden.Dictionary.MoveItems(num, count, target);
			Size.Dictionary.MoveItems(num, count, target);
			base.Model.SelectedRanges.MoveRows(num, num2, target, rowCount);
			base.Model.CoveredRanges.MoveRows(num, num2, target, rowCount);
			base.Model.BanneredRanges.MoveRows(num, num2, target, rowCount);
			base.Model.FloatingCells.MoveRows(num, num2, target);
			int top = Math.Min(num, num2);
			int bottom = Math.Max(num2, target + count);
			base.Model.FloatingCells.DelayFloatCells(GridRangeInfo.Rows(top, bottom));
			base.Model.MergeCells.DelayMergeCells(GridRangeInfo.Rows(top, bottom));
			return true;
		}
		return false;
	}

	public override bool OnRangeRemoving(GridRangeRemovingEventArgs e)
	{
		if (RaiseRemoving(e))
		{
			int num = e.From;
			int to = e.To;
			int count = to - num + 1;
			Hidden.Dictionary.RemoveItems(num, count);
			Size.Dictionary.RemoveItems(num, count);
			int rowCount = base.Model.RowCount;
			base.Model.SelectedRanges.RemoveRows(num, to, rowCount);
			base.Model.CoveredRanges.RemoveRows(num, to);
			base.Model.BanneredRanges.RemoveRows(num, to);
			base.Model.FloatingCells.RemoveRows(num, rowCount);
			base.Model.MergeCells.DelayMergeCells(GridRangeInfo.Rows(num, rowCount));
			return true;
		}
		return false;
	}
}
