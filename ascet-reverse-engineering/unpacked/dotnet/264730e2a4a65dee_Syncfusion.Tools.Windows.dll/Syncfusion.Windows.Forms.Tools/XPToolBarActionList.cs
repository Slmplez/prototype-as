using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

public class XPToolBarActionList : SyncActionListBase<XPToolBar>
{
	public BarItems Items
	{
		get
		{
			BarItems result = null;
			if (base.Control != null)
			{
				XPToolBar xPToolBar = base.Control;
				result = xPToolBar.Items;
			}
			return result;
		}
		set
		{
			SetValue("Items", value);
		}
	}

	public bool LargeIcons
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				XPToolBar xPToolBar = base.Control;
				result = xPToolBar.LargeIcons;
			}
			return result;
		}
		set
		{
			SetValue("LargeIcons", value);
		}
	}

	public bool ThemesEnabled
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				XPToolBar xPToolBar = base.Control;
				result = xPToolBar.ThemesEnabled;
			}
			return result;
		}
		set
		{
			SetValue("ThemesEnabled", value);
		}
	}

	public VisualStyle Style
	{
		get
		{
			VisualStyle result = VisualStyle.OfficeXP;
			if (base.Control != null)
			{
				XPToolBar xPToolBar = base.Control;
				result = xPToolBar.Style;
			}
			return result;
		}
		set
		{
			SetValue("Style", value);
		}
	}

	public bool ShowChevron
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				XPToolBar xPToolBar = base.Control;
				result = xPToolBar.ShowChevron;
			}
			return result;
		}
		set
		{
			SetValue("ShowChevron", value);
		}
	}

	public DockStyle Dock
	{
		get
		{
			DockStyle result = DockStyle.None;
			if (base.Control != null)
			{
				XPToolBar xPToolBar = base.Control;
				result = xPToolBar.Dock;
			}
			return result;
		}
		set
		{
			SetValue("Dock", value);
		}
	}

	public XPToolBarActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - XPToolBar");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("Style", "Style", "Appearance", "Specifies the VisualStyle to be used.");
		AddDesignerActionPropertyItem("Items", "Items Collection", "Appearance", "Specfies the collection of barItems");
		AddDesignerActionPropertyItem("LargeIcons", "Large Icons", "Appearance", "Specifies whether large icons should be used.");
		AddDesignerActionPropertyItem("ThemesEnabled", "ThemesEnabled", "Appearance", "Specifies whether themes should be enabled.");
		AddDesignerActionHeaderItem("Misc");
		AddDesignerActionPropertyItem("ShowChevron", "Show Chevron", "Misc", "Specifies whether chevron button should be visible or not.");
		AddDesignerActionHeaderItem("Layout");
		AddDesignerActionPropertyItem("Dock", "Dock", "Layout", "Defines which borders of the control are to be bound to the container.");
	}
}
