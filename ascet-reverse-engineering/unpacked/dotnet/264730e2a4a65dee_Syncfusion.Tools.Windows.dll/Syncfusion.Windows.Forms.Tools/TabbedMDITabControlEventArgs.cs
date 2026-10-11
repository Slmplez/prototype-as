using System;

namespace Syncfusion.Windows.Forms.Tools;

public class TabbedMDITabControlEventArgs : EventArgs
{
	private MDITabPanel _tabControl;

	public MDITabPanel TabControl
	{
		get
		{
			return _tabControl;
		}
		set
		{
			if (_tabControl == null)
			{
				_tabControl = value;
				return;
			}
			throw new ArgumentException("The TabControl property is already set, you cannot reset it.", "value");
		}
	}

	public TabbedMDITabControlEventArgs(MDITabPanel tabControl)
	{
		_tabControl = tabControl;
	}
}
