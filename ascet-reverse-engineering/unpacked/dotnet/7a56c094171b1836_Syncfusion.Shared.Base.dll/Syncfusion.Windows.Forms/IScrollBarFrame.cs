using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public interface IScrollBarFrame
{
	Control GetHScrollBar(Control control);

	Control GetVScrollBar(Control control);

	bool IsActive(Control control, ScrollBars sbType);
}
