using System;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

public class DockControlEventArgs : EventArgs
{
	[DocumentationExclude]
	protected Control ctrl;

	public Control Control => ctrl;

	public DockControlEventArgs(Control ctrl)
	{
		this.ctrl = ctrl;
	}
}
