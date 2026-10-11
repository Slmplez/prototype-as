using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools.Controls.RibbonTabControl.Interfaces;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools.Controls.RibbonTabBar.Design;

public class RibbonTabBarHeaderDesigner : ParentControlDesigner, IHeaderDesigner
{
	private RibbonTabBarHeader m_control;

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		m_control = (RibbonTabBarHeader)base.Component;
		EnableDesignMode(m_control.TabHeaderControl, "TabHeaderControl");
		EnableDesignMode(m_control.LeftPanel, "LeftPanel");
		EnableDesignMode(m_control.TopPanel, "TopPanel");
	}

	public RibbonHeaderControlDesigner GetTabHeaderDesigner()
	{
		if (m_control.TabHeaderControl.Site.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			return designerHost.GetDesigner(m_control.TabHeaderControl) as RibbonHeaderControlDesigner;
		}
		return null;
	}
}
