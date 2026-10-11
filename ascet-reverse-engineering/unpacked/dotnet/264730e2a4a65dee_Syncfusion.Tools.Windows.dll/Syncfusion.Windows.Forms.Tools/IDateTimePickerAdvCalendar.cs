using System;
using System.Drawing;
using System.Globalization;

namespace Syncfusion.Windows.Forms.Tools;

public interface IDateTimePickerAdvCalendar
{
	bool Active { get; set; }

	Font CalendarFont { get; set; }

	Color CalendarForeColor { get; set; }

	Color CalendarMonthBackground { get; set; }

	Color TitleBackColor { get; set; }

	Color TitleForeColor { get; set; }

	Color TrailingForeColor { get; set; }

	DateTime MinDate { get; set; }

	DateTime MaxDate { get; set; }

	DateTime Value { get; set; }

	CultureInfo Culture { get; set; }

	event DateTimePickerAdv.NullButtonEventHandler NullButtonDown;

	event DateTimePickerAdv.SelectDateEventHandler SelectDate;

	event DateTimePickerAdv.DateChangedEventHandler DateChange;
}
