using System;
using System.Collections;
using System.ComponentModel;
using Syncfusion.ComponentModel;

namespace Syncfusion.Collections;

[Serializable]
public class ArrayListExt : ArrayList
{
	private bool suspendCollectionChangedEvent;

	private bool forceReadOnly;

	private bool forceFixedSize;

	public override object this[int index]
	{
		get
		{
			return base[index];
		}
		set
		{
			if (IsReadOnly)
			{
				throw new NotSupportedException("Trying to edit a Read-only ArrayListExt.");
			}
			if (base[index] != value)
			{
				OnCollectionChanging();
				object obj = base[index];
				base[index] = value;
				if (obj != null)
				{
					ReleaseHandler(obj);
				}
				AddHandlers(value);
			}
		}
	}

	protected bool ForceReadOnly
	{
		get
		{
			return forceReadOnly;
		}
		set
		{
			forceReadOnly = value;
		}
	}

	protected bool ForceFixedSize
	{
		get
		{
			return forceFixedSize;
		}
		set
		{
			forceFixedSize = value;
		}
	}

	public override bool IsFixedSize => forceFixedSize;

	public override bool IsReadOnly => forceReadOnly;

	public bool IsCollectionChangedEventSuspended => suspendCollectionChangedEvent;

	[Description("Will be called when the Collection has changed due to the addition or removal of one or more items.")]
	public event CollectionChangeEventHandler CollectionChanged;

	[Description("Will be thrown if the items in the Collection implement IChangeNotifyingItem interface and when their property changes.")]
	public event SyncfusionPropertyChangedEventHandler ItemPropertyChanged;

	public ArrayListExt()
	{
	}

	public ArrayListExt(object[] items)
		: base(items)
	{
	}

	protected virtual void OnCollectionChanged(CollectionChangeEventArgs args)
	{
		if (!IsCollectionChangedEventSuspended && this.CollectionChanged != null)
		{
			this.CollectionChanged(this, args);
		}
	}

	protected virtual void OnCollectionChanging()
	{
	}

	protected virtual void OnItemPropertyChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		if (!IsCollectionChangedEventSuspended && this.ItemPropertyChanged != null)
		{
			this.ItemPropertyChanged(sender, e);
		}
	}

	protected virtual void ReleaseHandler(object item)
	{
		if (item != null && item is IChangeNotifyingItem changeNotifyingItem)
		{
			changeNotifyingItem.PropertyChanged -= ItemPropertyChanged_Handler;
		}
		OnCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Remove, item));
	}

	protected virtual void AddHandlers(object item)
	{
		if (item != null && item is IChangeNotifyingItem changeNotifyingItem)
		{
			changeNotifyingItem.PropertyChanged += ItemPropertyChanged_Handler;
		}
		OnCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Add, item));
	}

	private void ItemPropertyChanged_Handler(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		OnItemPropertyChanged(sender, e);
	}

	public void RaiseCollectionChanged(CollectionChangeEventArgs args)
	{
		OnCollectionChanged(args);
	}

	public override int Add(object value)
	{
		if (ForceFixedSize)
		{
			throw new NotSupportedException("Trying to add / remove elements in a fixed size." + GetType().FullName + ".");
		}
		OnCollectionChanging();
		int result = base.Add(value);
		AddHandlers(value);
		return result;
	}

	public override void Insert(int index, object value)
	{
		if (ForceFixedSize)
		{
			throw new NotSupportedException("Trying to add / remove elements in a fixed size ArrayListExt.");
		}
		OnCollectionChanging();
		base.Insert(index, value);
		AddHandlers(value);
	}

	public override void InsertRange(int index, ICollection c)
	{
		if (ForceFixedSize)
		{
			throw new NotSupportedException("Trying to add / remove elements in a fixed size ArrayListExt.");
		}
		OnCollectionChanging();
		base.InsertRange(index, c);
		object[] array = new object[c.Count];
		c.CopyTo(array, 0);
		object[] array2 = array;
		foreach (object item in array2)
		{
			AddHandlers(item);
		}
	}

	public override void Clear()
	{
		if (ForceFixedSize)
		{
			throw new NotSupportedException("Trying to add / remove elements in a fixed size ArrayListExt.");
		}
		OnCollectionChanging();
		object[] array = new object[Count];
		CopyTo(array, 0);
		base.Clear();
		object[] array2 = array;
		foreach (object item in array2)
		{
			ReleaseHandler(item);
		}
	}

	public override void RemoveAt(int index)
	{
		if (ForceFixedSize)
		{
			throw new NotSupportedException("Trying to add / remove elements in a fixed size ArrayListExt.");
		}
		OnCollectionChanging();
		object item = this[index];
		base.RemoveAt(index);
		ReleaseHandler(item);
	}

	public override void RemoveRange(int index, int count)
	{
		if (ForceFixedSize)
		{
			throw new NotSupportedException("Trying to add / remove elements in a fixed size ArrayListExt.");
		}
		OnCollectionChanging();
		object[] array = new object[count];
		CopyTo(index, array, 0, count);
		base.RemoveRange(index, count);
		object[] array2 = array;
		foreach (object item in array2)
		{
			ReleaseHandler(item);
		}
	}

	public override void Sort(int index, int count, IComparer comparer)
	{
		OnCollectionChanging();
		base.Sort(index, count, comparer);
		OnCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Refresh, null));
	}

	public override void Reverse(int index, int count)
	{
		OnCollectionChanging();
		base.Reverse(index, count);
		OnCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Refresh, null));
	}

	public virtual void Move(int from, int to, int count)
	{
		OnCollectionChanging();
		if (from != to && from >= 0 && to >= 0 && to + count <= Count && from + count <= Count)
		{
			bool flag = false;
			if (!IsCollectionChangedEventSuspended)
			{
				suspendCollectionChangedEvent = true;
				flag = true;
			}
			object[] array = new object[count];
			for (int i = 0; i < count; i++)
			{
				array[i] = this[i + from];
			}
			base.RemoveRange(from, count);
			base.InsertRange(to, array);
			if (flag)
			{
				suspendCollectionChangedEvent = false;
			}
			OnCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Refresh, null));
		}
	}

	public void SuspendEvents()
	{
		suspendCollectionChangedEvent = true;
	}

	public void ResumeEvents(bool throwEvent)
	{
		suspendCollectionChangedEvent = false;
		if (throwEvent)
		{
			OnCollectionChanged(new CollectionChangeEventArgs(CollectionChangeAction.Refresh, null));
		}
	}
}
