using System.ComponentModel;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class MouseClickCancelEventArgs : CancelEventArgs
{
	private Point ptScreen;

	public Point MouseClickPoint => ptScreen;

	public MouseClickCancelEventArgs(Point ptScreen, bool cancel)
		: base(cancel)
	{
		this.ptScreen = ptScreen;
	}
}
