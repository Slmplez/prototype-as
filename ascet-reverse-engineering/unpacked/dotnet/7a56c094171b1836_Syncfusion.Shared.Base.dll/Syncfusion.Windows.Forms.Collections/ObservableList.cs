using System;
using System.Collections;

namespace Syncfusion.Windows.Forms.Collections;

public class ObservableList<T> : IList, ICollection, IEnumerable
{
	private ArrayList list;

	public int Count => List.Count;

	public int Capacity
	{
		get
		{
			return list.Capacity;
		}
		set
		{
			list.Capacity = value;
		}
	}

	protected IList List => this;

	public T this[int index]
	{
		get
		{
			return (T)List[index];
		}
		set
		{
			List[index] = value;
		}
	}

	bool IList.IsFixedSize => list.IsFixedSize;

	bool IList.IsReadOnly => list.IsReadOnly;

	object IList.this[int index]
	{
		get
		{
			return list[index];
		}
		set
		{
			if (index >= 0 && index < list.Count && OnRemove(index, list[index]) && OnInsert(index, value))
			{
				list[index] = value;
			}
		}
	}

	int ICollection.Count => list.Count;

	bool ICollection.IsSynchronized => list.IsSynchronized;

	object ICollection.SyncRoot => list.SyncRoot;

	public event EventHandler<ListItemEventArgs<T>> ItemAdded;

	public event EventHandler<ListItemEventArgs<T>> ItemRemoved;

	public ObservableList()
	{
		list = new ArrayList();
	}

	public ObservableList(int capacity)
	{
		list = new ArrayList(capacity);
	}

	public IEnumerator GetEnumerator()
	{
		return List.GetEnumerator();
	}

	public int Add(T value)
	{
		return List.Add(value);
	}

	public int IndexOf(T value)
	{
		return List.IndexOf(value);
	}

	public void Insert(int index, T value)
	{
		List.Insert(index, value);
	}

	public void Remove(T value)
	{
		List.Remove(value);
	}

	public void RemoveAt(int index)
	{
		List.RemoveAt(index);
	}

	public bool Contains(T value)
	{
		return List.Contains(value);
	}

	public void Clear()
	{
		List.Clear();
	}

	public void Sort(IComparer comparer)
	{
		list.Sort(comparer);
	}

	int IList.Add(object value)
	{
		int num = -1;
		if (OnInsert(list.Count, value))
		{
			num = list.Add(value);
			try
			{
				OnInsertComplete(num, value);
			}
			catch
			{
				list.RemoveAt(num);
				throw;
			}
		}
		return num;
	}

	void IList.Clear()
	{
		OnClear();
		while (list.Count > 0)
		{
			object value = list[0];
			list.RemoveAt(0);
			OnRemoveComplete(0, value);
		}
		OnClearCompleted();
	}

	bool IList.Contains(object value)
	{
		return list.Contains(value);
	}

	int IList.IndexOf(object value)
	{
		return list.IndexOf(value);
	}

	void IList.Insert(int index, object value)
	{
		if (index >= 0 && index < list.Count && OnInsert(index, value))
		{
			list.Insert(index, value);
			try
			{
				OnInsertComplete(index, value);
			}
			catch
			{
				list.RemoveAt(index);
				throw;
			}
		}
	}

	void IList.Remove(object value)
	{
		List.RemoveAt(list.IndexOf(value));
	}

	void IList.RemoveAt(int index)
	{
		if (index < 0 || index >= list.Count)
		{
			return;
		}
		object value = list[index];
		if (OnRemove(index, value))
		{
			list.RemoveAt(index);
			try
			{
				OnRemoveComplete(index, value);
			}
			catch
			{
				list.Insert(index, value);
				throw;
			}
		}
	}

	void ICollection.CopyTo(Array array, int index)
	{
		list.CopyTo(array, index);
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return list.GetEnumerator();
	}

	protected virtual bool OnInsert(int index, object value)
	{
		return true;
	}

	protected virtual bool OnRemove(int index, object value)
	{
		return true;
	}

	protected virtual void OnInsertComplete(int index, object value)
	{
		if (this.ItemAdded != null)
		{
			this.ItemAdded(this, new ListItemEventArgs<T>((T)value));
		}
	}

	protected virtual void OnRemoveComplete(int index, object value)
	{
		if (this.ItemRemoved != null)
		{
			this.ItemRemoved(this, new ListItemEventArgs<T>((T)value));
		}
	}

	protected virtual void OnClear()
	{
	}

	protected virtual void OnClearCompleted()
	{
	}
}
