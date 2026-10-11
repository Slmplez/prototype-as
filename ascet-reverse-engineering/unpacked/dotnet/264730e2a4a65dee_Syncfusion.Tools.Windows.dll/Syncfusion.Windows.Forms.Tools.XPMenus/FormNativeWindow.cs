using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class FormNativeWindow : NativeWindow
{
	private Form m_form;

	private BarManager m_manager;

	public event EventHandler ActiveWindowChanged;

	public FormNativeWindow(Form form)
	{
		if (form == null)
		{
			throw new ArgumentNullException("form");
		}
		m_form = form;
		m_manager = BarManager.GetManagerFromForm(m_form);
		AssignHandle(form.Handle);
	}

	protected override void WndProc(ref Message m)
	{
		switch (m.Msg)
		{
		case 28:
		{
			bool flag = m.WParam == IntPtr.Zero;
			if (this.ActiveWindowChanged != null && flag)
			{
				this.ActiveWindowChanged(this, EventArgs.Empty);
			}
			break;
		}
		case 6:
		case 134:
		{
			Form form = Control.FromHandle(m.LParam) as Form;
			if (m_manager != null && !m_manager.GetCommandBarManager().GetCommandBarController().ShouldHostFormGetFocus() && form != null && !(form is IDontCallSetFocus))
			{
				return;
			}
			if (this.ActiveWindowChanged != null)
			{
				this.ActiveWindowChanged(this, EventArgs.Empty);
			}
			break;
		}
		}
		base.WndProc(ref m);
	}
}
