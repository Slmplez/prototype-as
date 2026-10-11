using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Collections;

namespace Syncfusion.Windows.Forms.Tools;

[DesignerSerializer(typeof(TabGroupCollectionSerializer), typeof(CodeDomSerializer))]
[ProvideProperty("TabGroup", typeof(ToolStripItem))]
public class TabGroupCollection : ObservableList<ToolStripTabGroup>, IExtenderProvider
{
	private RibbonControlAdvHeader m_header;

	internal RibbonControlAdvHeader Header => m_header;

	internal TabGroupCollection(RibbonControlAdvHeader header)
	{
		if (header == null)
		{
			throw new ArgumentNullException("header");
		}
		m_header = header;
	}

	public bool CanExtend(object extendee)
	{
		if (extendee is ToolStripItem && ((ToolStripItem)extendee).Owner == m_header)
		{
			return !(extendee is IQuickItem);
		}
		return false;
	}

	[Description("Tab group of ToolStripItem.")]
	[TypeConverter(typeof(TabGroupTypeConverter))]
	public ToolStripTabGroup GetTabGroup(Component component)
	{
		ToolStripItem item = component as ToolStripItem;
		return m_header.GetItemGroup(item);
	}

	public void SetTabGroup(Component component, ToolStripTabGroup value)
	{
		ToolStripItem item = component as ToolStripItem;
		m_header.SetItemGroup(item, value);
	}
}
