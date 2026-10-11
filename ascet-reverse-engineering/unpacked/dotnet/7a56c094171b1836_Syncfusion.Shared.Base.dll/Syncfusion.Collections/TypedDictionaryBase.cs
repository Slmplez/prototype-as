using System;
using System.Collections;

namespace Syncfusion.Collections;

public abstract class TypedDictionaryBase : IDictionary, ICollection, IEnumerable
{
	private Hashtable hashtable;

	object IDictionary.this[object key]
	{
		get
		{
			InnerHashtable[key] = OnGet(key, InnerHashtable[key]);
			return InnerHashtable[key];
		}
		set
		{
			OnValidate(key, value);
			OnSet(key, InnerHashtable[key], value);
			InnerHashtable[key] = value;
		}
	}

	public ICollection Keys => InnerHashtable.Keys;

	public ICollection Values => InnerHashtable.Values;

	public int Count
	{
		get
		{
			if (hashtable != null)
			{
				return hashtable.Count;
			}
			return 0;
		}
	}

	public IDictionary Dictionary => this;

	protected virtual Hashtable InnerHashtable
	{
		get
		{
			if (hashtable == null)
			{
				hashtable = new Hashtable();
			}
			return hashtable;
		}
		set
		{
			hashtable = value;
		}
	}

	public virtual bool IsReadOnly => InnerHashtable.IsReadOnly;

	public virtual bool IsFixedSize => InnerHashtable.IsFixedSize;

	public virtual bool IsSynchronized => InnerHashtable.IsSynchronized;

	public virtual object SyncRoot => InnerHashtable.SyncRoot;

	protected TypedDictionaryBase()
	{
	}

	protected TypedDictionaryBase(Hashtable hashtable)
	{
		this.hashtable = hashtable;
	}

	public void Clear()
	{
		OnClear();
		InnerHashtable.Clear();
	}

	public void CopyTo(Array array, int index)
	{
		InnerHashtable.CopyTo(array, index);
	}

	public IDictionaryEnumerator GetEnumerator()
	{
		return InnerHashtable.GetEnumerator();
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return GetEnumerator();
	}

	protected virtual void OnClear()
	{
	}

	protected virtual object OnGet(object key, object currentValue)
	{
		return currentValue;
	}

	protected virtual void OnInsert(object key, object value)
	{
	}

	protected virtual void OnRemove(object key, object value)
	{
	}

	protected virtual void OnSet(object key, object oldValue, object newValue)
	{
	}

	protected virtual void OnValidate(object key, object value)
	{
	}

	void IDictionary.Add(object key, object value)
	{
		OnValidate(key, value);
		InnerHashtable.Add(key, value);
		try
		{
			OnInsert(key, value);
		}
		catch
		{
			InnerHashtable.Remove(key);
			throw;
		}
	}

	bool IDictionary.Contains(object key)
	{
		return InnerHashtable.Contains(key);
	}

	void IDictionary.Remove(object key)
	{
		OnRemove(key, InnerHashtable[key]);
		InnerHashtable.Remove(key);
	}
}
