using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

public class DragAllowEventArgs : CancelEventArgs
{
	[DocumentationExclude]
	protected Control ctrlDrag;

	public Control Control => ctrlDrag;

	public DragAllowEventArgs(Control ctrldrag)
	{
		ctrlDrag = ctrldrag;
	}
}
