using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;
using System.Runtime.Serialization;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[Editor(typeof(GridModelCoveredRangesEditor), typeof(UITypeEditor))]
public sealed class GridModelCoveredRanges : GridModelBound, ICollection, ISerializable, IEnumerable
{
	private GridRangeInfoList coveredRanges = new GridRangeInfoList();

	private GridCoveredCellPool pool = new GridCoveredCellPool();

	internal GridRangeInfo cacheLastCoveredRange = GridRangeInfo.Empty;

	internal bool cacheLastHandled;

	public GridRangeInfoList Ranges => coveredRanges;

	public int Count => Ranges.Count;

	public object SyncRoot => null;

	public bool IsSynchronized => false;

	public GridModelCoveredRanges(GridModel model)
		: base(model)
	{
	}

	private GridModelCoveredRanges(SerializationInfo info, StreamingContext context)
	{
		coveredRanges = (GridRangeInfoList)info.GetValue("Ranges", typeof(GridRangeInfoList));
		pool = (GridCoveredCellPool)info.GetValue("Pool", typeof(GridCoveredCellPool));
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("Ranges", coveredRanges);
		info.AddValue("Pool", pool);
	}

	public void Add(GridRangeInfo range)
	{
		SetCoveredRange(range, setOrReset: true);
	}

	public void AddRange(GridRangeInfo[] ranges)
	{
		foreach (GridRangeInfo range in ranges)
		{
			SetCoveredRange(range, setOrReset: true);
		}
	}

	public void Remove(GridRangeInfo range)
	{
		SetCoveredRange(range, setOrReset: false);
	}

	public void SetCoveredRange(GridRangeInfo range, bool setOrReset)
	{
		GridRangeInfoList gridRangeInfoList = new GridRangeInfoList();
		gridRangeInfoList.Add(range);
		SetCoveredRanges(gridRangeInfoList, setOrReset);
	}

	public void Clear()
	{
		SetCoveredRange(GridRangeInfo.Table(), setOrReset: false);
	}

	public void SetCoveredRanges(GridRangeInfoList ranges, bool setOrReset)
	{
		cacheLastCoveredRange = GridRangeInfo.Empty;
		base.Model.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll, "SetCoveredRanges");
		try
		{
			if (!OnChanging(new GridCoveredRangesChangingEventArgs(ranges, setOrReset)))
			{
				return;
			}
			bool flag = false;
			GridRangeInfoList gridRangeInfoList = new GridRangeInfoList();
			try
			{
				foreach (GridRangeInfo range2 in ranges)
				{
					GridRangeInfo range = range2.ExpandRange(0, 0, base.Model.RowCount, base.Model.ColCount);
					if (!setOrReset)
					{
						coveredRanges.GetRangesContained(range2).CopyTo(gridRangeInfoList, 0);
						if (!pool.ResetSpanCells(range))
						{
							continue;
						}
						foreach (GridRangeInfo item in coveredRanges.GetRangesIntersecting(range2))
						{
							coveredRanges.Remove(item);
							base.Model.FloatingCells.DelayFloatCells(item);
							base.Model.MergeCells.DelayMergeCells(item);
						}
						flag = true;
					}
					else if (!coveredRanges.AnyRangeIntersects(range2) && pool.StoreSpanCells(range))
					{
						coveredRanges.Add(range2);
						gridRangeInfoList.Add(range2);
						base.Model.FloatingCells.DelayFloatCells(range2);
						flag = true;
					}
				}
				if (flag && model.CommandStack.ShouldGenerateUndoInfo)
				{
					model.CommandStack.Push(new GridModelSetCoveredRangesCommand(this, gridRangeInfoList, !setOrReset));
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
				OnChanged(new GridCoveredRangesChangedEventArgs(ranges, setOrReset, flag));
			}
		}
		finally
		{
			base.Model.EndUpdate();
		}
	}

	public IEnumerator GetEnumerator()
	{
		return Ranges.GetEnumerator();
	}

	public void CopyTo(Array array, int index)
	{
		Ranges.CopyTo(array, index);
	}

	public void ResetCache()
	{
		cacheLastCoveredRange = GridRangeInfo.Empty;
	}

	public bool Find(int rowIndex, int colIndex, out GridRangeInfo range)
	{
		if (cacheLastCoveredRange.IsCells && cacheLastCoveredRange.Contains(GridRangeInfo.Cell(rowIndex, colIndex)))
		{
			range = cacheLastCoveredRange;
			return cacheLastHandled;
		}
		if (_Find(rowIndex, colIndex, out range) && range != null && range.IsCells)
		{
			cacheLastCoveredRange = range;
			cacheLastHandled = true;
			return true;
		}
		range = (cacheLastCoveredRange = GridRangeInfo.Cell(rowIndex, colIndex));
		cacheLastHandled = false;
		return false;
	}

	private bool _Find(int rowIndex, int colIndex, out GridRangeInfo range)
	{
		GridQueryCoveredRangeEventArgs e = new GridQueryCoveredRangeEventArgs(rowIndex, colIndex);
		base.Model.RaiseQueryCoveredRange(e);
		if (e.Handled)
		{
			range = e.Range;
			if (range != null && range.IsCells)
			{
				cacheLastCoveredRange = range;
				return true;
			}
			e.Range = (cacheLastCoveredRange = GridRangeInfo.Cell(rowIndex, colIndex));
			cacheLastHandled = false;
			return false;
		}
		return pool.GetSpanCellsRowCol(rowIndex, colIndex, out range);
	}

	public GridRangeInfo FindRange(int rowIndex, int colIndex)
	{
		if (Find(rowIndex, colIndex, out var range))
		{
			colIndex = range.Right + 1;
			return range;
		}
		return GridRangeInfo.Empty;
	}

	public GridRangeInfo Merge(GridRangeInfo range)
	{
		if (coveredRanges.Count > 0)
		{
			GridRangeInfo gridRangeInfo = range;
			for (int i = gridRangeInfo.Top; i <= gridRangeInfo.Bottom; i++)
			{
				for (int j = gridRangeInfo.Left; j <= gridRangeInfo.Right; j++)
				{
					if (Find(i, j, out var range2))
					{
						j = range2.Right + 1;
						range = GridRangeInfo.UnionRange(range2, range);
					}
				}
			}
		}
		return range;
	}

	public void UpdateList()
	{
		try
		{
			if (pool == null)
			{
				pool = new GridCoveredCellPool();
			}
			pool.InitFromRangeList(coveredRanges);
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

	public void InsertRows(int insertAt, int count)
	{
		base.Model.CoveredRanges.Ranges.InsertRows(insertAt, count);
		UpdateList();
	}

	public void InsertCols(int insertAt, int count)
	{
		Ranges.InsertCols(insertAt, count);
		UpdateList();
	}

	public bool RemoveRows(int fromRowIndex, int toRowIndex)
	{
		if (model.CommandStack.IsRecording)
		{
			GridRangeInfoList gridRangeInfoList = coveredRanges.Clone();
			foreach (GridRangeInfo item in gridRangeInfoList)
			{
				if (item.Top >= fromRowIndex && item.Top <= toRowIndex)
				{
					SetCoveredRange(item, setOrReset: false);
					SetCoveredRange(GridRangeInfo.Cells(item.Top, item.Left, item.Top, item.Left), setOrReset: true);
				}
				else if (item.Top < fromRowIndex && item.Bottom >= fromRowIndex && item.Bottom <= toRowIndex)
				{
					SetCoveredRange(item, setOrReset: false);
					SetCoveredRange(GridRangeInfo.Cells(item.Top, item.Left, item.Top, item.Left), setOrReset: true);
					SetCoveredRange(GridRangeInfo.Cells(item.Top, item.Left, fromRowIndex - 1, item.Right), setOrReset: true);
				}
			}
		}
		Ranges.RemoveRows(fromRowIndex, toRowIndex, base.Model.RowCount);
		UpdateList();
		return true;
	}

	public bool RemoveCols(int fromColIndex, int toColIndex)
	{
		if (model.CommandStack.IsRecording)
		{
			GridRangeInfoList gridRangeInfoList = coveredRanges.Clone();
			foreach (GridRangeInfo item in gridRangeInfoList)
			{
				if (item.Left >= fromColIndex && item.Left <= toColIndex)
				{
					SetCoveredRange(item, setOrReset: false);
					SetCoveredRange(GridRangeInfo.Cells(item.Top, item.Left, item.Top, item.Left), setOrReset: true);
				}
				else if (item.Left < fromColIndex && item.Right >= fromColIndex && item.Right <= toColIndex)
				{
					SetCoveredRange(item, setOrReset: false);
					SetCoveredRange(GridRangeInfo.Cells(item.Top, item.Left, item.Top, item.Left), setOrReset: true);
					SetCoveredRange(GridRangeInfo.Cells(item.Top, item.Left, item.Bottom, fromColIndex - 1), setOrReset: true);
				}
			}
		}
		Ranges.RemoveCols(fromColIndex, toColIndex, base.Model.ColCount);
		UpdateList();
		return true;
	}

	public void MoveRows(int from, int last, int target, int rowCount)
	{
		Ranges.MoveRows(from, last, target, rowCount);
		UpdateList();
	}

	public void MoveCols(int from, int last, int target, int colCount)
	{
		Ranges.MoveCols(from, last, target, colCount);
		UpdateList();
	}

	public void OnChanged(GridCoveredRangesChangedEventArgs e)
	{
		try
		{
			base.Model.RaiseCoveredRangesChanged(e);
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

	public bool OnChanging(GridCoveredRangesChangingEventArgs e)
	{
		try
		{
			base.Model.RaiseCoveredRangesChanging(e);
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
}
