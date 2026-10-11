#define TRACE
using System;
using System.Collections;
using System.Diagnostics;
using System.Threading;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms.Grid;

public class GridVolatileData : IGridVolatileData, IGridData, IDisposable
{
	public class RowStylesIndexer
	{
		private GridVolatileData dataParent;

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

		internal RowStylesIndexer(GridVolatileData data)
		{
			dataParent = data;
		}
	}

	public class ColStylesIndexer
	{
		private GridVolatileData dataParent;

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

		internal ColStylesIndexer(GridVolatileData data)
		{
			dataParent = data;
		}
	}

	private Hashtable data;

	private IGridVolatileDataContainer grid;

	private int rowCount;

	private int colCount;

	private bool hasRowCount;

	private bool hasColCount;

	private Thread guiThread;

	private ArrayList resetCellsList = new ArrayList();

	internal int forceGcCollect = int.MaxValue;

	private bool inGetBaseStyles;

	private RowStylesIndexer rowStyles;

	private ColStylesIndexer colStyles;

	public GridBaseStylesMap BaseStylesMap => grid.BaseStylesMap;

	public GridModel Grid => (GridModel)grid;

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

	public GridStyleInfo this[int rowIndex, int colIndex]
	{
		get
		{
			GridCellPos cell = new GridCellPos(rowIndex, colIndex);
			GridStyleInfo gridStyleInfo;
			if (inGetBaseStyles)
			{
				gridStyleInfo = new GridStyleInfo(new GridStyleInfoIdentity(this, rowIndex, colIndex, offLine: true));
				grid.GetCellInfo(rowIndex, colIndex, gridStyleInfo);
			}
			else
			{
				gridStyleInfo = GetItem(cell);
				if (gridStyleInfo == null)
				{
					gridStyleInfo = new GridStyleInfo(new GridStyleInfoIdentity(this, rowIndex, colIndex));
					gridStyleInfo.BeginInit();
					grid.GetCellInfo(rowIndex, colIndex, gridStyleInfo);
					gridStyleInfo.EndInit();
					SetItem(cell, gridStyleInfo);
				}
			}
			return gridStyleInfo;
		}
		set
		{
			grid.ChangeCell(rowIndex, colIndex, value);
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

	public GridVolatileData(GridModel grid)
	{
		this.grid = grid;
		data = new Hashtable();
		guiThread = Thread.CurrentThread;
	}

	internal GridVolatileData(IGridVolatileDataContainer grid)
	{
		this.grid = grid;
		data = new Hashtable();
		guiThread = Thread.CurrentThread;
	}

	public void Dispose()
	{
		grid = null;
		GC.SuppressFinalize(this);
	}

	public GridCellModelBase LookupCellModel(string id)
	{
		return grid.LookupCellModel(id);
	}

	public virtual void Clear()
	{
		data.Clear();
		hasRowCount = false;
		hasColCount = false;
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
		object obj = data[cell];
		if (obj is WeakReference)
		{
			return ((WeakReference)obj).Target as GridStyleInfo;
		}
		return null;
	}

	public void SetItem(GridCellPos cell, GridStyleInfo style)
	{
		try
		{
			if (data.Count >= forceGcCollect)
			{
				GC.Collect();
			}
			ProcessResetCellsList();
			data[cell] = new WeakReference(style);
		}
		catch (InvalidOperationException e)
		{
			TraceUtil.TraceExceptionCatched(e);
			Trace.WriteLine("Detected too many items in volatile date hashtable. Reducing GridVolatileData.forceGcCollect to a value below " + data.Count);
			forceGcCollect = Math.Max(1000, data.Count - 1000);
			GC.Collect();
			data[cell] = new WeakReference(style);
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
				resetCellsList.Add(cell);
				return;
			}
			finally
			{
				Monitor.Exit(this);
			}
		}
		if (data.Contains(cell))
		{
			data.Remove(cell);
		}
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
		ArrayList arrayList = resetCellsList;
		resetCellsList = new ArrayList();
		Monitor.Exit(this);
		for (int i = 0; i < arrayList.Count; i++)
		{
			object key = arrayList[i];
			WeakReference weakReference = (WeakReference)data[key];
			if (weakReference == null || weakReference.Target == null)
			{
				data.Remove(key);
			}
		}
	}

	public GridStyleInfo[] GetBaseStylesMapStyles(string name, out int level)
	{
		GridBaseStylesMap baseStylesMap = BaseStylesMap;
		return baseStylesMap.GetBaseStylesMapStyles(name, out level);
	}

	public GridStyleInfo[] GetBaseStyles(GridStyleInfo thisStyleInfo, int rowIndex, int colIndex)
	{
		int num = 0;
		int headerRowCount = grid.HeaderRowCount;
		int headerColCount = grid.HeaderColCount;
		GridStyleInfo[] array;
		if (colIndex > headerColCount && rowIndex > headerRowCount)
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
			if (rowIndex <= headerRowCount && colIndex <= headerColCount)
			{
				text = "Header";
			}
			else if (rowIndex <= headerRowCount)
			{
				text = "Column Header";
			}
			else if (colIndex <= headerColCount)
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
