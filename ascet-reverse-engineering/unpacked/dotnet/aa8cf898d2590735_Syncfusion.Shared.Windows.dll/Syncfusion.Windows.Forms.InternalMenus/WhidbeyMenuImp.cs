#define TRACE
using System;
using System.Collections;
using System.Diagnostics;
using System.Resources;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.InternalMenus;

internal class WhidbeyMenuImp : MenuImp
{
	public override object[] CreateMenus(ResourceManager manager, MenuItemStructCollection[] structCollectionArray)
	{
		resourceManager = manager;
		ArrayList arrayList = new ArrayList();
		foreach (MenuItemStructCollection defaultXmlStructCollection in structCollectionArray)
		{
			arrayList.Add(CreateMenu(defaultXmlStructCollection));
		}
		return (MenuStrip[])arrayList.ToArray(typeof(MenuStrip));
	}

	private MenuStrip CreateMenu(MenuItemStructCollection defaultXmlStructCollection)
	{
		MenuItemStructCollection.MenuItemStructEnumerator enumerator = defaultXmlStructCollection.GetEnumerator();
		MenuStrip menuStrip = new MenuStrip();
		CreateMenuItems(menuStrip.Items, enumerator);
		return menuStrip;
	}

	private void CreateMenuItems(ToolStripItemCollection items, MenuItemStructCollection.MenuItemStructEnumerator ienum)
	{
		while (ienum.MoveNext())
		{
			ToolStripItem toolStripItem;
			if (ienum.Current.text != null && (ienum.Current.text.Trim() == "" || ienum.Current.text.Trim() == "-"))
			{
				toolStripItem = new ToolStripSeparator();
			}
			else
			{
				toolStripItem = new ToolStripMenuItem();
				toolStripItem.Text = ienum.Current.text;
				if (ienum.Current.iconResource != null)
				{
					int intIndex = Images.ImageCollection.IndexOf(ienum.Current.iconResource, addIfNotFound: true, resourceManager);
					toolStripItem.Image = Images.ImageCollection[intIndex].bmp;
				}
				if (ienum.Current.eventHandler != null)
				{
					ActionInfo actionInfo = new ActionInfo(MenuLoader.EventActionNamespace + ienum.Current.eventHandler.ToString(), MenuLoader.ParentObject, toolStripItem);
					if (actionInfo.EventHandler != null)
					{
						toolStripItem.Click += actionInfo.EventHandler;
					}
				}
				if (ienum.Current.children != null && ienum.Current.children.Count > 0)
				{
					CreateMenuItems(((ToolStripMenuItem)toolStripItem).DropDownItems, ienum.Current.children.GetEnumerator());
				}
			}
			try
			{
				items.Add(toolStripItem);
			}
			catch (Exception ex)
			{
				Trace.WriteLine(ex.ToString() + "\n\n" + ienum.Current.text);
			}
		}
	}
}
