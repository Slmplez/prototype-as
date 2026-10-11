using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
[DocumentationExclude]
public class MonthCalendarTodayButton : MonthCalendarButton
{
	[DefaultValue(DockStyle.Fill)]
	public new DockStyle Dock
	{
		get
		{
			return base.Dock;
		}
		set
		{
			base.Dock = value;
		}
	}

	private bool ShouldSerializeSize()
	{
		if (base.Size.Width == 120 && base.Size.Height == 20)
		{
			return false;
		}
		return true;
	}

	private bool ShouldSerializeText()
	{
		if (Text == "Today")
		{
			return false;
		}
		return true;
	}
}
