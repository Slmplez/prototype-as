using System.Drawing;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms;

public sealed class ShowContextMenuEventArgs : SyncfusionCancelEventArgs
{
	private Point point;

	[TraceProperty(true)]
	public Point Point => point;

	public ShowContextMenuEventArgs(Point point)
	{
		this.point = point;
	}
}
