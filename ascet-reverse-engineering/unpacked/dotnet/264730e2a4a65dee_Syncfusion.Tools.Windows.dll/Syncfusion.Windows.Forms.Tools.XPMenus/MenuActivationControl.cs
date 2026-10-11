using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class MenuActivationControl : NativeWindowSubclass
{
	public delegate void EventHandler(object o, EventArgs e);

	public event EventHandler AppDeactivate;

	public event EventHandler MouseActivate;

	public event EventHandler AppActivate;

	private void RaiseAppDeactivateEvent()
	{
		if (this.AppDeactivate != null)
		{
			this.AppDeactivate(this, EventArgs.Empty);
		}
	}

	private void RaiseMouseActivateEvent()
	{
		if (this.MouseActivate != null)
		{
			this.MouseActivate(this, EventArgs.Empty);
		}
	}

	private void RaiseAppActivateEvent()
	{
		if (this.AppActivate != null)
		{
			this.AppActivate(this, EventArgs.Empty);
		}
	}

	protected override void WndProc(ref Message m)
	{
		base.WndProc(ref m);
		if (m.Msg == 28)
		{
			if (m.WParam == IntPtr.Zero)
			{
				RaiseAppDeactivateEvent();
			}
			else
			{
				RaiseAppActivateEvent();
			}
		}
		else if (m.Msg == 33)
		{
			RaiseMouseActivateEvent();
		}
	}
}
