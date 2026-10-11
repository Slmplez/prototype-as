using System;
using System.Collections;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public class StandardMenusProvider : IContextMenuProvider
{
	protected ContextMenu cntxtMenu;

	protected Hashtable handlerMap;

	protected bool m_bNeedAddRemoveButton = true;

	internal ContextMenu Menu
	{
		get
		{
			if (cntxtMenu == null)
			{
				InitializeContextMenu();
			}
			return cntxtMenu;
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

	public StandardMenusProvider()
	{
		handlerMap = new Hashtable();
	}

	public int GetItemsCount()
	{
		return Menu.MenuItems.Count;
	}

	public bool NeedAddRemoveButtons()
	{
		return m_bNeedAddRemoveButton;
	}

	public void InitializeContextMenu()
	{
		if (cntxtMenu != null)
		{
			DisposeContextMenu();
		}
		cntxtMenu = new ContextMenu();
	}

	public void SetVisualStyle(VisualStyle style)
	{
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
		if (cntxtMenu == null)
		{
			cntxtMenu = new ContextMenu();
		}
		if (parentitemtext == string.Empty)
		{
			if (RecurseGetMenuItem(cntxtMenu.MenuItems, itemtext) == null)
			{
				handlerMap.Add(itemtext, handler);
				cntxtMenu.MenuItems.Add(new MenuItem(itemtext, ContextMenuCommandHandler));
			}
			return;
		}
		MenuItem menuItem = RecurseGetMenuItem(cntxtMenu.MenuItems, parentitemtext);
		if (menuItem != null && RecurseGetMenuItem(menuItem.MenuItems, itemtext) == null)
		{
			handlerMap.Add(itemtext, handler);
			menuItem.MenuItems.Add(new MenuItem(itemtext, ContextMenuCommandHandler));
		}
	}

	public void SetContextMenuItemImage(string itemtext, ImageList list, int index)
	{
	}

	public void SetContextMenuItemShortcut(string itemtext, Shortcut key)
	{
		if (cntxtMenu != null)
		{
			MenuItem menuItem = RecurseGetMenuItem(cntxtMenu.MenuItems, itemtext);
			if (menuItem != null)
			{
				menuItem.Shortcut = key;
			}
		}
	}

	public Shortcut GetContextMenuItemShortcut(string itemtext)
	{
		if (cntxtMenu != null)
		{
			MenuItem menuItem = RecurseGetMenuItem(cntxtMenu.MenuItems, itemtext);
			if (menuItem != null)
			{
				return menuItem.Shortcut;
			}
		}
		return Shortcut.None;
	}

	public void SetContextMenuItemChecked(string itemtext, bool bchecked)
	{
		if (cntxtMenu != null)
		{
			MenuItem menuItem = RecurseGetMenuItem(cntxtMenu.MenuItems, itemtext);
			if (menuItem != null)
			{
				menuItem.Checked = bchecked;
			}
		}
	}

	public bool GetContextMenuItemChecked(string itemtext)
	{
		if (cntxtMenu != null)
		{
			MenuItem menuItem = RecurseGetMenuItem(cntxtMenu.MenuItems, itemtext);
			if (menuItem != null)
			{
				return menuItem.Checked;
			}
		}
		return false;
	}

	public void SetContextMenuItemEnabled(string itemtext, bool benabled)
	{
		if (cntxtMenu != null)
		{
			MenuItem menuItem = RecurseGetMenuItem(cntxtMenu.MenuItems, itemtext);
			if (menuItem != null)
			{
				menuItem.Enabled = benabled;
			}
		}
	}

	public bool GetContextMenuItemEnabled(string itemtext)
	{
		if (cntxtMenu != null)
		{
			MenuItem menuItem = RecurseGetMenuItem(cntxtMenu.MenuItems, itemtext);
			if (menuItem != null)
			{
				return menuItem.Enabled;
			}
		}
		return false;
	}

	public void SetContextMenuItemSeparator(string itemtext, bool binsertseparator)
	{
		if (cntxtMenu == null)
		{
			return;
		}
		MenuItem menuItem = RecurseGetMenuItem(cntxtMenu.MenuItems, itemtext);
		if (menuItem == null)
		{
			return;
		}
		Menu.MenuItemCollection menuItemCollection = RecurseGetParentCollection(cntxtMenu.MenuItems, itemtext);
		if (binsertseparator)
		{
			menuItemCollection.Remove(menuItem);
			menuItemCollection.Add("-");
			menuItemCollection.Add(menuItem);
			return;
		}
		int num = menuItemCollection.IndexOf(menuItem);
		if (num > 0)
		{
			MenuItem menuItem2 = menuItemCollection[num - 1];
			if (menuItem2.Text == "-")
			{
				menuItemCollection.Remove(menuItem2);
			}
		}
	}

	public void RemoveContextMenuItem(string itemtext)
	{
		if (itemtext == "&Add or Remove Buttons")
		{
			m_bNeedAddRemoveButton = false;
		}
		else if (cntxtMenu != null)
		{
			Menu.MenuItemCollection menuItemCollection = RecurseGetParentCollection(cntxtMenu.MenuItems, itemtext);
			if (menuItemCollection != null)
			{
				MenuItem item = RecurseGetMenuItem(menuItemCollection, itemtext);
				menuItemCollection.Remove(item);
			}
		}
	}

	public void ShowContextMenu(Control owner, Point pt)
	{
		if (cntxtMenu != null)
		{
			cntxtMenu.Show(owner, pt);
		}
	}

	public void DisposeContextMenu()
	{
		if (cntxtMenu != null)
		{
			RecurseDisposeMenuItems(cntxtMenu.MenuItems);
			cntxtMenu.Dispose();
		}
		handlerMap.Clear();
	}

	public void Clear()
	{
		if (cntxtMenu != null)
		{
			cntxtMenu.MenuItems.Clear();
			handlerMap.Clear();
		}
	}

	protected void ContextMenuCommandHandler(object sender, EventArgs args)
	{
		string text = (sender as MenuItem).Text;
		EventHandler eventHandler = (handlerMap[text] as EventHandler).Invoke;
		eventHandler(new ContextMenuItem(this, text), args);
	}

	protected MenuItem RecurseGetMenuItem(Menu.MenuItemCollection collection, string itemtext)
	{
		if (collection != null)
		{
			foreach (MenuItem item in collection)
			{
				if (item.Text == itemtext)
				{
					return item;
				}
				if (item.MenuItems != null)
				{
					MenuItem menuItem2 = RecurseGetMenuItem(item.MenuItems, itemtext);
					if (menuItem2 != null)
					{
						return menuItem2;
					}
				}
			}
		}
		return null;
	}

	protected Menu.MenuItemCollection RecurseGetParentCollection(Menu.MenuItemCollection collection, string itemtext)
	{
		foreach (MenuItem item in collection)
		{
			if (item.Text == itemtext)
			{
				return collection;
			}
			Menu.MenuItemCollection menuItemCollection = RecurseGetParentCollection(item.MenuItems, itemtext);
			if (menuItemCollection != null)
			{
				return menuItemCollection;
			}
		}
		return null;
	}

	protected void RecurseDisposeMenuItems(Menu.MenuItemCollection collection)
	{
		MenuItem[] array = new MenuItem[collection.Count];
		int num = 0;
		foreach (MenuItem item in collection)
		{
			array[num++] = item;
		}
		collection.Clear();
		for (num = 0; num < array.GetLength(0); num++)
		{
			MenuItem menuItem2 = array[num];
			RecurseDisposeMenuItems(menuItem2.MenuItems);
			menuItem2.Dispose();
		}
	}
}
