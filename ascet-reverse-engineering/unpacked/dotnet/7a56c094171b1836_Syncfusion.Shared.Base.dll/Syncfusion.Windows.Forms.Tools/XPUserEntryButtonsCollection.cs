using System;
using System.Collections;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
public class XPUserEntryButtonsCollection : CollectionBase
{
	private XpUserEntry m_xpUserEntry;

	public XPUserEntryButton this[int index]
	{
		get
		{
			return (XPUserEntryButton)base.List[index];
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

	internal XPUserEntryButtonsCollection(XpUserEntry xpUserEntry)
	{
		if (xpUserEntry == null)
		{
			throw new NullReferenceException("XPUserEntry can't be NULL");
		}
		m_xpUserEntry = xpUserEntry;
	}

	public void Add(XPUserEntryButton button)
	{
		if (button == null)
		{
			throw new NullReferenceException("Button can't be NULL");
		}
		base.List.Add(button);
	}

	public bool Contains(XPUserEntryButton button)
	{
		if (button == null)
		{
			throw new NullReferenceException("Button can't be NULL");
		}
		return base.List.Contains(button);
	}

	public void Remove(XPUserEntryButton button)
	{
		if (button == null)
		{
			throw new NullReferenceException("Button can't be NULL");
		}
		if (!Contains(button))
		{
			throw new NullReferenceException("button is't include in collection");
		}
		base.List.Remove(button);
	}

	public int IndexOf(XPUserEntryButton button)
	{
		if (button == null)
		{
			throw new NullReferenceException("Button can't be NULL");
		}
		return base.List.IndexOf(button);
	}

	public void Insert(int index, XPUserEntryButton button)
	{
		if (button == null)
		{
			throw new NullReferenceException("button can't be NULL");
		}
		if (index < 0 || index >= base.List.Count)
		{
			throw new IndexOutOfRangeException("index");
		}
		base.List.Insert(index, button);
	}

	protected override void OnInsert(int index, object value)
	{
		base.OnInsert(index, value);
		XPUserEntryButton xPUserEntryButton = (XPUserEntryButton)value;
		if (xPUserEntryButton.Name == "Button")
		{
			xPUserEntryButton.Name = "Button" + base.Count;
		}
		if (xPUserEntryButton.Index == -1)
		{
			xPUserEntryButton.Index = base.Count;
		}
		OnCollectionChanged();
	}
}
