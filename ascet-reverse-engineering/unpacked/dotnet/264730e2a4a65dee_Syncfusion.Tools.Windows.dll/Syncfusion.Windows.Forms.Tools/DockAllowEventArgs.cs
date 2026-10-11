using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

public class DockAllowEventArgs : CancelEventArgs
{
	[DocumentationExclude]
	protected Control ctrlDrag;

	[DocumentationExclude]
	protected Control ctrlTarget;

	[DocumentationExclude]
	protected DockingStyle dStyle = DockingStyle.Fill;

	public Control DragControl => ctrlDrag;

	public Control TargetControl => ctrlTarget;

	public DockingStyle DockStyle => dStyle;

	public DockAllowEventArgs(Control ctrldrag, Control ctrltarget, DockingStyle style)
	{
		ctrlDrag = ctrldrag;
		ctrlTarget = ctrltarget;
		dStyle = style;
	}
}
