using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal interface ILayoutSupport
{
	ToolStripItem GetItem(ToolStripItem item);

	void SetItemLocation(ToolStripItem item, Point location);
}
