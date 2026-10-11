using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class DropDownButtonAdvInfo : ToolStripItemAdvInfo
{
	internal override bool RaiseAddedEvent => false;

	internal override int Order => 1;

	public DropDownButtonAdvInfo(ToolStripItem item)
		: base(item)
	{
	}
}
