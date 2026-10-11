using System;
using System.Collections;

namespace Syncfusion.Collections.BinaryTree;

public class TreeTableEntrySourceCollection : IList, ICollection, IEnumerable
{
	internal ITreeTable _inner;

	public bool IsInitializing => _inner.IsInitializing;

	public ITreeTableEntrySource this[int index]
	{
		get
		{
			ITreeTableEntry treeTableEntry = (ITreeTableEntry)_inner[index];
			if (treeTableEntry == null)
			{
				return null;
			}
			return treeTableEntry.Value as ITreeTableEntrySource;
		}
		set
		{
			TreeTableEntry treeTableEntry = new TreeTableEntry();
			treeTableEntry.Value = value;
			value.Entry = treeTableEntry;
			_inner[index] = treeTableEntry;
		}
	}

	public bool IsReadOnly => false;

	object IList.this[int index]
	{
		get
		{
			return this[index];
		}
		set
		{
			throw new InvalidOperationException("Collection is Read-only.");
		}
	}

	public bool IsFixedSize => false;

	public bool IsSynchronized => false;

	public int Count => _inner.Count;

	object ICollection.SyncRoot => null;

	public TreeTableEntrySourceCollection()
	{
		_inner = new TreeTable(sorted: false);
	}

	public TreeTableEntrySourceCollection(bool sorted)
	{
		_inner = new TreeTable(sorted);
	}

	public TreeTableEntrySourceCollection(ITreeTable inner)
	{
		_inner = inner;
	}

	public void BeginInit()
	{
		_inner.BeginInit();
	}

	public void EndInit()
	{
		_inner.EndInit();
	}

	public bool Contains(ITreeTableEntrySource value)
	{
		if (value == null)
		{
			return false;
		}
		return _inner.Contains(value.Entry);
	}

	public int IndexOf(ITreeTableEntrySource value)
	{
		return _inner.IndexOf(value.Entry);
	}

	public void CopyTo(ITreeTableEntrySource[] array, int index)
	{
		int count = _inner.Count;
		for (int i = 0; i < count; i++)
		{
			array[index + i] = this[i];
		}
	}

	public TreeTableEntrySourceCollectionEnumerator GetEnumerator()
	{
		return new TreeTableEntrySourceCollectionEnumerator(this);
	}

	public void Insert(int index, ITreeTableEntrySource value)
	{
		TreeTableEntry treeTableEntry = new TreeTableEntry();
		treeTableEntry.Value = value;
		value.Entry = treeTableEntry;
		_inner.Insert(index, treeTableEntry);
	}

	public int Add(ITreeTableEntrySource value)
	{
		TreeTableEntry treeTableEntry = new TreeTableEntry();
		treeTableEntry.Value = value;
		value.Entry = treeTableEntry;
		return _inner.Add(treeTableEntry);
	}

	public void Remove(ITreeTableEntrySource value)
	{
		_inner.Remove(value.Entry);
	}

	public void RemoveAt(int index)
	{
		_inner.RemoveAt(index);
	}

	void IList.Insert(int index, object value)
	{
		Insert(index, (ITreeTableEntrySource)value);
	}

	void IList.Remove(object value)
	{
		Remove((ITreeTableEntrySource)value);
	}

	bool IList.Contains(object value)
	{
		return Contains((ITreeTableEntrySource)value);
	}

	public void Clear()
	{
		_inner.Clear();
	}

	int IList.IndexOf(object value)
	{
		return IndexOf((ITreeTableEntrySource)value);
	}

	int IList.Add(object value)
	{
		return Add((ITreeTableEntrySource)value);
	}

	void ICollection.CopyTo(Array array, int index)
	{
		CopyTo((ITreeTableEntrySource[])array, index);
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return GetEnumerator();
	}
}
