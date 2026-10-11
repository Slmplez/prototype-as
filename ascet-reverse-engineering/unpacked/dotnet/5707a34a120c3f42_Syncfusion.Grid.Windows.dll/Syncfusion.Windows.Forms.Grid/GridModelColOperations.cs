using System;
using System.Runtime.Serialization;
using Syncfusion.ComponentModel;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[DocumentationExclude]
internal sealed class GridModelColOperations : GridModelRowColOperations
{
	[NonSerialized]
	private const int delta = 1;

	public override string RowColName => "Column";

	public override GridModelRowColSizeIndexer Size => model.ColWidths;

	public override GridModelHideRowColsIndexer Hidden => model.HideCols;

	private GridModelColOperations(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public GridModelColOperations(GridModel model)
		: base(model)
	{
	}

	public override bool OnDefaultSizeChanging(GridDefaultSizeChangingEventArgs e)
	{
		try
		{
			base.Model.RaiseDefaultColWidthChanging(e);
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
			base.Model.RaiseDefaultColWidthChanged(e);
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

	protected override bool OnHeaderCountChanging(GridCountChangingEventArgs e)
	{
		try
		{
			base.Model.RaiseHeaderColCountChanging(e);
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
			base.Model.RaiseHeaderColCountChanged(e);
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
			base.Model.RaiseFrozenColCountChanging(e);
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
			base.Model.RaiseFrozenColCountChanged(e);
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
			base.Model.RaiseColsMoving(e);
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
			base.Model.RaiseColsMoved(e);
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
			base.Model.RaiseColsRemoving(e);
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
			base.Model.RaiseColsRemoved(e);
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
			base.Model.RaiseColsInserting(e);
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
			base.Model.RaiseColsInserted(e);
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
		int num2 = (cellStyles ? (model.RowCount + 1) : 0);
		int num3 = num2 - 1;
		int num4 = (rangeStyles ? (-1) : 0);
		int num5 = num * (num3 - num4 + 1);
		GridStyleInfoStoreTable gridStyleInfoStoreTable = new GridStyleInfoStoreTable(num2, num);
		int num6 = 0;
		if (num5 > 0)
		{
			for (int i = num4; i <= num3; i++)
			{
				for (int j = 0; j < num; j++)
				{
					GridStyleInfo gridStyleInfo = new GridStyleInfo();
					model.GetCellInfo(i, from + j, gridStyleInfo);
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
			if (num > num3)
			{
				if (extendRows)
				{
					model.Rows.InsertRange(num3 + 1, num - num3);
					num3 = model.RowCount + 1;
				}
				if (num > num3)
				{
					num = num3;
				}
			}
			if (num2 + index > num4)
			{
				if (extendCols)
				{
					model.Cols.InsertRange(num4 + 1, num2 + index - num4);
					num4 = model.ColCount + 1;
				}
				if (num2 + index > num4)
				{
					num2 = num4 - index;
				}
			}
			int num5 = num - 1;
			int num6 = -1;
			int num7 = num2 * (num5 - num6 + 1);
			int num8 = 0;
			if (num7 <= 0)
			{
				return;
			}
			for (int i = num6; i <= num5; i++)
			{
				for (int j = 0; j < num2; j++)
				{
					GridStyleInfoStore gridStyleInfoStore = data[i, j];
					if (gridStyleInfoStore != null)
					{
						GridStyleInfo style = new GridStyleInfo(gridStyleInfoStore);
						model.SetCellInfo(i, index + j, style, StyleModifyType.Copy);
					}
					else
					{
						model.SetCellInfo(i, index + j, null, StyleModifyType.Copy);
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
		model.Data.RemoveCols(removeAt, count);
	}

	protected override void DataInsertRange(int insertAt, int count)
	{
		model.Data.InsertCols(insertAt, count);
	}

	protected override void DataMoveRange(int from, int count, int target)
	{
		model.Data.MoveCols(from, count, target);
	}

	public override void DelayFloatingCells(int from, int to)
	{
		base.Model.FloatingCells.DelayFloatCells(GridRangeInfo.Cols(from, to));
	}

	protected override void GetRangeFromTo(GridRangeInfo range, out int from, out int last)
	{
		from = range.Left;
		last = range.Right;
	}

	public override GridRangeInfo CreateRangeFromTo(int from, int to)
	{
		return GridRangeInfo.Cols(from, to);
	}

	public override GridRangeInfoList GetSelectedRowColRanges()
	{
		return base.Model.SelectedRanges.GetColRanges(GridRangeInfoType.Cols);
	}

	public override bool OnRangeInserting(GridRangeInsertingEventArgs e)
	{
		if (RaiseInserting(e))
		{
			int insertAt = e.InsertAt;
			int count = e.Count;
			if (insertAt <= model.ColCount)
			{
				Hidden.Dictionary.InsertItems(insertAt, count);
				Size.Dictionary.InsertItems(insertAt, count);
				base.Model.SelectedRanges.InsertCols(insertAt, count);
				base.Model.CoveredRanges.InsertCols(insertAt, count);
				base.Model.BanneredRanges.InsertCols(insertAt, count);
				base.Model.FloatingCells.InsertCols(insertAt, count);
				base.Model.FloatingCells.DelayFloatCells(GridRangeInfo.Cols(insertAt, base.Model.ColCount));
				base.Model.MergeCells.DelayMergeCells(GridRangeInfo.Cols(insertAt, base.Model.ColCount));
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
			int colCount = base.Model.ColCount;
			Hidden.Dictionary.MoveItems(num, count, target);
			Size.Dictionary.MoveItems(num, count, target);
			base.Model.SelectedRanges.MoveCols(num, num2, target, colCount);
			base.Model.CoveredRanges.MoveCols(num, num2, target, colCount);
			base.Model.BanneredRanges.MoveCols(num, num2, target, colCount);
			base.Model.FloatingCells.MoveCols(num, num2, target);
			base.Model.FloatingCells.DelayFloatCells(GridRangeInfo.Cols(Math.Min(num, target), base.Model.ColCount));
			base.Model.MergeCells.DelayMergeCells(GridRangeInfo.Cols(Math.Min(num, target), base.Model.ColCount));
			return true;
		}
		return false;
	}

	public override bool OnRangeRemoving(GridRangeRemovingEventArgs e)
	{
		int num = e.From;
		int to = e.To;
		int count = to - num + 1;
		Hidden.Dictionary.RemoveItems(num, count);
		Size.Dictionary.RemoveItems(num, count);
		int colCount = base.Model.ColCount;
		base.Model.SelectedRanges.RemoveCols(num, to, colCount);
		base.Model.CoveredRanges.RemoveCols(num, to);
		base.Model.BanneredRanges.RemoveCols(num, to);
		base.Model.FloatingCells.RemoveCols(num, to);
		base.Model.FloatingCells.DelayFloatCells(GridRangeInfo.Cols(num, base.Model.ColCount));
		base.Model.MergeCells.DelayMergeCells(GridRangeInfo.Cols(num, base.Model.ColCount));
		return true;
	}
}
