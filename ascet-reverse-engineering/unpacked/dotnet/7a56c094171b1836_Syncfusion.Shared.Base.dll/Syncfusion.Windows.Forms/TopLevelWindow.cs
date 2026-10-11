using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

public class TopLevelWindow : Form
{
	internal const int SWP_NOSIZE = 1;

	internal const int SWP_NOMOVE = 2;

	internal const int SWP_NOZORDER = 4;

	internal const int SWP_NOACTIVATE = 16;

	internal const int SWP_SHOWWINDOW = 64;

	internal const int SWP_HIDEWINDOW = 128;

	internal const int SWP_DRAWFRAME = 32;

	public TopLevelWindow()
	{
		InitializeComponent();
	}

	public void ShowWindowTopMost()
	{
		NativeMethods.SetWindowPos(base.Handle, (IntPtr)(-1), 0, 0, 0, 0, 83);
	}

	private void InitializeComponent()
	{
		base.SuspendLayout();
		base.ControlBox = false;
		base.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
		base.ShowInTaskbar = false;
		base.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
		base.TopLevel = true;
		base.Location = new System.Drawing.Point(-1000, -1000);
		base.Size = new System.Drawing.Size(0, 0);
		base.ResumeLayout(false);
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		try
		{
			base.OnHandleCreated(e);
		}
		catch (Win32Exception)
		{
		}
	}
}
