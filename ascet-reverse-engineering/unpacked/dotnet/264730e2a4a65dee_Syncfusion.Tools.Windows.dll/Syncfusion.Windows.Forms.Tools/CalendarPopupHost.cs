using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class CalendarPopupHost : PopupHost
{
	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		if (base.PopupControl != null)
		{
			base.PopupControl.SizeChanged += PopupControl_SizeChanged;
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (base.PopupControl != null)
		{
			base.PopupControl.SizeChanged -= PopupControl_SizeChanged;
		}
		base.Dispose(disposing);
	}

	private void PopupControl_SizeChanged(object sender, EventArgs e)
	{
		if (IsShowing())
		{
			ComputeLayout();
		}
	}
}
