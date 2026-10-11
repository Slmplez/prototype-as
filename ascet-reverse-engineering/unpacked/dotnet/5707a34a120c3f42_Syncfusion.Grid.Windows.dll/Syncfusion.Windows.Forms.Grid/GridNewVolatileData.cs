#define TRACE
using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Threading;
using Syncfusion.Diagnostics;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

public class GridNewVolatileData : IGridVolatileData, IGridData, IDisposable, IGridVisibleCellLists
{
	public class RowStylesIndexer
	{
		private GridNewVolatileData dataParent;

		public GridStyleInfo this[int rowIndex]
		{
			get
			{
				return dataParent[rowIndex, -1];
			}
			set
			{
				dataParent[rowIndex, -1] = value;
			}
		}

		internal RowStylesIndexer(GridNewVolatileData data)
		{
			dataParent = data;
		}
	}

	public class ColStylesIndexer
	{
		private GridNewVolatileData dataParent;

		public GridStyleInfo this[int colIndex]
		{
			get
			{
				return dataParent[-1, colIndex];
			}
			set
			{
				dataParent[-1, colIndex] = value;
			}
		}

		internal ColStylesIndexer(GridNewVolatileData data)
		{
			dataParent = data;
		}
	}

	private GridModel grid;

	private GridRowsCache data = new GridRowsCache();

	private int count;

	private Thread guiThread;

	private Dictionary<GridCellPos, bool> resetCellsList;

	private Dictionary<GridCellPos, GridStyleInfo> queryCellStyleTable;

	internal Dictionary<object, IDictionary> visibleRowIndexes = new Dictionary<object, IDictionary>();

	internal Dictionary<object, IDictionary> visibleColumnIndexes = new Dictionary<object, IDictionary>();

	private int rowCount;

	private int colCount;

	private bool hasRowCount;

	private bool hasColCount;

	internal int forceGcCollect = int.MaxValue;

	private RowStylesIndexer rowStyles;

	private ColStylesIndexer colStyles;

	public GridBaseStylesMap BaseStylesMap => grid.BaseStylesMap;

	public GridModel Grid => grid;

	public int RowCount
	{
		get
		{
			return rowCount;
		}
		set
		{
			rowCount = value;
			hasRowCount = true;
		}
	}

	public bool HasRowCount => hasRowCount;

	public int ColCount
	{
		get
		{
			return colCount;
		}
		set
		{
			colCount = value;
			hasColCount = true;
		}
	}

	public bool HasColCount => hasColCount;

	public GridStyleInfo this[int rowIndex, int columnIndex]
	{
		get
		{
			return this[new GridCellPos(rowIndex, columnIndex)];
		}
		set
		{
			this[new GridCellPos(rowIndex, columnIndex)] = value;
		}
	}

	public GridStyleInfo this[GridCellPos cell]
	{
		get
		{
			if (queryCellStyleTable.ContainsKey(cell))
			{
				return queryCellStyleTable[cell];
			}
			GridStyleInfo gridStyleInfo = GetItem(cell);
			if (gridStyleInfo == null)
			{
				gridStyleInfo = CreateStyle(cell);
				queryCellStyleTable.Add(cell, gridStyleInfo);
				gridStyleInfo.BeginInit();
				grid.GetCellInfo(cell.RowNumber, cell.ColumnNumber, gridStyleInfo);
				gridStyleInfo.EndInit();
				queryCellStyleTable.Remove(cell);
				SetItem(cell, gridStyleInfo);
			}
			return gridStyleInfo;
		}
		set
		{
			grid.ChangeCells(GridRangeInfo.Cell(cell.RowNumber, cell.ColumnNumber), value, StyleModifyType.Changes);
			value?.Store.ResetChangedBits();
		}
	}

	public RowStylesIndexer RowStyles
	{
		get
		{
			if (rowStyles == null)
			{
				rowStyles = new RowStylesIndexer(this);
			}
			return rowStyles;
		}
	}

	public ColStylesIndexer ColStyles
	{
		get
		{
			if (colStyles == null)
			{
				colStyles = new ColStylesIndexer(this);
			}
			return colStyles;
		}
	}

	public GridStyleInfo TableStyle
	{
		get
		{
			return this[-1, -1];
		}
		set
		{
			this[-1, -1] = value;
		}
	}

	public void SetVisibleRowsList(object view, IDictionary list)
	{
		visibleRowIndexes[view] = list;
	}

	public void SetVisibleColumnsList(object view, IDictionary list)
	{
		visibleColumnIndexes[view] = list;
	}

	public GridNewVolatileData(GridModel grid)
	{
		resetCellsList = new Dictionary<GridCellPos, bool>();
		guiThread = Thread.CurrentThread;
		queryCellStyleTable = new Dictionary<GridCellPos, GridStyleInfo>();
		this.grid = grid;
	}

	public void Dispose()
	{
	}

	public GridCellModelBase LookupCellModel(string id)
	{
		return grid.CellModels[id];
	}

	public void ResetRowCount()
	{
		hasRowCount = false;
	}

	public void ResetColCount()
	{
		hasColCount = false;
	}

	public GridStyleInfo GetItem(GridCellPos cell)
	{
		if (data.TryGetValue(cell.RowNumber, out var value) && value.Cells.TryGetValue(cell.ColumnNumber, out var value2))
		{
			return (GridStyleInfo)value2.Target;
		}
		return null;
	}

	public void SetItem(GridCellPos cell, GridStyleInfo style)
	{
		try
		{
			if (count >= forceGcCollect)
			{
				GC.Collect();
			}
			ProcessResetCellsList();
			if (!data.TryGetValue(cell.RowNumber, out var value))
			{
				value = new GridCellsInRowCache();
				data.Add(cell.RowNumber, value);
			}
			if (!value.Cells.TryGetValue(cell.ColumnNumber, out var value2))
			{
				value2 = new WeakReference(style);
				value.Cells.Add(cell.ColumnNumber, value2);
				count++;
			}
			else
			{
				value2.Target = style;
			}
		}
		catch (InvalidOperationException e)
		{
			TraceUtil.TraceExceptionCatched(e);
			Trace.WriteLine("Detected too many items in volatile date hashtable. Reducing VolatileData.forceGcCollect to a value below " + data.Count);
			forceGcCollect = Math.Max(1000, count - 1000);
			GC.Collect();
			SetItem(cell, style);
		}
	}

	public void ResetItem(GridCellPos cell)
	{
		if (Thread.CurrentThread != guiThread)
		{
			bool lockTaken = false;
			Monitor.Enter(this, ref lockTaken);
			try
			{
				resetCellsList[cell] = true;
				return;
			}
			finally
			{
				Monitor.Exit(this);
			}
		}
		ResetItemHelper(cell);
	}

	private bool ResetItemHelper(GridCellPos cell)
	{
		if (data.TryGetValue(cell.RowNumber, out var value))
		{
			if (value.Cells.TryGetValue(cell.ColumnNumber, out var value2))
			{
				value2.Target = null;
				if (!IsVisibleCell(cell))
				{
					count--;
					if (value.Cells.Count > 1)
					{
						value.Cells.Remove(cell.ColumnNumber);
					}
					else
					{
						data.Remove(cell.RowNumber);
					}
				}
			}
			return true;
		}
		return false;
	}

	private bool IsVisibleCell(GridCellPos cell)
	{
		foreach (KeyValuePair<object, IDictionary> visibleRowIndex in visibleRowIndexes)
		{
			if (visibleRowIndex.Value.Contains(cell.RowNumber) && visibleColumnIndexes[visibleRowIndex.Key].Contains(cell.ColumnNumber))
			{
				return true;
			}
		}
		return false;
	}

	public void Clear(GridCellPos cell)
	{
		ResetItem(cell);
	}

	public void Clear()
	{
		data.Clear();
		resetCellsList = new Dictionary<GridCellPos, bool>();
		hasRowCount = false;
		hasColCount = false;
	}

	private void ProcessResetCellsList()
	{
		if (resetCellsList.Count < 10)
		{
			return;
		}
		bool lockTaken = false;
		Monitor.TryEnter(this, ref lockTaken);
		if (!lockTaken)
		{
			return;
		}
		Dictionary<GridCellPos, bool> dictionary = resetCellsList;
		resetCellsList = new Dictionary<GridCellPos, bool>();
		Monitor.Exit(this);
		foreach (GridCellPos key in dictionary.Keys)
		{
			ResetItemHelper(key);
		}
	}

	private GridStyleInfo CreateStyle(GridCellPos cell)
	{
		return new GridStyleInfo(new GridStyleInfoIdentity(this, cell));
	}

	public GridStyleInfo[] GetBaseStylesMapStyles(string name, out int level)
	{
		GridBaseStylesMap baseStylesMap = BaseStylesMap;
		return baseStylesMap.GetBaseStylesMapStyles(name, out level);
	}

	public GridStyleInfo[] GetBaseStyles(GridStyleInfo thisStyleInfo, int rowIndex, int colIndex)
	{
		int num = 0;
		int headerCount = grid.Rows.HeaderCount;
		int headerCount2 = grid.Cols.HeaderCount;
		GridStyleInfo[] array;
		if (colIndex > headerCount2 && rowIndex > headerCount)
		{
			array = ((rowIndex == 0) ? new GridStyleInfo[2]
			{
				RowStyles[rowIndex],
				TableStyle
			} : ((colIndex != 0) ? new GridStyleInfo[3]
			{
				RowStyles[rowIndex],
				ColStyles[colIndex],
				TableStyle
			} : new GridStyleInfo[2]
			{
				ColStyles[colIndex],
				TableStyle
			}));
			num = array.Length;
		}
		else if ((colIndex >= 0 && rowIndex < 0) || (rowIndex >= 0 && colIndex < 0))
		{
			array = new GridStyleInfo[1] { TableStyle };
			num = array.Length;
		}
		else
		{
			array = null;
		}
		GridStyleInfo gridStyleInfo = thisStyleInfo;
		if (thisStyleInfo == null)
		{
			gridStyleInfo = this[rowIndex, colIndex];
		}
		string text = (gridStyleInfo.HasBaseStyle ? gridStyleInfo.BaseStyle : string.Empty);
		if (text.Length == 0 && array != null)
		{
			GridStyleInfo[] array2 = array;
			foreach (GridStyleInfo gridStyleInfo2 in array2)
			{
				if (gridStyleInfo2.HasBaseStyle)
				{
					text = gridStyleInfo2.BaseStyle;
					if (text.Length > 0)
					{
						break;
					}
				}
			}
		}
		if (text.Length == 0 && rowIndex >= 0 && colIndex >= 0)
		{
			if (rowIndex <= headerCount && colIndex <= headerCount2)
			{
				text = "Header";
			}
			else if (rowIndex <= headerCount)
			{
				text = "Column Header";
			}
			else if (colIndex <= headerCount2)
			{
				text = "Row Header";
			}
		}
		int level;
		GridStyleInfo[] baseStylesMapStyles = GetBaseStylesMapStyles(text, out level);
		GridStyleInfo[] array3 = new GridStyleInfo[num + level];
		if (array != null)
		{
			Array.Copy(array, 0, array3, 0, num);
		}
		if (baseStylesMapStyles != null)
		{
			Array.Copy(baseStylesMapStyles, 0, array3, num, level);
		}
		return array3;
	}
}
