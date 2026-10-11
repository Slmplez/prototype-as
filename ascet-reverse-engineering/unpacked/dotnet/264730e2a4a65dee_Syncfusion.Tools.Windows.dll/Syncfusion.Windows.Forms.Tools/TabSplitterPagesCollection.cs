using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing.Design;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Editor(typeof(TabSplitterPagesCollectionEditor), typeof(UITypeEditor))]
public class TabSplitterPagesCollection : CollectionBase
{
	private TabSplitterContainer m_owner;

	private int m_selectedIndex = -1;

	private int m_activeIndex = -1;

	public TabSplitterPage this[int index]
	{
		get
		{
			return base.List[index] as TabSplitterPage;
		}
		set
		{
			base.List[index] = value;
		}
	}

	public TabSplitterContainer Owner => m_owner;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public int SelectedIndex
	{
		get
		{
			return m_selectedIndex;
		}
		set
		{
			if (m_selectedIndex != value)
			{
				Select(value);
			}
		}
	}

	private int ActiveIndex
	{
		get
		{
			if (m_activeIndex < 0 && base.Count > 0)
			{
				return 0;
			}
			return m_activeIndex;
		}
	}

	public event EventHandler SelectedIndexChanged;

	internal TabSplitterPagesCollection(TabSplitterContainer owner)
	{
		m_owner = owner;
	}

	public int Add(TabSplitterPage value)
	{
		if (!base.List.Contains(value))
		{
			return base.List.Add(value);
		}
		return -1;
	}

	public void AddRange(TabSplitterPage[] values)
	{
		Owner.SuspendLayout();
		foreach (TabSplitterPage value in values)
		{
			Add(value);
		}
		Owner.ResumeLayout(performLayout: true);
	}

	public int IndexOf(TabSplitterPage value)
	{
		return base.List.IndexOf(value);
	}

	public void Insert(int index, TabSplitterPage value)
	{
		if (!base.List.Contains(value))
		{
			base.List.Insert(index, value);
		}
	}

	public void Remove(TabSplitterPage value)
	{
		if (base.List.Contains(value))
		{
			base.List.Remove(value);
		}
	}

	public bool Contains(TabSplitterPage value)
	{
		return base.List.Contains(value);
	}

	internal void Select(int value)
	{
		if (value >= -1 && value < base.Count)
		{
			m_owner.SuspendLayout();
			if (m_selectedIndex >= 0 && m_selectedIndex < base.Count)
			{
				TabSplitterPage tabSplitterPage = this[m_selectedIndex];
				tabSplitterPage.Visible = false;
			}
			m_selectedIndex = value;
			if (m_selectedIndex >= 0 && m_selectedIndex < base.Count)
			{
				TabSplitterPage tabSplitterPage2 = this[m_selectedIndex];
				tabSplitterPage2.BringToFront();
				tabSplitterPage2.Visible = true;
				m_activeIndex = m_selectedIndex;
			}
			m_owner.ResumeLayout();
			OnSelectedIndexChanged();
		}
	}

	internal void Select(TabSplitterPage page)
	{
		SelectedIndex = IndexOf(page);
	}

	internal bool Deselect(TabSplitterPage page, bool bCollapsed)
	{
		if (bCollapsed)
		{
			if (!m_owner.PrimaryPagesInternal.Deselect(page, bCollapsed: false))
			{
				return m_owner.SecondaryPagesInternal.Deselect(page, bCollapsed: false);
			}
			return true;
		}
		for (int i = 0; i < base.InnerList.Count; i++)
		{
			if (base.InnerList[i] != page)
			{
				Select(i);
				return true;
			}
		}
		return false;
	}

	internal void SelectActiveItem()
	{
		SelectedIndex = ActiveIndex;
	}

	protected override void OnClear()
	{
		base.OnClear();
		m_owner.SuspendLayout();
		foreach (TabSplitterPage inner in base.InnerList)
		{
			inner.SetOwner(null);
			inner.Parent = null;
		}
		m_owner.ResumeLayout();
	}

	protected override void OnClearComplete()
	{
		base.OnClearComplete();
		if (Deselect(null, m_owner.Collapsed))
		{
			SelectedIndex = -1;
		}
		m_owner.OnPagesChanged();
	}

	protected override void OnInsertComplete(int index, object value)
	{
		base.OnInsertComplete(index, value);
		if (!(value is TabSplitterPage tabSplitterPage))
		{
			return;
		}
		m_owner.SuspendLayout();
		tabSplitterPage.Visible = false;
		tabSplitterPage.SetOwner(this);
		tabSplitterPage.Parent = m_owner;
		if (m_selectedIndex < 0)
		{
			if (!m_owner.Collapsed || (m_owner.PrimaryPages.SelectedIndex < 0 && m_owner.SecondaryPages.SelectedIndex < 0))
			{
				m_selectedIndex = index;
				m_activeIndex = m_selectedIndex;
				tabSplitterPage.Visible = true;
			}
		}
		else if (index <= m_selectedIndex)
		{
			m_selectedIndex++;
			m_activeIndex = m_selectedIndex;
		}
		m_owner.ResumeLayout();
		m_owner.OnPagesChanged();
	}

	protected override void OnRemove(int index, object value)
	{
		base.OnRemove(index, value);
		if (!m_owner.Disposing && index == m_selectedIndex && !Deselect(value as TabSplitterPage, m_owner.Collapsed))
		{
			SelectedIndex = -1;
		}
	}

	protected override void OnRemoveComplete(int index, object value)
	{
		base.OnRemoveComplete(index, value);
		if (!m_owner.Disposing && value is TabSplitterPage tabSplitterPage)
		{
			m_owner.SuspendLayout();
			tabSplitterPage.SetOwner(null);
			tabSplitterPage.Parent = null;
			if (index < m_selectedIndex)
			{
				m_selectedIndex--;
				m_activeIndex = m_selectedIndex;
			}
			m_owner.ResumeLayout();
			m_owner.OnPagesChanged();
		}
	}

	protected override void OnSetComplete(int index, object oldValue, object newValue)
	{
		base.OnSetComplete(index, oldValue, newValue);
		m_owner.SuspendLayout();
		if (oldValue is TabSplitterPage tabSplitterPage)
		{
			tabSplitterPage.SetOwner(null);
			tabSplitterPage.Parent = null;
		}
		if (newValue is TabSplitterPage tabSplitterPage2)
		{
			tabSplitterPage2.Visible = index == m_selectedIndex;
			tabSplitterPage2.SetOwner(this);
			tabSplitterPage2.Parent = Owner;
		}
		m_owner.ResumeLayout();
		m_owner.OnPagesChanged();
	}

	private void OnSelectedIndexChanged()
	{
		m_owner.OnSelectedIndexChanged(this);
		if (this.SelectedIndexChanged != null)
		{
			this.SelectedIndexChanged(this, EventArgs.Empty);
		}
	}
}
