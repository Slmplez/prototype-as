using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms;

public class SelectedIndexEventArgs : SyncfusionCancelEventArgs
{
	private int index;

	private InternalTab tab;

	[TraceProperty(true)]
	public int Index => index;

	[TraceProperty(true)]
	public InternalTab Tab => tab;

	public SelectedIndexEventArgs(int index, InternalTab tab)
	{
		this.index = index;
		this.tab = tab;
	}
}
