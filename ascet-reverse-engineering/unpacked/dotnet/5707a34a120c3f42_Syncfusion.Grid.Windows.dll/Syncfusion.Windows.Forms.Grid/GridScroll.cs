#define TRACE
using System;
using System.Collections;
using System.Diagnostics;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal class GridScroll
{
	private const int hAutoScrollPixelDelta = 20;

	private GridControlBase grid;

	private int _nTopRow;

	private int vScrollPos;

	private int _nLeftCol;

	private int hScrollPos;

	internal int m_nLastSBRowCount;

	internal int m_nLastSBColCount;

	internal GridScrollbarMode hScrollSetting = GridScrollbarMode.DetectIfShared;

	internal GridScrollbarMode vScrollSetting = GridScrollbarMode.DetectIfShared;

	internal bool m_bInDoScroll;

	internal int m_cxOld;

	internal int m_cyOld;

	internal bool m_bUpdateScrollbar;

	internal bool ConsiderLocationOnly = true;

	private bool inScroll;

	internal GridScrollVisibleElementsMapper visibleColumns = new GridScrollVisibleElementsMapper();

	internal GridScrollVisibleElementsMapper visibleRows = new GridScrollVisibleElementsMapper();

	private ArrayList scrollPositionToRowIndex = new ArrayList();

	private ArrayList rowIndexToScrollPosition = new ArrayList();

	private int hiddenRowCount;

	private ArrayList scrollPositionToColIndex = new ArrayList();

	private ArrayList colIndexToScrollPosition = new ArrayList();

	private int hiddenColCount;

	internal int m_nTopRow
	{
		get
		{
			return _nTopRow;
		}
		set
		{
			_nTopRow = value;
			if (GridControlBase.UseOldHiddenScrollLogic)
			{
				vScrollPos = value;
			}
			else
			{
				vScrollPos = RowIndexToScrollPosition(value);
			}
		}
	}

	public int VScrollPos
	{
		get
		{
			return vScrollPos;
		}
		set
		{
			vScrollPos = value;
			if (GridControlBase.UseOldHiddenScrollLogic)
			{
				_nTopRow = value;
			}
			else
			{
				_nTopRow = ScrollPositionToRowIndex(vScrollPos);
			}
		}
	}

	internal int m_nLeftCol
	{
		get
		{
			return _nLeftCol;
		}
		set
		{
			_nLeftCol = value;
			if (GridControlBase.UseOldHiddenScrollLogic)
			{
				hScrollPos = value;
			}
			else
			{
				hScrollPos = ColIndexToScrollPosition(value);
			}
		}
	}

	public int HScrollPos
	{
		get
		{
			return hScrollPos;
		}
		set
		{
			hScrollPos = value;
			if (GridControlBase.UseOldHiddenScrollLogic)
			{
				_nLeftCol = value;
			}
			else
			{
				_nLeftCol = ScrollPositionToColIndex(hScrollPos);
			}
		}
	}

	public string Info => ToString();

	internal bool use42CodeForHiding => GridControlBase.UseOldHiddenScrollLogic;

	[Obsolete("Use GridControlBase.HScrollBehavior method")]
	public GridScrollbarMode HScrollSetting
	{
		get
		{
			return hScrollSetting;
		}
		set
		{
			hScrollSetting = value;
		}
	}

	[Obsolete("Use GridControlBase.VScrollBehavior method")]
	public GridScrollbarMode VScrollSetting
	{
		get
		{
			return vScrollSetting;
		}
		set
		{
			vScrollSetting = value;
		}
	}

	public override string ToString()
	{
		return string.Format("TopRow={0},LeftCol={1},hScrollSetting={2},vScrollSetting={3},m_bInDoScroll={4},m_nLastSBRowCount={5},m_nLastSBColCount={6]", m_nTopRow, m_nLeftCol, hScrollSetting, vScrollSetting, m_bInDoScroll, m_nLastSBRowCount, m_nLastSBColCount);
	}

	public bool GetNextRowIndex(ref int rowIndex)
	{
		int num = rowIndex;
		bool nextRowIndex = GetNextRowIndex(ref rowIndex, rowIndex > 0);
		if (nextRowIndex && rowIndex == num)
		{
			nextRowIndex = GetNextRowIndex(ref rowIndex, skipFirstHidden: true);
		}
		return nextRowIndex;
	}

	public bool GetNextRowIndex(ref int rowIndex, bool skipFirstHidden)
	{
		int num = RowIndexToScrollPosition(rowIndex);
		if (num < GetMaxRowScrollPosition())
		{
			if (skipFirstHidden || !grid.GetRowHidden(rowIndex))
			{
				num++;
			}
			rowIndex = ScrollPositionToRowIndex(num);
			return true;
		}
		return false;
	}

	public int GetNextRowIndex(int rowIndex, bool skipFirstHidden)
	{
		GetNextRowIndex(ref rowIndex, skipFirstHidden);
		return rowIndex;
	}

	public bool GetPrevRowIndex(ref int rowIndex)
	{
		int num = RowIndexToScrollPosition(rowIndex);
		if (num > 0)
		{
			rowIndex = ScrollPositionToRowIndex(num - 1);
			return true;
		}
		return false;
	}

	public int GetPrevRowIndex(int rowIndex)
	{
		GetPrevRowIndex(ref rowIndex);
		return rowIndex;
	}

	public bool ScrollPositionDiffersAtRowIndex(int rowIndex1, int rowIndex2)
	{
		return RowIndexToScrollPosition(rowIndex1) != RowIndexToScrollPosition(rowIndex2);
	}

	public bool RowIndexDiffersAtScrollPosition(int scrollPos1, int scrollPos2)
	{
		return ScrollPositionToRowIndex(scrollPos1) != ScrollPositionToRowIndex(scrollPos2);
	}

	public bool GetNextColIndex(ref int colIndex)
	{
		int num = colIndex;
		bool nextColIndex = GetNextColIndex(ref colIndex, colIndex > 0);
		if (nextColIndex && colIndex == num)
		{
			nextColIndex = GetNextColIndex(ref colIndex, skipFirstHidden: true);
		}
		return nextColIndex;
	}

	public bool GetNextColIndex(ref int colIndex, bool skipFirstHidden)
	{
		int num = ColIndexToScrollPosition(colIndex);
		if (num < GetMaxColScrollPosition())
		{
			if (skipFirstHidden || !grid.GetColHidden(colIndex))
			{
				num++;
			}
			colIndex = ScrollPositionToColIndex(num);
			return true;
		}
		return false;
	}

	public int GetNextColIndex(int colIndex, bool skipFirstHidden)
	{
		GetNextColIndex(ref colIndex, skipFirstHidden);
		return colIndex;
	}

	public bool GetPrevColIndex(ref int colIndex)
	{
		int num = ColIndexToScrollPosition(colIndex);
		if (num > 0)
		{
			colIndex = ScrollPositionToColIndex(num - 1);
			return true;
		}
		return false;
	}

	public int GetPrevColIndex(int colIndex)
	{
		GetPrevColIndex(ref colIndex);
		return colIndex;
	}

	public bool ScrollPositionDiffersAtColIndex(int colIndex1, int colIndex2)
	{
		return ColIndexToScrollPosition(colIndex1) != ColIndexToScrollPosition(colIndex2);
	}

	public bool ColIndexDiffersAtScrollPosition(int scrollPos1, int scrollPos2)
	{
		return ScrollPositionToColIndex(scrollPos1) != ScrollPositionToColIndex(scrollPos2);
	}

	public int GetMaxRowScrollPosition()
	{
		if (use42CodeForHiding)
		{
			return OldGetMaxRowScrollPosition();
		}
		visibleRows.Count = grid.Model.RowCount + 1;
		return Math.Max(0, visibleRows.VisibleCount - 1);
	}

	public int ScrollPositionToRowIndex(int scrollPos)
	{
		if (use42CodeForHiding)
		{
			return OldScrollPositionToRowIndex(scrollPos);
		}
		if (scrollPos > GetMaxRowScrollPosition())
		{
			return visibleRows.Count + 1;
		}
		return visibleRows.GetOriginalPositionAtVisiblePosition(scrollPos);
	}

	public int RowIndexToScrollPosition(int rowIndex)
	{
		if (use42CodeForHiding)
		{
			return OldRowIndexToScrollPosition(rowIndex);
		}
		return Math.Min(visibleRows.GetVisiblePositionForOriginalPosition(rowIndex), GetMaxRowScrollPosition());
	}

	private void FixRowCount()
	{
		visibleRows.Count = grid.Model.RowCount + 1;
	}

	private void FixColCount()
	{
		visibleColumns.Count = grid.Model.ColCount + 1;
	}

	private void FixHScrollPos()
	{
		if (GridControlBase.UseOldHiddenScrollLogic)
		{
			hScrollPos = _nLeftCol;
		}
		else
		{
			hScrollPos = ColIndexToScrollPosition(_nLeftCol);
		}
	}

	private void FixVScrollPos()
	{
		if (GridControlBase.UseOldHiddenScrollLogic)
		{
			vScrollPos = _nTopRow;
		}
		else
		{
			vScrollPos = RowIndexToScrollPosition(_nTopRow);
		}
	}

	public void RecalcHiddenRowState(int start, int end)
	{
		if (use42CodeForHiding)
		{
			OldRecalcHiddenRowState(start, end);
			return;
		}
		FixRowCount();
		end = Math.Min(grid.Model.RowCount, end);
		for (int i = start; i <= end; i++)
		{
			visibleRows[i] = !grid.GetRowHidden(i);
		}
		FixVScrollPos();
	}

	public void RecalcHiddenColState(int start, int end)
	{
		if (use42CodeForHiding)
		{
			OldRecalcHiddenColState(start, end);
			return;
		}
		FixColCount();
		end = Math.Min(grid.Model.ColCount, end);
		for (int i = start; i <= end; i++)
		{
			visibleColumns[i] = !grid.GetColHidden(i);
		}
		FixHScrollPos();
	}

	public void RecalcHiddenRowColState(GridControlBase otherGrid)
	{
		RecalcHiddenColState(0, Math.Min(grid.Model.ColCount, otherGrid.ScrollGrid.visibleColumns.Count));
		RecalcHiddenRowState(0, Math.Min(grid.Model.RowCount, otherGrid.ScrollGrid.visibleRows.Count));
	}

	public void HideRows(int rowIndex, int count)
	{
		if (use42CodeForHiding)
		{
			OldHideRows(rowIndex, count);
			return;
		}
		FixRowCount();
		visibleRows.HideRange(rowIndex, rowIndex + count - 1);
		FixVScrollPos();
	}

	public void ShowRows(int rowIndex, int count)
	{
		if (use42CodeForHiding)
		{
			OldShowRows(rowIndex, count);
			return;
		}
		FixRowCount();
		visibleRows.ShowRange(rowIndex, rowIndex + count - 1);
		FixVScrollPos();
	}

	public int GetMaxColScrollPosition()
	{
		if (use42CodeForHiding)
		{
			return OldGetMaxColScrollPosition();
		}
		visibleColumns.Count = grid.Model.ColCount + 1;
		return Math.Max(0, visibleColumns.VisibleCount - 1);
	}

	public int ScrollPositionToColIndex(int scrollPos)
	{
		if (use42CodeForHiding)
		{
			return OldScrollPositionToColIndex(scrollPos);
		}
		if (scrollPos > GetMaxColScrollPosition())
		{
			return visibleColumns.Count + 1;
		}
		return visibleColumns.GetOriginalPositionAtVisiblePosition(scrollPos);
	}

	public int ColIndexToScrollPosition(int colIndex)
	{
		if (use42CodeForHiding)
		{
			return OldColIndexToScrollPosition(colIndex);
		}
		return Math.Min(visibleColumns.GetVisiblePositionForOriginalPosition(colIndex), GetMaxColScrollPosition());
	}

	public void HideCols(int colIndex, int count)
	{
		if (use42CodeForHiding)
		{
			OldHideCols(colIndex, count);
			return;
		}
		FixColCount();
		visibleColumns.HideRange(colIndex, colIndex + count - 1);
		FixHScrollPos();
	}

	public void ShowCols(int colIndex, int count)
	{
		if (use42CodeForHiding)
		{
			OldShowCols(colIndex, count);
			return;
		}
		FixColCount();
		visibleColumns.ShowRange(colIndex, colIndex + count - 1);
		FixHScrollPos();
	}

	private int OldGetMaxRowScrollPosition()
	{
		return grid.Model.RowCount - hiddenRowCount;
	}

	private int OldScrollPositionToRowIndex(int scrollPos)
	{
		if (scrollPos < 0)
		{
			return -1;
		}
		if (scrollPos >= scrollPositionToRowIndex.Count)
		{
			return scrollPos + hiddenRowCount;
		}
		return (int)scrollPositionToRowIndex[scrollPos];
	}

	private int OldRowIndexToScrollPosition(int rowIndex)
	{
		if (rowIndex < 0)
		{
			return -1;
		}
		if (rowIndex >= rowIndexToScrollPosition.Count)
		{
			return rowIndex - hiddenRowCount;
		}
		return (int)rowIndexToScrollPosition[rowIndex];
	}

	private void OldEnsureScrollPositionToRowIndexCount(int scrollPos)
	{
		if (scrollPositionToRowIndex.Count == 0)
		{
			scrollPositionToRowIndex.Add(0);
		}
		int num = (int)scrollPositionToRowIndex[scrollPositionToRowIndex.Count - 1];
		while (scrollPositionToRowIndex.Count <= scrollPos)
		{
			scrollPositionToRowIndex.Add(++num);
		}
	}

	private void OldEnsureRowIndexToScrollPositionCount(int rowIndex)
	{
		if (rowIndexToScrollPosition.Count == 0)
		{
			rowIndexToScrollPosition.Add(0);
		}
		int num = (int)rowIndexToScrollPosition[rowIndexToScrollPosition.Count - 1];
		while (rowIndexToScrollPosition.Count <= rowIndex)
		{
			rowIndexToScrollPosition.Add(++num);
		}
	}

	private void OldRecalcHiddenRowState(int start, int end)
	{
		if (start >= rowIndexToScrollPosition.Count)
		{
			return;
		}
		int num = Math.Max(0, start - 1);
		int num2 = (int)rowIndexToScrollPosition[num];
		int num3 = Math.Max(rowIndexToScrollPosition.Count, end);
		for (int i = num + 1; i < num3; i++)
		{
			if (!grid.GetRowHidden(i))
			{
				num2++;
			}
			if (i < rowIndexToScrollPosition.Count)
			{
				rowIndexToScrollPosition[i] = num2;
			}
			else
			{
				rowIndexToScrollPosition.Add(num2);
			}
		}
		scrollPositionToRowIndex.Clear();
		int num4 = 0;
		scrollPositionToRowIndex.Add(0);
		hiddenRowCount = 0;
		while (scrollPositionToRowIndex.Count <= num2)
		{
			num4++;
			if (!grid.GetRowHidden(num4))
			{
				scrollPositionToRowIndex.Add(num4);
			}
			else
			{
				hiddenRowCount++;
			}
		}
	}

	private void OldRecalcHiddenColState(int start, int end)
	{
		if (start >= colIndexToScrollPosition.Count)
		{
			return;
		}
		int num = Math.Max(0, start - 1);
		int num2 = (int)colIndexToScrollPosition[num];
		int num3 = Math.Max(colIndexToScrollPosition.Count, end);
		for (int i = num + 1; i < num3; i++)
		{
			if (!grid.GetColHidden(i))
			{
				num2++;
			}
			else if (i == num3 - 1)
			{
				num3++;
			}
			if (i < colIndexToScrollPosition.Count)
			{
				colIndexToScrollPosition[i] = num2;
			}
			else
			{
				colIndexToScrollPosition.Add(num2);
			}
		}
		scrollPositionToColIndex.Clear();
		int num4 = 0;
		scrollPositionToColIndex.Add(0);
		hiddenColCount = 0;
		while (scrollPositionToColIndex.Count <= num2)
		{
			num4++;
			if (!grid.GetColHidden(num4))
			{
				scrollPositionToColIndex.Add(num4);
			}
			else
			{
				hiddenColCount++;
			}
		}
	}

	private void _HideRows(int rowIndex, int count)
	{
		int num = RowIndexToScrollPosition(rowIndex);
		OldEnsureRowIndexToScrollPositionCount(rowIndex + count);
		int i;
		for (i = rowIndex; i < rowIndex + count; i++)
		{
			rowIndexToScrollPosition[i] = RowIndexToScrollPosition(rowIndex - 1);
		}
		for (; i < rowIndexToScrollPosition.Count; i++)
		{
			rowIndexToScrollPosition[i] = (int)rowIndexToScrollPosition[i] - count;
		}
		OldEnsureScrollPositionToRowIndexCount(num + count - 1);
		int count2 = scrollPositionToRowIndex.Count;
		for (i = num; i < count2; i++)
		{
			scrollPositionToRowIndex[i] = ScrollPositionToRowIndex(i + count);
		}
		hiddenRowCount += count;
	}

	private void OldHideRows(int rowIndex, int count)
	{
		if (rowIndex < grid.InternalGetFrozenRows() + 1)
		{
			int num = grid.InternalGetFrozenRows() + 1 - rowIndex;
			count -= num;
			rowIndex += num;
		}
		int num2 = 0;
		int num3 = rowIndex;
		for (int i = 0; i < count; i++)
		{
			if (RowIndexToScrollPosition(i + num3) == RowIndexToScrollPosition(i + num3 - 1))
			{
				if (num2 > 0)
				{
					_HideRows(rowIndex, num2);
				}
				rowIndex += num2 + 1;
				num2 = 0;
			}
			else
			{
				num2++;
			}
		}
		if (num2 > 0)
		{
			_HideRows(rowIndex, num2);
		}
	}

	private void DumpRows()
	{
		for (int i = 0; i < rowIndexToScrollPosition.Count; i++)
		{
			Trace.WriteLine($"Row {i}, Pos {rowIndexToScrollPosition[i]}");
		}
		for (int j = 0; j < scrollPositionToRowIndex.Count; j++)
		{
			Trace.WriteLine($"Pos {j}, Row {scrollPositionToRowIndex[j]}");
		}
	}

	private void _ShowRows(int rowIndex, int count)
	{
		int num = RowIndexToScrollPosition(rowIndex);
		OldEnsureRowIndexToScrollPositionCount(rowIndex + count);
		int num2 = (int)rowIndexToScrollPosition[rowIndex];
		int i;
		for (i = rowIndex; i < rowIndex + count; i++)
		{
			rowIndexToScrollPosition[i] = ++num2;
		}
		for (; i < rowIndexToScrollPosition.Count; i++)
		{
			rowIndexToScrollPosition[i] = (int)rowIndexToScrollPosition[i] + count;
		}
		OldEnsureScrollPositionToRowIndexCount(num);
		OldEnsureScrollPositionToRowIndexCount(scrollPositionToRowIndex.Count + count);
		int count2 = scrollPositionToRowIndex.Count;
		for (i = count2 - 1; i > num + count; i--)
		{
			scrollPositionToRowIndex[i] = ScrollPositionToRowIndex(i - count);
		}
		num2 = rowIndex;
		for (int j = 0; j < count; j++)
		{
			scrollPositionToRowIndex[j + num + 1] = num2++;
		}
		hiddenRowCount -= count;
	}

	private void OldShowRows(int rowIndex, int count)
	{
		int scrollPos = RowIndexToScrollPosition(m_nTopRow);
		if (rowIndex < grid.InternalGetFrozenRows() + 1)
		{
			int num = grid.InternalGetFrozenRows() + 1 - rowIndex;
			count -= num;
			rowIndex += num;
		}
		int num2 = 0;
		for (int i = 0; i < count; i++)
		{
			if (RowIndexToScrollPosition(num2 + rowIndex) != RowIndexToScrollPosition(num2 + rowIndex - 1))
			{
				if (num2 > 0)
				{
					_ShowRows(rowIndex, num2);
					rowIndex += num2 + 1;
					num2 = 0;
				}
				else
				{
					rowIndex++;
					num2 = 0;
				}
			}
			else
			{
				num2++;
			}
		}
		if (num2 > 0)
		{
			_ShowRows(rowIndex, num2);
		}
		grid.TopRowIndex = ScrollPositionToRowIndex(scrollPos);
	}

	private int OldGetMaxColScrollPosition()
	{
		return grid.Model.ColCount - hiddenColCount;
	}

	private int OldScrollPositionToColIndex(int scrollPos)
	{
		if (scrollPos < 0)
		{
			return -1;
		}
		if (scrollPos >= scrollPositionToColIndex.Count)
		{
			return scrollPos + hiddenColCount;
		}
		return (int)scrollPositionToColIndex[scrollPos];
	}

	private int OldColIndexToScrollPosition(int colIndex)
	{
		if (colIndex < 0)
		{
			return -1;
		}
		if (colIndex >= colIndexToScrollPosition.Count)
		{
			return colIndex - hiddenColCount;
		}
		return (int)colIndexToScrollPosition[colIndex];
	}

	private void OldEnsureScrollPositionToColIndexCount(int scrollPos)
	{
		if (scrollPositionToColIndex.Count == 0)
		{
			scrollPositionToColIndex.Add(0);
		}
		int num = (int)scrollPositionToColIndex[scrollPositionToColIndex.Count - 1];
		while (scrollPositionToColIndex.Count <= scrollPos)
		{
			scrollPositionToColIndex.Add(++num);
		}
	}

	private void OldEnsureColIndexToScrollPositionCount(int colIndex)
	{
		if (colIndexToScrollPosition.Count == 0)
		{
			colIndexToScrollPosition.Add(0);
		}
		int num = (int)colIndexToScrollPosition[colIndexToScrollPosition.Count - 1];
		while (colIndexToScrollPosition.Count <= colIndex)
		{
			colIndexToScrollPosition.Add(++num);
		}
	}

	private void _HideCols(int colIndex, int count)
	{
		int num = ColIndexToScrollPosition(colIndex);
		OldEnsureColIndexToScrollPositionCount(colIndex + count);
		int i;
		for (i = colIndex; i < colIndex + count; i++)
		{
			colIndexToScrollPosition[i] = ColIndexToScrollPosition(colIndex - 1);
		}
		for (; i < colIndexToScrollPosition.Count; i++)
		{
			colIndexToScrollPosition[i] = (int)colIndexToScrollPosition[i] - count;
		}
		OldEnsureScrollPositionToColIndexCount(num + count - 1);
		OldEnsureScrollPositionToColIndexCount(grid.InternalGetFrozenCols() + 1);
		int count2 = scrollPositionToColIndex.Count;
		for (i = num; i < count2; i++)
		{
			scrollPositionToColIndex[i] = ScrollPositionToColIndex(i + count);
		}
		hiddenColCount += count;
	}

	private void OldHideCols(int colIndex, int count)
	{
		if (colIndex < grid.InternalGetFrozenCols() + 1)
		{
			int num = grid.InternalGetFrozenCols() + 1 - colIndex;
			count -= num;
			colIndex += num;
		}
		int num2 = 0;
		int num3 = colIndex;
		for (int i = 0; i < count; i++)
		{
			if (ColIndexToScrollPosition(i + num3) == ColIndexToScrollPosition(i + num3 - 1))
			{
				if (num2 > 0)
				{
					_HideCols(colIndex, num2);
				}
				colIndex += num2 + 1;
				num2 = 0;
			}
			else
			{
				num2++;
			}
		}
		if (num2 > 0)
		{
			_HideCols(colIndex, num2);
		}
	}

	private void DumpCol()
	{
		Trace.WriteLine($"Hidden Cols: {hiddenColCount}");
		for (int i = 0; i < colIndexToScrollPosition.Count; i++)
		{
			Trace.WriteLine($"Col {i}, Pos {colIndexToScrollPosition[i]}");
		}
		for (int j = 0; j < scrollPositionToColIndex.Count; j++)
		{
			Trace.WriteLine($"Pos {j}, Col {scrollPositionToColIndex[j]}");
		}
	}

	private void _ShowCols(int colIndex, int count)
	{
		int num = ColIndexToScrollPosition(colIndex);
		OldEnsureColIndexToScrollPositionCount(colIndex + count);
		int num2 = (int)colIndexToScrollPosition[colIndex];
		int i;
		for (i = colIndex; i < colIndex + count; i++)
		{
			colIndexToScrollPosition[i] = ++num2;
		}
		for (; i < colIndexToScrollPosition.Count; i++)
		{
			colIndexToScrollPosition[i] = (int)colIndexToScrollPosition[i] + count;
		}
		OldEnsureScrollPositionToColIndexCount(num);
		OldEnsureScrollPositionToColIndexCount(scrollPositionToColIndex.Count + count);
		int count2 = scrollPositionToColIndex.Count;
		for (i = count2 - 1; i > num + count; i--)
		{
			scrollPositionToColIndex[i] = ScrollPositionToColIndex(i - count);
		}
		num2 = colIndex;
		for (int j = 0; j < count; j++)
		{
			scrollPositionToColIndex[j + num + 1] = num2++;
		}
		hiddenColCount -= count;
	}

	private void OldShowCols(int colIndex, int count)
	{
		int scrollPos = ColIndexToScrollPosition(m_nLeftCol);
		if (colIndex < grid.InternalGetFrozenCols() + 1)
		{
			int num = grid.InternalGetFrozenCols() + 1 - colIndex;
			count -= num;
			colIndex += num;
		}
		int num2 = 0;
		for (int i = 0; i < count; i++)
		{
			if (ColIndexToScrollPosition(num2 + colIndex) != ColIndexToScrollPosition(num2 + colIndex - 1))
			{
				if (num2 > 0)
				{
					_ShowCols(colIndex, num2);
					colIndex += num2 + 1;
					num2 = 0;
				}
				else
				{
					colIndex++;
					num2 = 0;
				}
			}
			else
			{
				num2++;
			}
		}
		if (num2 > 0)
		{
			_ShowCols(colIndex, num2);
		}
		grid.LeftColIndex = ScrollPositionToColIndex(scrollPos);
	}

	public GridScroll(GridControlBase grid)
	{
		this.grid = grid;
		WireScrollEvents();
	}

	private void WireScrollEvents()
	{
		grid.HorizontalScroll += OnHScrollBarScroll;
		grid.VerticalScroll += OnVScrollBarScroll;
		grid.HScrollBar.ValueChanged += OnHScrollBarValueChanged;
		grid.VScrollBar.ValueChanged += OnVScrollBarValueChanged;
		grid.IntelliMouseDragScrolling += IntelliMouseDragScrollEvent;
	}

	private void UnwireScrollEvents()
	{
		grid.HorizontalScroll -= OnHScrollBarScroll;
		grid.VerticalScroll -= OnVScrollBarScroll;
		grid.HScrollBar.ValueChanged -= OnHScrollBarValueChanged;
		grid.VScrollBar.ValueChanged -= OnVScrollBarValueChanged;
		grid.IntelliMouseDragScrolling -= IntelliMouseDragScrollEvent;
	}

	public void Dispose()
	{
		if (grid != null)
		{
			UnwireScrollEvents();
		}
		GC.SuppressFinalize(this);
	}

	private void NotifyRenderer(int message)
	{
		GridCellRendererBase renderer = grid.CurrentCell.Renderer;
		if (renderer != null)
		{
			Message pMsg = Message.Create(grid.GetWindow().Handle, message, (IntPtr)0, (IntPtr)0);
			renderer.OnNotifyMsg(ref pMsg);
		}
	}

	protected virtual void OnHScrollBarScroll(object sender, ScrollEventArgs se)
	{
		if (!grid.hPixelScroll)
		{
			return;
		}
		int num = 0;
		bool flag = grid.IsRightToLeft();
		int num2 = grid.HScrollBar.Value;
		ScrollEventType scrollEventType = se.Type;
		if (flag)
		{
			num2 = ReverseHScrollValueRTL(num2);
			se.NewValue = ReverseHScrollValueRTL(se.NewValue);
			if (grid.HScrollBar.InnerScrollBar.RightToLeft == RightToLeft.No)
			{
				switch (se.Type)
				{
				case ScrollEventType.SmallDecrement:
					scrollEventType = ScrollEventType.SmallIncrement;
					break;
				case ScrollEventType.SmallIncrement:
					scrollEventType = ScrollEventType.SmallDecrement;
					break;
				}
			}
		}
		switch (scrollEventType)
		{
		case ScrollEventType.SmallDecrement:
			if (grid.AutoScrolling != ScrollBars.None)
			{
				se.NewValue = num2 - 20;
			}
			else if (grid.hScrollPixelDelta > 0)
			{
				se.NewValue = num2 - grid.hScrollPixelDelta;
			}
			else
			{
				int colIndex = grid.LeftColIndex;
				int num3 = 0;
				while (num3 == 0 && GetPrevColIndex(ref colIndex))
				{
					num3 = grid.GetColWidth(colIndex);
				}
				se.NewValue = num2 - num3;
			}
			se.NewValue = Math.Max(se.NewValue, grid.HScrollBar.Minimum);
			break;
		case ScrollEventType.SmallIncrement:
			grid.ViewLayout.Reset();
			if (grid.AutoScrolling != ScrollBars.None)
			{
				se.NewValue = num2 + 20;
			}
			else
			{
				se.NewValue = Math.Max(val2: (grid.hScrollPixelDelta <= 0) ? (num2 + grid.GetColWidth(grid.LeftColIndex)) : (num2 + grid.GetColWidth(grid.LeftColIndex) - grid.hScrollPixelDelta), val1: se.NewValue);
			}
			se.NewValue = Math.Min(se.NewValue, grid.HScrollBar.Maximum - grid.HScrollBar.LargeChange);
			break;
		}
		if (flag)
		{
			se.NewValue = ReverseHScrollValueRTL(se.NewValue);
		}
	}

	private void IntelliMouseDragScrollEvent(object sender, IntelliMouseDragScrollEventArgs e)
	{
		int dY = e.DY;
		int dX = e.DX;
		if (!e.Cancel && Math.Abs(dY) <= Math.Abs(dX) && grid.hPixelScroll)
		{
			int value = grid.HScrollBar.Value - ((dX < 0) ? 20 : (-20));
			value = GridUtil.MinMax(value, grid.HScrollBar.Minimum, grid.HScrollBar.Maximum - grid.HScrollBar.LargeChange + 1);
			grid.HScrollBar.Value = ReverseHScrollValueRTL(value);
			e.Scrolled = true;
		}
	}

	protected virtual void OnVScrollBarScroll(object sender, ScrollEventArgs se)
	{
		if (!grid.vPixelScroll)
		{
			return;
		}
		switch (se.Type)
		{
		case ScrollEventType.SmallDecrement:
			if (grid.vScrollPixelDelta > 0)
			{
				se.NewValue = grid.VScrollBar.Value - grid.vScrollPixelDelta;
			}
			else
			{
				int rowIndex = grid.TopRowIndex;
				int num = 0;
				while (num == 0 && GetPrevRowIndex(ref rowIndex))
				{
					num = grid.GetRowHeight(rowIndex);
				}
				se.NewValue = grid.VScrollBar.Value - num;
			}
			se.NewValue = Math.Max(se.NewValue, grid.VScrollBar.Minimum);
			break;
		case ScrollEventType.SmallIncrement:
		{
			grid.ViewLayout.Reset();
			int rowHeight = grid.GetRowHeight(grid.TopRowIndex);
			if (grid.vScrollPixelDelta > 0 && grid.vScrollPixelDelta < rowHeight)
			{
				se.NewValue = grid.VScrollBar.Value + rowHeight - grid.vScrollPixelDelta;
			}
			else
			{
				se.NewValue = grid.VScrollBar.Value + rowHeight;
			}
			se.NewValue = Math.Min(se.NewValue, grid.VScrollBar.Maximum - grid.VScrollBar.LargeChange);
			break;
		}
		}
	}

	protected virtual void OnHScrollBarValueChanged(object sender, EventArgs e)
	{
		if (!inScroll && (grid.HScrollBar.SupportsThumbTrack || !grid.HScrollBar.IsThumbTracking) && grid.Visible)
		{
			inScroll = true;
			grid.CurrentCell.CloseDropDown(PopupCloseType.Deactivated);
			NotifyRenderer(276);
			if (grid.hPixelScroll)
			{
				grid.SetCurrentHScrollPixelPos(ReverseHScrollValueRTL(grid.HScrollBar.Value));
			}
			else
			{
				grid.LeftColIndex = ScrollPositionToColIndex(ReverseHScrollValueRTL(grid.HScrollBar.Value));
			}
			inScroll = false;
		}
	}

	protected virtual void OnVScrollBarValueChanged(object sender, EventArgs e)
	{
		if (!inScroll && (grid.VScrollBar.SupportsThumbTrack || !grid.VScrollBar.IsThumbTracking) && grid.Visible)
		{
			inScroll = true;
			grid.CurrentCell.CloseDropDown(PopupCloseType.Deactivated);
			NotifyRenderer(277);
			if (grid.vPixelScroll)
			{
				grid.SetCurrentVScrollPixelPos(grid.VScrollBar.Value);
			}
			else
			{
				grid.TopRowIndex = ScrollPositionToRowIndex(grid.VScrollBar.Value);
			}
			inScroll = false;
		}
	}

	internal Rectangle GetCurrentCellBoundsCore(GridCellRendererBase pControl, int rowIndex, int colIndex)
	{
		Rectangle cellBoundsCoreInt = pControl.GetCellBoundsCoreInt(rowIndex, colIndex, nonClientIfVisible: true);
		if (ConsiderLocationOnly)
		{
			cellBoundsCoreInt.Width = 0;
			cellBoundsCoreInt.Height = 0;
		}
		return cellBoundsCoreInt;
	}

	public bool DoPixelScroll(GridDirectionType direction, int amount)
	{
		if (m_bInDoScroll)
		{
			return false;
		}
		bool flag = false;
		bool flag2 = false;
		bool flag3 = false;
		Rectangle r = Rectangle.Empty;
		Rectangle empty = Rectangle.Empty;
		Rectangle currentCellBounds = Rectangle.Empty;
		GridCellRendererBase cellRenderer = null;
		Control cellControl = null;
		grid.GetScrollOutOfViewCurrentCellState(out cellRenderer, out cellControl, out currentCellBounds, out var currentCellRowIndex, out var currentCellColIndex, direction);
		m_bInDoScroll = true;
		try
		{
			switch (direction)
			{
			case GridDirectionType.Left:
			{
				int currentHScrollPixelPos = grid.GetCurrentHScrollPixelPos();
				int hScrollPixelMinimum = grid.GetHScrollPixelMinimum();
				currentHScrollPixelPos = Math.Max(hScrollPixelMinimum, currentHScrollPixelPos - amount);
				r = grid.ViewLayout.HscrollAreaBounds;
				empty = r;
				if (amount == 0 || !grid.RaiseHScrollPixelPosChanging(currentHScrollPixelPos))
				{
					break;
				}
				if (grid.IsRightToLeft())
				{
					GridUtil.OffsetLeft(ref r, amount - 1);
				}
				else
				{
					r.Width -= amount - 1;
				}
				bool flag5 = r.Left >= r.Right || r.Width < empty.Width / 4;
				grid.HScrollPixelPosToColIndex(currentHScrollPixelPos, out var colIndex, out var pixelDelta2);
				if (!grid.NotifyLeftColChanging(colIndex))
				{
					break;
				}
				if (cellRenderer != null && cellRenderer.HasFocusControl && !grid.InternalIsFrozenCol(currentCellColIndex) && (!r.Contains(currentCellBounds) || currentCellBounds.IsEmpty))
				{
					cellRenderer.SetHasFocusControl(value: false);
					if (grid.IsActiveControl && cellControl != null && cellControl.ContainsFocus)
					{
						grid.Focus();
						if (!flag5)
						{
							grid.Update();
						}
					}
				}
				m_nLeftCol = colIndex;
				grid.hScrollPixelDelta = pixelDelta2;
				grid.ViewLayout.Reset();
				if (flag5)
				{
					grid.InternalInvalidate(empty);
				}
				else if (grid.IsRightToLeft())
				{
					grid.ScrollWindow(-amount, 0, empty, empty, allowUpdate: true);
				}
				else
				{
					grid.ScrollWindow(amount, 0, empty, empty, allowUpdate: true);
				}
				if (!m_bUpdateScrollbar)
				{
					grid.HScrollBar.Value = ReverseHScrollValueRTL(currentHScrollPixelPos);
				}
				grid.Update();
				flag = true;
				flag3 = true;
				break;
			}
			case GridDirectionType.Right:
			{
				int currentHScrollPixelPos2 = grid.GetCurrentHScrollPixelPos();
				r = grid.ViewLayout.HscrollAreaBounds;
				empty = r;
				int hScrollPixelWidth = grid.GetHScrollPixelWidth();
				currentHScrollPixelPos2 = Math.Min(hScrollPixelWidth, currentHScrollPixelPos2 + amount);
				if (hScrollPixelWidth <= currentHScrollPixelPos2 || !grid.RaiseHScrollPixelPosChanging(currentHScrollPixelPos2))
				{
					break;
				}
				if (grid.IsRightToLeft())
				{
					r.Width -= amount;
				}
				else
				{
					GridUtil.OffsetLeft(ref r, amount);
				}
				bool flag6 = r.Left >= r.Right || r.Width < empty.Width / 4;
				grid.HScrollPixelPosToColIndex(currentHScrollPixelPos2, out var colIndex2, out var pixelDelta3);
				if (!grid.NotifyLeftColChanging(colIndex2))
				{
					break;
				}
				if (cellRenderer != null && cellRenderer.HasFocusControl && !grid.InternalIsFrozenCol(currentCellColIndex) && (!r.Contains(currentCellBounds) || currentCellBounds.IsEmpty))
				{
					cellRenderer.SetHasFocusControl(value: false);
					if (grid.IsActiveControl && cellControl != null && cellControl.ContainsFocus)
					{
						grid.Focus();
						if (!flag6)
						{
							grid.Update();
						}
					}
				}
				m_nLeftCol = colIndex2;
				grid.hScrollPixelDelta = pixelDelta3;
				grid.ViewLayout.Reset();
				if (flag6)
				{
					grid.InternalInvalidate(empty);
				}
				else if (grid.IsRightToLeft())
				{
					grid.ScrollWindow(amount, 0, empty, empty, allowUpdate: true);
				}
				else
				{
					grid.ScrollWindow(-amount, 0, empty, empty, allowUpdate: true);
				}
				if (!m_bUpdateScrollbar)
				{
					grid.HScrollBar.Value = ReverseHScrollValueRTL(currentHScrollPixelPos2);
				}
				grid.Update();
				flag = true;
				flag3 = true;
				break;
			}
			case GridDirectionType.Up:
			{
				int currentVScrollPixelPos2 = grid.GetCurrentVScrollPixelPos();
				int vScrollPixelMinimum = grid.GetVScrollPixelMinimum();
				currentVScrollPixelPos2 = Math.Max(vScrollPixelMinimum, currentVScrollPixelPos2 - amount);
				r = grid.ViewLayout.VscrollAreaBounds;
				empty = r;
				if (amount == 0)
				{
					break;
				}
				if (grid.RaiseVScrollPixelPosChanging(currentVScrollPixelPos2))
				{
					r.Y -= amount - 1;
					bool flag7 = r.Top >= r.Bottom || r.Height < empty.Height / 4;
					grid.VScrollPixelPosToRowIndex(currentVScrollPixelPos2, out var rowIndex2, out var pixelDelta4);
					if (grid.NotifyTopRowChanging(rowIndex2))
					{
						if (cellRenderer != null && cellRenderer.HasFocusControl && !grid.InternalIsFrozenRow(currentCellRowIndex) && (!r.Contains(currentCellBounds) || currentCellBounds.IsEmpty))
						{
							cellRenderer.SetHasFocusControl(value: false);
							if (grid.IsActiveControl && cellControl != null && cellControl.ContainsFocus)
							{
								grid.Focus();
								if (!flag7)
								{
									grid.Update();
								}
							}
							currentCellBounds = Rectangle.Empty;
						}
						m_nTopRow = rowIndex2;
						grid.vScrollPixelDelta = pixelDelta4;
						grid.ViewLayout.Reset();
						if (flag7)
						{
							grid.InternalInvalidate(empty);
						}
						else
						{
							grid.ScrollWindow(0, amount, empty, empty, allowUpdate: true);
						}
						if (!m_bUpdateScrollbar)
						{
							grid.VScrollBar.Value = currentVScrollPixelPos2;
						}
						grid.Update();
						flag = true;
						flag2 = true;
					}
				}
				r = grid.ViewLayout.VscrollAreaBounds;
				break;
			}
			case GridDirectionType.Down:
			{
				int currentVScrollPixelPos = grid.GetCurrentVScrollPixelPos();
				r = grid.ViewLayout.VscrollAreaBounds;
				empty = r;
				int vScrollPixelHeight = grid.GetVScrollPixelHeight();
				currentVScrollPixelPos = Math.Min(vScrollPixelHeight, currentVScrollPixelPos + amount);
				if (vScrollPixelHeight <= currentVScrollPixelPos)
				{
					break;
				}
				if (grid.RaiseVScrollPixelPosChanging(currentVScrollPixelPos))
				{
					r.Y += amount;
					bool flag4 = r.Top >= r.Bottom || r.Height < empty.Height / 4;
					grid.VScrollPixelPosToRowIndex(currentVScrollPixelPos, out var rowIndex, out var pixelDelta);
					if (grid.NotifyTopRowChanging(rowIndex))
					{
						if (cellRenderer != null && cellRenderer.HasFocusControl && !grid.InternalIsFrozenRow(currentCellRowIndex) && (!r.Contains(currentCellBounds) || currentCellBounds.IsEmpty))
						{
							cellRenderer.SetHasFocusControl(value: false);
							if (grid.IsActiveControl && cellControl != null && cellControl.ContainsFocus)
							{
								grid.Focus();
								if (!flag4)
								{
									grid.Update();
								}
							}
							currentCellBounds = Rectangle.Empty;
						}
						m_nTopRow = rowIndex;
						grid.vScrollPixelDelta = pixelDelta;
						grid.ViewLayout.Reset();
						if (flag4)
						{
							grid.InternalInvalidate(empty);
						}
						else
						{
							grid.ScrollWindow(0, -amount, empty, empty, allowUpdate: true);
						}
						if (!m_bUpdateScrollbar)
						{
							grid.VScrollBar.Value = currentVScrollPixelPos;
						}
						grid.Update();
						flag = true;
						flag2 = true;
					}
				}
				r = grid.ViewLayout.VscrollAreaBounds;
				break;
			}
			}
			if (grid.HasControlFocus && cellRenderer != null)
			{
				grid.GetScrollOutOfViewCurrentCellState(out cellRenderer, out cellControl, out currentCellBounds, out currentCellRowIndex, out currentCellColIndex, direction);
				if (cellRenderer != null && cellRenderer.Grid.CurrentCell.IsEditing && !cellRenderer.HasFocusControl && ((flag2 && !grid.InternalIsFrozenRow(currentCellRowIndex)) || (flag3 && !grid.InternalIsFrozenCol(currentCellColIndex))) && r.Contains(currentCellBounds))
				{
					cellRenderer.SetHasFocusControl(value: true);
				}
			}
			grid.Update();
		}
		finally
		{
			m_bInDoScroll = false;
			if (flag2)
			{
				grid.NotifyTopRowChanged(flag);
			}
			else if (flag3)
			{
				grid.NotifyLeftColChanged(flag);
			}
			if (flag2)
			{
				grid.RaiseVScrollPixelPosChanged(flag);
			}
			else
			{
				grid.RaiseHScrollPixelPosChanged(flag);
			}
		}
		return flag;
	}

	internal int ReverseHScrollValueRTL(int value)
	{
		if (grid.IsRightToLeft() && (grid.HScrollBar.InnerScrollBar == null || grid.HScrollBar.InnerScrollBar.RightToLeft != RightToLeft.Yes))
		{
			return grid.HScrollBar.Maximum - grid.HScrollBar.LargeChange + 1 + grid.HScrollBar.Minimum - value;
		}
		return value;
	}

	public bool DoScroll(GridDirectionType direction, int nCell)
	{
		if (m_bInDoScroll)
		{
			return false;
		}
		bool flag = false;
		int num = nCell;
		bool flag2 = false;
		bool flag3 = false;
		int colIndex = grid.LeftColIndex;
		int rowIndex = grid.TopRowIndex;
		Rectangle rectMove = Rectangle.Empty;
		Rectangle rectangle = Rectangle.Empty;
		Rectangle rect = Rectangle.Empty;
		GridCellRendererBase gridCellRendererBase = null;
		Control control = null;
		if (grid.CurrentCell.GetCurrentCell(out var rowIndex2, out var colIndex2))
		{
			gridCellRendererBase = grid.GetCellRenderer(rowIndex2, colIndex2);
			GridCurrentCell nestedCurrentCell = gridCellRendererBase.GetNestedCurrentCell();
			if (nestedCurrentCell == null)
			{
				gridCellRendererBase = null;
			}
			else if (nestedCurrentCell.Renderer != null)
			{
				gridCellRendererBase = nestedCurrentCell.Renderer;
				rect = GetCurrentCellBoundsCore(gridCellRendererBase, rowIndex2, colIndex2);
				control = gridCellRendererBase.Control;
			}
		}
		m_bInDoScroll = true;
		try
		{
			switch (direction)
			{
			case GridDirectionType.Left:
			{
				int num7 = 0;
				int clientCol = grid.GetClientCol(colIndex);
				int num8 = ((!GridControlBase.UseOldHiddenScrollLogic) ? grid.ScrollGrid.ScrollPositionToColIndex(Math.Max(grid.ScrollGrid.ColIndexToScrollPosition(colIndex), clientCol + num) - num) : (Math.Max(colIndex, clientCol + num) - num));
				int firstScrollableCol = grid.GetFirstScrollableCol();
				rectMove = grid.ViewLayout.RectangleRightOfCol(firstScrollableCol, GridCellSizeKind.VisibleSize);
				rectangle = rectMove;
				if (colIndex == num8)
				{
					break;
				}
				while (colIndex > num8)
				{
					if (num7 > grid.GridBounds.Width)
					{
						colIndex = Math.Max(firstScrollableCol, GetPrevColIndex(num8 + 1));
						break;
					}
					if (!GetPrevColIndex(ref colIndex))
					{
						break;
					}
					if (colIndex >= 0)
					{
						num7 += grid.GetColWidth(colIndex);
					}
				}
				colIndex = Math.Max(1, Math.Min(colIndex, num8));
				if (!grid.NotifyLeftColChanging(colIndex))
				{
					break;
				}
				if (grid.IsRightToLeft())
				{
					GridUtil.OffsetLeft(ref rectMove, num7 - 1);
				}
				else
				{
					rectMove.Width -= num7 - 1;
				}
				bool flag6 = rectMove.Left >= rectMove.Right || rectMove.Width < rectangle.Width / 4;
				if (gridCellRendererBase != null && gridCellRendererBase.HasFocusControl && !grid.InternalIsFrozenCol(colIndex2) && !rectMove.Contains(rect))
				{
					gridCellRendererBase.SetHasFocusControl(value: false);
					if (grid.IsActiveControl && control != null && control.ContainsFocus)
					{
						grid.Focus();
						if (!flag6)
						{
							grid.Update();
						}
					}
				}
				m_nLeftCol = colIndex;
				num7 += grid.hScrollPixelDelta;
				grid.hScrollPixelDelta = 0;
				grid.ViewLayout.Reset();
				if (flag6)
				{
					grid.InternalInvalidate(rectangle);
				}
				else if (grid.IsRightToLeft())
				{
					grid.ScrollWindow(-num7, 0, rectangle, rectangle, allowUpdate: true);
				}
				else
				{
					grid.ScrollWindow(num7, 0, rectangle, rectangle, allowUpdate: true);
				}
				if ((hScrollSetting & GridScrollbarMode.Automatic) == GridScrollbarMode.Automatic && grid.LeftColIndex == firstScrollableCol)
				{
					grid.Update();
					UpdateScrollbars();
				}
				if (!m_bUpdateScrollbar)
				{
					if (grid.HScrollPixel)
					{
						grid.HScrollBar.Value = ReverseHScrollValueRTL(grid.GetCurrentHScrollPixelPos());
					}
					else
					{
						grid.HScrollBar.Value = ReverseHScrollValueRTL(ColIndexToScrollPosition(grid.LeftColIndex));
					}
				}
				grid.Update();
				flag = true;
				flag3 = true;
				break;
			}
			case GridDirectionType.Right:
			{
				int num5 = 0;
				int j = 0;
				grid.Model.RaiseQueryMaximumRowCol(0, grid.Model.ColCount);
				int maximumPossibleLeftCol = grid.GetMaximumPossibleLeftCol(out rectMove);
				rectangle = rectMove;
				int num6 = maximumPossibleLeftCol - colIndex;
				num = Math.Min(num6, num);
				bool flag5 = false;
				if (num6 <= 0)
				{
					break;
				}
				num5 = 0;
				for (; j < num; j++)
				{
					if (colIndex >= maximumPossibleLeftCol)
					{
						break;
					}
					if (num5 <= rectMove.Width)
					{
						num5 += grid.GetColWidth(colIndex);
					}
					if (GridControlBase.UseOldHiddenScrollLogic)
					{
						colIndex++;
						continue;
					}
					if (colIndex > visibleColumns.InternalCount && num5 > rectMove.Width)
					{
						colIndex += num - j;
						flag5 = true;
						break;
					}
					if (!GetNextColIndex(ref colIndex))
					{
						break;
					}
				}
				if (!grid.NotifyLeftColChanging(colIndex))
				{
					break;
				}
				if (grid.IsRightToLeft())
				{
					rectMove.Width -= num5;
				}
				else
				{
					GridUtil.OffsetLeft(ref rectMove, num5);
				}
				flag5 |= rectMove.Left >= rectMove.Right || rectMove.Width < rectangle.Width / 4;
				if (gridCellRendererBase != null && gridCellRendererBase.HasFocusControl && !grid.InternalIsFrozenCol(colIndex2) && !rectMove.Contains(rect))
				{
					gridCellRendererBase.SetHasFocusControl(value: false);
					if (grid.IsActiveControl && control != null && control.ContainsFocus)
					{
						grid.Focus();
						if (!flag5)
						{
							grid.Update();
						}
					}
				}
				if (grid.HScrollPixel)
				{
					int currentHScrollPixelPos = grid.GetCurrentHScrollPixelPos();
					int hScrollPixelWidth = grid.GetHScrollPixelWidth();
					if (currentHScrollPixelPos + num5 >= hScrollPixelWidth - grid.ViewLayout.ScrollAreaBounds.Width)
					{
						grid.HScrollPixelPosToColIndex(hScrollPixelWidth - grid.ViewLayout.ScrollAreaBounds.Width, out colIndex, out var pixelDelta2);
						grid.hScrollPixelDelta = pixelDelta2;
						num5 = hScrollPixelWidth - grid.ViewLayout.ScrollAreaBounds.Width - currentHScrollPixelPos;
					}
					else
					{
						num5 -= grid.hScrollPixelDelta;
						grid.hScrollPixelDelta = 0;
					}
				}
				else
				{
					num5 -= grid.hScrollPixelDelta;
					grid.hScrollPixelDelta = 0;
				}
				m_nLeftCol = colIndex;
				grid.ViewLayout.Reset();
				if (flag5)
				{
					grid.InternalInvalidate(rectangle);
				}
				else if (grid.IsRightToLeft())
				{
					grid.ScrollWindow(num5, 0, rectangle, rectangle, allowUpdate: true);
				}
				else
				{
					grid.ScrollWindow(-num5, 0, rectangle, rectangle, allowUpdate: true);
				}
				if (!m_bUpdateScrollbar)
				{
					if (grid.HScrollPixel)
					{
						grid.HScrollBar.Value = ReverseHScrollValueRTL(grid.GetCurrentHScrollPixelPos());
					}
					else
					{
						grid.HScrollBar.Value = ReverseHScrollValueRTL(ColIndexToScrollPosition(grid.LeftColIndex));
					}
				}
				grid.Update();
				flag = true;
				flag3 = true;
				break;
			}
			case GridDirectionType.Up:
			{
				int num9 = 0;
				int clientRow = grid.GetClientRow(rowIndex);
				int num10 = ((!GridControlBase.UseOldHiddenScrollLogic) ? grid.ScrollGrid.ScrollPositionToRowIndex(Math.Max(grid.ScrollGrid.RowIndexToScrollPosition(rowIndex), clientRow + num) - num) : (Math.Max(rowIndex, clientRow + num) - num));
				int firstScrollableRow = grid.GetFirstScrollableRow();
				rectMove = grid.ViewLayout.RectangleBottomOfRow(firstScrollableRow, GridCellSizeKind.VisibleSize);
				rectangle = rectMove;
				if (rowIndex == num10)
				{
					break;
				}
				while (rowIndex > num10)
				{
					if (num9 > grid.GridBounds.Height)
					{
						rowIndex = Math.Max(firstScrollableRow, GetPrevRowIndex(num10 + 1));
						break;
					}
					if (!GetPrevRowIndex(ref rowIndex))
					{
						break;
					}
					if (rowIndex > 0)
					{
						num9 += grid.GetRowHeight(rowIndex);
					}
				}
				rowIndex = Math.Max(1, Math.Min(rowIndex, num10));
				if (!grid.NotifyTopRowChanging(rowIndex))
				{
					break;
				}
				rectMove.Height -= num9 - 1;
				bool flag7 = rectMove.Top >= rectMove.Bottom || rectMove.Height < rectangle.Height / 4;
				if (gridCellRendererBase != null && gridCellRendererBase.HasFocusControl && !grid.InternalIsFrozenRow(rowIndex2) && !rectMove.Contains(rect))
				{
					gridCellRendererBase.SetHasFocusControl(value: false);
					if (grid.IsActiveControl && control != null && control.ContainsFocus)
					{
						grid.Focus();
						if (!flag7)
						{
							grid.Update();
						}
					}
				}
				m_nTopRow = rowIndex;
				num9 += grid.vScrollPixelDelta;
				grid.vScrollPixelDelta = 0;
				grid.ViewLayout.Reset();
				if (flag7)
				{
					grid.InternalInvalidate(rectangle);
				}
				else
				{
					grid.ScrollWindow(0, num9, rectangle, rectangle, allowUpdate: true);
				}
				if ((vScrollSetting & GridScrollbarMode.Automatic) == GridScrollbarMode.Automatic && grid.TopRowIndex == firstScrollableRow)
				{
					grid.Update();
					UpdateScrollbars();
				}
				if (!m_bUpdateScrollbar)
				{
					if (grid.VScrollPixel)
					{
						grid.VScrollBar.Value = grid.GetCurrentVScrollPixelPos();
					}
					else
					{
						grid.VScrollBar.Value = RowIndexToScrollPosition(grid.TopRowIndex);
					}
				}
				grid.Update();
				flag = true;
				flag2 = true;
				break;
			}
			case GridDirectionType.Down:
			{
				int i = 0;
				grid.Model.RaiseQueryMaximumRowCol(grid.Model.RowCount, 0);
				int maximumPossibleTopRow = grid.GetMaximumPossibleTopRow(out rectMove);
				rectangle = rectMove;
				int num2 = maximumPossibleTopRow - rowIndex;
				num = Math.Min(num2, num);
				bool flag4 = false;
				if (num2 <= 0)
				{
					break;
				}
				int num3 = 0;
				for (; i < num; i++)
				{
					if (rowIndex >= maximumPossibleTopRow)
					{
						break;
					}
					if (num3 <= rectMove.Height)
					{
						num3 += grid.GetRowHeight(rowIndex);
					}
					if (GridControlBase.UseOldHiddenScrollLogic)
					{
						rowIndex++;
						continue;
					}
					if (rowIndex > visibleRows.InternalCount && num3 > rectMove.Height)
					{
						rowIndex += num - i;
						flag4 = true;
						break;
					}
					if (!GetNextRowIndex(ref rowIndex))
					{
						break;
					}
				}
				if (!grid.NotifyTopRowChanging(rowIndex))
				{
					break;
				}
				rectMove.Y += num3;
				rectMove.Height -= num3;
				flag4 |= rectMove.Top >= rectMove.Bottom || rectMove.Height < rectangle.Height / 4;
				if (gridCellRendererBase != null && gridCellRendererBase.HasFocusControl && !grid.InternalIsFrozenRow(rowIndex2) && !rectMove.Contains(rect))
				{
					gridCellRendererBase.SetHasFocusControl(value: false);
					if (grid.IsActiveControl && control != null && control.ContainsFocus)
					{
						grid.Focus();
						if (!flag4)
						{
							grid.Update();
						}
					}
				}
				if (grid.VScrollPixel)
				{
					int currentVScrollPixelPos = grid.GetCurrentVScrollPixelPos();
					int vScrollPixelHeight = grid.GetVScrollPixelHeight();
					num3 = Math.Min(num3, grid.VScrollBar.Maximum - currentVScrollPixelPos);
					if (currentVScrollPixelPos + num3 >= vScrollPixelHeight - grid.ViewLayout.ScrollAreaBounds.Height)
					{
						grid.VScrollPixelPosToRowIndex(vScrollPixelHeight - grid.ViewLayout.ScrollAreaBounds.Height, out rowIndex, out var pixelDelta);
						grid.vScrollPixelDelta = pixelDelta;
						num3 = vScrollPixelHeight - grid.ViewLayout.ScrollAreaBounds.Height - currentVScrollPixelPos;
					}
					else
					{
						num3 -= grid.vScrollPixelDelta;
						grid.vScrollPixelDelta = 0;
					}
				}
				else
				{
					num3 -= grid.vScrollPixelDelta;
					grid.vScrollPixelDelta = 0;
				}
				m_nTopRow = rowIndex;
				grid.ViewLayout.Reset();
				if (flag4)
				{
					grid.InternalInvalidate(rectangle);
				}
				else
				{
					grid.ScrollWindow(0, -num3, rectangle, rectangle, allowUpdate: true);
				}
				int num4 = ((!grid.VScrollPixel) ? RowIndexToScrollPosition(grid.TopRowIndex) : grid.GetCurrentVScrollPixelPos());
				if (num4 > grid.VScrollBar.Maximum || num4 < grid.VScrollBar.Minimum)
				{
					grid.UpdateScrollBars();
				}
				else if (!m_bUpdateScrollbar)
				{
					grid.VScrollBar.Value = num4;
				}
				grid.Update();
				flag = true;
				flag2 = true;
				break;
			}
			}
			if (grid.HasControlFocus && grid.CurrentCell.IsEditing && gridCellRendererBase != null && !gridCellRendererBase.HasFocusControl)
			{
				rect = GetCurrentCellBoundsCore(gridCellRendererBase, rowIndex2, colIndex2);
				if (((flag2 && !grid.InternalIsFrozenRow(rowIndex2)) || (flag3 && !grid.InternalIsFrozenCol(colIndex2))) && rectangle.Contains(rect))
				{
					gridCellRendererBase.SetHasFocusControl(value: true);
				}
			}
			grid.Update();
		}
		finally
		{
			m_bInDoScroll = false;
			if (flag2)
			{
				grid.NotifyTopRowChanged(flag);
			}
			else if (flag3)
			{
				grid.NotifyLeftColChanged(flag);
			}
		}
		return flag;
	}

	public void UpdateScrollbars()
	{
		UpdateScrollbars(bRedraw: true, bOnlyIfDimensionChanged: false);
	}

	public void UpdateScrollbars(bool b)
	{
		UpdateScrollbars(b, bOnlyIfDimensionChanged: false);
	}

	public void UpdateScrollbars(bool bRedraw, bool bOnlyIfDimensionChanged)
	{
		if (grid.Parent == null)
		{
			return;
		}
		if (vScrollSetting == GridScrollbarMode.DetectIfShared)
		{
			grid.splitterControl = (IDynamicSplitterFrame)GridUtil.GetParentControl(grid, typeof(IDynamicSplitterFrame));
			if (grid.splitterControl != null)
			{
				hScrollSetting = GridScrollbarMode.Shared | GridScrollbarMode.AutoScroll;
				vScrollSetting = GridScrollbarMode.Shared | GridScrollbarMode.AutoScroll;
			}
			else
			{
				hScrollSetting = GridScrollbarMode.Automatic | GridScrollbarMode.AutoScroll;
				vScrollSetting = GridScrollbarMode.Automatic | GridScrollbarMode.AutoScroll;
			}
		}
		if (!grid.m_bInitDone || m_bUpdateScrollbar)
		{
			return;
		}
		if (grid.VScrollBar.Locked)
		{
			grid.recalcScrollBars = ScrollBars.Both;
		}
		else
		{
			if (vScrollSetting == GridScrollbarMode.Disabled && hScrollSetting == GridScrollbarMode.Disabled)
			{
				return;
			}
			Rectangle rectangle;
			if (grid.ClientRectangle.IsEmpty)
			{
				rectangle = new Rectangle(Point.Empty, new Size(10, 10));
			}
			int num = ((!grid.vPixelScroll) ? ((vScrollSetting != GridScrollbarMode.Disabled) ? GetMaxRowScrollPosition() : 0) : grid.GetVScrollPixelHeight());
			int num2 = ((!grid.hPixelScroll) ? ((hScrollSetting != GridScrollbarMode.Disabled) ? GetMaxColScrollPosition() : 0) : grid.GetHScrollPixelWidth());
			if (bOnlyIfDimensionChanged && num == m_nLastSBRowCount && num2 == m_nLastSBColCount)
			{
				return;
			}
			int num3 = ((!grid.vPixelScroll) ? Math.Max(0, RowIndexToScrollPosition(grid.GetFirstScrollableRow())) : Math.Max(0, grid.RowIndexToVScrollPixelPos(grid.GetFirstScrollableRow())));
			int num4 = ((!grid.hPixelScroll) ? Math.Max(0, ColIndexToScrollPosition(grid.GetFirstScrollableCol())) : Math.Max(0, grid.ColIndexToHScrollPixelPos(grid.GetFirstScrollableCol())));
			int num5 = 0;
			rectangle = grid.GridBounds;
			num5 = num2;
			if (hScrollSetting != GridScrollbarMode.Disabled)
			{
				if (grid.hPixelScroll)
				{
					num5 = grid.GetHScrollPixelWidth() - grid.ViewLayout.ScrollAreaBounds.Width;
				}
				else
				{
					int num6 = 0;
					rectangle = grid.ViewLayout.RectangleRightOfCol(grid.LeftColIndex, GridCellSizeKind.ActualSize);
					rectangle.Intersect(grid.GridBounds);
					for (num6 = grid.GetColWidth(ScrollPositionToColIndex(num5)); num6 <= rectangle.Width; num6 += grid.GetColWidth(ScrollPositionToColIndex(--num5)))
					{
						if (num5 <= num4)
						{
							break;
						}
					}
					if (num6 > rectangle.Width && num5 < num2)
					{
						num5++;
					}
				}
			}
			int num7 = num;
			if (vScrollSetting != GridScrollbarMode.Disabled)
			{
				if (grid.vPixelScroll)
				{
					num7 = grid.GetVScrollPixelHeight() - grid.ViewLayout.ScrollAreaBounds.Height;
				}
				else
				{
					int num8 = 0;
					rectangle = grid.ViewLayout.RectangleBottomOfRow(grid.TopRowIndex, GridCellSizeKind.ActualSize);
					rectangle.Intersect(grid.GridBounds);
					for (num8 = grid.GetRowHeight(ScrollPositionToRowIndex(num7)); num8 <= rectangle.Height; num8 += grid.GetRowHeight(ScrollPositionToRowIndex(--num7)))
					{
						if (num7 <= num3)
						{
							break;
						}
					}
					if (num8 > rectangle.Height && num7 < num)
					{
						num7++;
					}
				}
			}
			m_bUpdateScrollbar = true;
			if (grid.vPixelScroll)
			{
				if ((vScrollSetting & GridScrollbarMode.DisableAutoScroll) != GridScrollbarMode.DisableAutoScroll && grid.GetCurrentVScrollPixelPos() > grid.GetVScrollPixelHeight() - grid.ViewLayout.ScrollAreaBounds.Height)
				{
					grid.SetCurrentVScrollPixelPos(Math.Max(grid.GetVScrollPixelMinimum(), grid.GetVScrollPixelHeight() - grid.ViewLayout.ScrollAreaBounds.Height));
				}
			}
			else if ((vScrollSetting & GridScrollbarMode.DisableAutoScroll) != GridScrollbarMode.DisableAutoScroll && grid.TopRowIndex > ScrollPositionToRowIndex(num3) && ScrollPositionToRowIndex(num7) < grid.TopRowIndex)
			{
				grid.TopRowIndex = ScrollPositionToRowIndex(num7);
				grid.Update();
			}
			else if (num > 0 && grid.TopRowIndex > ScrollPositionToRowIndex(num))
			{
				grid.TopRowIndex = ScrollPositionToRowIndex(num7);
				grid.Update();
			}
			if (grid.hPixelScroll)
			{
				if ((hScrollSetting & GridScrollbarMode.DisableAutoScroll) != GridScrollbarMode.DisableAutoScroll && grid.GetCurrentHScrollPixelPos() > grid.GetHScrollPixelWidth() - grid.ViewLayout.ScrollAreaBounds.Width)
				{
					grid.SetCurrentHScrollPixelPos(Math.Max(grid.GetHScrollPixelMinimum(), grid.GetHScrollPixelWidth() - grid.ViewLayout.ScrollAreaBounds.Width));
				}
			}
			else if ((hScrollSetting & GridScrollbarMode.DisableAutoScroll) != GridScrollbarMode.DisableAutoScroll && grid.LeftColIndex > ScrollPositionToColIndex(num4) && ScrollPositionToColIndex(num5) < grid.LeftColIndex)
			{
				grid.LeftColIndex = ScrollPositionToColIndex(num5);
				grid.Update();
			}
			else if (num2 > 0 && grid.LeftColIndex > ScrollPositionToColIndex(num2))
			{
				grid.LeftColIndex = ScrollPositionToColIndex(num5);
				grid.Update();
			}
			int num9 = ((!grid.vPixelScroll) ? RowIndexToScrollPosition(grid.TopRowIndex) : grid.GetCurrentVScrollPixelPos());
			int num10 = ((!grid.hPixelScroll) ? ColIndexToScrollPosition(grid.LeftColIndex) : grid.GetCurrentHScrollPixelPos());
			bool flag = false;
			bool flag2 = false;
			grid.SuspendLayout();
			switch (vScrollSetting & (GridScrollbarMode.Enabled | GridScrollbarMode.Automatic | GridScrollbarMode.Shared))
			{
			case GridScrollbarMode.Automatic:
				if (grid.ViewLayout.ScrollAreaBounds.Height > 0 && num > 0 && (num9 > num3 || num7 > num3))
				{
					flag2 = !grid.VScroll;
					grid.VScroll = true;
				}
				else
				{
					flag2 = grid.VScroll;
					grid.VScroll = false;
				}
				break;
			case GridScrollbarMode.Enabled:
				flag2 = !grid.VScroll;
				grid.VScroll = true;
				break;
			case GridScrollbarMode.Shared:
				grid.VScroll = false;
				break;
			case GridScrollbarMode.Disabled:
				flag2 = grid.VScroll;
				grid.VScroll = false;
				break;
			}
			switch (hScrollSetting & (GridScrollbarMode.Enabled | GridScrollbarMode.Automatic | GridScrollbarMode.Shared))
			{
			case GridScrollbarMode.Automatic:
				if (grid.ViewLayout.ScrollAreaBounds.Width > 0 && num2 > 0 && (num10 > num4 || num5 > num4))
				{
					flag = !grid.HScroll;
					grid.HScroll = true;
				}
				else
				{
					flag = grid.HScroll;
					grid.HScroll = false;
				}
				break;
			case GridScrollbarMode.Enabled:
				flag = !grid.HScroll;
				grid.HScroll = true;
				break;
			case GridScrollbarMode.Shared:
				grid.HScroll = false;
				break;
			case GridScrollbarMode.Disabled:
				flag = grid.HScroll;
				grid.HScroll = false;
				break;
			}
			grid.ResumeLayout(performLayout: false);
			if (flag || flag2)
			{
				grid.UpdateStyles();
				grid.ViewLayout.Reset();
				grid.PerformLayout();
			}
			if (num > 0)
			{
				bool flag3 = num9 > num3 || num7 > num3;
				if (flag3)
				{
					grid.VScrollBar.Enabled = true;
				}
				grid.VScrollBar.Minimum = num3;
				grid.VScrollBar.Maximum = Math.Max(num, num3);
				grid.VScrollBar.LargeChange = Math.Max(0, num - num7 + 1);
				grid.VScrollBar.Value = Math.Min(Math.Max(num, num3), Math.Max(num9, num3));
				if (!flag3)
				{
					grid.VScrollBar.Enabled = false;
				}
				if (num9 < num3 && !grid.vPixelScroll)
				{
					num9 = num3;
					grid.TopRowIndex = ScrollPositionToRowIndex(num3);
				}
			}
			else
			{
				grid.VScrollBar.Enabled = false;
			}
			if (num2 > 0)
			{
				bool flag4 = num10 > num4 || num5 > num4;
				if (flag4)
				{
					grid.HScrollBar.Enabled = true;
				}
				grid.HScrollBar.Minimum = num4;
				grid.HScrollBar.Maximum = Math.Max(num2, num4);
				grid.HScrollBar.LargeChange = Math.Max(0, num2 - num5 + 1);
				grid.HScrollBar.Value = ReverseHScrollValueRTL(Math.Max(num10, num4));
				grid.HScrollBar.Value = ReverseHScrollValueRTL(Math.Min(Math.Max(num2, num4), Math.Max(num10, num4)));
				if (!flag4)
				{
					grid.HScrollBar.Enabled = false;
				}
				if (num10 < num4 && !grid.hPixelScroll)
				{
					num10 = num4;
					grid.LeftColIndex = ScrollPositionToColIndex(num4);
				}
			}
			else
			{
				grid.HScrollBar.Enabled = false;
			}
			grid.RaiseScrollInfoChanged();
			m_nLastSBRowCount = num;
			m_nLastSBColCount = num2;
			m_bUpdateScrollbar = false;
		}
	}
}
