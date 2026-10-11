using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

public class BarManagerActionList : SyncActionListBase<BarManager>
{
	internal IDesignerHost iDesignerHost;

	public bool AutoLoadToolBarPositions
	{
		get
		{
			bool result = true;
			if (base.Component != null && base.Component is MainFrameBarManager)
			{
				MainFrameBarManager mainFrameBarManager = base.Component as MainFrameBarManager;
				result = mainFrameBarManager.AutoLoadToolBarPositions;
			}
			return result;
		}
		set
		{
			SetValue("AutoLoadToolBarPositions", value);
		}
	}

	public bool AutoPersistCustomization
	{
		get
		{
			bool result = true;
			if (base.Component != null && base.Component is MainFrameBarManager)
			{
				MainFrameBarManager mainFrameBarManager = base.Component as MainFrameBarManager;
				result = mainFrameBarManager.AutoPersistCustomization;
			}
			return result;
		}
		set
		{
			SetValue("AutoPersistCustomization", value);
		}
	}

	public VisualStyle Style
	{
		get
		{
			VisualStyle result = VisualStyle.OfficeXP;
			if (base.Component != null)
			{
				if (base.Component is MainFrameBarManager)
				{
					MainFrameBarManager mainFrameBarManager = base.Component as MainFrameBarManager;
					result = mainFrameBarManager.Style;
				}
				else if (base.Component is ChildFrameBarManager)
				{
					ChildFrameBarManager childFrameBarManager = base.Component as ChildFrameBarManager;
					result = childFrameBarManager.Style;
				}
			}
			return result;
		}
		set
		{
			SetValue("Style", value);
		}
	}

	public ImageList ImageList
	{
		get
		{
			if (base.Component is BarManager barManager)
			{
				return barManager.ImageList;
			}
			return null;
		}
		set
		{
			SetValue("ImageList", value);
		}
	}

	public ImageListAdv ImageListAdv
	{
		get
		{
			if (base.Component is BarManager barManager)
			{
				return barManager.ImageListAdv;
			}
			return null;
		}
		set
		{
			SetValue("ImageListAdv", value);
		}
	}

	public ImageList LargeImageList
	{
		get
		{
			if (base.Component is BarManager barManager)
			{
				return barManager.LargeImageList;
			}
			return null;
		}
		set
		{
			SetValue("LargeImageList", value);
		}
	}

	public ImageListAdv LargeImageListAdv
	{
		get
		{
			if (base.Component is BarManager barManager)
			{
				return barManager.LargeImageListAdv;
			}
			return null;
		}
		set
		{
			SetValue("LargeImageListAdv", value);
		}
	}

	public bool LargeIcons
	{
		get
		{
			bool result = false;
			if (base.Component != null)
			{
				if (base.Component is MainFrameBarManager)
				{
					MainFrameBarManager mainFrameBarManager = base.Component as MainFrameBarManager;
					result = mainFrameBarManager.LargeIcons;
				}
				else if (base.Component is ChildFrameBarManager)
				{
					ChildFrameBarManager childFrameBarManager = base.Component as ChildFrameBarManager;
					result = childFrameBarManager.LargeIcons;
				}
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
			if (base.Component != null && base.Component is MainFrameBarManager)
			{
				MainFrameBarManager mainFrameBarManager = base.Component as MainFrameBarManager;
				result = mainFrameBarManager.ThemesEnabled;
			}
			return result;
		}
		set
		{
			SetValue("ThemesEnabled", value);
		}
	}

	public BarManagerActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		if (base.Component is MainFrameBarManager)
		{
			AddDesignerActionHeaderItem("Essential Tools - MainFrameBarManager");
		}
		else if (base.Component is ChildFrameBarManager)
		{
			AddDesignerActionHeaderItem("Essential Tools - ChildFrameBarManager");
		}
		AddDesignerActionHeaderItem("Misc");
		AddDesignerActionMethodItem("Customize", "Customize...", "Misc", "Customize Menus Dialog.");
		if (base.Component is MainFrameBarManager)
		{
			AddDesignerActionMethodItem("AddDetachedCommandBar", "Add Detached CommandBar", "Misc", "Adds a CommandBar.");
			AddDesignerActionMethodItem("AddDetachedControlBar", "Add Detached ControlBar", "Misc", "Adds a ControlBar.");
		}
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("Style", "Style", "Appearance", "Specifies the style to be used for menus.");
		AddDesignerActionPropertyItem("ImageList", "ImageList", "Appearance", "Specifies the ImageList used when in small icons mode.");
		AddDesignerActionPropertyItem("ImageListAdv", "ImageListAdv", "Appearance", "Specifies the ImageListAdv used when in small icons mode.");
		AddDesignerActionPropertyItem("LargeImageList", "LargeImageList", "Appearance", "Specifies the ImageList used when in large icons mode");
		AddDesignerActionPropertyItem("LargeImageListAdv", "LargeImageListAdv", "Appearance", "Specifies the ImageListAdv used when in large icons mode");
		if (base.Component is MainFrameBarManager)
		{
			AddDesignerActionPropertyItem("LargeIcons", "LargeIcons", "Appearance", "Specifies whether large icons should be used");
			AddDesignerActionPropertyItem("ThemesEnabled", "ThemesEnabled", "Appearance", "Specifies whether themes should be enabled.");
			AddDesignerActionHeaderItem("Persistance");
			AddDesignerActionPropertyItem("AutoLoadToolBarPositions", "AutoLoadToolBarPositions", "Persistance", "Specifies whether the persisted toolbars positions should be loaded automatically.");
			AddDesignerActionPropertyItem("AutoPersistCustomization", "AutoPersistCustomization", "Persistance", "Specifies whether the toolBars should be persisted when customized.");
		}
	}

	public void Customize()
	{
		if (base.Component != null)
		{
			BarManager barManager = base.Component as BarManager;
			barManager.Customize((IDesignerHost)GetService(typeof(IDesignerHost)));
		}
	}

	public void AddDetachedControlBar()
	{
		iDesignerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		ControlBar value = (ControlBar)iDesignerHost.CreateComponent(typeof(ControlBar));
		if (base.Component is MainFrameBarManager)
		{
			MainFrameBarManager mainFrameBarManager = base.Component as MainFrameBarManager;
			mainFrameBarManager.DetachedCommandBars.Add(value);
		}
	}

	public void AddDetachedCommandBar()
	{
		iDesignerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		CommandBar value = (CommandBar)iDesignerHost.CreateComponent(typeof(CommandBar));
		if (base.Component is MainFrameBarManager)
		{
			MainFrameBarManager mainFrameBarManager = base.Component as MainFrameBarManager;
			mainFrameBarManager.DetachedCommandBars.Add(value);
		}
	}
}
