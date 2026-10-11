using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class MainWindowSubclass : NativeWindowSubclass
{
	public delegate void MessageEventHandler(object sender, Message m);

	public event MessageEventHandler OnMdiActivate;

	public event MessageEventHandler OnDeactivate;

	public event MessageEventHandler OnClose;

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 16)
		{
			RaiseCloseEvent(m);
		}
		base.WndProc(ref m);
		if (m.Msg == 546)
		{
			RaiseMdiActivateEvent(m);
		}
		else if (m.Msg == 6 && m.WParam == new IntPtr(0))
		{
			RaiseDeactivateMessage(m);
		}
	}

	private void RaiseMdiActivateEvent(Message m)
	{
		if (this.OnMdiActivate != null)
		{
			this.OnMdiActivate(this, m);
		}
	}

	private void RaiseDeactivateMessage(Message m)
	{
		if (this.OnDeactivate != null)
		{
			this.OnDeactivate(this, m);
		}
	}

	private void RaiseCloseEvent(Message m)
	{
		if (this.OnClose != null)
		{
			this.OnClose(this, m);
		}
	}
}
