using System;
using System.Collections;

namespace Syncfusion.Windows.Forms.Grid;

public class GridModelSelections : GridModelBound, IEnumerable
{
	public GridRangeInfoList Ranges => model.SelectedRanges;

	public int Count => Ranges.Count;

	public object SyncRoot => null;

	public bool IsSynchronized => false;

	public GridModelSelections(GridModel model)
		: base(model)
	{
	}

	public bool GetSelectedRanges(out GridRangeInfoList ranges, bool considerCurrentCell)
	{
		ranges = new GridRangeInfoList();
		foreach (GridRangeInfo selectedRange in model.SelectedRanges)
		{
			if (!ranges.AnyRangeContains(selectedRange))
			{
				ranges.Add(selectedRange);
			}
		}
		if (ranges.Count == 0 && considerCurrentCell)
		{
			GridCurrentCellInfo currentCellInfo = model.CurrentCellInfo;
			if (currentCellInfo != null)
			{
				ranges.Add(GridRangeInfo.Cell(currentCellInfo.RowIndex, currentCellInfo.ColIndex));
			}
		}
		return ranges.Count > 0;
	}

	public bool GetInvertStateRowCol(int rowIndex, int colIndex, GridRangeInfoList rl)
	{
		return rl?.AnyRangeContains(GridRangeInfo.Cell(rowIndex, colIndex)) ?? false;
	}

	public GridRangeInfoList GetSelectedCols(bool bRangeColsOnly, bool considerCurrentCell)
	{
		GridRangeInfoList colRanges = model.SelectedRanges.GetColRanges(bRangeColsOnly ? GridRangeInfoType.Cols : (GridRangeInfoType.Cells | GridRangeInfoType.Cols));
		if (colRanges.Count == 0 && considerCurrentCell)
		{
			GridCurrentCellInfo currentCellInfo = model.CurrentCellInfo;
			if (currentCellInfo != null)
			{
				colRanges.Add(GridRangeInfo.Col(currentCellInfo.ColIndex));
			}
		}
		if (colRanges.Count == 1)
		{
			GridRangeInfo gridRangeInfo = colRanges[0];
			if (gridRangeInfo.IsTable && model != null && model.RowCount > 0)
			{
				colRanges.Clear();
				colRanges.Add(GridRangeInfo.UnionRange(GridRangeInfo.Col(1), GridRangeInfo.Col(model.ColCount)));
			}
		}
		return colRanges;
	}

	public GridRangeInfoList GetSelectedRows(bool bRangeRowsOnly, bool considerCurrentCell)
	{
		GridRangeInfoList rowRanges = model.SelectedRanges.GetRowRanges(bRangeRowsOnly ? GridRangeInfoType.Rows : (GridRangeInfoType.Cells | GridRangeInfoType.Rows));
		if (rowRanges.Count == 0 && considerCurrentCell)
		{
			GridCurrentCellInfo currentCellInfo = model.CurrentCellInfo;
			if (currentCellInfo != null)
			{
				rowRanges.Add(GridRangeInfo.Row(currentCellInfo.RowIndex));
			}
		}
		if (rowRanges.Count == 1)
		{
			GridRangeInfo gridRangeInfo = rowRanges[0];
			if (gridRangeInfo.IsTable && model != null && model.RowCount > 0)
			{
				rowRanges.Clear();
				rowRanges.Add(GridRangeInfo.UnionRange(GridRangeInfo.Row(1), GridRangeInfo.Row(model.RowCount)));
			}
		}
		return rowRanges;
	}

	public void Add(GridRangeInfo range)
	{
		SelectRange(range, bSelect: true);
	}

	public void Remove(GridRangeInfo range)
	{
		SelectRange(range, bSelect: false);
	}

	public void SelectRange(GridRangeInfo range, bool bSelect)
	{
		GetSelectedRanges(out var ranges, considerCurrentCell: false);
		if (RaiseSelectionChanging(ref range, GridSelectionReason.SelectRange) && StoreSelectRange(range, bSelect))
		{
			base.Model.FloatingCells.lockEvaluateFloatingCells = true;
			RaiseSelectionChanged(range, ranges, GridSelectionReason.SelectRange);
			base.Model.FloatingCells.lockEvaluateFloatingCells = false;
		}
	}

	public void SetSelectClickRowCol(int rowIndex, int colIndex)
	{
		if (base.Model.ActiveGridView != null)
		{
			GridSelectCellsMouseController mc = base.Model.ActiveGridView.MouseControllerDispatcher.Find("SelectCells") as GridSelectCellsMouseController;
			SetSelectClickRowCol(rowIndex, colIndex, mc);
		}
	}

	public void SetSelectClickRowCol(int rowIndex, int colIndex, GridSelectCellsMouseController mc)
	{
		mc?.SetSelectClickRowCol(rowIndex, colIndex);
	}

	private void RaiseSelectionChanged(GridRangeInfo range, GridSelectionReason reason)
	{
		GridSelectionChangedEventArgs e = new GridSelectionChangedEventArgs(range, null, reason);
		base.Model.RaiseSelectionChanged(e);
	}

	private void RaiseSelectionChanged(GridRangeInfo range, GridRangeInfoList oldRanges, GridSelectionReason reason)
	{
		GridSelectionChangedEventArgs e = new GridSelectionChangedEventArgs(range, oldRanges, reason);
		base.Model.RaiseSelectionChanged(e);
	}

	private bool RaiseSelectionChanging(ref GridRangeInfo range, GridSelectionReason reason)
	{
		return RaiseSelectionChanging(ref range, reason, GridRangeInfo.Empty);
	}

	private bool RaiseSelectionChanging(ref GridRangeInfo range, GridSelectionReason reason, GridRangeInfo clickRange)
	{
		GridSelectionChangingEventArgs e = new GridSelectionChangingEventArgs(range, reason, clickRange);
		base.Model.RaiseSelectionChanging(e);
		range = e.Range;
		return !e.Cancel;
	}

	private bool StoreSelectRange(GridRangeInfo range, bool bSelect)
	{
		GridRangeInfoList selectedRanges = model.SelectedRanges;
		if (bSelect)
		{
			if (selectedRanges.Contains(range))
			{
				return false;
			}
			selectedRanges.Add(range);
		}
		else if (range.IsTable)
		{
			selectedRanges.Clear();
		}
		else
		{
			GridRangeInfoList rangesIntersecting = selectedRanges.GetRangesIntersecting(range);
			range.ExpandRange(1, 1, model.RowCount, model.ColCount);
			foreach (GridRangeInfo item in rangesIntersecting)
			{
				GridRangeInfo gridRangeInfo2 = range.IntersectRange(item);
				if (item.Equals(gridRangeInfo2))
				{
					selectedRanges.Remove(item);
					continue;
				}
				if (item.IsRows && range.IsRows)
				{
					selectedRanges.Remove(item);
					gridRangeInfo2 = range.IntersectRange(item);
					if (item.Top < gridRangeInfo2.Top)
					{
						selectedRanges.Add(GridRangeInfo.Rows(item.Top, gridRangeInfo2.Top - 1));
					}
					if (item.Bottom > gridRangeInfo2.Bottom)
					{
						selectedRanges.Add(GridRangeInfo.Rows(gridRangeInfo2.Bottom + 1, item.Bottom));
					}
					continue;
				}
				if (item.IsCols && range.IsCols)
				{
					selectedRanges.Remove(item);
					gridRangeInfo2 = range.IntersectRange(item);
					if (item.Left < gridRangeInfo2.Left)
					{
						selectedRanges.Add(GridRangeInfo.Cols(item.Left, gridRangeInfo2.Left - 1));
					}
					if (item.Right > gridRangeInfo2.Right)
					{
						selectedRanges.Add(GridRangeInfo.Cols(gridRangeInfo2.Right + 1, item.Right));
					}
					continue;
				}
				selectedRanges.Remove(item);
				item.ExpandRange(1, 1, model.RowCount, model.ColCount);
				if (item.Top < gridRangeInfo2.Top)
				{
					if (item.IsRows)
					{
						selectedRanges.Add(GridRangeInfo.Rows(item.Top, gridRangeInfo2.Top - 1));
					}
					else
					{
						selectedRanges.Add(GridRangeInfo.Cells(item.Top, item.Left, gridRangeInfo2.Top - 1, item.Right));
					}
				}
				if (item.Bottom > gridRangeInfo2.Bottom)
				{
					if (item.IsRows)
					{
						selectedRanges.Add(GridRangeInfo.Rows(gridRangeInfo2.Bottom + 1, item.Bottom));
					}
					else
					{
						selectedRanges.Add(GridRangeInfo.Cells(gridRangeInfo2.Bottom + 1, item.Left, item.Bottom, item.Right));
					}
				}
				if (item.Left < gridRangeInfo2.Left)
				{
					if (item.IsCols)
					{
						selectedRanges.Add(GridRangeInfo.Cols(item.Left, gridRangeInfo2.Left - 1));
					}
					else
					{
						selectedRanges.Add(GridRangeInfo.Cells(item.Top, item.Left, item.Bottom, gridRangeInfo2.Left - 1));
					}
				}
				if (item.Right > gridRangeInfo2.Right)
				{
					if (item.IsCols)
					{
						selectedRanges.Add(GridRangeInfo.Cols(gridRangeInfo2.Right + 1, item.Right));
					}
					else
					{
						selectedRanges.Add(GridRangeInfo.Cells(item.Top, gridRangeInfo2.Right + 1, item.Bottom, item.Right));
					}
				}
			}
		}
		return true;
	}

	public void Clear()
	{
		Clear(raiseEvents: false);
	}

	public void Clear(bool raiseEvents)
	{
		GridRangeInfoList selectedRanges = model.SelectedRanges;
		GridRangeInfo range = GridRangeInfo.Empty;
		if (!raiseEvents || RaiseSelectionChanging(ref range, GridSelectionReason.Clear))
		{
			base.Model.FloatingCells.lockEvaluateFloatingCells = true;
			if (selectedRanges.Count > 0)
			{
				PrepareClearSelection(bCreateHint: true);
			}
			selectedRanges.Clear();
			base.Model.FloatingCells.lockEvaluateFloatingCells = false;
			if (raiseEvents)
			{
				RaiseSelectionChanged(GridRangeInfo.Empty, GridSelectionReason.Clear);
			}
		}
	}

	private void PrepareClearSelection(bool bCreateHint)
	{
		base.Model.RaisePrepareClearSelection(EventArgs.Empty);
	}

	private void PrepareChangeSelection(GridRangeInfo oldRange, GridRangeInfo newRange, bool bCreateHint)
	{
		base.Model.RaisePrepareChangeSelection(new GridPrepareChangeSelectionEventArgs(oldRange, newRange));
	}

	public void ChangeSelection(GridRangeInfo oldRange, GridRangeInfo newRange)
	{
		ChangeSelection(oldRange, newRange, raiseEvents: false);
	}

	public void ChangeSelection(GridRangeInfo oldRange, GridRangeInfo newRange, bool raiseEvents)
	{
		GridRangeInfoList selectedRanges = model.SelectedRanges;
		if (oldRange.IsEmpty && newRange.IsEmpty)
		{
			Clear(raiseEvents);
		}
		else
		{
			if (raiseEvents && !RaiseSelectionChanging(ref newRange, GridSelectionReason.SelectRange))
			{
				return;
			}
			int num = selectedRanges.IndexOf(oldRange);
			if (num != -1)
			{
				selectedRanges.RemoveAt(num);
			}
			base.Model.FloatingCells.lockEvaluateFloatingCells = true;
			PrepareChangeSelection(oldRange, newRange, bCreateHint: true);
			base.Model.FloatingCells.lockEvaluateFloatingCells = false;
			GridRangeInfo gridRangeInfo = newRange;
			if (newRange.IsCells)
			{
				if (newRange.Top == 0 && newRange.Left == 0)
				{
					gridRangeInfo = GridRangeInfo.Table();
				}
				else if (newRange.Left == 0)
				{
					gridRangeInfo = GridRangeInfo.Rows(newRange.Top, newRange.Bottom);
				}
				else if (newRange.Top == 0)
				{
					gridRangeInfo = GridRangeInfo.Cols(newRange.Left, newRange.Right);
				}
			}
			if (!gridRangeInfo.IsEmpty)
			{
				selectedRanges.Add(gridRangeInfo);
			}
			if (raiseEvents)
			{
				RaiseSelectionChanged(gridRangeInfo, GridSelectionReason.SelectRange);
			}
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
}
