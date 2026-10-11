using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class ControlMaximizedEventArgs : ControlSizeStateChangedEventArgs
{
	public ControlMaximizedEventArgs(Control control)
		: base(control)
	{
	}
}
