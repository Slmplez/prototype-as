using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;
using Syncfusion.Collections;

namespace Syncfusion.Windows.Forms.Grid;

[Editor(typeof(CollectionEditor), typeof(UITypeEditor))]
[ListBindable(false)]
public class GridColWidthCollection : IDisposable, IList, ICollection, IEnumerable
{
	internal ArrayList _inner = new ArrayList();

	private GridModelRowColSizeIndexer colSizeIndexer;

	private bool modified;

	private bool readOnly;

	private IComparer comparer = new GridColWidthComparer();

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

	public GridColWidth this[int index]
	{
		get
		{
			if (index < 0 || index >= Count)
			{
				throw new ArgumentOutOfRangeException();
			}
			return (GridColWidth)_inner[index];
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

	private GridColWidthCollection SyncRoot
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
			this[index] = (GridColWidth)value;
		}
	}

	object ICollection.SyncRoot => null;

	private event ListPropertyChangedEventHandler Changing;

	private event ListPropertyChangedEventHandler Changed;

	public override string ToString()
	{
		return $"GridColWidthCollection: Count {Count}";
	}

	internal GridColWidthCollection()
	{
	}

	internal GridColWidthCollection(GridModelRowColSizeIndexer colSizeIndexer)
	{
		if (colSizeIndexer == null)
		{
			return;
		}
		this.colSizeIndexer = colSizeIndexer;
		GridRowColSizeDictionary gridRowColSizeDictionary = (GridRowColSizeDictionary)colSizeIndexer.Dictionary;
		GridIndexDictionary innerDict = gridRowColSizeDictionary.InnerDict;
		foreach (DictionaryEntry item in innerDict.GetHashTable())
		{
			int colIndex = (int)item.Key;
			int width = (int)item.Value;
			GridColWidth value = new GridColWidth(colIndex, width)
			{
				collection = this
			};
			_inner.Add(value);
		}
		_inner.Sort(comparer);
	}

	internal void WriteToDict()
	{
		if (colSizeIndexer != null)
		{
			WriteToDict(colSizeIndexer);
		}
	}

	internal void WriteToDict(GridModelRowColSizeIndexer colSizeIndexer)
	{
		if (colSizeIndexer == null)
		{
			return;
		}
		this.colSizeIndexer = colSizeIndexer;
		GridRowColSizeDictionary gridRowColSizeDictionary = (GridRowColSizeDictionary)colSizeIndexer.Dictionary;
		GridIndexDictionary innerDict = gridRowColSizeDictionary.InnerDict;
		colSizeIndexer.Model.BeginUpdate(BeginUpdateOptions.None);
		innerDict.Clear();
		GridColWidthCollectionEnumerator gridColWidthCollectionEnumerator = GetEnumerator();
		try
		{
			while (gridColWidthCollectionEnumerator.MoveNext())
			{
				GridColWidth current = gridColWidthCollectionEnumerator.Current;
				innerDict[current.ColIndex] = current.Width;
			}
		}
		finally
		{
			IDisposable disposable = gridColWidthCollectionEnumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
		colSizeIndexer.Model.EndUpdate(update: false);
		if (colSizeIndexer.Model.ActiveGridView != null)
		{
			colSizeIndexer.Model.ActiveGridView.Invalidate();
		}
		gridRowColSizeDictionary.Modified = true;
	}

	internal void WriteToDict(GridColWidth colWidth)
	{
		if (colSizeIndexer != null)
		{
			GridRowColSizeDictionary gridRowColSizeDictionary = (GridRowColSizeDictionary)colSizeIndexer.Dictionary;
			GridIndexDictionary innerDict = gridRowColSizeDictionary.InnerDict;
			innerDict[colWidth.ColIndex] = colWidth.Width;
			gridRowColSizeDictionary.Modified = true;
			if (colSizeIndexer.Model.ActiveGridView != null)
			{
				colSizeIndexer.Model.ActiveGridView.Invalidate();
			}
		}
	}

	internal void WriteToDict(GridColWidth[] colWidths)
	{
		if (colSizeIndexer != null)
		{
			GridRowColSizeDictionary gridRowColSizeDictionary = (GridRowColSizeDictionary)colSizeIndexer.Dictionary;
			GridIndexDictionary innerDict = gridRowColSizeDictionary.InnerDict;
			foreach (GridColWidth gridColWidth in colWidths)
			{
				innerDict[gridColWidth.ColIndex] = gridColWidth.Width;
			}
			gridRowColSizeDictionary.Modified = true;
			if (colSizeIndexer.Model.ActiveGridView != null)
			{
				colSizeIndexer.Model.ActiveGridView.Invalidate();
			}
		}
	}

	public void AddRange(GridColWidth[] colWidths)
	{
		OnChanging(new ListPropertyChangedEventArgs(ListPropertyChangedType.Refresh, 0, null, null));
		modified = true;
		int count = Count;
		if (colSizeIndexer != null && colSizeIndexer.model.Initializing)
		{
			_inner.Clear();
		}
		_inner.AddRange(colWidths);
		_inner.Sort(comparer);
		for (int i = 0; i < colWidths.Length; i++)
		{
			colWidths[i].collection = this;
			OnChanged(new ListPropertyChangedEventArgs(ListPropertyChangedType.Add, count++, colWidths[i], null));
		}
		if (colSizeIndexer != null)
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
		if (!(obj is GridColWidthCollection))
		{
			return false;
		}
		return InternalEquals((GridColWidthCollection)obj);
	}

	public override int GetHashCode()
	{
		return base.GetHashCode();
	}

	private bool InternalEquals(GridColWidthCollection other)
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

	public bool Contains(GridColWidth value)
	{
		if (value == null)
		{
			return false;
		}
		return _inner.Contains(value);
	}

	public int IndexOf(GridColWidth value)
	{
		if (value == null)
		{
			return -1;
		}
		return _inner.IndexOf(value);
	}

	public void CopyTo(GridColWidth[] array, int index)
	{
		int num = 0;
		GridColWidthCollectionEnumerator gridColWidthCollectionEnumerator = GetEnumerator();
		try
		{
			while (gridColWidthCollectionEnumerator.MoveNext())
			{
				GridColWidth current = gridColWidthCollectionEnumerator.Current;
				array[index + num] = current;
				num++;
			}
		}
		finally
		{
			IDisposable disposable = gridColWidthCollectionEnumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
	}

	public GridColWidthCollectionEnumerator GetEnumerator()
	{
		return new GridColWidthCollectionEnumerator(this);
	}

	public void Insert(int index, GridColWidth value)
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

	public void Remove(GridColWidth value)
	{
		if (value != null)
		{
			OnChanging(new ListPropertyChangedEventArgs(ListPropertyChangedType.Remove, -1, value, null));
			_inner.Remove(value);
			WriteToDict();
			OnChanged(new ListPropertyChangedEventArgs(ListPropertyChangedType.Remove, -1, value, null));
		}
	}

	public int Add(GridColWidth value)
	{
		if (value == null)
		{
			throw new ArgumentNullException();
		}
		OnChanging(new ListPropertyChangedEventArgs(ListPropertyChangedType.Add, -1, value, null));
		if (value.ColIndex == -1)
		{
			if (Count > 0)
			{
				value.ColIndex = this[Count - 1].ColIndex + 1;
			}
			else
			{
				value.ColIndex = 1;
			}
			value.Width = colSizeIndexer[value.ColIndex];
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
		GridColWidth item = (GridColWidth)_inner[index];
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
		Insert(index, (GridColWidth)value);
	}

	void IList.Remove(object value)
	{
		Remove((GridColWidth)value);
	}

	bool IList.Contains(object value)
	{
		return Contains((GridColWidth)value);
	}

	int IList.IndexOf(object value)
	{
		return IndexOf((GridColWidth)value);
	}

	int IList.Add(object value)
	{
		return Add((GridColWidth)value);
	}

	void ICollection.CopyTo(Array array, int index)
	{
		CopyTo((GridColWidth[])array, index);
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return GetEnumerator();
	}
}
