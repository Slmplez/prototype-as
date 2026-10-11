using System;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
internal class SystemSettings : Form
{
	public event CultureChangedEventHandler CultureChanged;

	public SystemSettings()
	{
		base.Visible = false;
		base.TopLevel = true;
		base.Size = new Size(1, 1);
		base.Location = new Point(-1000, -1000);
		Text = "";
		base.ShowInTaskbar = false;
		base.ControlBox = false;
		base.MinimizeBox = false;
		base.MaximizeBox = false;
		base.FormBorderStyle = FormBorderStyle.FixedToolWindow;
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 26 && Marshal.PtrToStringAuto(m.LParam) == "intl")
		{
			int userDefaultLCID = NativeMethods.GetUserDefaultLCID();
			int lCID = Application.CurrentCulture.LCID;
			CultureChangedEventArgs e = new CultureChangedEventArgs(lCID, userDefaultLCID, CultureChangedReason.SystemSettings);
			OnCultureChanged(e);
		}
		base.WndProc(ref m);
	}

	public new void Show()
	{
		base.Location = new Point(-1000, -1000);
		base.Show();
	}

	protected virtual void OnCultureChanged(CultureChangedEventArgs e)
	{
		if (this.CultureChanged != null)
		{
			this.CultureChanged(this, e);
		}
	}

	protected override void OnVisibleChanged(EventArgs e)
	{
		if (base.Visible)
		{
			base.Visible = false;
		}
	}
}
