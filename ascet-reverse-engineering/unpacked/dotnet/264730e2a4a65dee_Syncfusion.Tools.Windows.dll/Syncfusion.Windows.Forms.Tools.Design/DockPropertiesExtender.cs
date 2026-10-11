using System;
using System.ComponentModel;
using System.Drawing.Design;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Design;

[ProvideProperty("DockIcon", typeof(Control))]
[ProvideProperty("OuterDockAbility", typeof(Control))]
[ProvideProperty("AutoHideOnLoad", typeof(Control))]
[ProvideProperty("HiddenOnLoad", typeof(Control))]
[ProvideProperty("DockLabel", typeof(Control))]
[ProvideProperty("DockAbility", typeof(Control))]
[ProvideProperty("AllowFloating", typeof(Control))]
[ProvideProperty("CustomCaptionButtons", typeof(Control))]
[ProvideProperty("FloatOnly", typeof(Control))]
[ProvideProperty("FreezeResize", typeof(Control))]
[ProvideProperty("MDIChildIcon", typeof(Control))]
public sealed class DockPropertiesExtender : IExtenderProvider
{
	public DockingManager dockingMgr;

	public DockingManagerDesigner dockingMgrDesigner;

	public DockPropertiesExtender(DockingManagerDesigner designer)
	{
		dockingMgrDesigner = designer;
		dockingMgr = designer.Component as DockingManager;
	}

	public bool CanExtend(object target)
	{
		bool flag = dockingMgr.CanExtend(target);
		if (flag)
		{
			flag = dockingMgr.GetEnableDocking(target as Control);
		}
		return flag;
	}

	[Description("Enables docking.")]
	[Category("Syncfusion Docking")]
	[RefreshProperties(RefreshProperties.All)]
	public void SetEnableDocking(Control ctrl, bool value)
	{
		if (!dockingMgrDesigner.bReloading)
		{
			dockingMgr.SetEnableDocking(ctrl, value);
			dockingMgr.UpdateDesigner();
		}
	}

	[Description("gets docking")]
	[RefreshProperties(RefreshProperties.All)]
	[DefaultValue(true)]
	[Category("Syncfusion Docking")]
	public bool GetEnableDocking(Control ctrl)
	{
		return dockingMgr.GetEnableDocking(ctrl);
	}

	[Description("Sets if the control can be transited to floating state.")]
	[RefreshProperties(RefreshProperties.All)]
	[DefaultValue(true)]
	[Category("Syncfusion Docking")]
	public void SetAllowFloating(Control ctrl, bool allowFloat)
	{
		if (!dockingMgrDesigner.bReloading)
		{
			dockingMgr.SetAllowFloating(ctrl, allowFloat);
			dockingMgr.UpdateDesigner();
		}
	}

	[Category("Syncfusion Docking")]
	[Description("TRUE if the control can be transited to floating state.")]
	[DefaultValue(true)]
	[RefreshProperties(RefreshProperties.All)]
	public bool GetAllowFloating(Control ctrl)
	{
		return dockingMgr.GetAllowFloating(ctrl);
	}

	[Description("The text displayed by the docking window caption.")]
	[RefreshProperties(RefreshProperties.All)]
	[DefaultValue("")]
	[Category("Syncfusion Docking")]
	public void SetDockLabel(Control ctrl, string strtext)
	{
		if (!dockingMgrDesigner.bReloading)
		{
			dockingMgr.SetDockLabel(ctrl, strtext);
			dockingMgr.UpdateDesigner();
		}
	}

	[Description("The text displayed by the docking window caption.")]
	[DefaultValue("")]
	[Category("Syncfusion Docking")]
	[RefreshProperties(RefreshProperties.All)]
	public string GetDockLabel(Control ctrl)
	{
		return dockingMgr.GetDockLabel(ctrl);
	}

	[DefaultValue(false)]
	[Category("Syncfusion Docking")]
	[RefreshProperties(RefreshProperties.All)]
	[Description("Specifies whether the docking window should not be resized.")]
	public void SetFreezeResize(Control ctrl, bool freeze)
	{
		dockingMgr.SetFreezeResize(ctrl, freeze);
	}

	[DefaultValue(false)]
	[RefreshProperties(RefreshProperties.All)]
	[Category("Syncfusion Docking")]
	[Description("Specifies whether the docking window should not be resized.")]
	public bool GetFreezeResize(Control ctrl)
	{
		return dockingMgr.GetFreezeResize(ctrl);
	}

	[Category("Syncfusion Docking")]
	[Description("The index of the image associated with this docking window.")]
	[RefreshProperties(RefreshProperties.All)]
	[DefaultValue(-1)]
	public void SetDockIcon(Control ctrl, int index)
	{
		if (!dockingMgrDesigner.bReloading)
		{
			dockingMgr.SetDockIcon(ctrl, index);
		}
	}

	[DefaultValue(-1)]
	[Description("The index of the image associated with this docking window.")]
	[RefreshProperties(RefreshProperties.All)]
	[Category("Syncfusion Docking")]
	public int GetDockIcon(Control ctrl)
	{
		return dockingMgr.GetDockIcon(ctrl);
	}

	[DefaultValue(-1)]
	[Description("The index of the image associated with this docking window at MDI Child state.")]
	[Category("Syncfusion Docking")]
	[RefreshProperties(RefreshProperties.All)]
	public int GetMDIChildIcon(Control ctrl)
	{
		return dockingMgr.GetMDIChildIcon(ctrl);
	}

	[DefaultValue(-1)]
	[Description("The index of the image associated with this docking window at MDI Child state.")]
	[RefreshProperties(RefreshProperties.All)]
	[Category("Syncfusion Docking")]
	public void SetMDIChildIcon(Control ctrl, int index)
	{
		if (!dockingMgrDesigner.bReloading)
		{
			dockingMgr.SetMDIChildIcon(ctrl, index);
		}
	}

	[RefreshProperties(RefreshProperties.All)]
	[DefaultValue(false)]
	[Description("Makes the docking window a float-only control.")]
	[Category("Syncfusion Docking")]
	public void SetFloatOnly(Control ctrl, bool bfloat)
	{
		if (!dockingMgrDesigner.bReloading)
		{
			dockingMgr.SetFloatOnly(ctrl, bfloat);
		}
	}

	[Description("Makes the docking window a float-only control.")]
	[RefreshProperties(RefreshProperties.All)]
	[Category("Syncfusion Docking")]
	[DefaultValue(false)]
	public bool GetFloatOnly(Control ctrl)
	{
		return dockingMgr.GetFloatOnly(ctrl);
	}

	[RefreshProperties(RefreshProperties.All)]
	[Category("Syncfusion Docking")]
	[DefaultValue(false)]
	[Description("Specifies whether the docking window should be in the autohide mode on application startup.")]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public void SetAutoHideOnLoad(Control ctrl, bool bautohide)
	{
		if (!dockingMgrDesigner.bReloading)
		{
			dockingMgr.SetAutoHideOnLoad(ctrl, bautohide);
		}
	}

	[Description("Specifies whether the docking window should be in the autohide mode on application startup.")]
	[Category("Syncfusion Docking")]
	[DefaultValue(false)]
	[RefreshProperties(RefreshProperties.All)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public bool GetAutoHideOnLoad(Control ctrl)
	{
		return dockingMgr.GetAutoHideOnLoad(ctrl);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Category("Syncfusion Docking")]
	[DefaultValue(false)]
	[RefreshProperties(RefreshProperties.All)]
	[Description("Specifies whether the docking window should be hidden on application startup.")]
	public void SetHiddenOnLoad(Control ctrl, bool bhidden)
	{
		if (!dockingMgrDesigner.bReloading)
		{
			dockingMgr.SetHiddenOnLoad(ctrl, bhidden);
		}
	}

	[Category("Syncfusion Docking")]
	[DefaultValue(false)]
	[RefreshProperties(RefreshProperties.All)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Description("Specifies whether the docking window should be hidden on application startup.")]
	public bool GetHiddenOnLoad(Control ctrl)
	{
		return dockingMgr.GetHiddenOnLoad(ctrl);
	}

	[Category("Syncfusion Docking")]
	[Description("Indicates where user can dock in this control using drag providers (Whidbey and VS2005 drag providers only).")]
	[DefaultValue("All")]
	[RefreshProperties(RefreshProperties.All)]
	public void SetDockAbility(Control ctrl, string strAbility)
	{
		DockAbility ability = (DockAbility)Enum.Parse(typeof(DockAbility), strAbility);
		dockingMgr.SetDockAbility(ctrl, ability);
		dockingMgr.UpdateDesigner();
	}

	[DefaultValue("All")]
	[Category("Syncfusion Docking")]
	[Description("Indicates where user can dock in this control using drag providers (Whidbey and VS2005 drag providers only).")]
	[Editor(typeof(DockAbilityEditor), typeof(UITypeEditor))]
	[RefreshProperties(RefreshProperties.All)]
	public string GetDockAbility(Control ctrl)
	{
		return dockingMgr.GetDockAbility(ctrl).ToString();
	}

	[Description("Indicates where user can dock this control using drag providers (Whidbey and VS2005 drag providers only).")]
	[Category("Syncfusion Docking")]
	[DefaultValue("All")]
	[RefreshProperties(RefreshProperties.All)]
	public void SetOuterDockAbility(Control ctrl, string strAbility)
	{
		DockAbility ability = (DockAbility)Enum.Parse(typeof(DockAbility), strAbility);
		dockingMgr.SetOuterDockAbility(ctrl, ability);
		dockingMgr.UpdateDesigner();
	}

	[Category("Syncfusion Docking")]
	[Description("Indicates where user can dock this control using drag providers (Whidbey and VS2005 drag providers only).")]
	[DefaultValue("All")]
	[RefreshProperties(RefreshProperties.All)]
	[Editor(typeof(DockAbilityEditor), typeof(UITypeEditor))]
	public string GetOuterDockAbility(Control ctrl)
	{
		return dockingMgr.GetOuterDockAbility(ctrl).ToString();
	}

	[Description("Contains custom caption buttons collection for each docked control.")]
	[Category("Syncfusion Docking")]
	public void SetCustomCaptionButtons(Control ctrl, CaptionButtonsCollection buttons)
	{
		dockingMgr.SetCustomCaptionButtons(ctrl, buttons);
	}

	[Description("Contains custom caption buttons collection for each docked control.")]
	[Category("Syncfusion Docking")]
	public CaptionButtonsCollection GetCustomCaptionButtons(Control ctrl)
	{
		return dockingMgr.GetCustomCaptionButtons(ctrl);
	}
}
