using System.ComponentModel;
using System.ComponentModel.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class ToolStripExActionList : DesignerActionList
{
	private DesignerActionUIService m_daUIService;

	private ToolStripEx m_toolStrip;

	public bool Office12Mode
	{
		get
		{
			if (m_toolStrip != null)
			{
				return m_toolStrip.Office12Mode;
			}
			return false;
		}
		set
		{
			if (m_toolStrip == null || m_toolStrip.Office12Mode == value)
			{
				return;
			}
			PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(m_toolStrip)["Office12Mode"];
			if (propertyDescriptor != null)
			{
				propertyDescriptor.SetValue(m_toolStrip, value);
				if (DesignerActionUIService != null)
				{
					DesignerActionUIService.Refresh(m_toolStrip);
				}
			}
		}
	}

	private DesignerActionUIService DesignerActionUIService
	{
		get
		{
			if (m_daUIService == null)
			{
				m_daUIService = m_toolStrip.Site.GetService(typeof(DesignerActionUIService)) as DesignerActionUIService;
			}
			return m_daUIService;
		}
	}

	public ToolStripExActionList(IComponent component)
		: base(component)
	{
		m_toolStrip = component as ToolStripEx;
		m_daUIService = null;
	}

	public override DesignerActionItemCollection GetSortedActionItems()
	{
		DesignerActionItemCollection designerActionItemCollection = new DesignerActionItemCollection();
		if (m_toolStrip != null)
		{
			InheritanceAttribute inheritanceAttribute = (InheritanceAttribute)TypeDescriptor.GetAttributes(m_toolStrip)[typeof(InheritanceAttribute)];
			if (inheritanceAttribute != null && inheritanceAttribute.InheritanceLevel == InheritanceLevel.NotInherited)
			{
				designerActionItemCollection.Add(new DesignerActionPropertyItem("Office12Mode", "Office 12 Mode", "Appearance", "Forces usage of Office12 style renderer"));
			}
		}
		return designerActionItemCollection;
	}
}
