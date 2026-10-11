using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms;

public class ArrowButtonEventArgs : SyncfusionCancelEventArgs
{
	private ArrowType arrow;

	[TraceProperty(true)]
	public ArrowType Arrow
	{
		get
		{
			return arrow;
		}
		set
		{
			arrow = value;
		}
	}

	public ArrowButtonEventArgs(ArrowType arrow)
	{
		this.arrow = arrow;
	}
}
