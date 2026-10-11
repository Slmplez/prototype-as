using System;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

internal class PopupCloseRequestListener : IDisposable
{
	private PopupControlContainer popup;

	private Control parentControl;

	private Form popupHost;

	protected internal int ignoreDeactivateTick = int.MinValue;

	public Form PopupHost
	{
		get
		{
			return popupHost;
		}
		set
		{
			if (popupHost != value)
			{
				if (popupHost != null)
				{
					popupHost.Deactivate -= FormDeactivate;
				}
				popupHost = value;
				if (popupHost != null)
				{
					popupHost.Deactivate += FormDeactivate;
				}
			}
		}
	}

	public Control ParentControl
	{
		get
		{
			return parentControl;
		}
		set
		{
			if (parentControl != value)
			{
				if (parentControl != null)
				{
					Release();
				}
				parentControl = value;
				if (parentControl != null)
				{
					Attach();
				}
			}
		}
	}

	public PopupCloseRequestListener(PopupControlContainer popup)
	{
		this.popup = popup;
	}

	private void Attach()
	{
		if (parentControl == null)
		{
			return;
		}
		parentControl.LostFocus += ParentLostFocus;
		Form form = FindFormHelper.FindForm(parentControl);
		if (form != null)
		{
			form.Resize += MenuCloseEvent;
			form.Move += MenuCloseEvent;
			form.Deactivate += FormDeactivate;
			if (form.ParentForm != null)
			{
				form.ParentForm.Move += MenuCloseEvent;
				form.ParentForm.Deactivate += FormDeactivate;
			}
		}
	}

	private void Release()
	{
		if (parentControl == null)
		{
			return;
		}
		parentControl.LostFocus -= ParentLostFocus;
		Form form = FindFormHelper.FindForm(parentControl);
		if (form != null)
		{
			form.Resize -= MenuCloseEvent;
			form.Move -= MenuCloseEvent;
			form.Deactivate -= FormDeactivate;
			if (form.ParentForm != null)
			{
				form.ParentForm.Move -= MenuCloseEvent;
				form.ParentForm.Deactivate -= FormDeactivate;
			}
		}
	}

	private void ParentLostFocus(object sender, EventArgs e)
	{
		Control control = Control.FromHandle(NativeMethods.GetFocus());
		if (control == null)
		{
			control = PopupUtils.GetADotNetParentControl(NativeMethods.GetFocus());
		}
		if (popup != control && !popup.Contains(control) && control != PopupHost && (ParentControl == null || (ParentControl != control && !ParentControl.Contains(control))))
		{
			popup.HidePopup(PopupCloseType.Deactivated);
		}
	}

	private void MenuCloseEvent(object sender, EventArgs e)
	{
		if (!popup.IgnoreMouseMessages)
		{
			popup.HidePopup(PopupCloseType.Deactivated);
		}
	}

	private void FormDeactivate(object sender, EventArgs e)
	{
		Form activeForm = Form.ActiveForm;
		if (popup.IsShowing() && ignoreDeactivateTick <= Environment.TickCount && activeForm != sender && (activeForm == null || !popup.IsRelatedControl(activeForm, askPopupParent: true)))
		{
			popup.HidePopup(PopupCloseType.Deactivated);
		}
	}

	public void Dispose()
	{
		Release();
		popup = null;
	}
}
