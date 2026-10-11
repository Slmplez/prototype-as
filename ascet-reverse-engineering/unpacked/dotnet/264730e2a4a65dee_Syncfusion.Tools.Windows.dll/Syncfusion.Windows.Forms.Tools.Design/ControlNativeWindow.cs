using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class ControlNativeWindow : NativeWindow
{
	protected override void WndProc(ref Message m)
	{
		if (m.Msg != 512 || (int)m.WParam != 1)
		{
			base.WndProc(ref m);
		}
	}
}
