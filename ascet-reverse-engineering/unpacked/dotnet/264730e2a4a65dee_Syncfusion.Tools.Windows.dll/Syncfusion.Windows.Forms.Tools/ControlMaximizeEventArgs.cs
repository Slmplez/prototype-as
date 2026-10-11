using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class ControlMaximizeEventArgs : ControlSizeStateChangedEventArgs
{
	protected bool m_bCancel;

	public bool Cancel
	{
		get
		{
			return m_bCancel;
		}
		set
		{
			if (m_bCancel != value)
			{
				m_bCancel = value;
			}
		}
	}

	public ControlMaximizeEventArgs(Control control)
		: base(control)
	{
	}
}
