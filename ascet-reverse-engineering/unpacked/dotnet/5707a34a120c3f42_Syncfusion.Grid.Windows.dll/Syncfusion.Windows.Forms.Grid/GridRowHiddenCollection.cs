using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;
using Syncfusion.Collections;

namespace Syncfusion.Windows.Forms.Grid;

[ListBindable(false)]
[Editor(typeof(CollectionEditor), typeof(UITypeEditor))]
public class GridRowHiddenCollection : IDisposable, IList, ICollection, IEnumerable
{
	internal ArrayList _inner = new ArrayList();

	private GridModelHideRowColsIndexer rowHideIndexer;

	private bool modified;

	private bool readOnly;

	private IComparer comparer = new GridRowHiddenComparer();

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

	public GridRowHidden this[int index]
	{
		get
		{
			if (index < 0 || index >= Count)
			{
				throw new ArgumentOutOfRangeException();
			}
			return (GridRowHidden)_inner[index];
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

	private GridRowHiddenCollection SyncRoot
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
			this[index] = (GridRowHidden)value;
		}
	}

	object ICollection.SyncRoot => null;

	private event ListPropertyChangedEventHandler Changing;

	private event ListPropertyChangedEventHandler Changed;

	public override string ToString()
	{
		return $"GridRowHiddenCollection: Count {Count}";
	}

	internal GridRowHiddenCollection()
	{
	}

	internal GridRowHiddenCollection(GridModelHideRowColsIndexer rowHideIndexer)
	{
		this.rowHideIndexer = rowHideIndexer;
		GridRowColHideDictionary gridRowColHideDictionary = (GridRowColHideDictionary)rowHideIndexer.Dictionary;
		GridIndexDictionary innerDict = gridRowColHideDictionary.InnerDict;
		foreach (DictionaryEntry item in innerDict.GetHashTable())
		{
			int rowIndex = (int)item.Key;
			_ = (bool)item.Value;
			GridRowHidden value = new GridRowHidden(rowIndex)
			{
				collection = this
			};
			_inner.Add(value);
		}
		_inner.Sort(comparer);
	}

	internal void WriteToDict()
	{
		WriteToDict(rowHideIndexer);
	}

	internal void WriteToDict(GridModelHideRowColsIndexer rowHideIndexer)
	{
		this.rowHideIndexer = rowHideIndexer;
		GridRowColHideDictionary gridRowColHideDictionary = (GridRowColHideDictionary)rowHideIndexer.Dictionary;
		GridIndexDictionary innerDict = gridRowColHideDictionary.InnerDict;
		rowHideIndexer.Model.BeginUpdate(BeginUpdateOptions.None);
		innerDict.Clear();
		GridRowHiddenCollectionEnumerator gridRowHiddenCollectionEnumerator = GetEnumerator();
		try
		{
			while (gridRowHiddenCollectionEnumerator.MoveNext())
			{
				GridRowHidden current = gridRowHiddenCollectionEnumerator.Current;
				innerDict[current.RowIndex] = true;
			}
		}
		finally
		{
			IDisposable disposable = gridRowHiddenCollectionEnumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
		rowHideIndexer.Model.EndUpdate(update: false);
		if (rowHideIndexer.Model.ActiveGridView != null)
		{
			rowHideIndexer.Model.ActiveGridView.Invalidate();
		}
	}

	internal void WriteToDict(GridRowHidden rowHidden)
	{
		GridRowColHideDictionary gridRowColHideDictionary = (GridRowColHideDictionary)rowHideIndexer.Dictionary;
		GridIndexDictionary innerDict = gridRowColHideDictionary.InnerDict;
		innerDict[rowHidden.RowIndex] = true;
		if (rowHideIndexer.Model.ActiveGridView != null)
		{
			rowHideIndexer.Model.ActiveGridView.Invalidate();
		}
	}

	internal void WriteToDict(GridRowHidden[] rowHiddens)
	{
		GridRowColHideDictionary gridRowColHideDictionary = (GridRowColHideDictionary)rowHideIndexer.Dictionary;
		GridIndexDictionary innerDict = gridRowColHideDictionary.InnerDict;
		foreach (GridRowHidden gridRowHidden in rowHiddens)
		{
			innerDict[gridRowHidden.RowIndex] = true;
		}
		if (rowHideIndexer.Model.ActiveGridView != null)
		{
			rowHideIndexer.Model.ActiveGridView.Invalidate();
		}
	}

	public void AddRange(GridRowHidden[] rowHiddens)
	{
		OnChanging(new ListPropertyChangedEventArgs(ListPropertyChangedType.Refresh, 0, null, null));
		modified = true;
		int count = Count;
		if (rowHideIndexer != null && rowHideIndexer.model.Initializing)
		{
			_inner.Clear();
		}
		_inner.AddRange(rowHiddens);
		_inner.Sort(comparer);
		for (int i = 0; i < rowHiddens.Length; i++)
		{
			rowHiddens[i].collection = this;
			OnChanged(new ListPropertyChangedEventArgs(ListPropertyChangedType.Add, count++, rowHiddens[i], null));
		}
		if (rowHideIndexer != null)
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
		if (!(obj is GridRowHiddenCollection))
		{
			return false;
		}
		return InternalEquals((GridRowHiddenCollection)obj);
	}

	public override int GetHashCode()
	{
		return base.GetHashCode();
	}

	private bool InternalEquals(GridRowHiddenCollection other)
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

	public bool Contains(GridRowHidden value)
	{
		if (value == null)
		{
			return false;
		}
		return _inner.Contains(value);
	}

	public int IndexOf(GridRowHidden value)
	{
		if (value == null)
		{
			return -1;
		}
		return _inner.IndexOf(value);
	}

	public void CopyTo(GridRowHidden[] array, int index)
	{
		int num = 0;
		GridRowHiddenCollectionEnumerator gridRowHiddenCollectionEnumerator = GetEnumerator();
		try
		{
			while (gridRowHiddenCollectionEnumerator.MoveNext())
			{
				GridRowHidden current = gridRowHiddenCollectionEnumerator.Current;
				array[index + num] = current;
				num++;
			}
		}
		finally
		{
			IDisposable disposable = gridRowHiddenCollectionEnumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
	}

	public GridRowHiddenCollectionEnumerator GetEnumerator()
	{
		return new GridRowHiddenCollectionEnumerator(this);
	}

	public void Insert(int index, GridRowHidden value)
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

	public void Remove(GridRowHidden value)
	{
		if (value != null)
		{
			OnChanging(new ListPropertyChangedEventArgs(ListPropertyChangedType.Remove, -1, value, null));
			_inner.Remove(value);
			WriteToDict();
			OnChanged(new ListPropertyChangedEventArgs(ListPropertyChangedType.Remove, -1, value, null));
		}
	}

	public int Add(GridRowHidden value)
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
		GridRowHidden item = (GridRowHidden)_inner[index];
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
		Insert(index, (GridRowHidden)value);
	}

	void IList.Remove(object value)
	{
		Remove((GridRowHidden)value);
	}

	bool IList.Contains(object value)
	{
		return Contains((GridRowHidden)value);
	}

	int IList.IndexOf(object value)
	{
		return IndexOf((GridRowHidden)value);
	}

	int IList.Add(object value)
	{
		return Add((GridRowHidden)value);
	}

	void ICollection.CopyTo(Array array, int index)
	{
		CopyTo((GridRowHidden[])array, index);
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return GetEnumerator();
	}
}
