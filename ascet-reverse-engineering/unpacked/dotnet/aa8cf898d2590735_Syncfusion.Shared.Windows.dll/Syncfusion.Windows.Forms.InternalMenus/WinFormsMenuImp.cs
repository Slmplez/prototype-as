#define TRACE
using System;
using System.Collections;
using System.Diagnostics;
using System.Resources;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.InternalMenus;

internal class WinFormsMenuImp : MenuImp
{
	public override object[] CreateMenus(ResourceManager manager, MenuItemStructCollection[] structCollectionArray)
	{
		resourceManager = manager;
		ArrayList arrayList = new ArrayList();
		foreach (MenuItemStructCollection defaultXmlStructCollection in structCollectionArray)
		{
			arrayList.Add(CreateMenu(defaultXmlStructCollection));
		}
		return (Menu[])arrayList.ToArray(typeof(Menu));
	}

	private Menu CreateMenu(MenuItemStructCollection defaultXmlStructCollection)
	{
		MenuItemStructCollection.MenuItemStructEnumerator enumerator = defaultXmlStructCollection.GetEnumerator();
		Menu menu = new MainMenu();
		Menu.MenuItemCollection collection = new Menu.MenuItemCollection(menu);
		CreateMenuItems(collection, enumerator);
		return menu;
	}

	private void CreateMenuItems(Menu.MenuItemCollection collection, MenuItemStructCollection.MenuItemStructEnumerator ienum)
	{
		while (ienum.MoveNext())
		{
			MenuItem menuItem = new MenuItem();
			menuItem.Text = ienum.Current.text;
			_ = ienum.Current.parent;
			if (ienum.Current.shortcut != null && ienum.Current.shortcut != "")
			{
				menuItem.Shortcut = GetShortcutByStringRep(ienum.Current.shortcut);
			}
			if (ienum.Current.eventHandler != null)
			{
				ActionInfo actionInfo = new ActionInfo(MenuLoader.EventActionNamespace + ienum.Current.eventHandler.ToString(), MenuLoader.ParentObject, menuItem);
				if (actionInfo.EventHandler != null)
				{
					menuItem.Click += actionInfo.EventHandler;
				}
			}
			if (ienum.Current.children != null && ienum.Current.children.Count > 0)
			{
				CreateMenuItems(menuItem.MenuItems, ienum.Current.children.GetEnumerator());
			}
			try
			{
				collection.Add(menuItem);
			}
			catch (Exception ex)
			{
				Trace.WriteLine(ex.ToString() + "\n\n" + ienum.Current.text);
			}
		}
	}
}
