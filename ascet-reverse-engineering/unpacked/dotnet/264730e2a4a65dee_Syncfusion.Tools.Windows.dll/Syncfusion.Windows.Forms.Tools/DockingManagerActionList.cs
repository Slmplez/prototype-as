using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class DockingManagerActionList : SyncActionListBase<DockingManager>
{
	public DockLabelAlignmentStyle DockLabelAlignment
	{
		get
		{
			DockLabelAlignmentStyle result = DockLabelAlignmentStyle.Default;
			if (base.Component != null)
			{
				DockingManager dockingManager = base.Component as DockingManager;
				result = dockingManager.DockLabelAlignment;
			}
			return result;
		}
		set
		{
			SetValue("DockLabelAlignment", value);
		}
	}

	public DockTabAlignmentStyle DockTabAlignment
	{
		get
		{
			DockTabAlignmentStyle result = DockTabAlignmentStyle.Bottom;
			if (base.Component != null)
			{
				DockingManager dockingManager = base.Component as DockingManager;
				result = dockingManager.DockTabAlignment;
			}
			return result;
		}
		set
		{
			SetValue("DockTabAlignment", value);
		}
	}

	public bool PaintBorders
	{
		get
		{
			bool result = true;
			if (base.Component != null)
			{
				DockingManager dockingManager = base.Component as DockingManager;
				result = dockingManager.PaintBorders;
			}
			return result;
		}
		set
		{
			SetValue("PaintBorders", value);
		}
	}

	public bool ThemesEnabled
	{
		get
		{
			bool result = false;
			if (base.Component != null)
			{
				DockingManager dockingManager = base.Component as DockingManager;
				result = dockingManager.ThemesEnabled;
			}
			return result;
		}
		set
		{
			SetValue("ThemesEnabled", value);
		}
	}

	public bool DockToFill
	{
		get
		{
			bool result = false;
			if (base.Component != null)
			{
				DockingManager dockingManager = base.Component as DockingManager;
				result = dockingManager.DockToFill;
			}
			return result;
		}
		set
		{
			SetValue("DockToFill", value);
		}
	}

	public bool DisallowFloating
	{
		get
		{
			bool result = false;
			if (base.Component != null)
			{
				DockingManager dockingManager = base.Component as DockingManager;
				result = dockingManager.DisallowFloating;
			}
			return result;
		}
		set
		{
			SetValue("DisallowFloating", value);
		}
	}

	public DragProviderStyle DragProviderStyle
	{
		get
		{
			DragProviderStyle result = DragProviderStyle.VS2005;
			if (base.Component != null)
			{
				DockingManager dockingManager = base.Component as DockingManager;
				result = dockingManager.DragProviderStyle;
			}
			return result;
		}
		set
		{
			SetValue("DragProviderStyle", value);
		}
	}

	public VisualStyle VisualStyle
	{
		get
		{
			VisualStyle result = VisualStyle.Default;
			if (base.Component != null)
			{
				DockingManager dockingManager = base.Component as DockingManager;
				result = dockingManager.VisualStyle;
			}
			return result;
		}
		set
		{
			SetValue("VisualStyle", value);
		}
	}

	public ImageList ImageList
	{
		get
		{
			ImageList result = null;
			if (base.Component != null)
			{
				DockingManager dockingManager = base.Component as DockingManager;
				result = dockingManager.ImageList;
			}
			return result;
		}
		set
		{
			SetValue("ImageList", value);
		}
	}

	public bool PersistState
	{
		get
		{
			bool result = false;
			if (base.Component != null)
			{
				DockingManager dockingManager = base.Component as DockingManager;
				result = dockingManager.PersistState;
			}
			return result;
		}
		set
		{
			SetValue("PersistState", value);
		}
	}

	public DockingManagerActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools for Windows Forms 2.0");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("DockLabelAlignment", "Dock Label Alignment Style", "Appearance", "Determines the alignment of dock labels.");
		AddDesignerActionPropertyItem("DockTabAlignment", "Dock Tab Alignment Style", "Appearance", "Determines the alignment of tabs in dock tab groups.");
		AddDesignerActionPropertyItem("PaintBorders", "Paint Borders", "Appearance", "Determines whether to paint docked controls borders");
		AddDesignerActionPropertyItem("ThemesEnabled", "Themes Enabled", "Appearance", "Specifies whether XP Themes should be used for docking windows");
		AddDesignerActionHeaderItem("Behavior");
		AddDesignerActionPropertyItem("DockToFill", "Dock with Fill Style", "Behavior", "Gets/Sets a value indicating whether docked controls will occupy the form's full client region.");
		AddDesignerActionPropertyItem("DisallowFloating", "Disallow Floating", "Behavior", "Gets/Sets a value indicating whether controls are allowed to be floated.");
		AddDesignerActionPropertyItem("DragProviderStyle", "Drag Provider Style", "Behavior", "Styles of helper frames which are used to dock a control easily into different edges.");
		AddDesignerActionPropertyItem("VisualStyle", "Docking Windows Visual Style", "Behavior", "Gets/Sets the different visual styles for docking windows.");
		AddDesignerActionPropertyItem("ImageList", "Image List", "Behavior", "Gets/Sets the Imagelist for docking manager.");
		AddDesignerActionHeaderItem("Serialization");
		AddDesignerActionPropertyItem("PersistState", "Docking Windows State Persist", "Serialization", "Gets/Sets the state of docking windows should be persist during application closing or not.");
	}
}
