using System;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class MenuButtonTypeItem : ToolStripMenuItem
{
	private Type m_itemType;

	public override string Text
	{
		get
		{
			if (m_itemType != null)
			{
				return m_itemType.Name;
			}
			return base.Text;
		}
		set
		{
			base.Text = value;
		}
	}

	public static MenuButtonTypeItem[] Items => new MenuButtonTypeItem[7]
	{
		new MenuButtonTypeItem(typeof(ToolStripButton)),
		new MenuButtonTypeItem(typeof(ToolStripSplitButton)),
		new MenuButtonTypeItem(typeof(ToolStripDropDownButton)),
		new MenuButtonTypeItem(typeof(ToolStripMenuItem)),
		new MenuButtonTypeItem(typeof(ToolStripPanelItem)),
		new MenuButtonTypeItem(typeof(ToolStripComboBox)),
		new MenuButtonTypeItem(typeof(ToolStripTextBox))
	};

	public MenuButtonTypeItem(Type itemType)
	{
		m_itemType = itemType;
	}

	public ToolStripItem CreateItem(IServiceProvider serviceProvider)
	{
		ToolStripItem toolStripItem = null;
		if (serviceProvider != null && serviceProvider.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			toolStripItem = Activator.CreateInstance(m_itemType) as ToolStripItem;
			if (toolStripItem != null)
			{
				if (!(toolStripItem is ToolStripControlHost))
				{
					toolStripItem.DisplayStyle = ToolStripItemDisplayStyle.ImageAndText;
					toolStripItem.Image = new Bitmap(typeof(ToolStripButton), "blank.bmp");
				}
				designerHost.Container.Add(toolStripItem);
				toolStripItem.Text = toolStripItem.Name;
			}
		}
		return toolStripItem;
	}

	public override string ToString()
	{
		return base.ToString();
	}
}
