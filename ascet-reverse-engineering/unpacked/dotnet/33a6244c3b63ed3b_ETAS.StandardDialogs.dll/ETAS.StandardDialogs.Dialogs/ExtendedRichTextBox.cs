using System;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace ETAS.StandardDialogs.Dialogs;

public class ExtendedRichTextBox : RichTextBox
{
	private const int WM_MOUSEWHEEL = 522;

	private const int EM_SETZOOM = 1249;

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	private static extern IntPtr SendMessage(IntPtr hWnd, uint Msg, IntPtr wParam, IntPtr lParam);

	protected override void WndProc(ref Message m)
	{
		base.WndProc(ref m);
		if (m.Msg == 522 && Control.ModifierKeys == Keys.Control)
		{
			SendMessage(base.Handle, 1249u, IntPtr.Zero, IntPtr.Zero);
		}
	}
}
