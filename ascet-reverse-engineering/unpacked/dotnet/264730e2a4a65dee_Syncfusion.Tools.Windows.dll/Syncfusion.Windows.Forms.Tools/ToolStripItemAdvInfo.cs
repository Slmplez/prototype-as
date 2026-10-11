using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[TypeConverter(typeof(ToolStripItemAdvInfoTypeConverter))]
public class ToolStripItemAdvInfo
{
	public ToolStripItem Item;

	internal virtual int Order => 0;

	internal virtual bool RaiseAddedEvent => true;

	public ToolStripItemAdvInfo(ToolStripItem item)
	{
		Item = item;
	}
}
