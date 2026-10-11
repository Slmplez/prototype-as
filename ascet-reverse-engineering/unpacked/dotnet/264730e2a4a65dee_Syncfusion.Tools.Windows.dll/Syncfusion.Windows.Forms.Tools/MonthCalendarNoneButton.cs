using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
[ToolboxItem(false)]
public class MonthCalendarNoneButton : MonthCalendarButton
{
	[DefaultValue(DockStyle.Right)]
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

	public new Point Location
	{
		get
		{
			return base.Location;
		}
		set
		{
			base.Location = value;
		}
	}

	private bool ShouldSerializeLocation()
	{
		if (Location.X == 120 && Location.Y == 0)
		{
			return false;
		}
		return true;
	}

	private bool ShouldSerializeSize()
	{
		if (base.Size.Width == 72 && base.Size.Height == 20)
		{
			return false;
		}
		return true;
	}

	private bool ShouldSerializeText()
	{
		if (Text == "None")
		{
			return false;
		}
		return true;
	}
}
