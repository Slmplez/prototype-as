using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridScrollPositionChangingEventArgs : SyncfusionCancelEventArgs
{
	private int scrollPosition;

	[TraceProperty(true)]
	public int ScrollPosition
	{
		get
		{
			return scrollPosition;
		}
		set
		{
			scrollPosition = value;
		}
	}

	public GridScrollPositionChangingEventArgs(int scrollPosition)
	{
		this.scrollPosition = scrollPosition;
	}
}
