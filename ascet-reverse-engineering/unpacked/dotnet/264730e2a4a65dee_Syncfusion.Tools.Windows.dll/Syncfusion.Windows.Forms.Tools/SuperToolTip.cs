using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Windows.Forms.Tools.Design;
using Syncfusion.Windows.Forms.Tools.Win32API;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(SuperToolTip), "ToolboxIcons.ToolTip.bmp")]
[Description("Provides options to set Office 2007 Style ScreenTips.")]
[ProvideProperty("MenuButtonToolTip", typeof(RibbonControlAdv))]
[TypeConverter(typeof(SuperToolTipTypeConverter))]
[ProvideProperty("ToolTip", typeof(Component))]
public class SuperToolTip : Component, IExtenderProvider, INativeMessageFilter, IMessageFilter
{
	public enum FadingType
	{
		System,
		Blend
	}

	public enum SuperToolTipStyle
	{
		Normal,
		Balloon
	}

	private Dictionary<Component, ToolTipInfo> m_tipsInfo;

	private Control m_owner;

	private ToolTipControl m_control;

	private ToolTipControl m_trackControl;

	private NativeMessageHandler m_handler;

	private IntPtr nhook = IntPtr.Zero;

	private RightToLeft m_rightToLeft;

	private WindowsAPI.HookProc hook;

	private static ArrayList m_tooltips;

	[DefaultValue(0)]
	[Description("Indicates the duration of the ToolTip (in sec) when mouse hovers over a control.")]
	public int ToolTipDuration
	{
		get
		{
			return m_control.ToolTipDuration;
		}
		set
		{
			m_control.ToolTipDuration = value;
		}
	}

	[Description("Indicates the time (in msec) before the tooltip to be shown.")]
	[DefaultValue(0)]
	public int InitialDelay
	{
		get
		{
			return m_control.InitialDelay;
		}
		set
		{
			m_control.InitialDelay = value;
		}
	}

	[Description("Indicates the maximum width of SuperToolTip.")]
	[DefaultValue(0)]
	public int MaxWidth
	{
		get
		{
			return m_control.MaxWidth;
		}
		set
		{
			m_control.MaxWidth = value;
		}
	}

	[Description("Gets or sets fading type")]
	[DefaultValue(typeof(FadingType), "Blend")]
	public FadingType UseFading
	{
		get
		{
			return m_control.UseFading;
		}
		set
		{
			m_control.UseFading = value;
		}
	}

	[DefaultValue(typeof(RightToLeft), "No")]
	[Description("Gets or sets a value indicating whether tooltip info is displayed from right to left")]
	public RightToLeft RightToLeft
	{
		get
		{
			Control owner = m_owner;
			if (owner != null)
			{
				m_rightToLeft = owner.RightToLeft;
			}
			return m_rightToLeft;
		}
		set
		{
			if (m_rightToLeft != value)
			{
				m_rightToLeft = value;
			}
		}
	}

	[Description("Gets or sets style of the SuperToolTip")]
	[DefaultValue(typeof(SuperToolTipStyle), "Normal")]
	public SuperToolTipStyle Style
	{
		get
		{
			return m_control.Style;
		}
		set
		{
			m_control.Style = value;
		}
	}

	[Description("Occurs when the tool tip pops up.")]
	public event PopupToolTipHandler PopupToolTip
	{
		add
		{
			m_control.PopupToolTip += value;
		}
		remove
		{
			m_control.PopupToolTip -= value;
		}
	}

	[Description("Occurs when the tool tip is updated.")]
	public event UpdateToolTipHandler UpdateToolTip
	{
		add
		{
			m_control.UpdateToolTip += value;
		}
		remove
		{
			m_control.UpdateToolTip -= value;
		}
	}

	static SuperToolTip()
	{
		m_tooltips = new ArrayList();
	}

	public SuperToolTip()
		: this(null)
	{
	}

	public SuperToolTip(Control owner)
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(SuperToolTip));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		hook = MouseHookProc;
		m_tooltips.Add(this);
		m_tipsInfo = new Dictionary<Component, ToolTipInfo>();
		m_owner = owner;
		m_control = new ToolTipControl(this);
		m_trackControl = new ToolTipControl(this);
		m_handler = new NativeMessageHandler();
		m_handler.MessageFilter = this;
		m_control.Popup += OnPopup;
		m_control.HandleCreated += OnToolTipControlHandleCreated;
		m_control.HandleDestroyed += OnToolTipControlHandleDestroyed;
		if (m_owner != null)
		{
			m_owner.HandleCreated += OnOwnerHandleCreated;
			m_owner.HandleDestroyed += OnOwnerHandleDestroyed;
			m_owner.Disposed += m_owner_Disposed;
			if (m_owner.IsHandleCreated)
			{
				OnOwnerHandleCreated(m_owner, EventArgs.Empty);
			}
		}
	}

	private void m_owner_Disposed(object sender, EventArgs e)
	{
		Dispose();
	}

	public void Show(ToolTipInfo ttInfo, Point position)
	{
		Show(ttInfo, position, m_control.DisplayTime);
	}

	public void Show(ToolTipInfo ttInfo, Point position, int displayTime)
	{
		if (ttInfo != null && !m_trackControl.IsDisposed)
		{
			Hide();
			m_trackControl.MaxWidth = MaxWidth;
			m_trackControl.UseFading = UseFading;
			m_trackControl.Style = Style;
			m_trackControl.ShowToolTip(ttInfo, position, displayTime);
		}
	}

	public void Hide()
	{
		m_control.HideToolTip();
		m_trackControl.HideToolTip();
	}

	internal static void SetToolTips(Component target, Component source)
	{
		foreach (SuperToolTip tooltip in m_tooltips)
		{
			tooltip.Hide();
			tooltip.SetToolTip(target, tooltip.GetToolTip(source));
		}
	}

	internal static void RemoveToolTips(Component target)
	{
		foreach (SuperToolTip tooltip in m_tooltips)
		{
			tooltip.Hide();
			tooltip.SetToolTip(target, null);
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (m_tipsInfo != null)
			{
				m_tipsInfo.Clear();
				m_tipsInfo = null;
			}
			if (m_control != null)
			{
				m_control.Popup -= OnPopup;
				m_control.Dispose();
				m_control = null;
			}
			if (m_trackControl != null)
			{
				m_trackControl.Dispose();
				m_trackControl = null;
			}
			if (m_handler != null)
			{
				m_handler.MessageFilter = null;
				m_handler = null;
			}
			if (m_owner != null)
			{
				m_owner.HandleCreated -= OnOwnerHandleCreated;
				m_owner.HandleDestroyed -= OnOwnerHandleDestroyed;
				m_owner.Disposed -= m_owner_Disposed;
			}
		}
		m_tooltips.Remove(this);
		base.Dispose(disposing);
	}

	bool IExtenderProvider.CanExtend(object extendee)
	{
		Component component = Cast(extendee);
		if (component != null)
		{
			if ((!(component is Control) || component is XPToolBar) && !(component is BarItem))
			{
				return m_control.GetToolTipService(component.GetType()) != null;
			}
			return true;
		}
		return false;
	}

	[Description("Gets or sets SuperToolTip associated with a component.")]
	[ExtenderProvidedProperty]
	public ToolTipInfo GetToolTip(Component component)
	{
		Component component2 = Cast(component);
		if (component2 != null && m_tipsInfo.ContainsKey(component2))
		{
			ToolTipInfo toolTipInfo = m_tipsInfo[component2];
			toolTipInfo.RightToLeft = RightToLeft;
			return toolTipInfo;
		}
		return null;
	}

	[ExtenderProvidedProperty]
	[Description("Gets or sets SuperToolTip associated with a component.")]
	public void SetToolTip(Component component, ToolTipInfo value)
	{
		Component component2 = Cast(component);
		if (component2 == null)
		{
			return;
		}
		if (value != null)
		{
			if (!m_tipsInfo.ContainsKey(component2))
			{
				m_control.AddTool(component2);
			}
			m_tipsInfo[component2] = value;
		}
		else if (m_tipsInfo.ContainsKey(component2))
		{
			m_control.DelTool(component2);
			m_tipsInfo.Remove(component2);
		}
	}

	private bool ShouldSerializeToolTip(Component component)
	{
		Component component2 = Cast(component);
		if (component2 != null)
		{
			return m_tipsInfo.ContainsKey(component2);
		}
		return false;
	}

	private void ResetToolTip(Component component)
	{
		SetToolTip(component, null);
	}

	[Category("Menu Button")]
	[ExtenderProvidedProperty]
	public ToolTipInfo GetMenuButtonToolTip(RibbonControlAdv ribbon)
	{
		if (ribbon != null && ribbon.HeaderInternal != null)
		{
			return GetToolTip(ribbon.HeaderInternal.MenuButton);
		}
		return null;
	}

	[ExtenderProvidedProperty]
	[Category("Menu Button")]
	public void SetMenuButtonToolTip(RibbonControlAdv ribbon, ToolTipInfo value)
	{
		if (ribbon != null && ribbon.HeaderInternal != null)
		{
			SetToolTip(ribbon.HeaderInternal.MenuButton, value);
		}
	}

	private bool ShouldSerializeMenuButtonToolTip(RibbonControlAdv ribbon)
	{
		if (ribbon != null && ribbon.HeaderInternal != null)
		{
			return ShouldSerializeToolTip(ribbon.HeaderInternal.MenuButton);
		}
		return false;
	}

	private void ResetMenuButtonToolTip(RibbonControlAdv ribbon)
	{
		SetMenuButtonToolTip(ribbon, null);
	}

	bool IMessageFilter.PreFilterMessage(ref Message m)
	{
		switch ((Msg)m.Msg)
		{
		case Msg.WM_MOUSEMOVE:
		case Msg.WM_LBUTTONDOWN:
		case Msg.WM_LBUTTONUP:
		case Msg.WM_RBUTTONDOWN:
		case Msg.WM_RBUTTONUP:
		case Msg.WM_MBUTTONDOWN:
		case Msg.WM_MBUTTONUP:
			if (m_control.IsHandleCreated)
			{
				Control tool = GetTool(ref m);
				if (tool != null)
				{
					POINT lpPoints = new POINT(m.LParam);
					WindowsAPI.MapWindowPoints(m.HWnd, tool.Handle, ref lpPoints, 1u);
					MSG lParam = new MSG
					{
						hwnd = tool.Handle,
						message = m.Msg,
						wParam = m.WParam,
						lParam = (IntPtr)WindowsAPI.MAKELONG(lpPoints.x, lpPoints.y)
					};
					WindowsAPI.SendMessage(m_control.Handle, 1031, 0, ref lParam);
				}
			}
			break;
		}
		return false;
	}

	private IntPtr MouseHookProc(int nCode, IntPtr wParam, IntPtr lParam)
	{
		MOUSEHOOKSTRUCT mOUSEHOOKSTRUCT = (MOUSEHOOKSTRUCT)Marshal.PtrToStructure(lParam, typeof(MOUSEHOOKSTRUCT));
		switch ((int)wParam)
		{
		case 512:
		case 513:
		case 514:
		case 516:
		case 517:
		case 519:
		case 520:
			if (m_control.IsHandleCreated && !base.DesignMode)
			{
				_ = Cursor.Position;
				Control tool = GetTool(mOUSEHOOKSTRUCT.hwnd);
				if (tool != null && tool.Parent is UserControl { Parent: null })
				{
					POINT lpPoints = mOUSEHOOKSTRUCT.pt;
					WindowsAPI.MapWindowPoints(mOUSEHOOKSTRUCT.hwnd, tool.Handle, ref lpPoints, 1u);
					MSG lParam2 = new MSG
					{
						hwnd = tool.Handle,
						message = (int)wParam,
						wParam = wParam,
						lParam = (IntPtr)WindowsAPI.MAKELONG(lpPoints.x, lpPoints.y)
					};
					WindowsAPI.SendMessage(m_control.Handle, 1031, 0, ref lParam2);
				}
			}
			break;
		}
		return WindowsAPI.CallNextHookEx(nhook, nCode, wParam, lParam);
	}

	bool INativeMessageFilter.ProcessMessage(ref Message m)
	{
		bool result = false;
		switch ((Msg)m.Msg)
		{
		case Msg.WM_WINDOWPOSCHANGING:
			m_trackControl.HideToolTip();
			break;
		case Msg.WM_NCACTIVATE:
			if ((int)m.WParam == 0)
			{
				m_trackControl.HideToolTip();
			}
			break;
		}
		return result;
	}

	private void OnPopup(object sender, EventArgs e)
	{
		m_trackControl.HideToolTip();
	}

	private void OnToolTipControlHandleCreated(object sender, EventArgs e)
	{
		Application.AddMessageFilter(this);
		nhook = WindowsAPI.SetWindowsHookEx(7, hook, (IntPtr)0, AppDomain.GetCurrentThreadId());
	}

	private void OnToolTipControlHandleDestroyed(object sender, EventArgs e)
	{
		Application.RemoveMessageFilter(this);
		WindowsAPI.UnhookWindowsHookEx(nhook);
	}

	private void OnOwnerHandleCreated(object sender, EventArgs e)
	{
		m_handler.Assign((sender as Control).Handle);
	}

	private void OnOwnerHandleDestroyed(object sender, EventArgs e)
	{
		m_handler.Unassign();
	}

	private Control GetTool(ref Message m)
	{
		POINT lpPoints = new POINT(m.LParam);
		WindowsAPI.MapWindowPoints(m.HWnd, IntPtr.Zero, ref lpPoints, 1u);
		IntPtr intPtr = (IntPtr)WindowsAPI.SendMessage(m_control.Handle, 1040, 0, ref lpPoints);
		IntPtr intPtr2 = WindowsAPI.WindowFromPoint(lpPoints);
		Control result = null;
		if (intPtr == intPtr2 && m_control.Contains(intPtr))
		{
			result = Control.FromHandle(intPtr);
		}
		return result;
	}

	private Control GetTool(IntPtr handle)
	{
		Control result = null;
		if (m_control.Contains(handle))
		{
			result = Control.FromHandle(handle);
		}
		return result;
	}

	private static Component Cast(object tool)
	{
		if (tool is ToolStripControlHost)
		{
			return (tool as ToolStripControlHost).Control;
		}
		return tool as Component;
	}
}
