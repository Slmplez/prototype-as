using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;
using Syncfusion.Collections;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[ListBindable(false)]
[Editor(typeof(GridRangeStyleCollectionEditor), typeof(UITypeEditor))]
public class GridRangeStyleCollection : IDisposable, IList, ICollection, IEnumerable
{
	internal ArrayList _inner = new ArrayList();

	private SFTable data;

	private bool modified;

	private bool readOnly;

	internal GridControlBase control;

	private static bool allowCombineCells = true;

	public static bool AllowCombineCells
	{
		get
		{
			return allowCombineCells;
		}
		set
		{
			allowCombineCells = value;
		}
	}

	private bool IsModified
	{
		get
		{
			return modified;
		}
		set
		{
			if (modified != value)
			{
				modified = value;
			}
		}
	}

	public GridRangeStyle this[int index]
	{
		get
		{
			if (index < 0 || index >= Count)
			{
				throw new ArgumentOutOfRangeException();
			}
			return (GridRangeStyle)_inner[index];
		}
		set
		{
			if (value == null)
			{
				throw new ArgumentNullException();
			}
			if (_inner[index] != value)
			{
				OnChanging(new ListPropertyChangedEventArgs(ListPropertyChangedType.ItemChanged, index, value, null));
				_inner[index] = value;
				OnChanged(new ListPropertyChangedEventArgs(ListPropertyChangedType.ItemChanged, index, value, null));
			}
		}
	}

	private GridRangeStyleCollection SyncRoot
	{
		get
		{
			throw new NotSupportedException();
		}
	}

	public bool IsReadOnly => readOnly;

	public bool IsFixedSize => readOnly;

	public bool IsSynchronized => false;

	public int Count => _inner.Count;

	object IList.this[int index]
	{
		get
		{
			return this[index];
		}
		set
		{
			this[index] = (GridRangeStyle)value;
		}
	}

	object ICollection.SyncRoot => null;

	[DocumentationExclude]
	private event ListPropertyChangedEventHandler Changing;

	[DocumentationExclude]
	private event ListPropertyChangedEventHandler Changed;

	public override string ToString()
	{
		return $"GridRangeStyleCollection: Count {Count}";
	}

	internal GridRangeStyleCollection()
	{
	}

	internal GridRangeStyleCollection(SFTable data)
	{
		if (data == null)
		{
			return;
		}
		GridCoveredCellPool gridCoveredCellPool = new GridCoveredCellPool();
		int count = data.Rows.Count;
		for (int i = 0; i < count; i++)
		{
			ArrayList arrayList = (ArrayList)data.Rows[i];
			if (arrayList == null)
			{
				continue;
			}
			for (int j = 0; j < arrayList.Count; j++)
			{
				if (arrayList[j] == null || gridCoveredCellPool.GetSpanCellsRowCol(i, j, out var _))
				{
					continue;
				}
				GridStyleInfoStore gridStyleInfoStore = (GridStyleInfoStore)arrayList[j];
				if (gridStyleInfoStore.IsEmpty)
				{
					continue;
				}
				int num = j;
				int num2 = j + 1;
				while (AllowCombineCells && num2 < arrayList.Count)
				{
					GridStyleInfoStore gridStyleInfoStore2 = (GridStyleInfoStore)arrayList[num2];
					if (gridStyleInfoStore2 == null || !gridStyleInfoStore.Equals(gridStyleInfoStore2))
					{
						break;
					}
					num = num2;
					num2++;
				}
				int num3 = i;
				int num4 = i + 1;
				while (AllowCombineCells && num4 < count)
				{
					int k = -1;
					ArrayList arrayList2 = (ArrayList)data.Rows[num4];
					if (arrayList2 != null)
					{
						for (k = j; k <= num; k++)
						{
							GridStyleInfoStore gridStyleInfoStore3 = (GridStyleInfoStore)arrayList2[k];
							if (gridStyleInfoStore3 == null || !gridStyleInfoStore.Equals(gridStyleInfoStore3))
							{
								k = -1;
								break;
							}
						}
					}
					if (k == -1)
					{
						break;
					}
					num3 = num4;
					num4++;
				}
				if (num3 > i)
				{
					gridCoveredCellPool.StoreSpanCells(GridRangeInfo.Cells(i, j, num3, num));
				}
				GridRangeStyle gridRangeStyle = new GridRangeStyle(i - 1, j - 1, num3 - 1, num - 1, (GridStyleInfoStore)arrayList[j]);
				j = num;
				gridRangeStyle.collection = this;
				_inner.Add(gridRangeStyle);
			}
		}
		gridCoveredCellPool.Clear();
		this.data = data;
	}

	private bool GetRowColFromRange(GridRangeInfo range, out int rowIndex, out int colIndex, out int rowIndex2, out int colIndex2)
	{
		switch (range.RangeType)
		{
		default:
			rowIndex = -1;
			colIndex = -1;
			rowIndex2 = -1;
			colIndex2 = -1;
			break;
		case GridRangeInfoType.Rows:
			rowIndex = range.Top;
			colIndex = -1;
			rowIndex2 = range.Bottom;
			colIndex2 = -1;
			break;
		case GridRangeInfoType.Cols:
			rowIndex = -1;
			colIndex = range.Left;
			rowIndex2 = -1;
			colIndex2 = range.Right;
			break;
		case GridRangeInfoType.Cells:
			rowIndex = range.Top;
			colIndex = range.Left;
			rowIndex2 = range.Bottom;
			colIndex2 = range.Right;
			break;
		}
		return !range.IsEmpty;
	}

	internal void WriteToData()
	{
		WriteToData(data);
	}

	internal void WriteToData(SFTable data)
	{
		if (data == null)
		{
			return;
		}
		data.Rows.Clear();
		GridRangeStyleCollectionEnumerator gridRangeStyleCollectionEnumerator = GetEnumerator();
		try
		{
			while (gridRangeStyleCollectionEnumerator.MoveNext())
			{
				GridRangeStyle current = gridRangeStyleCollectionEnumerator.Current;
				WriteToData(current, invalidate: false);
			}
		}
		finally
		{
			IDisposable disposable = gridRangeStyleCollectionEnumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
		this.data = data;
		if (control != null)
		{
			control.Model.ResetVolatileData();
			control.Invalidate();
		}
	}

	internal void WriteToData(GridRangeStyle[] cellStyles, bool invalidate)
	{
		foreach (GridRangeStyle cellStyle in cellStyles)
		{
			WriteToData(cellStyle, invalidate: false);
		}
		if (control != null && invalidate)
		{
			control.Model.ResetVolatileData();
			control.Invalidate();
		}
	}

	internal void WriteToData(GridRangeStyle cellStyle, bool invalidate)
	{
		if (data == null)
		{
			return;
		}
		if (GetRowColFromRange(cellStyle.Range, out var rowIndex, out var colIndex, out var rowIndex2, out var colIndex2))
		{
			for (int i = rowIndex; i <= rowIndex2; i++)
			{
				for (int j = colIndex; j <= colIndex2; j++)
				{
					data.RowCount = Math.Max(i + 2, data.RowCount);
					data.ColCount = Math.Max(j + 2, data.ColCount);
					data[i + 1, j + 1] = (GridStyleInfoStore)cellStyle.StyleInfo.Store.Clone();
				}
			}
		}
		if (control != null && invalidate)
		{
			control.Model.ResetVolatileData();
			control.Invalidate();
		}
	}

	public void AddRange(GridRangeStyle[] cellStyles)
	{
		OnChanging(new ListPropertyChangedEventArgs(ListPropertyChangedType.Refresh, 0, null, null));
		modified = true;
		int count = Count;
		_inner.AddRange(cellStyles);
		WriteToData(cellStyles, invalidate: true);
		for (int i = 0; i < cellStyles.Length; i++)
		{
			cellStyles[i].collection = this;
			OnChanged(new ListPropertyChangedEventArgs(ListPropertyChangedType.Add, count++, cellStyles[i], null));
		}
		if (control is GridControl gridControl && !gridControl.ShouldSerializeSerializeCellsBehavior())
		{
			gridControl.SerializeCellsBehavior = GridSerializeCellsBehavior.SerializeAsRangeStylesIntoCode;
		}
	}

	private void OnChanging(ListPropertyChangedEventArgs e)
	{
		if (this.Changing != null)
		{
			this.Changing(this, e);
		}
	}

	private void OnChanged(ListPropertyChangedEventArgs e)
	{
		modified = true;
		if (this.Changed != null)
		{
			this.Changed(this, e);
		}
	}

	public override bool Equals(object obj)
	{
		if (this == null && obj == null)
		{
			return true;
		}
		if (this == null)
		{
			return false;
		}
		if (!(obj is GridRangeStyleCollection))
		{
			return false;
		}
		return InternalEquals((GridRangeStyleCollection)obj);
	}

	public override int GetHashCode()
	{
		return base.GetHashCode();
	}

	private bool InternalEquals(GridRangeStyleCollection other)
	{
		int count = Count;
		if (other.Count != count)
		{
			return false;
		}
		for (int i = 0; i < count; i++)
		{
			if (!this[i].Equals(other[i]))
			{
				return false;
			}
		}
		return true;
	}

	public bool Contains(GridRangeStyle value)
	{
		if (value == null)
		{
			return false;
		}
		return _inner.Contains(value);
	}

	public int IndexOf(GridRangeStyle value)
	{
		if (value == null)
		{
			return -1;
		}
		return _inner.IndexOf(value);
	}

	public void CopyTo(GridRangeStyle[] array, int index)
	{
		int num = 0;
		GridRangeStyleCollectionEnumerator gridRangeStyleCollectionEnumerator = GetEnumerator();
		try
		{
			while (gridRangeStyleCollectionEnumerator.MoveNext())
			{
				GridRangeStyle current = gridRangeStyleCollectionEnumerator.Current;
				array[index + num] = current;
				num++;
			}
		}
		finally
		{
			IDisposable disposable = gridRangeStyleCollectionEnumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
	}

	public GridRangeStyleCollectionEnumerator GetEnumerator()
	{
		return new GridRangeStyleCollectionEnumerator(this);
	}

	public void Insert(int index, GridRangeStyle value)
	{
		if (value == null)
		{
			throw new ArgumentNullException();
		}
		OnChanging(new ListPropertyChangedEventArgs(ListPropertyChangedType.Insert, index, value, null));
		_inner.Insert(index, value);
		value.collection = this;
		WriteToData(value, invalidate: true);
		OnChanged(new ListPropertyChangedEventArgs(ListPropertyChangedType.Insert, index, value, null));
	}

	public void Remove(GridRangeStyle value)
	{
		if (value != null)
		{
			OnChanging(new ListPropertyChangedEventArgs(ListPropertyChangedType.Remove, -1, value, null));
			_inner.Remove(value);
			WriteToData();
			OnChanged(new ListPropertyChangedEventArgs(ListPropertyChangedType.Remove, -1, value, null));
		}
	}

	public int Add(GridRangeStyle value)
	{
		if (value == null)
		{
			throw new ArgumentNullException();
		}
		OnChanging(new ListPropertyChangedEventArgs(ListPropertyChangedType.Add, -1, value, null));
		int num = _inner.Add(value);
		value.collection = this;
		WriteToData(value, invalidate: true);
		OnChanged(new ListPropertyChangedEventArgs(ListPropertyChangedType.Add, num, value, null));
		return num;
	}

	public void RemoveAt(int index)
	{
		GridRangeStyle item = (GridRangeStyle)_inner[index];
		OnChanging(new ListPropertyChangedEventArgs(ListPropertyChangedType.Remove, index, item, null));
		_inner.RemoveAt(index);
		WriteToData();
		OnChanged(new ListPropertyChangedEventArgs(ListPropertyChangedType.Remove, index, item, null));
	}

	public void Dispose()
	{
		foreach (GridRangeStyle item in _inner)
		{
			item.Dispose();
		}
		_inner.Clear();
		GC.SuppressFinalize(this);
	}

	public void Clear()
	{
		if (_inner.Count > 0)
		{
			OnChanging(new ListPropertyChangedEventArgs(ListPropertyChangedType.Refresh, -1, null, null));
			_inner.Clear();
			WriteToData();
			OnChanged(new ListPropertyChangedEventArgs(ListPropertyChangedType.Refresh, -1, null, null));
		}
		modified = true;
	}

	void IList.Insert(int index, object value)
	{
		Insert(index, (GridRangeStyle)value);
	}

	void IList.Remove(object value)
	{
		Remove((GridRangeStyle)value);
	}

	bool IList.Contains(object value)
	{
		return Contains((GridRangeStyle)value);
	}

	int IList.IndexOf(object value)
	{
		return IndexOf((GridRangeStyle)value);
	}

	int IList.Add(object value)
	{
		return Add((GridRangeStyle)value);
	}

	void ICollection.CopyTo(Array array, int index)
	{
		CopyTo((GridRangeStyle[])array, index);
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return GetEnumerator();
	}
}
