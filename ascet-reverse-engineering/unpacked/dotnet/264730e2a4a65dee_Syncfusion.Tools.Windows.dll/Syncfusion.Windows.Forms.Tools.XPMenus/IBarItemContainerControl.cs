using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal interface IBarItemContainerControl
{
	Rectangle GetBoundsOf(BarItem item);

	BarItem HitTest(int x, int y);

	AccessibleStates GetAccessibilityState(BarItem item);
}
