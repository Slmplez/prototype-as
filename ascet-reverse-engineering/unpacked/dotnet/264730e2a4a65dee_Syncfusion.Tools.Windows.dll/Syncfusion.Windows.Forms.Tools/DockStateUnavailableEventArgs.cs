using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class DockStateUnavailableEventArgs : DockControlEventArgs
{
	public DockStateUnavailableEventArgs(Control ctrl)
		: base(ctrl)
	{
	}
}
