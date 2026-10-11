using System;
using System.Collections;
using System.ComponentModel;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms;

public class TabBarPageCollection : IList, ICollection, IEnumerable
{
	private TabBarSplitterControl owner;

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual int Count
	{
		get
		{
			InternalTabCollection tabs = owner.Bar.TabBarChild.Tabs;
			return tabs.Count;
		}
	}

	public virtual bool IsReadOnly => false;

	bool IList.IsFixedSize => false;

	bool ICollection.IsSynchronized => false;

	object ICollection.SyncRoot => this;

	object IList.this[int index]
	{
		get
		{
			return this[index];
		}
		set
		{
			if (value is TabBarPage)
			{
				this[index] = (TabBarPage)value;
				return;
			}
			throw new ArgumentException("value");
		}
	}

	public virtual TabBarPage this[int index]
	{
		get
		{
			return owner.Bar.TabBarChild.Tabs[index].Cookie as TabBarPage;
		}
		set
		{
			InternalTab internalTab = owner.Bar.TabBarChild.Tabs[index];
			if (internalTab != null)
			{
				internalTab.Cookie = value;
			}
			else
			{
				internalTab = new InternalTab(owner, value);
				owner.Bar.TabBarChild.Tabs[index] = internalTab;
			}
			internalTab.ToolTip = value.ToolTipText;
			internalTab.Label = value.Text;
			owner.Refresh();
		}
	}

	public TabBarPageCollection(TabBarSplitterControl owner)
	{
		if (owner == null)
		{
			throw new ArgumentNullException("owner");
		}
		this.owner = owner;
	}

	public virtual IEnumerator GetEnumerator()
	{
		TabBarPage[] array = new TabBarPage[Count];
		CopyTo(array, 0);
		return array.GetEnumerator();
	}

	public virtual void RemoveAt(int index)
	{
		if (index >= 0 && index < Count)
		{
			TabBarPage tabBarPage = this[index];
			if (tabBarPage != null)
			{
				Remove(tabBarPage);
			}
		}
	}

	public virtual void Clear()
	{
		InternalTabCollection tabs = owner.Bar.TabBarChild.Tabs;
		foreach (InternalTab item in tabs)
		{
			item.Dispose();
		}
		tabs.Clear();
	}

	void IList.Remove(object value)
	{
		if (value is TabBarPage)
		{
			Remove((TabBarPage)value);
			return;
		}
		throw new ArgumentException("value");
	}

	void ICollection.CopyTo(Array dest, int index)
	{
		CopyTo((TabBarPage[])dest, index);
	}

	void IList.Insert(int index, object value)
	{
		if (value is TabBarPage)
		{
			Add((TabBarPage)value);
			IndexOf((TabBarPage)value);
			return;
		}
		throw new ArgumentException("value");
	}

	public void Insert(int index, TabBarPage value)
	{
		InternalTabCollection tabs = owner.Bar.TabBarChild.Tabs;
		InternalTab internalTab = new InternalTab(owner, value);
		internalTab.ToolTip = value.ToolTipText;
		internalTab.Label = value.Text;
		tabs.Insert(index, internalTab);
		if (!owner.Controls.Contains(value))
		{
			owner.Controls.Add(value);
		}
		owner.Refresh();
	}

	int IList.IndexOf(object page)
	{
		if (page is TabBarPage)
		{
			return IndexOf((TabBarPage)page);
		}
		return -1;
	}

	bool IList.Contains(object page)
	{
		if (page is TabBarPage)
		{
			return Contains((TabBarPage)page);
		}
		return false;
	}

	int IList.Add(object value)
	{
		if (value is TabBarPage)
		{
			Add((TabBarPage)value);
			return IndexOf((TabBarPage)value);
		}
		throw new ArgumentException("value");
	}

	public virtual void Add(TabBarPage value)
	{
		owner.SuspendLayout();
		InternalTabCollection tabs = owner.Bar.TabBarChild.Tabs;
		InternalTab internalTab = new InternalTab(owner, value);
		internalTab.ToolTip = value.ToolTipText;
		internalTab.Label = value.Text;
		internalTab.Style = owner.Style;
		internalTab.Office2007ColorScheme = owner.Office2007ColorScheme;
		tabs.Add(internalTab);
		if (!owner.Controls.Contains(value))
		{
			owner.Controls.Add(value);
		}
		owner.ResumeLayout(performLayout: false);
		owner.Refresh();
	}

	public void AddRange(TabBarPage[] value)
	{
		owner.SuspendLayout();
		foreach (TabBarPage tabBarPage in value)
		{
			if (tabBarPage != null)
			{
				Add(tabBarPage);
			}
		}
		owner.ResumeLayout(performLayout: false);
		owner.Refresh();
	}

	public bool Contains(TabBarPage page)
	{
		if (page == null)
		{
			throw new ArgumentNullException("value");
		}
		return IndexOf(page) != -1;
	}

	public int IndexOf(TabBarPage page)
	{
		if (page == null)
		{
			throw new ArgumentNullException("value");
		}
		for (int i = 0; i < Count; i++)
		{
			if (this[i] == page)
			{
				return i;
			}
		}
		return -1;
	}

	public virtual void Remove(TabBarPage value)
	{
		owner.SuspendLayout();
		try
		{
			InternalTabCollection tabs = owner.Bar.TabBarChild.Tabs;
			int num = owner.Bar.TabBarChild.FindTab(value);
			if (num != -1)
			{
				owner.Bar.TabBarChild.Tabs.Remove(tabs[num]);
			}
			if (owner.ActiveControl == value)
			{
				owner.ActiveControl = null;
			}
			if (owner.Controls.Contains(value))
			{
				owner.Controls.Remove(value);
			}
			owner.ActivePageIndex = Math.Max(0, num - 1);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
		owner.ResumeLayout(performLayout: false);
		owner.Refresh();
	}

	public void CopyTo(TabBarPage[] pages, int index)
	{
		InternalTabCollection tabs = owner.Bar.TabBarChild.Tabs;
		if (tabs != null)
		{
			for (int i = 0; i < tabs.Count; i++)
			{
				pages[index++] = tabs[i].Cookie as TabBarPage;
			}
		}
	}
}
