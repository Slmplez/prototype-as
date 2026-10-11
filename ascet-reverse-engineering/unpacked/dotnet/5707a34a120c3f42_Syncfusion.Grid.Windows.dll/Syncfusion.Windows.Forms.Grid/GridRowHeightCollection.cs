using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;
using Syncfusion.Collections;

namespace Syncfusion.Windows.Forms.Grid;

[ListBindable(false)]
[Editor(typeof(CollectionEditor), typeof(UITypeEditor))]
public class GridRowHeightCollection : IDisposable, IList, ICollection, IEnumerable
{
	internal ArrayList _inner = new ArrayList();

	private GridModelRowColSizeIndexer rowSizeIndexer;

	private bool modified;

	private bool readOnly;

	private IComparer comparer = new GridRowHeightComparer();

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

	public GridRowHeight this[int index]
	{
		get
		{
			if (index < 0 || index >= Count)
			{
				throw new ArgumentOutOfRangeException();
			}
			return (GridRowHeight)_inner[index];
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

	private GridRowHeightCollection SyncRoot
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
			this[index] = (GridRowHeight)value;
		}
	}

	object ICollection.SyncRoot => null;

	private event ListPropertyChangedEventHandler Changing;

	private event ListPropertyChangedEventHandler Changed;

	public override string ToString()
	{
		return $"GridRowHeightCollection: Count {Count}";
	}

	internal GridRowHeightCollection()
	{
	}

	internal GridRowHeightCollection(GridModelRowColSizeIndexer rowSizeIndexer)
	{
		if (rowSizeIndexer == null)
		{
			return;
		}
		this.rowSizeIndexer = rowSizeIndexer;
		GridRowColSizeDictionary gridRowColSizeDictionary = (GridRowColSizeDictionary)rowSizeIndexer.Dictionary;
		GridIndexDictionary innerDict = gridRowColSizeDictionary.InnerDict;
		foreach (DictionaryEntry item in innerDict.GetHashTable())
		{
			int rowIndex = (int)item.Key;
			int height = (int)item.Value;
			GridRowHeight value = new GridRowHeight(rowIndex, height)
			{
				collection = this
			};
			_inner.Add(value);
		}
		_inner.Sort(comparer);
	}

	internal void WriteToDict()
	{
		WriteToDict(rowSizeIndexer);
	}

	internal void WriteToDict(GridModelRowColSizeIndexer rowSizeIndexer)
	{
		if (rowSizeIndexer == null)
		{
			return;
		}
		this.rowSizeIndexer = rowSizeIndexer;
		GridRowColSizeDictionary gridRowColSizeDictionary = (GridRowColSizeDictionary)rowSizeIndexer.Dictionary;
		GridIndexDictionary innerDict = gridRowColSizeDictionary.InnerDict;
		rowSizeIndexer.Model.BeginUpdate(BeginUpdateOptions.None);
		innerDict.Clear();
		GridRowHeightCollectionEnumerator gridRowHeightCollectionEnumerator = GetEnumerator();
		try
		{
			while (gridRowHeightCollectionEnumerator.MoveNext())
			{
				GridRowHeight current = gridRowHeightCollectionEnumerator.Current;
				innerDict[current.RowIndex] = current.Height;
			}
		}
		finally
		{
			IDisposable disposable = gridRowHeightCollectionEnumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
		rowSizeIndexer.Model.EndUpdate(update: false);
		if (rowSizeIndexer.Model.ActiveGridView != null)
		{
			rowSizeIndexer.Model.ActiveGridView.Invalidate();
		}
		gridRowColSizeDictionary.Modified = true;
	}

	internal void WriteToDict(GridRowHeight rowHeight)
	{
		if (rowSizeIndexer != null)
		{
			GridRowColSizeDictionary gridRowColSizeDictionary = (GridRowColSizeDictionary)rowSizeIndexer.Dictionary;
			GridIndexDictionary innerDict = gridRowColSizeDictionary.InnerDict;
			innerDict[rowHeight.RowIndex] = rowHeight.Height;
			gridRowColSizeDictionary.Modified = true;
			if (rowSizeIndexer.Model.ActiveGridView != null)
			{
				rowSizeIndexer.Model.ActiveGridView.Invalidate();
			}
		}
	}

	internal void WriteToDict(GridRowHeight[] rowHeights)
	{
		if (rowSizeIndexer != null)
		{
			GridRowColSizeDictionary gridRowColSizeDictionary = (GridRowColSizeDictionary)rowSizeIndexer.Dictionary;
			GridIndexDictionary innerDict = gridRowColSizeDictionary.InnerDict;
			foreach (GridRowHeight gridRowHeight in rowHeights)
			{
				innerDict[gridRowHeight.RowIndex] = gridRowHeight.Height;
			}
			gridRowColSizeDictionary.Modified = true;
			if (rowSizeIndexer.Model.ActiveGridView != null)
			{
				rowSizeIndexer.Model.ActiveGridView.Invalidate();
			}
		}
	}

	public void AddRange(GridRowHeight[] rowHeights)
	{
		OnChanging(new ListPropertyChangedEventArgs(ListPropertyChangedType.Refresh, 0, null, null));
		modified = true;
		int count = Count;
		if (rowSizeIndexer != null && rowSizeIndexer.model.Initializing)
		{
			_inner.Clear();
		}
		_inner.AddRange(rowHeights);
		_inner.Sort(comparer);
		for (int i = 0; i < rowHeights.Length; i++)
		{
			rowHeights[i].collection = this;
			OnChanged(new ListPropertyChangedEventArgs(ListPropertyChangedType.Add, count++, rowHeights[i], null));
		}
		if (rowSizeIndexer != null)
		{
			WriteToDict();
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
		if (!(obj is GridRowHeightCollection))
		{
			return false;
		}
		return InternalEquals((GridRowHeightCollection)obj);
	}

	public override int GetHashCode()
	{
		return base.GetHashCode();
	}

	private bool InternalEquals(GridRowHeightCollection other)
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

	public bool Contains(GridRowHeight value)
	{
		if (value == null)
		{
			return false;
		}
		return _inner.Contains(value);
	}

	public int IndexOf(GridRowHeight value)
	{
		if (value == null)
		{
			return -1;
		}
		return _inner.IndexOf(value);
	}

	public void CopyTo(GridRowHeight[] array, int index)
	{
		int num = 0;
		GridRowHeightCollectionEnumerator gridRowHeightCollectionEnumerator = GetEnumerator();
		try
		{
			while (gridRowHeightCollectionEnumerator.MoveNext())
			{
				GridRowHeight current = gridRowHeightCollectionEnumerator.Current;
				array[index + num] = current;
				num++;
			}
		}
		finally
		{
			IDisposable disposable = gridRowHeightCollectionEnumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
	}

	public GridRowHeightCollectionEnumerator GetEnumerator()
	{
		return new GridRowHeightCollectionEnumerator(this);
	}

	public void Insert(int index, GridRowHeight value)
	{
		if (value == null)
		{
			throw new ArgumentNullException();
		}
		OnChanging(new ListPropertyChangedEventArgs(ListPropertyChangedType.Insert, index, value, null));
		_inner.Insert(index, value);
		value.collection = this;
		WriteToDict();
		OnChanged(new ListPropertyChangedEventArgs(ListPropertyChangedType.Insert, index, value, null));
	}

	public void Remove(GridRowHeight value)
	{
		if (value != null)
		{
			OnChanging(new ListPropertyChangedEventArgs(ListPropertyChangedType.Remove, -1, value, null));
			_inner.Remove(value);
			WriteToDict();
			OnChanged(new ListPropertyChangedEventArgs(ListPropertyChangedType.Remove, -1, value, null));
		}
	}

	public int Add(GridRowHeight value)
	{
		if (value == null)
		{
			throw new ArgumentNullException();
		}
		OnChanging(new ListPropertyChangedEventArgs(ListPropertyChangedType.Add, -1, value, null));
		if (value.RowIndex == -1)
		{
			if (Count > 0)
			{
				value.RowIndex = this[Count - 1].RowIndex + 1;
			}
			else
			{
				value.RowIndex = 1;
			}
			value.Height = rowSizeIndexer[value.RowIndex];
		}
		_inner.Add(value);
		value.collection = this;
		WriteToDict(value);
		_inner.Sort(comparer);
		OnChanged(new ListPropertyChangedEventArgs(ListPropertyChangedType.Add, -1, value, null));
		return Count;
	}

	public void RemoveAt(int index)
	{
		GridRowHeight item = (GridRowHeight)_inner[index];
		OnChanging(new ListPropertyChangedEventArgs(ListPropertyChangedType.Remove, index, item, null));
		_inner.RemoveAt(index);
		WriteToDict();
		OnChanged(new ListPropertyChangedEventArgs(ListPropertyChangedType.Remove, index, item, null));
	}

	public void Dispose()
	{
		_inner.Clear();
		GC.SuppressFinalize(this);
	}

	public void Clear()
	{
		if (_inner.Count > 0)
		{
			OnChanging(new ListPropertyChangedEventArgs(ListPropertyChangedType.Refresh, -1, null, null));
			_inner.Clear();
			OnChanged(new ListPropertyChangedEventArgs(ListPropertyChangedType.Refresh, -1, null, null));
		}
		modified = true;
		WriteToDict();
	}

	void IList.Insert(int index, object value)
	{
		Insert(index, (GridRowHeight)value);
	}

	void IList.Remove(object value)
	{
		Remove((GridRowHeight)value);
	}

	bool IList.Contains(object value)
	{
		return Contains((GridRowHeight)value);
	}

	int IList.IndexOf(object value)
	{
		return IndexOf((GridRowHeight)value);
	}

	int IList.Add(object value)
	{
		return Add((GridRowHeight)value);
	}

	void ICollection.CopyTo(Array array, int index)
	{
		CopyTo((GridRowHeight[])array, index);
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return GetEnumerator();
	}
}
