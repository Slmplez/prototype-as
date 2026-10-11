using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public interface IDndTrackingControl
{
	bool DesignMode { get; }

	Control GetControl();

	BarItem HitTestBarItem(Point mousePosition, ref bool beforeOrAfter);

	Rectangle GetCueRect(BarItem barItem, bool beforeOrAfter);

	bool CanDropItem(BarItem item);
}
