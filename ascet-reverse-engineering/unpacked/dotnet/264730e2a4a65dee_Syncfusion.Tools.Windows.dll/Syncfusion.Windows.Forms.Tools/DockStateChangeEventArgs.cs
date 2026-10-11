using System;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

public class DockStateChangeEventArgs : EventArgs
{
	[DocumentationExclude]
	protected Control[] ctrlArray;

	public Control[] Controls => ctrlArray;

	public DockStateChangeEventArgs(Control[] ctrls)
	{
		ctrlArray = ctrls;
	}
}
