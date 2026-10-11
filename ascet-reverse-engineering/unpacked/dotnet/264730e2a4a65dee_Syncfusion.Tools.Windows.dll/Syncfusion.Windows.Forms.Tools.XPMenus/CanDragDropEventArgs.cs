using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class CanDragDropEventArgs : CancelEventArgs
{
	private object destinationParent;

	public object DestinationParent => destinationParent;

	public CanDragDropEventArgs(object destinationParent, bool cancel)
		: base(cancel)
	{
		this.destinationParent = destinationParent;
	}
}
