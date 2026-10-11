using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

public class TabMovingEventArgs : SyncfusionCancelEventArgs
{
	private int from;

	private int target;

	[TraceProperty(true)]
	public int From => from;

	[TraceProperty(true)]
	public int Target => target;

	public TabMovingEventArgs(int from, int target)
	{
		this.from = from;
		this.target = target;
	}
}
