using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

public class DockMenuClickEventArgs : DockControlEventArgs
{
	[DocumentationExclude]
	protected DockingStyle dockStyle = DockingStyle.Fill;

	public DockingStyle DockingStyle => dockStyle;

	public DockMenuClickEventArgs(Control dockControl, DockingStyle dockStyle)
		: base(dockControl)
	{
		this.dockStyle = dockStyle;
	}
}
