using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class ControlSizeStateChangedEventArgs : EventArgs
{
	protected Control m_control;

	public Control Control => m_control;

	public ControlSizeStateChangedEventArgs(Control control)
	{
		m_control = control;
	}
}
