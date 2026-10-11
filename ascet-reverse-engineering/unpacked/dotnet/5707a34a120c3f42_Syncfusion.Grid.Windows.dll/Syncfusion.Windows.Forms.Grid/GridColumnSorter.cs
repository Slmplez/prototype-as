using System;
using System.Collections;
using System.ComponentModel;
using Syncfusion.Collections;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridColumnSorter : IComparer
{
	private int colIndex;

	private ListSortDirection direction;

	private ArrayList array;

	private IComparer styleComparer;

	public GridColumnSorter(int colIndex, ListSortDirection direction, ArrayList array)
	{
		this.colIndex = colIndex;
		this.direction = direction;
		this.array = array;
		styleComparer = null;
	}

	public GridColumnSorter(int colIndex, ListSortDirection direction, ArrayList array, IComparer styleComparer)
	{
		this.colIndex = colIndex;
		this.direction = direction;
		this.array = array;
		this.styleComparer = styleComparer;
	}

	public int Compare(object obj1, object obj2)
	{
		int num = _Compare(obj1, obj2);
		if (num == 0)
		{
			return array.IndexOf(obj1).CompareTo(array.IndexOf(obj2));
		}
		if (direction != ListSortDirection.Ascending)
		{
			return -num;
		}
		return num;
	}

	private int _Compare(object obj1, object obj2)
	{
		SFArrayList sFArrayList = obj1 as SFArrayList;
		SFArrayList sFArrayList2 = obj2 as SFArrayList;
		GridStyleInfoStore gridStyleInfoStore = null;
		GridStyleInfoStore gridStyleInfoStore2 = null;
		if (sFArrayList != null)
		{
			gridStyleInfoStore = sFArrayList[colIndex] as GridStyleInfoStore;
		}
		if (sFArrayList2 != null)
		{
			gridStyleInfoStore2 = sFArrayList2[colIndex] as GridStyleInfoStore;
		}
		if (styleComparer != null)
		{
			return styleComparer.Compare(gridStyleInfoStore, gridStyleInfoStore2);
		}
		return DefaultCompare(gridStyleInfoStore, gridStyleInfoStore2);
	}

	private int DefaultCompare(GridStyleInfoStore style1, GridStyleInfoStore style2)
	{
		object obj = null;
		object obj2 = null;
		if (style1 != null)
		{
			obj = style1.GetValue(GridStyleInfoStore.CellValueProperty);
		}
		if (style2 != null)
		{
			obj2 = style2.GetValue(GridStyleInfoStore.CellValueProperty);
		}
		if (obj == null && obj2 == null)
		{
			return 0;
		}
		if (obj == null)
		{
			return -1;
		}
		if (obj2 == null)
		{
			return 1;
		}
		try
		{
			if (obj is IComparable && obj2 is IComparable)
			{
				return ((IComparable)obj).CompareTo(obj2);
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
		return obj.ToString().CompareTo(obj2.ToString());
	}
}
