using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class BarControlBindingChangedArgs : EventArgs
{
	private Control barControl;

	private BarControlBindingChangeType changeType;

	private Bar bar;

	public Bar Bar => bar;

	public Control BarControl => barControl;

	public BarControlBindingChangeType ChangeType => changeType;

	public BarControlBindingChangedArgs(Bar bar, Control barControl, BarControlBindingChangeType changeType)
	{
		this.bar = bar;
		this.barControl = barControl;
		this.changeType = changeType;
	}
}
