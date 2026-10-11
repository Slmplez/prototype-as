using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class ActivationNativeWindow : NativeWindow
{
	private Control m_control;

	public event EventHandler LostFocus;

	public event EventHandler MouseActivated;

	public ActivationNativeWindow(Control value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		m_control = value;
		AssignHandle(m_control.Handle);
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 33 || m.Msg == 513 || m.Msg == 516 || m.Msg == 519 || m.Msg == 515 || m.Msg == 521 || m.Msg == 518)
		{
			if (this.MouseActivated != null)
			{
				this.MouseActivated(this, EventArgs.Empty);
			}
		}
		else if (m.Msg == 8 && this.LostFocus != null)
		{
			this.LostFocus(this, EventArgs.Empty);
		}
		base.WndProc(ref m);
	}
}
