using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;
using System.Runtime.Serialization;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[Editor(typeof(GridModelBanneredRangesEditor), typeof(UITypeEditor))]
public sealed class GridModelBanneredRanges : GridModelBound, ICollection, ISerializable, IEnumerable
{
	private GridRangeInfoList banneredRanges = new GridRangeInfoList();

	private GridBanneredCellPool pool = new GridBanneredCellPool();

	internal GridRangeInfo cacheLastCoveredRange = GridRangeInfo.Empty;

	internal bool cacheLastHandled;

	public GridRangeInfoList Ranges => banneredRanges;

	public int Count => Ranges.Count;

	public object SyncRoot => null;

	public bool IsSynchronized => false;

	public GridModelBanneredRanges(GridModel model)
		: base(model)
	{
	}

	private GridModelBanneredRanges(SerializationInfo info, StreamingContext context)
	{
		banneredRanges = (GridRangeInfoList)info.GetValue("Ranges", typeof(GridRangeInfoList));
		pool = (GridBanneredCellPool)info.GetValue("Pool", typeof(GridBanneredCellPool));
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("Ranges", banneredRanges);
		info.AddValue("Pool", pool);
	}

	public void Add(GridRangeInfo range)
	{
		SetBanneredRange(range, setOrReset: true);
	}

	public void AddRange(GridRangeInfo[] ranges)
	{
		foreach (GridRangeInfo range in ranges)
		{
			SetBanneredRange(range, setOrReset: true);
		}
	}

	public void Remove(GridRangeInfo range)
	{
		SetBanneredRange(range, setOrReset: false);
	}

	public void SetBanneredRange(GridRangeInfo range, bool setOrReset)
	{
		GridRangeInfoList gridRangeInfoList = new GridRangeInfoList();
		gridRangeInfoList.Add(range);
		SetBanneredRanges(gridRangeInfoList, setOrReset);
	}

	public void Clear()
	{
		SetBanneredRange(GridRangeInfo.Table(), setOrReset: false);
	}

	public void SetBanneredRanges(GridRangeInfoList ranges, bool setOrReset)
	{
		base.Model.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll, "SetBanneredRanges");
		try
		{
			if (!OnChanging(new GridBanneredRangesChangingEventArgs(ranges, setOrReset)))
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
						banneredRanges.GetRangesContained(range2).CopyTo(gridRangeInfoList, 0);
						if (!pool.ResetSpanCells(range))
						{
							continue;
						}
						foreach (GridRangeInfo item in banneredRanges.GetRangesIntersecting(range2))
						{
							banneredRanges.Remove(item);
						}
						flag = true;
					}
					else if (!banneredRanges.AnyRangeIntersects(range2) && pool.StoreSpanCells(range))
					{
						banneredRanges.Add(range2);
						gridRangeInfoList.Add(range2);
						flag = true;
					}
				}
				if (flag && model.CommandStack.ShouldGenerateUndoInfo)
				{
					model.CommandStack.Push(new GridModelSetBanneredRangesCommand(this, gridRangeInfoList, !setOrReset));
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
				OnChanged(new GridBanneredRangesChangedEventArgs(ranges, setOrReset, flag));
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

	internal void ResetCache()
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
		GridQueryBanneredRangeEventArgs e = new GridQueryBanneredRangeEventArgs(rowIndex, colIndex);
		base.Model.RaiseQueryBanneredRange(e);
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
		if (banneredRanges.Count > 0)
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
				pool = new GridBanneredCellPool();
			}
			pool.InitFromRangeList(banneredRanges, base.Model);
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
		Ranges.InsertRows(insertAt, count);
		UpdateList();
	}

	public void InsertCols(int insertAt, int count)
	{
		Ranges.InsertCols(insertAt, count);
		UpdateList();
	}

	public bool RemoveRows(int fromRowIndex, int toRowIndex)
	{
		Ranges.RemoveRows(fromRowIndex, toRowIndex, base.Model.RowCount);
		UpdateList();
		return true;
	}

	public bool RemoveCols(int fromColIndex, int toColIndex)
	{
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

	public void OnChanged(GridBanneredRangesChangedEventArgs e)
	{
		try
		{
			base.Model.RaiseBanneredRangesChanged(e);
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

	public bool OnChanging(GridBanneredRangesChangingEventArgs e)
	{
		try
		{
			base.Model.RaiseBanneredRangesChanging(e);
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
