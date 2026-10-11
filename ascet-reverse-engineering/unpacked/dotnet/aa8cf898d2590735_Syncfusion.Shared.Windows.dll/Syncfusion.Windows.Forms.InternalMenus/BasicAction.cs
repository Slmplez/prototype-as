using System;

namespace Syncfusion.Windows.Forms.InternalMenus;

public abstract class BasicAction
{
	private object window;

	public object MainWindow
	{
		get
		{
			return window;
		}
		set
		{
			window = value;
		}
	}

	public abstract void InvokeAction(object sender, EventArgs e);
}
