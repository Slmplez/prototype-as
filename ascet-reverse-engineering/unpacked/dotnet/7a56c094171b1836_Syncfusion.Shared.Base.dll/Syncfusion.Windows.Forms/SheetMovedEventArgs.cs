using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms;

public class SheetMovedEventArgs : SyncfusionEventArgs
{
	private int index;

	private int destination;

	private SheetMovedReason reason;

	[TraceProperty(true)]
	public int Index => index;

	[TraceProperty(true)]
	public int Destination => destination;

	[TraceProperty(true)]
	public SheetMovedReason Reason => reason;

	public SheetMovedEventArgs(int index, int destination, SheetMovedReason reason)
	{
		this.index = index;
		this.destination = destination;
		this.reason = reason;
	}
}
