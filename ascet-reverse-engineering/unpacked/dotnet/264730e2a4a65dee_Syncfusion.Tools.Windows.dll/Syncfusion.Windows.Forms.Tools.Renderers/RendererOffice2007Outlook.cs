using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

internal class RendererOffice2007Outlook : RendererOffice2007Base
{
	protected new LayoutOffice2007Outlook Layout
	{
		get
		{
			return base.Layout as LayoutOffice2007Outlook;
		}
		set
		{
			base.Layout = value;
		}
	}

	protected new ColorTableOffice2007Outlook ColorTable
	{
		get
		{
			return base.ColorTable as ColorTableOffice2007Outlook;
		}
		set
		{
			base.ColorTable = value;
		}
	}

	public RendererOffice2007Outlook()
	{
		ColorTable = new ColorTableOffice2007Outlook();
		Layout = new LayoutOffice2007Outlook();
		CreateGraphicObjects(recreate: false);
	}

	protected override Pen GetButtonPen(CaptionState cpState, CaptionButtonState btnState)
	{
		return null;
	}
}
