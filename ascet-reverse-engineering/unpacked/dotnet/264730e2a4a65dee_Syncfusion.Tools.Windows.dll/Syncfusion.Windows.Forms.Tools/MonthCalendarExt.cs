using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
[Obsolete("The MonthCalendarExt type will soon be replaced with the MonthCalendarAdv for consistency in naming in our library. Please replace all occurences of MonthCalendarExt with MonthCalendarAdv in your app.")]
public class MonthCalendarExt : MonthCalendarAdv
{
	public MonthCalendarExt()
	{
	}

	internal MonthCalendarExt(bool dtCalendar)
		: base(dtCalendar)
	{
	}
}
