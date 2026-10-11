using System;
using System.Collections;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
public class TabPrimitivesCollection : CollectionBase, IDisposable
{
	private TabPrimitivesHost m_tabPrimitivesHost;

	private static int m_iNameIndex;

	public TabPrimitive this[int index]
	{
		get
		{
			return (TabPrimitive)base.List[index];
		}
		set
		{
			if (index < 0 || index >= base.List.Count)
			{
				throw new IndexOutOfRangeException("index");
			}
			if (value == null)
			{
				throw new NullReferenceException("value can't be NULL");
			}
			if (base.List[index] != value)
			{
				base.List[index] = value;
			}
		}
	}

	public event EventHandler CollectionChanged;

	protected void OnCollectionChanged()
	{
		if (this.CollectionChanged != null)
		{
			this.CollectionChanged(this, EventArgs.Empty);
		}
	}

	internal TabPrimitivesCollection(TabPrimitivesHost tabPrimitivesHost)
	{
		if (tabPrimitivesHost == null)
		{
			throw new NullReferenceException("tabPrimitivesHost can't be NULL");
		}
		m_tabPrimitivesHost = tabPrimitivesHost;
	}

	public void Add(TabPrimitive tabPrimitive)
	{
		if (tabPrimitive == null)
		{
			throw new NullReferenceException("TabPrimitive can't be NULL");
		}
		base.List.Add(tabPrimitive);
	}

	public bool Contains(TabPrimitive tabPrimitive)
	{
		if (tabPrimitive == null)
		{
			throw new NullReferenceException("TabPrimitive can't be NULL");
		}
		return base.List.Contains(tabPrimitive);
	}

	public void Remove(TabPrimitive tabPrimitive)
	{
		if (tabPrimitive == null)
		{
			throw new NullReferenceException("tabPrimitive can't be NULL");
		}
		if (!Contains(tabPrimitive))
		{
			throw new NullReferenceException("tabPrimitive isn't included in collection");
		}
		base.List.Remove(tabPrimitive);
	}

	public int IndexOf(TabPrimitive tabPrimitive)
	{
		if (tabPrimitive == null)
		{
			throw new NullReferenceException("tabPrimitive can't be NULL");
		}
		return base.List.IndexOf(tabPrimitive);
	}

	public void Insert(int index, TabPrimitive tabPrimitive)
	{
		if (tabPrimitive == null)
		{
			throw new NullReferenceException("tabPrimitive can't be NULL");
		}
		if (index < 0 || index >= base.List.Count)
		{
			throw new IndexOutOfRangeException("index");
		}
		base.List.Insert(index, tabPrimitive);
	}

	protected override void OnInsertComplete(int index, object value)
	{
		base.OnInsertComplete(index, value);
		TabPrimitive tabPrimitive = (TabPrimitive)value;
		if (tabPrimitive.Name == string.Empty && ((ITabControl)m_tabPrimitivesHost.TabControl).IsDesignMode())
		{
			tabPrimitive.Name = "TabPrimitive" + m_iNameIndex;
			m_iNameIndex++;
		}
		tabPrimitive.SetTabPrimitiveHost(m_tabPrimitivesHost);
		OnCollectionChanged();
	}

	protected override void OnRemoveComplete(int index, object value)
	{
		base.OnRemoveComplete(index, value);
		((TabPrimitive)value).SetTabPrimitiveHost(null);
		OnCollectionChanged();
	}

	protected override void OnSetComplete(int index, object oldValue, object newValue)
	{
		base.OnSetComplete(index, oldValue, newValue);
		((TabPrimitive)oldValue).SetTabPrimitiveHost(null);
		((TabPrimitive)newValue).SetTabPrimitiveHost(m_tabPrimitivesHost);
		OnCollectionChanged();
	}

	public void Dispose()
	{
		Clear();
		m_tabPrimitivesHost = null;
	}
}
