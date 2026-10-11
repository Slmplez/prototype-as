using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class DockActivationChangedEventArgs : DockControlEventArgs
{
	public DockActivationChangedEventArgs(Control ctrl)
		: base(ctrl)
	{
	}
}
