using System;
using System.Drawing;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class PopupManager : IMessageFilter, IMouseHookHLProcClient, IKeyboardProcHookClient
{
	private IPopupChild curPopup;

	private bool latestSetFocusSetting;

	private Timer setFocusTimer;

	private Control latestFocusControl;

	[ThreadStatic]
	private static PopupManager singleton;

	private IPopupChild previousPopUp;

	private static PopupManager Singleton
	{
		get
		{
			if (singleton == null)
			{
				singleton = new PopupManager();
			}
			return singleton;
		}
	}

	public static IPopupChild ActivePopupClient => Singleton.ActivePopup;

	public IPopupChild ActivePopup => curPopup;

	static PopupManager()
	{
	}

	public PopupManager()
	{
		setFocusTimer = new Timer();
		setFocusTimer.Interval = 100;
		setFocusTimer.Tick += SetFocusTimer_Event;
	}

	public static void SetCurrentPopupClient(IPopupChild client, bool active, bool callKillFocusOnFocused)
	{
		Singleton.SetCurrentPopup(client, active, callKillFocusOnFocused);
	}

	protected virtual void CallKillFocusOnFocused()
	{
		setFocusTimer.Stop();
		IntPtr focus = NativeMethods.GetFocus();
		Control control = Control.FromHandle(focus);
		if (control == null)
		{
			control = PopupUtils.GetADotNetParentControl(focus);
		}
		if (control != null && !(control is IDontCallKillFocus) && !(FindFormHelper.FindForm(control) is IDontCallKillFocus))
		{
			latestFocusControl = control;
			NativeMethods.SendMessage(focus, 8, 0, 0);
		}
	}

	protected virtual void CallSetFocusOnFocused()
	{
		setFocusTimer.Start();
	}

	private void SetFocusTimer_Event(object sender, EventArgs e)
	{
		setFocusTimer.Stop();
		IntPtr intPtr = NativeMethods.GetFocus();
		Control control = Control.FromHandle(intPtr);
		if (control == null)
		{
			control = PopupUtils.GetADotNetParentControl(intPtr);
		}
		if (control == null && latestFocusControl != null && latestFocusControl.IsHandleCreated && latestFocusControl.Visible)
		{
			control = latestFocusControl;
		}
		if (control == null || FindFormHelper.FindForm(control) is IDontCallSetFocus)
		{
			return;
		}
		while (control != null && control is IDelegateFocusToPrevWindow && ((IDelegateFocusToPrevWindow)control).PreviousWindow != null)
		{
			control = ((IDelegateFocusToPrevWindow)control).PreviousWindow;
		}
		if (!control.Focused)
		{
			control.Focus();
			return;
		}
		if (control != null)
		{
			intPtr = control.Handle;
		}
		NativeMethods.SendMessage(intPtr, 7, 0, 0);
	}

	private bool IsAncestor(IPopupChild popup, IPopupParent parent)
	{
		if (parent == null)
		{
			return false;
		}
		while (popup.PopupParent != null)
		{
			if (parent == popup.PopupParent)
			{
				return true;
			}
			if (!(popup.PopupParent is IPopupChild))
			{
				break;
			}
			popup = popup.PopupParent as IPopupChild;
		}
		return false;
	}

	public void SetCurrentPopup(IPopupChild popup, bool active, bool callKillFocusOnFocused)
	{
		bool flag = true;
		if ((popup is ToolTipAdv || popup is ToolTip) && !(curPopup is ToolTipAdv) && !(curPopup is ToolTip))
		{
			flag = false;
			if (previousPopUp != curPopup)
			{
				previousPopUp = curPopup;
			}
		}
		if (active && curPopup != null && !IsAncestor(popup, curPopup as IPopupParent) && curPopup != popup && curPopup.IsShowing() && flag)
		{
			curPopup.HidePopup(PopupCloseType.Deactivated);
		}
		if (active)
		{
			MessageFilterEntryHelper.AddMessageFilter(this, ontop: true);
			curPopup = popup;
			if (callKillFocusOnFocused)
			{
				CallKillFocusOnFocused();
			}
			latestSetFocusSetting |= callKillFocusOnFocused;
		}
		else
		{
			if (curPopup != popup)
			{
				return;
			}
			if ((popup is ToolTipAdv || popup is ToolTip) && previousPopUp != null)
			{
				SetCurrentPopup(previousPopUp, active: true, callKillFocusOnFocused: false);
				previousPopUp = null;
				return;
			}
			curPopup = null;
			if (latestSetFocusSetting)
			{
				latestSetFocusSetting = false;
				CallSetFocusOnFocused();
			}
			MessageFilterEntryHelper.RemoveMessageFilter(this);
		}
	}

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	public virtual bool PreFilterMessage(ref Message m)
	{
		if (curPopup == null)
		{
			return false;
		}
		int msg = m.Msg;
		bool result = false;
		if ((msg >= 512 && msg <= 525) || msg == 522 || (msg >= 160 && msg <= 173))
		{
			try
			{
				result = curPopup.MouseMessage(ref m);
			}
			catch (Exception t)
			{
				Application.OnThreadException(t);
			}
		}
		else if (msg >= 256 && msg <= 264)
		{
			try
			{
				result = curPopup.KeyboardMessage(ref m);
			}
			catch (Exception t2)
			{
				Application.OnThreadException(t2);
			}
		}
		return result;
	}

	bool IMouseHookHLProcClient.MouseHookProc(int msg, Point point, IntPtr hwnd, int wHitTestCode, int dwExtraInfo)
	{
		if (curPopup == null)
		{
			return false;
		}
		return curPopup?.MouseHookProc(msg, point, hwnd, wHitTestCode, dwExtraInfo) ?? false;
	}

	bool IKeyboardProcHookClient.KeyboardHookProc(int wParam, int lParam)
	{
		if (curPopup == null)
		{
			return false;
		}
		IKeyboardProcHookClient keyboardProcHookClient = curPopup;
		return keyboardProcHookClient.KeyboardHookProc(wParam, lParam);
	}
}
