using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class DropDownNativeWindow : NativeWindow
{
	private ComboDropDown m_cmb;

	public event EventHandler ImeMessageReceived;

	public DropDownNativeWindow(ComboDropDown value)
	{
		if (value == null)
		{
			throw new ArgumentNullException("value");
		}
		m_cmb = value;
		AssignHandle(m_cmb.TextBox.Handle);
	}

	protected override void WndProc(ref Message m)
	{
		if ((m.Msg == 271 || m.Msg == 646) && this.ImeMessageReceived != null)
		{
			this.ImeMessageReceived(this, EventArgs.Empty);
		}
		if ((m.Msg != 256 && m.Msg != 258 && m.Msg != 770 && m.Msg != 768) || !m_cmb.PerformAllowNewText(m))
		{
			base.WndProc(ref m);
		}
	}
}
