using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

public class DockVisibilityChangingEventArgs : DockControlEventArgs
{
	[DocumentationExclude]
	private bool cancel;

	private DockingAction dockAction = DockingAction.Unknown;

	public DockingAction Action => dockAction;

	[DefaultValue(false)]
	public bool Cancel
	{
		get
		{
			return cancel;
		}
		set
		{
			if (cancel != value)
			{
				cancel = value;
			}
		}
	}

	public DockVisibilityChangingEventArgs(Control ctrl)
		: base(ctrl)
	{
		Cancel = false;
		dockAction = DockingAction.Unknown;
	}

	public DockVisibilityChangingEventArgs(Control ctrl, bool cncl)
		: base(ctrl)
	{
		Cancel = cncl;
		dockAction = DockingAction.Unknown;
	}

	public DockVisibilityChangingEventArgs(Control ctrl, bool cncl, DockingAction dAction)
		: base(ctrl)
	{
		Cancel = cncl;
		dockAction = dAction;
	}
}
