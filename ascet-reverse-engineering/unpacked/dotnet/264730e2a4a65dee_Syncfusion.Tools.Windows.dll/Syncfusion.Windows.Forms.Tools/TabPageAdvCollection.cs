using System;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class TabPageAdvCollection : ArrayList
{
	private TabDataCollection tabDataCollection;

	private TabPanelData tabPanelData;

	private Control parent;

	private ITabPanelDefaultProperties tabPanelDefaultProperties;

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Advanced)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override int Count => base.Count;

	public new TabPageAdv this[int index]
	{
		get
		{
			return (TabPageAdv)base[index];
		}
		set
		{
			base[index] = value;
			tabDataCollection[index] = value.TabData;
		}
	}

	public TabPageAdvCollection(TabPanelData tabPanelData, Control parent, ITabPanelDefaultProperties tabPanelDefaultProperties)
	{
		this.tabPanelData = tabPanelData;
		tabDataCollection = tabPanelData.TabsData;
		this.parent = parent;
		this.tabPanelDefaultProperties = tabPanelDefaultProperties;
		tabDataCollection.CollectionAffected += TabDataCollection_Changed;
	}

	private void TabDataCollection_Changed(object sender, EventArgs e)
	{
		int num = -1;
		foreach (ITabData item in tabDataCollection)
		{
			num++;
			if (this[num].TabData != item)
			{
				int tabPageIndexOfTabData = GetTabPageIndexOfTabData(item);
				if (tabPageIndexOfTabData != -1)
				{
					MoveTabPageInternal(tabPageIndexOfTabData, num);
				}
			}
		}
	}

	public void MoveTabPage(int oldTabPos, int newTabPos)
	{
		if (oldTabPos < Count && newTabPos < Count)
		{
			tabPanelData.TabsData.Move(oldTabPos, newTabPos, 1);
		}
	}

	private void MoveTabPageInternal(int oldTabPos, int newTabPos)
	{
		if (oldTabPos < Count && newTabPos < Count)
		{
			TabPageAdv value = this[oldTabPos];
			base.RemoveAt(oldTabPos);
			base.Insert(newTabPos, value);
		}
	}

	private int GetTabPageIndexOfTabData(ITabData tabData)
	{
		int num = -1;
		IEnumerator enumerator = GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				TabPageAdv tabPageAdv = (TabPageAdv)enumerator.Current;
				num++;
				if (tabPageAdv.TabData == tabData)
				{
					return num;
				}
			}
		}
		finally
		{
			IDisposable disposable = enumerator as IDisposable;
			if (disposable != null)
			{
				disposable.Dispose();
			}
		}
		return -1;
	}

	internal void InitTabPage(TabPageAdv tabPage)
	{
		tabPage.TabPanelDefaultProperties = tabPanelDefaultProperties;
		tabPage.Visible = false;
	}

	public static TabPageAdv GetTabPageAdvOfTabData(TabPageAdvCollection collection, ITabData tabData)
	{
		foreach (TabPageAdv item in collection)
		{
			if (item.TabData == tabData)
			{
				return item;
			}
		}
		return null;
	}

	public override IEnumerator GetEnumerator()
	{
		TabPageAdv[] array = (TabPageAdv[])base.ToArray(typeof(TabPageAdv));
		if (array != null)
		{
			return array.GetEnumerator();
		}
		return new TabPageAdv[0].GetEnumerator();
	}

	public override IEnumerator GetEnumerator(int index, int count)
	{
		if (index < 0 || index >= Count)
		{
			throw new ArgumentOutOfRangeException("index");
		}
		if (index + count - 1 >= Count)
		{
			throw new ArgumentOutOfRangeException("count");
		}
		Array array = Array.CreateInstance(typeof(TabPageAdv), count);
		CopyTo(index, array, 0, count);
		return array.GetEnumerator();
	}

	public override void RemoveAt(int index)
	{
		if (index < 0 || index >= Count)
		{
			throw new ArgumentOutOfRangeException("index");
		}
		TabPageAdv value = this[index];
		base.RemoveAt(index);
		tabDataCollection.RemoveAt(index);
		parent.Controls.Remove(value);
	}

	public override void Remove(object obj)
	{
		if (!(obj is TabPageAdv))
		{
			throw new ArgumentException("Only objects of type TabPageAdv can be removed from the list", "value");
		}
		base.Remove(obj);
	}

	public override void RemoveRange(int index, int count)
	{
		if (index < 0 || count < 0 || index >= Count || index + count - 1 >= Count)
		{
			throw new ArgumentOutOfRangeException("index", "Specified index is out of range of the array list.");
		}
		for (int i = 0; i < count; i++)
		{
			RemoveAt(index);
		}
	}

	public override void Insert(int index, object value)
	{
		if (!(value is TabPageAdv))
		{
			throw new ArgumentException("Only objects of type TabPageAdv can be Inserted from the list", "value");
		}
		InitTabPage((TabPageAdv)value);
		base.Insert(index, value);
		tabDataCollection.Insert(index, ((TabPageAdv)value).TabData);
		parent.Controls.Add((Control)value);
	}

	public override void Clear()
	{
		base.Clear();
		tabDataCollection.Clear();
	}

	public override int Add(object value)
	{
		InitTabPage((TabPageAdv)value);
		int result = base.Add(value);
		tabDataCollection.Add(((TabPageAdv)value).TabData);
		parent.Controls.Add((Control)value);
		return result;
	}

	public override void Sort(int index, int count, IComparer comparer)
	{
	}

	public override void Reverse(int index, int count)
	{
	}

	public override void InsertRange(int index, ICollection c)
	{
		throw new NotSupportedException("This method is not supported. Use AddRange instead.");
	}

	public override void AddRange(ICollection c)
	{
		foreach (object item in c)
		{
			Add(item);
		}
	}

	public override void SetRange(int index, ICollection c)
	{
	}

	public void Add(TabPageAdv value)
	{
		Add((object)value);
	}

	public bool Contains(TabPageAdv page)
	{
		return Contains((object)page);
	}

	public int IndexOf(TabPageAdv page)
	{
		return IndexOf((object)page);
	}

	public void Remove(TabPageAdv value)
	{
		Remove((object)value);
	}
}
