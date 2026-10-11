using System;
using System.Collections;
using System.Resources;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.InternalMenus;

internal class WhidbeyToolBarImp : ToolBarImp
{
	public override object[] CreateToolBars(ResourceManager manager, ToolBarItemStructCollection[] structCollectionArray)
	{
		resourceManager = manager;
		ArrayList arrayList = new ArrayList();
		foreach (ToolBarItemStructCollection defaultToolBarStructCollection in structCollectionArray)
		{
			arrayList.Add(CreateToolBar(defaultToolBarStructCollection));
		}
		return (ToolStrip[])arrayList.ToArray(typeof(ToolStrip));
	}

	private ToolStrip CreateToolBar(ToolBarItemStructCollection defaultToolBarStructCollection)
	{
		ToolStrip toolStrip = new ToolStrip();
		CreateToolBarItems(toolStrip, defaultToolBarStructCollection);
		return toolStrip;
	}

	private void CreateToolBarItems(ToolStrip toolStrip, ToolBarItemStructCollection items)
	{
		new ToolTip();
		toolStrip.Name = items.ToolBarName;
		int num = 0;
		ToolBarItemStructCollection.ToolBarItemStructEnumerator enumerator = items.GetEnumerator();
		while (enumerator.MoveNext())
		{
			if (enumerator.Current.shortcutText == "")
			{
				toolStrip.Items.Add(new ToolStripSeparator());
				continue;
			}
			num = Images.ImageCollection.IndexOf(enumerator.Current.iconResource, addIfNotFound: true, resourceManager);
			ToolStripButton toolStripButton = new ToolStripButton(Images.ImageCollection[num].bmp);
			toolStripButton.Tag = new ActionInfo(MenuLoader.EventActionNamespace + enumerator.Current.eventHandler, MenuLoader.ParentObject, toolStripButton);
			toolStripButton.AutoToolTip = true;
			toolStripButton.ToolTipText = enumerator.Current.shortcutText;
			string text;
			if ((text = enumerator.Current.style.Trim().ToLower()) != null && text == "togglebutton")
			{
				toolStripButton.CheckOnClick = true;
			}
			else
			{
				toolStripButton.CheckOnClick = false;
			}
			toolStrip.Items.Add(toolStripButton);
			toolStripButton.Click += button_Click;
		}
	}

	private void button_Click(object sender, EventArgs e)
	{
		if (((ToolStripButton)sender).Tag != null)
		{
			((ActionInfo)((ToolStripButton)sender).Tag).EventHandler.DynamicInvoke(sender, e);
		}
	}
}
