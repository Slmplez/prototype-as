using System;
using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
internal class FloatingControl : Control
{
	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			createParams.ExStyle |= 134217864;
			createParams.Parent = IntPtr.Zero;
			Screen screen = Screen.AllScreens[0];
			createParams.Width = screen.Bounds.Width;
			createParams.Height = screen.Bounds.Height;
			return createParams;
		}
	}

	public void ShowFloating()
	{
		if (base.Handle == IntPtr.Zero)
		{
			CreateControl();
		}
		Syncfusion.Runtime.InteropServices.NativeMethods.SetParent(base.Handle, IntPtr.Zero);
		Syncfusion.Runtime.InteropServices.NativeMethods.ShowWindow(base.Handle, 1);
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 132)
		{
			m.Result = (IntPtr)(-1);
		}
		else
		{
			base.WndProc(ref m);
		}
	}
}
