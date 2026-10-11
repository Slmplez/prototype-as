using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class GroupBarActionList : SyncActionListBase<GroupBar>
{
	private DesignerActionUIService UIservice;

	public GroupBar.GroupBarItemCollection GroupBarItems
	{
		get
		{
			return (GroupBar.GroupBarItemCollection)GetValue("GroupBarItems");
		}
		set
		{
			SetValue("GroupBarItems", value);
		}
	}

	public string Name
	{
		get
		{
			return (string)GetValue("Name");
		}
		set
		{
			SetValue("Name", value);
		}
	}

	public VisualStyle VisualStyle
	{
		get
		{
			return (VisualStyle)GetValue("VisualStyle");
		}
		set
		{
			SetValue("VisualStyle", value);
			UIservice.Refresh(base.Component);
		}
	}

	public Office2007Theme Office2007Theme
	{
		get
		{
			return (Office2007Theme)GetValue("Office2007Theme");
		}
		set
		{
			SetValue("Office2007Theme", value);
		}
	}

	public PopupResizeMode PopupResizeMode
	{
		get
		{
			return (PopupResizeMode)GetValue("PopupResizeMode");
		}
		set
		{
			SetValue("PopupResizeMode", value);
		}
	}

	public bool AllowCollapse
	{
		get
		{
			return (bool)GetValue("AllowCollapse");
		}
		set
		{
			SetValue("AllowCollapse", value);
			UIservice.Refresh(base.Component);
		}
	}

	public bool Collapsed
	{
		get
		{
			return (bool)GetValue("Collapsed");
		}
		set
		{
			SetValue("Collapsed", value);
		}
	}

	public TextAlignment TextAlign
	{
		get
		{
			return (TextAlignment)GetValue("TextAlign");
		}
		set
		{
			SetValue("TextAlign", value);
		}
	}

	public BorderStyle BorderStyle
	{
		get
		{
			return (BorderStyle)GetValue("BorderStyle");
		}
		set
		{
			SetValue("BorderStyle", value);
		}
	}

	public bool FlatLook
	{
		get
		{
			return (bool)GetValue("FlatLook");
		}
		set
		{
			SetValue("FlatLook", value);
		}
	}

	public bool ThemesEnabled
	{
		get
		{
			return (bool)GetValue("ThemesEnabled");
		}
		set
		{
			SetValue("ThemesEnabled", value);
		}
	}

	public bool IntegratedScrolling
	{
		get
		{
			return (bool)GetValue("IntegratedScrolling");
		}
		set
		{
			SetValue("IntegratedScrolling", value);
		}
	}

	public bool StackedMode
	{
		get
		{
			return (bool)GetValue("StackedMode");
		}
		set
		{
			SetValue("StackedMode", value);
		}
	}

	public DockStyle Dock
	{
		get
		{
			return (DockStyle)GetValue("Dock");
		}
		set
		{
			SetValue("Dock", value);
		}
	}

	public GroupBarActionList(IComponent component)
		: base(component)
	{
		UIservice = GetService(typeof(DesignerActionUIService)) as DesignerActionUIService;
		AutoShow = true;
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - GroupBar");
		AddDesignerActionPropertyItem("Name", "Name", "Misc", "Specifies the name of the control.");
		AddDesignerActionPropertyItem("GroupBarItems", "Items Collection", "Misc", "Specifies the collection of groupBarItems.");
		AddDesignerActionMethodItem("AddGroup", "Add Group", "Misc", "Add a new groupBarItem.");
		AddDesignerActionMethodItem("RemoveGroup", "Remove Group", "Misc", "Remove a groupBarItem.");
		AddDesignerActionHeaderItem("Layout");
		AddDesignerActionPropertyItem("Dock", "Dock", "Layout", "Defines which borders of the control are to be bound to the container.");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("VisualStyle", "Visual Style", "Appearance", "Specifies the stlye to be used.");
		if (VisualStyle == VisualStyle.Office2007)
		{
			AddDesignerActionPropertyItem("Office2007Theme", "Office 2007 Color Scheme", "Appearance", "Specifies the Office 2007 Color Scheme if Office 2007 Visual Style selected.");
		}
		AddDesignerActionPropertyItem("TextAlign", "Text Alignment", "Appearance", "Specifies the alignment of the text.");
		AddDesignerActionPropertyItem("BorderStyle", "Border Style", "Appearance", "Specifies the borderStyle for GroupBar.");
		AddDesignerActionPropertyItem("FlatLook", "Flat Look", "Appearance", "Specifies whether groupBarItems should look flat.");
		AddDesignerActionPropertyItem("ThemesEnabled", "Themes Enabled", "Appearance", "Specifies whether themes should be enabled.");
		AddDesignerActionHeaderItem("Behavior");
		AddDesignerActionPropertyItem("PopupResizeMode", "Popup Resize Mode", "Behavior", "Specifies the Popup Resize Mode for GroupBar.");
		AddDesignerActionPropertyItem("AllowCollapse", "Allow Collapse", "Behavior", "Specifies whether collapsing should be enabled.");
		if (AllowCollapse)
		{
			AddDesignerActionPropertyItem("Collapsed", "Collapsed", "Behavior", "Specifies whether groupBar should be collapsed by default.");
		}
		AddDesignerActionPropertyItem("IntegratedScrolling", "Integrated Scrolling", "Behavior", "Specifies whether integrated scrolling should be enabled.");
		AddDesignerActionPropertyItem("StackedMode", "Stacked Mode", "Behavior", "Specifies whether Stacked Mode should be set.");
	}

	public void AddGroup()
	{
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		GroupBarDesigner groupBarDesigner = designerHost.GetDesigner(base.Component) as GroupBarDesigner;
		groupBarDesigner.OnVerbAddGroup(this, EventArgs.Empty);
		UpdateRemoveGroupVerbState(designerHost);
	}

	public void RemoveGroup()
	{
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		GroupBarDesigner groupBarDesigner = designerHost.GetDesigner(base.Component) as GroupBarDesigner;
		groupBarDesigner.OnVerbRemoveGroup(this, EventArgs.Empty);
		UpdateRemoveGroupVerbState(designerHost);
	}

	private void UpdateRemoveGroupVerbState(IDesignerHost idh)
	{
		foreach (DesignerVerb verb in idh.GetDesigner(base.Component).Verbs)
		{
			if (verb.Text == "Remove Group" && !verb.Enabled)
			{
				verb.Enabled = GroupBarItems.Count > 0;
				break;
			}
		}
	}
}
