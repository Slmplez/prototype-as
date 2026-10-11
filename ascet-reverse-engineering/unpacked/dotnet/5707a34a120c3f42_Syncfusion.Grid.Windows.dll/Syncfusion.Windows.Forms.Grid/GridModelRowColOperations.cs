using System;
using System.Runtime.Serialization;
using System.Security.Permissions;
using Syncfusion.ComponentModel;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public abstract class GridModelRowColOperations : GridModelBound, ISerializable
{
	private int maxSize = 1024;

	private int defaultSize;

	private int headerCount;

	private int frozenCount;

	[NonSerialized]
	private int restoreFreezeFrom;

	[NonSerialized]
	private int restoreFreezeCount;

	[NonSerialized]
	private int restoreFreezeDest;

	public abstract GridModelRowColSizeIndexer Size { get; }

	public abstract GridModelHideRowColsIndexer Hidden { get; }

	public abstract string RowColName { get; }

	public int MaxSize
	{
		get
		{
			return maxSize;
		}
		set
		{
			maxSize = value;
		}
	}

	public int DefaultSize
	{
		get
		{
			return defaultSize;
		}
		set
		{
			base.Model.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll, RowColName + ".DefaultSize");
			try
			{
				if (!OnDefaultSizeChanging(new GridDefaultSizeChangingEventArgs(value)))
				{
					return;
				}
				bool success = false;
				int savedValue = DefaultSize;
				try
				{
					defaultSize = value;
					success = true;
					base.Model.FloatingCells.DelayFloatCells(GridRangeInfo.Table());
					if (model.CommandStack.ShouldGenerateUndoInfo)
					{
						model.CommandStack.Push(new GridModelSetDefaultSizeCommand(this, savedValue));
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
				finally
				{
					OnDefaultSizeChanged(new GridDefaultSizeChangedEventArgs(savedValue, success));
				}
			}
			finally
			{
				base.Model.EndUpdate();
			}
		}
	}

	public int HeaderCount
	{
		get
		{
			return headerCount;
		}
		set
		{
			if (HeaderCount == value)
			{
				return;
			}
			bool success = false;
			base.Model.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll, RowColName + ".HeaderCount");
			try
			{
				if (!OnHeaderCountChanging(new GridCountChangingEventArgs(value)))
				{
					return;
				}
				int num = HeaderCount;
				try
				{
					base.Model.ResetVolatileData();
					DelayFloatingCells(Math.Min(num, value), Math.Max(num, value) + 1);
					headerCount = value;
					success = true;
					if (model.CommandStack.ShouldGenerateUndoInfo)
					{
						model.CommandStack.Push(new GridModelSetHeaderCountCommand(this, num));
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
				finally
				{
					OnHeaderCountChanged(new GridCountChangedEventArgs(num, success));
				}
			}
			finally
			{
				base.Model.EndUpdate();
			}
		}
	}

	public bool CanFreezeSelection
	{
		get
		{
			if (FrozenCount == HeaderCount)
			{
				return GetSelectedRowColRanges().Count == 1;
			}
			return false;
		}
	}

	public bool CanRestoreFrozen
	{
		get
		{
			if (FrozenCount > HeaderCount)
			{
				return restoreFreezeCount > 0;
			}
			return false;
		}
	}

	public int FrozenCount
	{
		get
		{
			return frozenCount;
		}
		set
		{
			if (value == FrozenCount)
			{
				return;
			}
			if (value < 0)
			{
				value = 0;
			}
			bool success = false;
			base.Model.BeginUpdate(BeginUpdateOptions.None, RowColName + ".FrozenCount");
			try
			{
				if (!OnFrozenCountChanging(new GridCountChangingEventArgs(value)))
				{
					return;
				}
				int num = FrozenCount;
				try
				{
					DelayFloatingCells(Math.Min(num, value), Math.Max(num, value) + 1);
					frozenCount = value;
					success = true;
					if (model.CommandStack.ShouldGenerateUndoInfo)
					{
						model.CommandStack.Push(new GridModelSetFrozenCountCommand(this, num));
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
				finally
				{
					OnFrozenCountChanged(new GridCountChangedEventArgs(num, success));
				}
			}
			finally
			{
				base.Model.EndUpdate();
			}
		}
	}

	public abstract bool OnDefaultSizeChanging(GridDefaultSizeChangingEventArgs e);

	public abstract void OnDefaultSizeChanged(GridDefaultSizeChangedEventArgs e);

	[DocumentationExclude]
	protected abstract bool OnHeaderCountChanging(GridCountChangingEventArgs e);

	[DocumentationExclude]
	protected abstract void OnHeaderCountChanged(GridCountChangedEventArgs e);

	[DocumentationExclude]
	protected abstract bool OnFrozenCountChanging(GridCountChangingEventArgs e);

	[DocumentationExclude]
	protected abstract void OnFrozenCountChanged(GridCountChangedEventArgs e);

	public abstract bool OnRangeMoving(GridRangeMovingEventArgs e);

	public abstract void OnRangeMoved(GridRangeMovedEventArgs e);

	public abstract bool OnRangeRemoving(GridRangeRemovingEventArgs e);

	protected abstract bool RaiseRemoving(GridRangeRemovingEventArgs e);

	public abstract void OnRangeRemoved(GridRangeRemovedEventArgs e);

	public abstract bool OnRangeInserting(GridRangeInsertingEventArgs e);

	public abstract void OnRangeInserted(GridRangeInsertedEventArgs e);

	protected GridModelRowColOperations(GridModel model)
		: base(model)
	{
	}

	protected GridModelRowColOperations(SerializationInfo info, StreamingContext context)
	{
		maxSize = info.GetInt32("MaxSize");
		defaultSize = info.GetInt32("DefaultSize");
		headerCount = info.GetInt32("HeaderCount");
		frozenCount = info.GetInt32("FrozenCount");
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	[SecurityPermission(SecurityAction.LinkDemand, SerializationFormatter = true)]
	public virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("MaxSize", maxSize);
		info.AddValue("DefaultSize", defaultSize);
		info.AddValue("HeaderCount", headerCount);
		info.AddValue("FrozenCount", frozenCount);
	}

	public void SetCells(int index, GridStyleInfoStoreTable data)
	{
		SetCells(index, data, extendRows: true, extendCols: true);
	}

	public abstract void SetCells(int index, GridStyleInfoStoreTable data, bool extendRows, bool extendCols);

	public GridStyleInfoStoreTable GetCells(int from, int last)
	{
		return GetCells(from, last, getRowColStyle: true, copyCells: true);
	}

	public abstract GridStyleInfoStoreTable GetCells(int from, int last, bool getRowColStyle, bool copyCells);

	public abstract void DelayFloatingCells(int from, int last);

	[DocumentationExclude]
	protected abstract void DataRemoveRange(int removeAt, int count);

	[DocumentationExclude]
	protected abstract void DataInsertRange(int insertAt, int count);

	[DocumentationExclude]
	protected abstract void DataMoveRange(int from, int count, int target);

	public void SetHeaderCount(int value, bool raiseEvents)
	{
		if (raiseEvents)
		{
			HeaderCount = value;
		}
		else
		{
			headerCount = value;
		}
	}

	public abstract GridRangeInfoList GetSelectedRowColRanges();

	[DocumentationExclude]
	protected abstract void GetRangeFromTo(GridRangeInfo range, out int from, out int last);

	[DocumentationExclude]
	public abstract GridRangeInfo CreateRangeFromTo(int from, int last);

	public void FreezeSelection()
	{
		if (FrozenCount == 0)
		{
			GridRangeInfoList selectedRowColRanges = GetSelectedRowColRanges();
			if (selectedRowColRanges.Count == 1)
			{
				GetRangeFromTo(selectedRowColRanges[0], out var from, out var last);
				FreezeRange(from, last);
			}
		}
	}

	public void FreezeRange(int from, int last)
	{
		base.Model.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll, RowColName + ".FreezeRange");
		try
		{
			base.Model.CommandStack.BeginTrans(RowColName + ".FreezeRange");
			int num = HeaderCount;
			int num2 = last - from + 1;
			FrozenCount = num2 + num;
			if (from > num + 1)
			{
				MoveRange(from, num2, num + 1);
			}
			restoreFreezeFrom = num + 1;
			restoreFreezeCount = num2;
			restoreFreezeDest = from;
			base.Model.CommandStack.CommitTrans();
		}
		finally
		{
			base.Model.EndUpdate();
		}
	}

	public void RestoreFrozen()
	{
		if (!CanRestoreFrozen)
		{
			return;
		}
		base.Model.BeginUpdate(BeginUpdateOptions.None);
		try
		{
			base.Model.CommandStack.BeginTrans(SR.GetString("Restore Frozen"));
			int num = HeaderCount;
			FrozenCount = num;
			if (restoreFreezeFrom != restoreFreezeDest)
			{
				MoveRange(restoreFreezeFrom, restoreFreezeCount, restoreFreezeDest);
			}
			base.Model.CommandStack.CommitTrans();
		}
		finally
		{
			base.Model.EndUpdate();
		}
	}

	public void SetFrozenCount(int value, bool raiseEvents)
	{
		if (raiseEvents)
		{
			FrozenCount = value;
		}
		else
		{
			frozenCount = value;
		}
	}

	public void RemoveRange(int from, int last)
	{
		bool success = false;
		base.Model.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll, RowColName + ".RemoveRange");
		try
		{
			GridRangeRemovingEventArgs e = new GridRangeRemovingEventArgs(from, last);
			if (!RaiseRemoving(e))
			{
				return;
			}
			GridModelInsertRangeOptions gridModelInsertRangeOptions = null;
			OperationFeedback operationFeedback = new OperationFeedback(model);
			operationFeedback.Description = SR.GetString("DescriptionRemove" + RowColName, from, last);
			operationFeedback.Name = "Remove" + RowColName;
			model.ResetVolatileData();
			try
			{
				int count = last - from + 1;
				gridModelInsertRangeOptions = new GridModelInsertRangeOptions();
				gridModelInsertRangeOptions.rowColSizes = Size.GetRange(from, last);
				gridModelInsertRangeOptions.RowColHide = Hidden.GetRange(from, last);
				if (model.CommandStack.ShouldGenerateUndoInfo)
				{
					gridModelInsertRangeOptions.data = GetCells(from, last, getRowColStyle: true, copyCells: true);
				}
				if (OnRangeRemoving(e))
				{
					DataRemoveRange(from, count);
					success = true;
					if (model.CommandStack.ShouldGenerateUndoInfo)
					{
						model.CommandStack.Push(new GridModelInsertRangeCommand(this, from, count, gridModelInsertRangeOptions));
					}
					model.SelectedRanges.EnsureRowLimits(base.Model.RowCount);
					model.SelectedRanges.EnsureColLimits(base.Model.ColCount);
					model.SelectedRanges.RemoveEmptyRanges();
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
			finally
			{
				OnRangeRemoved(new GridRangeRemovedEventArgs(from, last, gridModelInsertRangeOptions, success));
				operationFeedback.Close();
			}
		}
		finally
		{
			base.Model.EndUpdate();
		}
	}

	public void InsertRange(int insertAt, int count)
	{
		InsertRange(insertAt, count, new GridModelInsertRangeOptions());
	}

	public void InsertRange(int insertAt, int count, GridModelInsertRangeOptions iro)
	{
		bool success = false;
		base.Model.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll, RowColName + ".InsertRange");
		try
		{
			if (!OnRangeInserting(new GridRangeInsertingEventArgs(insertAt, count, iro)))
			{
				return;
			}
			OperationFeedback operationFeedback = new OperationFeedback(model);
			operationFeedback.Description = SR.GetString("DescriptionInsert" + RowColName, insertAt, count);
			operationFeedback.Name = "Insert" + RowColName;
			model.ResetVolatileData();
			try
			{
				DataInsertRange(insertAt, count);
				success = true;
				if (iro != null)
				{
					if (iro.data != null)
					{
						SetCells(insertAt, iro.data, extendRows: false, extendCols: false);
					}
					if (iro.rowColSizes != null)
					{
						Size.SetRange(insertAt, insertAt + count - 1, iro.rowColSizes, discardUndo: true);
					}
					if (iro.RowColHide != null)
					{
						Hidden.SetRange(insertAt, insertAt + count - 1, iro.RowColHide, discardUndo: true);
					}
				}
				if (model.CommandStack.ShouldGenerateUndoInfo)
				{
					model.CommandStack.Push(new GridModelRemoveRangeCommand(this, insertAt, insertAt + count - 1));
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
			finally
			{
				OnRangeInserted(new GridRangeInsertedEventArgs(insertAt, count, iro, success));
				operationFeedback.Close();
			}
		}
		finally
		{
			base.Model.EndUpdate();
		}
	}

	public void MoveRange(int from, int target)
	{
		MoveRange(from, 1, target);
	}

	public void MoveRange(int from, int count, int target)
	{
		if (from == target)
		{
			return;
		}
		bool success = false;
		base.Model.BeginUpdate(BeginUpdateOptions.None, RowColName + ".MoveRange");
		try
		{
			if (!OnRangeMoving(new GridRangeMovingEventArgs(from, count, target)))
			{
				return;
			}
			OperationFeedback operationFeedback = new OperationFeedback(model);
			operationFeedback.Description = SR.GetString("DescriptionMove" + RowColName, from, count, target);
			operationFeedback.Name = "Move" + RowColName;
			model.ResetVolatileData();
			try
			{
				DataMoveRange(from, count, target);
				success = true;
				if (model.CommandStack.ShouldGenerateUndoInfo)
				{
					model.CommandStack.Push(new GridModelMoveRangeCommand(this, target, count, from));
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
			finally
			{
				OnRangeMoved(new GridRangeMovedEventArgs(from, count, target, success));
				operationFeedback.Close();
			}
		}
		finally
		{
			base.Model.EndUpdate();
		}
	}
}
