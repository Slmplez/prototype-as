using System;
using System.Collections;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class XPMenusProvider : IContextMenuProvider
{
	protected PopupMenu popupMenu;

	protected Hashtable textHandlerMap;

	protected bool m_bNeedAddRemoveButton = true;

	private PopupMenu Menu
	{
		get
		{
			if (popupMenu == null)
			{
				InitializeContextMenu();
			}
			return popupMenu;
		}
	}

	public event EventHandler Popup
	{
		add
		{
			Menu.Popup += value;
		}
		remove
		{
			Menu.Popup -= value;
		}
	}

	public event EventHandler Collapse
	{
		add
		{
			Menu.Collapse += value;
		}
		remove
		{
			Menu.Collapse -= value;
		}
	}

	public XPMenusProvider()
	{
		textHandlerMap = new Hashtable();
	}

	public int GetItemsCount()
	{
		return Menu.ParentBarItem.Items.Count;
	}

	public bool NeedAddRemoveButtons()
	{
		return m_bNeedAddRemoveButton;
	}

	public void InitializeContextMenu()
	{
		if (popupMenu != null)
		{
			DisposeContextMenu();
		}
		popupMenu = new PopupMenu();
		popupMenu.ParentBarItem = new ParentBarItem();
	}

	public void SetVisualStyle(VisualStyle style)
	{
		popupMenu.ParentBarItem.Style = style;
	}

	public void AddContextMenuItem(string itemtext, EventHandler handler)
	{
		AddContextMenuItem(string.Empty, itemtext, handler);
	}

	public void AddContextMenuItem(string parentitemtext, string itemtext, EventHandler handler)
	{
		if (itemtext == "&Add or Remove Buttons")
		{
			m_bNeedAddRemoveButton = true;
		}
		if (popupMenu == null)
		{
			popupMenu = new PopupMenu();
			popupMenu.ParentBarItem = new ParentBarItem();
		}
		if (parentitemtext == string.Empty)
		{
			if (RecurseGetMenuItem(popupMenu.ParentBarItem, itemtext) == null)
			{
				BarItem value;
				if (handler != null)
				{
					value = new BarItem(itemtext, ContextMenuCommandHandler);
					textHandlerMap.Add(itemtext, handler);
				}
				else
				{
					value = new ParentBarItem(itemtext);
				}
				popupMenu.ParentBarItem.Items.Add(value);
			}
			return;
		}
		BarItem barItem = RecurseGetMenuItem(popupMenu.ParentBarItem, parentitemtext);
		if (barItem == null || !(barItem is ParentBarItem))
		{
			return;
		}
		ParentBarItem parentBarItem = barItem as ParentBarItem;
		if (RecurseGetMenuItem(parentBarItem, itemtext) == null)
		{
			BarItem value2;
			if (handler != null)
			{
				value2 = new BarItem(itemtext, ContextMenuCommandHandler);
				textHandlerMap.Add(itemtext, handler);
			}
			else
			{
				value2 = new ParentBarItem(itemtext);
			}
			parentBarItem.Items.Add(value2);
		}
	}

	public void SetContextMenuItemImage(string itemtext, ImageList list, int index)
	{
		if (list != null && list.Images != null && index < list.Images.Count && popupMenu != null)
		{
			BarItem barItem = RecurseGetMenuItem(popupMenu.ParentBarItem, itemtext);
			if (barItem != null)
			{
				barItem.ImageList = list;
				barItem.ImageIndex = index;
			}
		}
	}

	public void SetContextMenuItemShortcut(string itemtext, Shortcut key)
	{
		if (popupMenu != null)
		{
			BarItem barItem = RecurseGetMenuItem(popupMenu.ParentBarItem, itemtext);
			if (barItem != null)
			{
				barItem.Shortcut = key;
			}
		}
	}

	public Shortcut GetContextMenuItemShortcut(string itemtext)
	{
		if (popupMenu != null)
		{
			BarItem barItem = RecurseGetMenuItem(popupMenu.ParentBarItem, itemtext);
			if (barItem != null)
			{
				return barItem.Shortcut;
			}
		}
		return Shortcut.None;
	}

	public void SetContextMenuItemChecked(string itemtext, bool bchecked)
	{
		if (popupMenu != null)
		{
			BarItem barItem = RecurseGetMenuItem(popupMenu.ParentBarItem, itemtext);
			if (barItem != null)
			{
				barItem.Checked = bchecked;
			}
		}
	}

	public bool GetContextMenuItemChecked(string itemtext)
	{
		if (popupMenu != null)
		{
			BarItem barItem = RecurseGetMenuItem(popupMenu.ParentBarItem, itemtext);
			if (barItem != null)
			{
				return barItem.Checked;
			}
		}
		return false;
	}

	public void SetContextMenuItemEnabled(string itemtext, bool benabled)
	{
		if (popupMenu != null)
		{
			BarItem barItem = RecurseGetMenuItem(popupMenu.ParentBarItem, itemtext);
			if (barItem != null)
			{
				barItem.Enabled = benabled;
			}
		}
	}

	public bool GetContextMenuItemEnabled(string itemtext)
	{
		if (popupMenu != null)
		{
			BarItem barItem = RecurseGetMenuItem(popupMenu.ParentBarItem, itemtext);
			if (barItem != null)
			{
				return barItem.Enabled;
			}
		}
		return false;
	}

	public void SetContextMenuItemSeparator(string itemtext, bool binsertseparator)
	{
		if (popupMenu == null)
		{
			return;
		}
		BarItem barItem = RecurseGetMenuItem(popupMenu.ParentBarItem, itemtext);
		if (barItem != null)
		{
			ParentBarItem parentBarItem = RecurseGetParentMenuItem(popupMenu.ParentBarItem, itemtext);
			if (binsertseparator)
			{
				parentBarItem.BeginGroupAt(barItem);
			}
			else
			{
				parentBarItem.RemoveGroupAt(barItem);
			}
		}
	}

	public void RemoveContextMenuItem(string itemtext)
	{
		if (itemtext == "&Add or Remove Buttons")
		{
			m_bNeedAddRemoveButton = false;
		}
		else if (popupMenu != null)
		{
			ParentBarItem parentBarItem = RecurseGetParentMenuItem(popupMenu.ParentBarItem, itemtext);
			if (parentBarItem != null)
			{
				BarItem obj = RecurseGetMenuItem(parentBarItem, itemtext);
				parentBarItem.Items.Remove(obj);
			}
		}
	}

	public void ShowContextMenu(Control owner, Point pt)
	{
		if (popupMenu != null)
		{
			popupMenu.Show(owner, pt);
		}
	}

	public void DisposeContextMenu()
	{
		if (popupMenu != null)
		{
			RecurseDisposeMenuItems(popupMenu.ParentBarItem);
			popupMenu.Dispose();
		}
		textHandlerMap.Clear();
	}

	public void Clear()
	{
		if (popupMenu != null)
		{
			popupMenu.ParentBarItem.Items.Clear();
		}
		textHandlerMap.Clear();
	}

	protected void ContextMenuCommandHandler(object sender, EventArgs args)
	{
		string text = (sender as BarItem).Text;
		EventHandler eventHandler = (textHandlerMap[text] as EventHandler).Invoke;
		eventHandler(new ContextMenuItem(this, text), args);
	}

	protected bool RecurseContainsMenuItem(ParentBarItem parentitem, string itemtext)
	{
		foreach (BarItem item in parentitem.Items)
		{
			if (item.Text == itemtext)
			{
				return true;
			}
			if (item is ParentBarItem && RecurseContainsMenuItem(item as ParentBarItem, itemtext))
			{
				return true;
			}
		}
		return false;
	}

	protected BarItem RecurseGetMenuItem(ParentBarItem parentitem, string itemtext)
	{
		if (parentitem != null && parentitem.Items != null)
		{
			foreach (BarItem item in parentitem.Items)
			{
				if (item.Text == itemtext)
				{
					return item;
				}
				if (item is ParentBarItem)
				{
					BarItem barItem2 = RecurseGetMenuItem(item as ParentBarItem, itemtext);
					if (barItem2 != null)
					{
						return barItem2;
					}
				}
			}
		}
		return null;
	}

	protected ParentBarItem RecurseGetParentMenuItem(ParentBarItem parentitem, string itemtext)
	{
		foreach (BarItem item in parentitem.Items)
		{
			if (item.Text == itemtext)
			{
				return parentitem;
			}
			if (item is ParentBarItem)
			{
				ParentBarItem parentBarItem = RecurseGetParentMenuItem(item as ParentBarItem, itemtext);
				if (parentBarItem != null)
				{
					return parentBarItem;
				}
			}
		}
		return null;
	}

	protected void RecurseDisposeMenuItems(ParentBarItem parentitem)
	{
		BarItem[] array = new BarItem[parentitem.Items.Count];
		int num = 0;
		foreach (BarItem item in parentitem.Items)
		{
			array[num++] = item;
		}
		parentitem.Items.Clear();
		for (num = 0; num < array.GetLength(0); num++)
		{
			BarItem barItem2 = array[num];
			if (barItem2 is ParentBarItem)
			{
				RecurseDisposeMenuItems(barItem2 as ParentBarItem);
			}
			barItem2.Dispose();
		}
	}
}
