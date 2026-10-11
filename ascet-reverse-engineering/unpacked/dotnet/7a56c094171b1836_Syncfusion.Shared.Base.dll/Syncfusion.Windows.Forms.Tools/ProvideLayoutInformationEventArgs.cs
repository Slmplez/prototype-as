using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class ProvideLayoutInformationEventArgs : EventArgs
{
	private Control control;

	private LayoutInformationType requestedInfoType;

	private Size size;

	private bool handled;

	public LayoutInformationType Requested => requestedInfoType;

	public Control Control => control;

	public Size Size
	{
		get
		{
			return size;
		}
		set
		{
			size = value;
		}
	}

	public bool Handled
	{
		get
		{
			return handled;
		}
		set
		{
			handled = value;
		}
	}

	public ProvideLayoutInformationEventArgs(Control control, LayoutInformationType requested)
	{
		this.control = control;
		requestedInfoType = requested;
		size = Size.Empty;
	}
}
