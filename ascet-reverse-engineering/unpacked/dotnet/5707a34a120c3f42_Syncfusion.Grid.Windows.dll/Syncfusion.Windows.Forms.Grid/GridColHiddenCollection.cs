using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing.Design;
using Syncfusion.Collections;

namespace Syncfusion.Windows.Forms.Grid;

[Editor(typeof(CollectionEditor), typeof(UITypeEditor))]
[ListBindable(false)]
public class GridColHiddenCollection : IDisposable, IList, ICollection, IEnumerable
{
	internal ArrayList _inner = new ArrayList();

	private GridModelHideRowColsIndexer colHideIndexer;

	private bool modified;

	private bool readOnly;

	private IComparer comparer = new GridColHiddenComparer();

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

	public GridColHidden this[int index]
	{
		get
		{
			if (index < 0 || index >= Count)
			{
				throw new ArgumentOutOfRangeException();
			}
			return (GridColHidden)_inner[index];
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

	private GridColHiddenCollection SyncRoot
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
			this[index] = (GridColHidden)value;
		}
	}

	object ICollection.SyncRoot => null;

	private event ListPropertyChangedEventHandler Changing;

	private event ListPropertyChangedEventHandler Changed;

	public override string ToString()
	{
		return $"GridColHiddenCollection: Count {Count}";
	}

	internal GridColHiddenCollection()
	{
	}

	internal GridColHiddenCollection(GridModelHideRowColsIndexer colHideIndexer)
	{
		this.colHideIndexer = colHideIndexer;
		GridRowColHideDictionary gridRowColHideDictionary = (GridRowColHideDictionary)colHideIndexer.Dictionary;
		GridIndexDictionary innerDict = gridRowColHideDictionary.InnerDict;
		foreach (DictionaryEntry item in innerDict.GetHashTable())
		{
			int colIndex = (int)item.Key;
			_ = (bool)item.Value;
			GridColHidden value = new GridColHidden(colIndex)
			{
				collection = this
			};
			_inner.Add(value);
		}
		_inner.Sort(comparer);
	}

	internal void WriteToDict()
	{
		WriteToDict(colHideIndexer);
	}

	internal void WriteToDict(GridModelHideRowColsIndexer colHideIndexer)
	{
		this.colHideIndexer = colHideIndexer;
		GridRowColHideDictionary gridRowColHideDictionary = (GridRowColHideDictionary)colHideIndexer.Dictionary;
		GridIndexDictionary innerDict = gridRowColHideDictionary.InnerDict;
		colHideIndexer.Model.BeginUpdate(BeginUpdateOptions.None);
		innerDict.Clear();
		GridColHiddenCollectionEnumerator gridColHiddenCollectionEnumerator = GetEnumerator();
		try
		{
			while (gridColHiddenCollectionEnumerator.MoveNext())
			{
				GridColHidden current = gridColHiddenCollectionEnumerator.Current;
				innerDict[current.ColIndex] = true;
			}
		}
		finally
		{
			IDisposable disposable = gridColHiddenCollectionEnumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
		colHideIndexer.Model.EndUpdate(update: false);
		if (colHideIndexer.Model.ActiveGridView != null)
		{
			colHideIndexer.Model.ActiveGridView.Invalidate();
		}
	}

	internal void WriteToDict(GridColHidden colHidden)
	{
		GridRowColHideDictionary gridRowColHideDictionary = (GridRowColHideDictionary)colHideIndexer.Dictionary;
		GridIndexDictionary innerDict = gridRowColHideDictionary.InnerDict;
		innerDict[colHidden.ColIndex] = true;
		if (colHideIndexer.Model.ActiveGridView != null)
		{
			colHideIndexer.Model.ActiveGridView.Invalidate();
		}
	}

	internal void WriteToDict(GridColHidden[] colHiddens)
	{
		GridRowColHideDictionary gridRowColHideDictionary = (GridRowColHideDictionary)colHideIndexer.Dictionary;
		GridIndexDictionary innerDict = gridRowColHideDictionary.InnerDict;
		foreach (GridColHidden gridColHidden in colHiddens)
		{
			innerDict[gridColHidden.ColIndex] = true;
		}
		if (colHideIndexer.Model.ActiveGridView != null)
		{
			colHideIndexer.Model.ActiveGridView.Invalidate();
		}
	}

	public void AddRange(GridColHidden[] colHiddens)
	{
		OnChanging(new ListPropertyChangedEventArgs(ListPropertyChangedType.Refresh, 0, null, null));
		modified = true;
		int count = Count;
		if (colHideIndexer != null && colHideIndexer.model.Initializing)
		{
			_inner.Clear();
		}
		_inner.AddRange(colHiddens);
		_inner.Sort(comparer);
		for (int i = 0; i < colHiddens.Length; i++)
		{
			colHiddens[i].collection = this;
			OnChanged(new ListPropertyChangedEventArgs(ListPropertyChangedType.Add, count++, colHiddens[i], null));
		}
		if (colHideIndexer != null)
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
		if (!(obj is GridColHiddenCollection))
		{
			return false;
		}
		return InternalEquals((GridColHiddenCollection)obj);
	}

	public override int GetHashCode()
	{
		return base.GetHashCode();
	}

	private bool InternalEquals(GridColHiddenCollection other)
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

	public bool Contains(GridColHidden value)
	{
		if (value == null)
		{
			return false;
		}
		return _inner.Contains(value);
	}

	public int IndexOf(GridColHidden value)
	{
		if (value == null)
		{
			return -1;
		}
		return _inner.IndexOf(value);
	}

	public void CopyTo(GridColHidden[] array, int index)
	{
		int num = 0;
		GridColHiddenCollectionEnumerator gridColHiddenCollectionEnumerator = GetEnumerator();
		try
		{
			while (gridColHiddenCollectionEnumerator.MoveNext())
			{
				GridColHidden current = gridColHiddenCollectionEnumerator.Current;
				array[index + num] = current;
				num++;
			}
		}
		finally
		{
			IDisposable disposable = gridColHiddenCollectionEnumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
	}

	public GridColHiddenCollectionEnumerator GetEnumerator()
	{
		return new GridColHiddenCollectionEnumerator(this);
	}

	public void Insert(int index, GridColHidden value)
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

	public void Remove(GridColHidden value)
	{
		if (value != null)
		{
			OnChanging(new ListPropertyChangedEventArgs(ListPropertyChangedType.Remove, -1, value, null));
			_inner.Remove(value);
			WriteToDict();
			OnChanged(new ListPropertyChangedEventArgs(ListPropertyChangedType.Remove, -1, value, null));
		}
	}

	public int Add(GridColHidden value)
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
		GridColHidden item = (GridColHidden)_inner[index];
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
		Insert(index, (GridColHidden)value);
	}

	void IList.Remove(object value)
	{
		Remove((GridColHidden)value);
	}

	bool IList.Contains(object value)
	{
		return Contains((GridColHidden)value);
	}

	int IList.IndexOf(object value)
	{
		return IndexOf((GridColHidden)value);
	}

	int IList.Add(object value)
	{
		return Add((GridColHidden)value);
	}

	void ICollection.CopyTo(Array array, int index)
	{
		CopyTo((GridColHidden[])array, index);
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return GetEnumerator();
	}
}
