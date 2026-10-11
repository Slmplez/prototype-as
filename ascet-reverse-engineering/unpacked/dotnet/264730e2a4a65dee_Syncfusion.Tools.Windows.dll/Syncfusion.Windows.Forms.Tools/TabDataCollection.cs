using System;
using System.Collections;

namespace Syncfusion.Windows.Forms.Tools;

public class TabDataCollection : ArrayList
{
	private ITabPanelData owner;

	private object prevSelectedObject;

	private int prevSelectedIndex;

	public override object this[int index]
	{
		get
		{
			return base[index];
		}
		set
		{
			if (value is ITabData)
			{
				if (base[index] != value)
				{
					base[index] = value;
					OnCollectionAffected();
					owner.SelectedIndex = owner.SelectedIndex;
				}
				return;
			}
			throw new ArgumentException("Only objects of type ITabData can be added to this list", "value");
		}
	}

	public event EventHandler CollectionAffected;

	public TabDataCollection(ITabPanelData owner)
	{
		this.owner = owner;
	}

	public override void RemoveAt(int index)
	{
		TabPanelData tabPanelData = owner as TabPanelData;
		OnCollectionChanging();
		if (tabPanelData != null)
		{
			tabPanelData.isTabRemoving = true;
		}
		base.RemoveAt(index);
		OnCollectionAffected();
		if (tabPanelData != null)
		{
			tabPanelData.isTabRemoving = false;
		}
	}

	public override void Clear()
	{
		OnCollectionChanging();
		base.Clear();
		OnCollectionAffected();
	}

	public override void Remove(object value)
	{
		if (value is ITabData)
		{
			OnCollectionChanging();
			int count = Count;
			base.Remove(value);
			if (count != Count)
			{
				OnCollectionAffected();
			}
			return;
		}
		throw new ArgumentException("Only objects of type ITabData can be removed from the list", "value");
	}

	public override void RemoveRange(int index, int count)
	{
		OnCollectionChanging();
		base.RemoveRange(index, count);
		OnCollectionAffected();
	}

	public virtual void Move(int from, int to, int count)
	{
		if (from != to && from >= 0 && to >= 0 && to + count <= Count && from + count <= Count)
		{
			ITabData[] array = new ITabData[count];
			ITabData[] array2 = new ITabData[count];
			for (int i = 0; i < count; i++)
			{
				array[i] = (ITabData)this[i + from];
			}
			for (int j = 0; j < count; j++)
			{
				array2[j] = (ITabData)this[j + to];
			}
			OnCollectionChanging();
			base.RemoveRange(to, count);
			base.InsertRange(to, array);
			base.RemoveRange(from, count);
			base.InsertRange(from, array2);
			OnCollectionAffected();
		}
	}

	public override void InsertRange(int index, ICollection c)
	{
		foreach (object item in c)
		{
			if (!(item is ITabData))
			{
				throw new ArgumentException("Only objects of type ITabData can be inserted in the list", "ICollection");
			}
		}
		OnCollectionChanging();
		base.InsertRange(index, c);
		OnCollectionAffected();
	}

	public override void Insert(int index, object value)
	{
		if (value is ITabData)
		{
			OnCollectionChanging();
			base.Insert(index, value);
			OnCollectionAffected();
			return;
		}
		throw new ArgumentException("Only objects of type ITabData can be inserted in the list", "value");
	}

	public override int Add(object value)
	{
		if (value is ITabData)
		{
			OnCollectionChanging();
			int result = base.Add(value);
			OnCollectionAffected();
			return result;
		}
		throw new ArgumentException("Only objects of type ITabData can be added to the list", "value");
	}

	public override void Reverse(int index, int count)
	{
		OnCollectionChanging();
		base.Reverse(index, count);
		OnCollectionAffected();
	}

	public override void SetRange(int index, ICollection c)
	{
		OnCollectionChanging();
		base.SetRange(index, c);
		OnCollectionAffected();
	}

	public override void Sort(int index, int counter, IComparer comparer)
	{
		OnCollectionChanging();
		base.Sort(index, counter, comparer);
		OnCollectionAffected();
	}

	protected virtual void OnCollectionChanging()
	{
		prevSelectedIndex = owner.SelectedIndex;
		prevSelectedObject = null;
		if (prevSelectedIndex != -1)
		{
			prevSelectedObject = this[prevSelectedIndex];
		}
	}

	protected virtual void OnCollectionAffected()
	{
		if (this.CollectionAffected != null)
		{
			this.CollectionAffected(this, EventArgs.Empty);
		}
		if (prevSelectedObject == null)
		{
			return;
		}
		int num = -1;
		num = IndexOf(prevSelectedObject);
		if (num != -1)
		{
			owner.SelectedIndex = num;
			return;
		}
		if (owner.SelectedIndex == prevSelectedIndex)
		{
			owner.OnSelectedIndexChanged(prevSelectedIndex, owner.SelectedIndex);
		}
		prevSelectedIndex = -1;
		prevSelectedObject = null;
	}
}
