using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class ControlMinimizedEventArgs : ControlSizeStateChangedEventArgs
{
	public ControlMinimizedEventArgs(Control control)
		: base(control)
	{
	}
}
