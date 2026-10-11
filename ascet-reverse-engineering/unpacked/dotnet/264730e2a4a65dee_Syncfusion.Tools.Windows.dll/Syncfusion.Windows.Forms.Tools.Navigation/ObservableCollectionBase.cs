using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools.Navigation;

[DefaultEvent("CollectionChanged")]
public class ObservableCollectionBase<T> : Collection<T>
{
	[Description("Occurs when collection is changed.")]
	public event CollectionChangeEventHandler CollectionChanged;

	protected override void InsertItem(int index, T item)
	{
		base.InsertItem(index, item);
		FireCollectionChangedEvent(CollectionChangeAction.Add, item);
	}

	protected override void RemoveItem(int index)
	{
		T item = base[index];
		base.RemoveItem(index);
		FireCollectionChangedEvent(CollectionChangeAction.Remove, item);
	}

	protected override void SetItem(int index, T item)
	{
		_ = base[index];
		base.SetItem(index, item);
		FireCollectionChangedEvent(CollectionChangeAction.Refresh, item);
	}

	public virtual void AddRange(IEnumerable<T> collection)
	{
		InsertRange(base.Count, collection);
	}

	public virtual void InsertRange(int index, IEnumerable<T> collection)
	{
		if (collection == null)
		{
			throw new ArgumentNullException("collection");
		}
		if (index > base.Count)
		{
			throw new ArgumentOutOfRangeException("index");
		}
		IEnumerator<T> enumerator = collection.GetEnumerator();
		while (enumerator.MoveNext())
		{
			Insert(index++, enumerator.Current);
		}
	}

	protected void FireCollectionChangedEvent(CollectionChangeAction action, T item)
	{
		if (this.CollectionChanged != null)
		{
			CollectionChangeEventArgs e = new CollectionChangeEventArgs(action, item);
			this.CollectionChanged(this, e);
		}
	}
}
