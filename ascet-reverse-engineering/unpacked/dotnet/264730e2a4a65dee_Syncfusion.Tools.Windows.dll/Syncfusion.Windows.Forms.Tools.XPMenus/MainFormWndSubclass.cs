using System;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class MainFormWndSubclass : NativeWindowSubclass
{
	private bool active;

	public bool Active
	{
		get
		{
			return active;
		}
		set
		{
			if (active != value)
			{
				active = value;
			}
		}
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 33 && active)
		{
			if (Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(m.LParam.ToInt32()) == 1)
			{
				m.Result = (IntPtr)3;
			}
			else
			{
				m.Result = (IntPtr)4;
			}
		}
		else
		{
			base.WndProc(ref m);
		}
	}
}
