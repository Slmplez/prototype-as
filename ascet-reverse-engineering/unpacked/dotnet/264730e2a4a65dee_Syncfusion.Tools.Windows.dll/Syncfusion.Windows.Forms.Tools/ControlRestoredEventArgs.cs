using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class ControlRestoredEventArgs : ControlSizeStateChangedEventArgs
{
	protected ControlSizeStates m_prevSizeState;

	public ControlSizeStates PreviousSizeState => m_prevSizeState;

	public ControlRestoredEventArgs(Control control, ControlSizeStates prevState)
		: base(control)
	{
		m_prevSizeState = prevState;
	}
}
