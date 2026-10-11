using System.ComponentModel;
using System.Drawing;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class SplashPanelActionList : SyncActionListBase<SplashPanel>
{
	public int AnimationSpeed
	{
		get
		{
			int result = 10;
			if (base.Control != null)
			{
				SplashPanel splashPanel = base.Control;
				result = splashPanel.AnimationSpeed;
			}
			return result;
		}
		set
		{
			SetValue("AnimationSpeed", value);
		}
	}

	public int TimerInterval
	{
		get
		{
			int result = 5000;
			if (base.Control != null)
			{
				SplashPanel splashPanel = base.Control;
				result = splashPanel.TimerInterval;
			}
			return result;
		}
		set
		{
			SetValue("TimerInterval", value);
		}
	}

	public bool ShowAnimation
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				SplashPanel splashPanel = base.Control;
				result = splashPanel.ShowAnimation;
			}
			return result;
		}
		set
		{
			SetValue("ShowAnimation", value);
		}
	}

	public string Name
	{
		get
		{
			string result = " ";
			if (base.Control != null)
			{
				SplashPanel splashPanel = base.Control;
				result = splashPanel.Name;
			}
			return result;
		}
		set
		{
			SetValue("Name", value);
		}
	}

	public SplashAlignment DesktopAlignment
	{
		get
		{
			SplashAlignment result = SplashAlignment.Center;
			if (base.Control != null)
			{
				SplashPanel splashPanel = base.Control;
				result = splashPanel.DesktopAlignment;
			}
			return result;
		}
		set
		{
			SetValue("DesktopAlignment", value);
		}
	}

	public bool ShowAsTopMost
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				SplashPanel splashPanel = base.Control;
				result = splashPanel.ShowAsTopMost;
			}
			return result;
		}
		set
		{
			SetValue("ShowAsTopMost", value);
		}
	}

	public bool SuspendAutoCloseWhenMouseOver
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				SplashPanel splashPanel = base.Control;
				result = splashPanel.SuspendAutoCloseWhenMouseOver;
			}
			return result;
		}
		set
		{
			SetValue("SuspendAutoCloseWhenMouseOver", value);
		}
	}

	public bool ShowInTaskbar
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				SplashPanel splashPanel = base.Control;
				result = splashPanel.ShowInTaskbar;
			}
			return result;
		}
		set
		{
			SetValue("ShowInTaskbar", value);
		}
	}

	public bool CloseOnClick
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				SplashPanel splashPanel = base.Control;
				result = splashPanel.CloseOnClick;
			}
			return result;
		}
		set
		{
			SetValue("CloseOnClick", value);
		}
	}

	public Icon FormIcon
	{
		get
		{
			Icon result = null;
			if (base.Control != null)
			{
				SplashPanel splashPanel = base.Control;
				result = splashPanel.FormIcon;
			}
			return result;
		}
		set
		{
			SetValue("FormIcon", value);
		}
	}

	public SplashPanelActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - SplashPanel");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("ShowAnimation", "Show Animation", "Appearance", "Specifies if the window display should be animated.");
		AddDesignerActionPropertyItem("ShowAsTopMost", "Show as TopMost", "Appearance", "Specifies if the SplashPanel is to be displayed as a TopMost window.");
		AddDesignerActionPropertyItem("AnimationSpeed", "Animation Speed", "Appearance", "The speed at which the animation unfolds on the screen and the SplashPanel becomes visible.");
		AddDesignerActionPropertyItem("DesktopAlignment", "Desktop Alignment", "Appearance", "Specifies how the splash screen has to be aligned when it appears initially with respect to the desktop.");
		AddDesignerActionHeaderItem("Behavior");
		AddDesignerActionPropertyItem("SuspendAutoCloseWhenMouseOver", "Suspend AutoClose when MouseOver", "Behavior", "Specifies if the SplashPanel should not be closed when the mouse is over it.");
		AddDesignerActionPropertyItem("CloseOnClick", "Close on Click", "Behavior", "The SplashPanel will be closed if this set to true and the user clicks the SplashPanel.");
		AddDesignerActionPropertyItem("ShowInTaskbar", "Show in Taskbar", "Behavior", "Specifies if the SplashPanel is to be shown in the Taskbar");
		AddDesignerActionPropertyItem("TimerInterval", "TimerInterval", "Behavior", "Gets or sets the period of time the splash window should be visible for.");
		AddDesignerActionPropertyItem("FormIcon", "Form Icon", "Behavior", "Specifies the icon for the SplashPanel when displayed in the Taskbar.");
		AddDesignerActionHeaderItem("Design");
		AddDesignerActionPropertyItem("Name", "Name", "Design", "Indicates the Name used in code to identify the Object.");
	}
}
