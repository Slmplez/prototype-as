using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Collections;

public class ConfigureControlEventArgs : EventArgs
{
	private Control m_control;

	public Control Control => m_control;

	public ConfigureControlEventArgs(Control control)
	{
		m_control = control;
	}
}
