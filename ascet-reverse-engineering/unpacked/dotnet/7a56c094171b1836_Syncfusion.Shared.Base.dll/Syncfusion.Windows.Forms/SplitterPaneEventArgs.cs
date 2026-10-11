using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms;

public class SplitterPaneEventArgs : SyncfusionEventArgs
{
	private Control control;

	private int row;

	private int column;

	private Control mainControl;

	[TraceProperty(true)]
	public Control Control => control;

	[TraceProperty(true)]
	public int Row => row;

	[TraceProperty(true)]
	public int Column => column;

	[TraceProperty(true)]
	public Control MainControl => mainControl;

	internal SplitterPaneEventArgs(Control control, int row, int column, Control mainControl)
	{
		this.control = control;
		this.row = row;
		this.column = column;
		this.mainControl = mainControl;
	}
}
