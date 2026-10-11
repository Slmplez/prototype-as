using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms;

public class MouseWheelZoomEventArgs : SyncfusionEventArgs
{
	private int delta;

	[TraceProperty(true)]
	public int Delta => delta;

	public MouseWheelZoomEventArgs(int delta)
	{
		this.delta = delta;
	}
}
