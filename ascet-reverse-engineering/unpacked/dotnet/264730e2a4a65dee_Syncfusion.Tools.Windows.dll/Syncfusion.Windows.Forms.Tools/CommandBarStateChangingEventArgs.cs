using System;

namespace Syncfusion.Windows.Forms.Tools;

public class CommandBarStateChangingEventArgs : EventArgs
{
	protected CommandBarDockState cbarDockState;

	protected bool m_cancel;

	public CommandBarDockState NewDockState
	{
		get
		{
			return cbarDockState;
		}
		set
		{
			cbarDockState = value;
		}
	}

	public bool Cancel
	{
		get
		{
			return m_cancel;
		}
		set
		{
			if (value != m_cancel)
			{
				m_cancel = value;
			}
		}
	}

	public CommandBarStateChangingEventArgs(CommandBarDockState state)
	{
		cbarDockState = state;
	}
}
