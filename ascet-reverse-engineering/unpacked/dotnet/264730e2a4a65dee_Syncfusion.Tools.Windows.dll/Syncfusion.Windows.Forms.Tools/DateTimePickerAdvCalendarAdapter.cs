using System;
using System.Drawing;
using System.Globalization;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class DateTimePickerAdvCalendarAdapter : IDateTimePickerAdvCalendar
{
	private MonthCalendar monthCalendarObject;

	private bool bactive;

	public bool Active
	{
		get
		{
			return bactive;
		}
		set
		{
			bactive = value;
		}
	}

	public Font CalendarFont
	{
		get
		{
			return monthCalendarObject.Font;
		}
		set
		{
			monthCalendarObject.Font = value;
		}
	}

	public Color CalendarForeColor
	{
		get
		{
			return monthCalendarObject.ForeColor;
		}
		set
		{
			monthCalendarObject.ForeColor = value;
		}
	}

	public Color CalendarMonthBackground
	{
		get
		{
			return monthCalendarObject.BackColor;
		}
		set
		{
			monthCalendarObject.BackColor = value;
		}
	}

	public DateTime Value
	{
		get
		{
			return monthCalendarObject.SelectionStart;
		}
		set
		{
			MonthCalendar monthCalendar = monthCalendarObject;
			DateTime selectionStart = (monthCalendarObject.SelectionEnd = value);
			monthCalendar.SelectionStart = selectionStart;
		}
	}

	public CultureInfo Culture
	{
		get
		{
			return CultureInfo.CurrentCulture;
		}
		set
		{
		}
	}

	public DateTime MinDate
	{
		get
		{
			return monthCalendarObject.MinDate;
		}
		set
		{
			monthCalendarObject.MinDate = value;
		}
	}

	public DateTime MaxDate
	{
		get
		{
			return monthCalendarObject.MaxDate;
		}
		set
		{
			monthCalendarObject.MaxDate = value;
		}
	}

	public Color TitleForeColor
	{
		get
		{
			return monthCalendarObject.TitleForeColor;
		}
		set
		{
			monthCalendarObject.TitleForeColor = value;
		}
	}

	public Color TitleBackColor
	{
		get
		{
			return monthCalendarObject.TitleBackColor;
		}
		set
		{
			monthCalendarObject.TitleBackColor = value;
		}
	}

	public Color TrailingForeColor
	{
		get
		{
			return monthCalendarObject.TrailingForeColor;
		}
		set
		{
			monthCalendarObject.TrailingForeColor = value;
		}
	}

	public event DateTimePickerAdv.NullButtonEventHandler NullButtonDown;

	public event DateTimePickerAdv.SelectDateEventHandler SelectDate;

	public event DateTimePickerAdv.DateChangedEventHandler DateChange;

	public DateTimePickerAdvCalendarAdapter(MonthCalendar calendar)
	{
		monthCalendarObject = calendar;
		monthCalendarObject.DateSelected += OnDateSelected;
		monthCalendarObject.DateChanged += OnDateChanged;
		monthCalendarObject.AnnuallyBoldedDates = new DateTime[0];
		monthCalendarObject.BoldedDates = new DateTime[0];
		monthCalendarObject.MonthlyBoldedDates = new DateTime[0];
		monthCalendarObject.SelectionRange = new SelectionRange(new DateTime(2002, 10, 26, 0, 0, 0, 0), new DateTime(2002, 10, 26, 0, 0, 0, 0));
	}

	protected void OnDateSelected(object sender, DateRangeEventArgs e)
	{
		if (this.SelectDate != null)
		{
			this.SelectDate(this, EventArgs.Empty);
		}
	}

	protected void OnDateChanged(object sender, DateRangeEventArgs e)
	{
		if (this.DateChange != null)
		{
			this.DateChange(this, EventArgs.Empty);
		}
	}

	public void FireNullEvent()
	{
		if (this.NullButtonDown != null)
		{
			this.NullButtonDown(this, EventArgs.Empty);
		}
	}
}
