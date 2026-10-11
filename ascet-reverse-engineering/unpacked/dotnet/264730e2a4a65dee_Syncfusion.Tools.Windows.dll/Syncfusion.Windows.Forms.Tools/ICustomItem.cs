using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public interface ICustomItem
{
	ToolStrip Owner { get; }

	ToolStripItemPlacement Placement { get; }
}
