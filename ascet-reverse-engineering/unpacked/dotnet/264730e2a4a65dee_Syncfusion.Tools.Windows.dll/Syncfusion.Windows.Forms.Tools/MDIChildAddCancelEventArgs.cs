using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class MDIChildAddCancelEventArgs : CancelEventArgs
{
	private Control newControl;

	public Control NewControl => newControl;

	public MDIChildAddCancelEventArgs(Control ctrl)
	{
		newControl = ctrl;
	}
}
