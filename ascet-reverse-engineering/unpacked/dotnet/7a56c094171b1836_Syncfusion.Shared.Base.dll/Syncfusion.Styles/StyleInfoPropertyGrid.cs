using System;
using System.ComponentModel;
using System.Security.Permissions;
using System.Windows.Forms;

namespace Syncfusion.Styles;

[ToolboxItem(false)]
public class StyleInfoPropertyGrid : PropertyGrid
{
	internal const int WM_CONTEXTMENU = 123;

	[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 123)
		{
			m.Result = IntPtr.Zero;
			ResetSelectedProperty();
		}
		else
		{
			base.WndProc(ref m);
		}
	}
}
