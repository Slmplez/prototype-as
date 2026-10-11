using System.Collections;
using System.ComponentModel;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class StatusBarAdvActionList : SyncActionListBase<StatusBarAdv>
{
	public StatusBarAdvPanel[] Panels
	{
		get
		{
			ArrayList arrayList = new ArrayList();
			if (base.Control != null)
			{
				StatusBarAdv statusBarAdv = base.Control;
				for (int i = 0; i < statusBarAdv.Panels.Length; i++)
				{
					if (!arrayList.Contains(statusBarAdv.Panels[i]))
					{
						arrayList.Add(statusBarAdv.Panels[i]);
					}
				}
			}
			return (StatusBarAdvPanel[])arrayList.ToArray(typeof(StatusBarAdvPanel));
		}
		set
		{
			SetValue("Panels", value);
		}
	}

	public FlowAlignment Alignment
	{
		get
		{
			FlowAlignment result = FlowAlignment.ChildConstraints;
			if (base.Control != null)
			{
				StatusBarAdv statusBarAdv = base.Control;
				result = statusBarAdv.Alignment;
			}
			return result;
		}
		set
		{
			SetValue("Alignment", value);
		}
	}

	public bool SizingGrip
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				StatusBarAdv statusBarAdv = base.Control;
				result = statusBarAdv.SizingGrip;
			}
			return result;
		}
		set
		{
			SetValue("SizingGrip", value);
		}
	}

	public bool AutoHeightControls
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				StatusBarAdv statusBarAdv = base.Control;
				result = statusBarAdv.AutoHeightControls;
			}
			return result;
		}
		set
		{
			SetValue("AutoHeightControls", value);
		}
	}

	public bool AutoSize
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				StatusBarAdv statusBarAdv = base.Control;
				result = statusBarAdv.AutoSize;
			}
			return result;
		}
		set
		{
			SetValue("AutoSize", value);
		}
	}

	public string Name
	{
		get
		{
			string result = " ";
			if (base.Control != null)
			{
				StatusBarAdv statusBarAdv = base.Control;
				result = statusBarAdv.Name;
			}
			return result;
		}
		set
		{
			SetValue("Name", value);
		}
	}

	public bool ThemesEnabled
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				StatusBarAdv statusBarAdv = base.Control;
				result = statusBarAdv.ThemesEnabled;
			}
			return result;
		}
		set
		{
			SetValue("ThemesEnabled", value);
		}
	}

	public StatusBarAdvActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - StatusBarAdv");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("ThemesEnabled", "ThemesEnabled", "Appearance", "Indicates whether the Statusbar will draw a themed background. Indicated settings: BorderStyle = None.");
		AddDesignerActionPropertyItem("Alignment", "Alignment", "Appearance", "Gets or sets the alignment of the panels.");
		AddDesignerActionPropertyItem("AutoHeightControls", "AutoHeight Controls", "Appearance", "Indicates whether the StatusBar will resize the height of the panels according to it`s height.");
		AddDesignerActionPropertyItem("SizingGrip", "Sizing Grip", "Appearance", "Indicates if the Sizing grip is visible.");
		AddDesignerActionPropertyItem("Panels", "Panels", "Appearance", "Gets or sets the StatusBarAdvPanel controls contained in the StatusBarAdv.");
		AddDesignerActionHeaderItem("Layout");
		AddDesignerActionPropertyItem("AutoSize", "AutoSize", "Layout", "Indicates whether the control will size automatically to fit its contents.");
		AddDesignerActionHeaderItem("Design");
		AddDesignerActionPropertyItem("Name", "Name", "Design", "Indicates the Name used in code to identify the Object.");
	}
}
