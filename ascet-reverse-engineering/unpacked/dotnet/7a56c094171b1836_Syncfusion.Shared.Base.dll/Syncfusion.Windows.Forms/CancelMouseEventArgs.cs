using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms;

public class CancelMouseEventArgs : SyncfusionCancelEventArgs
{
	private MouseEventArgs mea;

	public MouseEventArgs MouseEventArgs => mea;

	public CancelMouseEventArgs(MouseEventArgs e)
	{
		mea = e;
	}

	public override string ToString()
	{
		return string.Concat(GetType().Name, " { X=", mea.X, ", Y=", mea.Y, ", Button=", mea.Button, ", Clicks=", mea.Clicks, " }");
	}
}
