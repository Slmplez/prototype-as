using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class DockVisibilityChangedEventArgs : DockControlEventArgs
{
	private DockingAction dockAction = DockingAction.Unknown;

	public DockingAction Action => dockAction;

	public DockVisibilityChangedEventArgs(Control ctrl)
		: base(ctrl)
	{
		dockAction = DockingAction.Unknown;
	}

	public DockVisibilityChangedEventArgs(Control ctrl, DockingAction dAction)
		: base(ctrl)
	{
		dockAction = dAction;
	}
}
