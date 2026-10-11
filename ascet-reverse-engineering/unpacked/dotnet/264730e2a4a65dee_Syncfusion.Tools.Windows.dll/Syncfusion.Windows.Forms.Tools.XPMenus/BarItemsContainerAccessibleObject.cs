using System;
using System.Collections;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class BarItemsContainerAccessibleObject : Control.ControlAccessibleObject
{
	private bool m_bNeedInitChildList;

	private ArrayList childList;

	protected IBarItemContainer container;

	private Hashtable htItemsVsObject = new Hashtable();

	public override string Help => "";

	public override AccessibleStates State => base.State;

	public override string Value
	{
		get
		{
			return null;
		}
		set
		{
		}
	}

	public BarItemsContainerAccessibleObject(IBarItemContainer container, Control parent)
		: base(parent)
	{
		if (!(parent is IBarItemContainerControl))
		{
			throw new ArgumentException("parent should implement the IBarItemContainerControl interface.", "parent");
		}
		SetBarItemContainer(container);
	}

	public void SetBarItemContainer(IBarItemContainer container)
	{
		if (this.container != container)
		{
			this.container = container;
			htItemsVsObject.Clear();
			if (childList != null)
			{
				childList.Clear();
			}
			if (!m_bNeedInitChildList)
			{
				childList = null;
			}
		}
	}

	public override void Select(AccessibleSelection flags)
	{
		base.Select(flags);
	}

	public override AccessibleObject GetFocused()
	{
		return null;
	}

	public override int GetChildCount()
	{
		if (childList == null)
		{
			InitChildItemsAccessibilityObjects();
		}
		return childList.Count;
	}

	private void InitChildItemsAccessibilityObjects()
	{
		childList = new ArrayList();
		htItemsVsObject.Clear();
		if (container != null)
		{
			AccessibilityUtils.AddItemsToList(childList, container, base.Owner, this, htItemsVsObject);
		}
	}

	public override AccessibleObject GetChild(int index)
	{
		if (childList != null && index < childList.Count)
		{
			return childList[index] as AccessibleObject;
		}
		return null;
	}

	public int GetAccessibleObjectIndexFromBarItem(BarItem item)
	{
		m_bNeedInitChildList = true;
		if (childList == null)
		{
			InitChildItemsAccessibilityObjects();
		}
		m_bNeedInitChildList = false;
		return childList.IndexOf(GetAccessibleObjectFromBarItem(item));
	}

	public AccessibleObject GetAccessibleObjectFromBarItem(BarItem item)
	{
		return htItemsVsObject[item] as AccessibleObject;
	}

	public override AccessibleObject HitTest(int x, int y)
	{
		if (childList == null)
		{
			InitChildItemsAccessibilityObjects();
		}
		BarItem barItem = ((IBarItemContainerControl)base.Owner).HitTest(x, y);
		if (barItem != null && htItemsVsObject[barItem] != null)
		{
			return (AccessibleObject)htItemsVsObject[barItem];
		}
		return this;
	}
}
