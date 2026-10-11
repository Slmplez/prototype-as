using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Drawing.Design;
using System.Globalization;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Represents advanced DateTimePicker control with Databinding, CustomDropDown, Internationalization.")]
[DesignerSerializer(typeof(DateTimePickerAdvDesignerSerializer), typeof(CodeDomSerializer))]
[Designer(typeof(DateTimePickerAdvDesigner))]
[DefaultEvent("ValueChanged")]
[ToolboxBitmap(typeof(DateTimePickerAdv), "ToolboxIcons.DateTimePickerExt.bmp")]
public class DateTimePickerAdv : GradientPanel, ISupportInitialize, IThemedControl, ISupportCulture
{
	public class MonthCalendarForDateTimePickerAdv : MonthCalendarAdv
	{
		private DateTimePickerAdv parent;

		[Description("Indicates the current value of the calendar.")]
		[Category("Behavior")]
		[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
		[Editor(typeof(DateTimeEditorAdv), typeof(UITypeEditor))]
		public new DateTime Value
		{
			get
			{
				return base.Value;
			}
			set
			{
				if ((Control.ModifierKeys & Keys.Control) == 0)
				{
					base.CurrentSelDates.Clear();
				}
				base.Value = value;
			}
		}

		public MonthCalendarForDateTimePickerAdv(bool dtCalendar, DateTimePickerAdv dtPicker)
			: base(dtCalendar)
		{
			parent = dtPicker;
		}

		protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
		{
			if (parent != null)
			{
				parent.ProcessCmdKey(ref msg, keyData);
			}
			return base.ProcessCmdKey(ref msg, keyData);
		}
	}

	internal class CultureSpecifiecDateTime
	{
		private int m_iYear;

		private int m_iMonth;

		private int m_iDay;

		private int m_iHour;

		private int m_iMinute;

		private int m_iSecond;

		private DateTime m_datetime;

		private bool m_dateTimeValid;

		private Calendar m_calendar;

		public DateTime DateTime
		{
			get
			{
				if (!m_dateTimeValid)
				{
					UpdateDateTime();
				}
				return m_datetime;
			}
			set
			{
				if (value != m_datetime)
				{
					m_datetime = value;
					UpdateLocalizedDateTime();
					m_dateTimeValid = true;
				}
			}
		}

		public int WeekOfYear => m_calendar.GetWeekOfYear(DateTime, DateTimeFormatInfo.CurrentInfo.CalendarWeekRule, DateTimeFormatInfo.CurrentInfo.FirstDayOfWeek);

		public int DayOfWeek => (int)m_calendar.GetDayOfWeek(DateTime);

		public int Year
		{
			get
			{
				return m_iYear;
			}
			set
			{
				if (value != m_iYear)
				{
					m_iYear = value;
					m_dateTimeValid = false;
				}
			}
		}

		public int Month
		{
			get
			{
				return m_iMonth;
			}
			set
			{
				if (value != m_iMonth)
				{
					m_iMonth = value;
					m_dateTimeValid = false;
				}
			}
		}

		public int Day
		{
			get
			{
				return m_iDay;
			}
			set
			{
				if (value != m_iDay)
				{
					m_iDay = value;
					m_dateTimeValid = false;
				}
			}
		}

		public int Hour
		{
			get
			{
				return m_iHour;
			}
			set
			{
				if (value != m_iHour)
				{
					m_iHour = value;
					m_dateTimeValid = false;
				}
			}
		}

		public int Minute
		{
			get
			{
				return m_iMinute;
			}
			set
			{
				if (value != m_iMinute)
				{
					m_iMinute = value;
					m_dateTimeValid = false;
				}
			}
		}

		public int Second
		{
			get
			{
				return m_iSecond;
			}
			set
			{
				if (value != m_iSecond)
				{
					m_iSecond = value;
					m_dateTimeValid = false;
				}
			}
		}

		public int DaysInMonth => m_calendar.GetDaysInMonth(Year, Month);

		public CultureSpecifiecDateTime(DateTime datetime, Calendar calendar)
		{
			m_calendar = calendar;
			DateTime = datetime;
		}

		public CultureSpecifiecDateTime(int year, int month, int day, int hour, int minute, int second, Calendar calendar)
		{
			m_calendar = calendar;
			m_iYear = year;
			m_iMonth = month;
			m_iDay = day;
			m_iHour = hour;
			m_iMinute = minute;
			m_iSecond = second;
			UpdateDateTime();
		}

		private void UpdateDateTime()
		{
			m_dateTimeValid = true;
			int daysInMonth = m_calendar.GetDaysInMonth(m_iYear, m_iMonth);
			m_iDay = Math.Min(daysInMonth, m_iDay);
			m_datetime = m_calendar.ToDateTime(m_iYear, m_iMonth, m_iDay, m_iHour, m_iMinute, m_iSecond, 0);
		}

		private void UpdateLocalizedDateTime()
		{
			m_iYear = m_calendar.GetYear(m_datetime);
			m_iMonth = m_calendar.GetMonth(m_datetime);
			m_iDay = m_calendar.GetDayOfMonth(m_datetime);
			m_iHour = m_calendar.GetHour(m_datetime);
			m_iMinute = m_calendar.GetMinute(m_datetime);
			m_iSecond = m_calendar.GetSecond(m_datetime);
		}
	}

	public delegate void NullButtonEventHandler(object sender, EventArgs e);

	public delegate void SelectDateEventHandler(object sender, EventArgs e);

	public delegate void DateChangedEventHandler(object sender, EventArgs e);

	private const int m_nControlWidth = 232;

	private const int m_nControlHeigth = 20;

	private const int m_nCheckBoxOffsetLeft = 3;

	private const int m_nMirroredHorizontalAdjustment = 5;

	private const int DEF_SAUDI_ARABIA_LCID = 1025;

	private int c_nMAX_HOUR_24 = 23;

	private int c_nMAX_HOUR_12 = 11;

	private int c_nMAX_MINUTE_SECOND = 59;

	private int c_nMAX_MONTH = 12;

	private int c_nMIN_MONTH = 1;

	private int c_nMAX_YEAR = 9998;

	private int c_nMIN_YEAR = 1753;

	private int c_nMAX_DAY = 31;

	private int c_nMIN_DAY = 1;

	private int c_nWEEK_DAYS = 7;

	private int c_nTWELVE_HOURS = 12;

	private IContainer components;

	private CalendarPopup popupWindow;

	private CultureInfo culture = CultureInfo.InvariantCulture;

	private DTField selectedField;

	private Point offset = new Point(1, 1);

	private Hashtable fields;

	private DateTime dvalue = DateTime.Now;

	private DateTime designValue;

	private DateTime maxValue = DateTime.MaxValue;

	private DateTime minValue = DateTime.MinValue;

	private string format = "dd MMMM yyyy";

	private string customFormat = string.Empty;

	private string[] days = new string[8]
	{
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty
	};

	private string[] abrevDays = new string[8]
	{
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty
	};

	private string[] months = new string[13]
	{
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty
	};

	private string[] abrevMonths = new string[13]
	{
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty,
		string.Empty
	};

	private int maxDayWidth;

	private int maxAbrevDayWidth;

	private int maxMonthWidth;

	private int maxDigitDayWidth;

	private int maxDigitHourWidth;

	private int maxDigitMinuteWidth;

	private int maxDigitMonthWidth;

	private int maxYearWidth;

	private int maxDigitYearWidth;

	private int maxTwoDigitYearWidth;

	private DateTimePickerDropButton dropButton;

	private MonthCalendarForDateTimePickerAdv monthCalendar;

	private ThemedCheckButton checkBox;

	private int maxAbrevMonthWidth;

	private DateTimePickerFormat dTformat = DateTimePickerFormat.Long;

	private ThemedComboBoxDrawing comboDrawing;

	private DateTimePickerUpDownButton numericUD;

	private bool isNullDate;

	private string nullString = "No date is selected";

	private int digitYear = 1900;

	private PopupControlContainer customPopupWindow;

	private bool customPopup;

	private LeftRightAlignment dropDownAlign;

	private bool useCurrentCulture;

	private ArrayList iCalendars = new ArrayList();

	private bool m_bShowCheckBox = true;

	private bool showDropButton = true;

	private bool showUpDown;

	private bool showUpDownOnFocus;

	private int spacing;

	private bool autoForwarding;

	private bool tabForwarding;

	private bool flatButton;

	private IDateTimePickerAdvMenu contextMenu;

	private bool tabLeave = true;

	private bool copyFieldOnly;

	private bool themedControls;

	private DateTimePickerFormat clipboardFormat = DateTimePickerFormat.Long;

	private bool useEnhancedMenu;

	private DateTimePickerAdvCalendarStore cStore = new DateTimePickerAdvCalendarStore();

	private bool enableNullDate = true;

	private NullModeKeyReset nullModeKeyReset;

	private DateTime dateOnPopup = DateTime.MaxValue;

	private bool isNullDateOnPopup;

	private bool initializing;

	private bool changedByBinding;

	private bool readOnly;

	private bool readonlyvaluechange = true;

	private VisualStyle style;

	private Color m_styleBorderColor = Color.Black;

	private Office2007Theme m_office2007Theme;

	private Office2007Colors m_office2007ColorTable;

	private bool enableNullKeys = true;

	private InvalidDateProcessing m_invalidDateProcessing = InvalidDateProcessing.SetNearest;

	private string m_previousDateSeparator = "/";

	private bool resetSelectionOnFocus;

	private bool showDropDownOnNull;

	private UmAlQuraCalendar m_umAlCuma;

	private bool m_stretchDropDownImage;

	private byte[] keyState = new byte[256];

	private byte[] charBuffer = new byte[2];

	private bool m_bInitializePopupCalled;

	[Category("Appearance")]
	[DefaultValue(true)]
	[Browsable(true)]
	[Description("Gets or sets value indicating whether the shortest name of the weekdays should be used.\tThis property value have influence only under Framework 2.0 and higher.")]
	public bool UseShortestDayNames
	{
		get
		{
			return Calendar.UseShortestDayNames;
		}
		set
		{
			Calendar.UseShortestDayNames = value;
		}
	}

	[Browsable(false)]
	public Calendar CurrentCalendar
	{
		get
		{
			if (culture.LCID == 1025)
			{
				if (m_umAlCuma != null)
				{
					return m_umAlCuma;
				}
				Calendar[] optionalCalendars = culture.OptionalCalendars;
				foreach (Calendar calendar in optionalCalendars)
				{
					if (calendar is UmAlQuraCalendar umAlCuma)
					{
						return m_umAlCuma = umAlCuma;
					}
				}
			}
			return culture.Calendar;
		}
	}

	[Category("Appearance")]
	[Description("Specifies the image to be set for the DropDown button.")]
	public Image DropDownImage
	{
		get
		{
			return dropButton.Image;
		}
		set
		{
			if (value != dropButton.Image)
			{
				dropButton.Image = value;
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(false)]
	[Description("Indicate whether the image for DropDownButton is stretched or shrunk to fit the size of the DropDownButton.")]
	public bool StretchDropDownImage
	{
		get
		{
			return m_stretchDropDownImage;
		}
		set
		{
			if (value != m_stretchDropDownImage)
			{
				m_stretchDropDownImage = value;
				OnStretchDropDownImageChanged();
			}
		}
	}

	[Browsable(false)]
	public int WeekOfYear
	{
		get
		{
			CultureSpecifiecDateTime cultureSpecifiecDateTime = new CultureSpecifiecDateTime(dvalue, CurrentCalendar);
			return cultureSpecifiecDateTime.WeekOfYear;
		}
	}

	[Browsable(false)]
	public CalendarPopup PopupWindow => popupWindow;

	protected DTField[] FieldsArray
	{
		get
		{
			ArrayList arrayList = new ArrayList(fields.Values);
			return (DTField[])arrayList.ToArray(typeof(DTField));
		}
		set
		{
			fields = new Hashtable();
			int num = 0;
			foreach (DTField key in value)
			{
				fields[key] = num++;
			}
			RefreshFields();
		}
	}

	protected DTField SelectedField
	{
		get
		{
			return selectedField;
		}
		set
		{
			if (selectedField != value)
			{
				SelectField(value);
			}
		}
	}

	[Description("Indicates whether calendar drop down should be shown when pressing ALT + down arrow key when NULL date is set.")]
	[DefaultValue(false)]
	public bool ShowDropDownOnNull
	{
		get
		{
			return showDropDownOnNull;
		}
		set
		{
			if (showDropDownOnNull != value)
			{
				showDropDownOnNull = value;
			}
		}
	}

	[Description("Determines if Backspace or Delete keys make the date null.")]
	[DefaultValue(true)]
	[Category("Behavior")]
	public bool EnableNullKeys
	{
		get
		{
			return enableNullKeys;
		}
		set
		{
			if (enableNullKeys != value)
			{
				enableNullKeys = value;
			}
		}
	}

	[DefaultValue(true)]
	[Description("Specifies if the none date button will be visible.")]
	[Browsable(true)]
	[Category("Behavior")]
	public bool NoneButtonVisible
	{
		get
		{
			return cStore.NoneEnabled;
		}
		set
		{
			cStore.NoneEnabled = value;
		}
	}

	[TypeConverter(typeof(DefaultVisualStyleEnumFilter))]
	[Description("Specifies the visual style of the DateTimePickerAdv.")]
	[Category("Appearance")]
	[DefaultValue(VisualStyle.Default)]
	public VisualStyle Style
	{
		get
		{
			return style;
		}
		set
		{
			if (style != value)
			{
				style = value;
				OnStyleChanged();
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets / sets a value indicating the Office2007 theme used for drawing the control.")]
	[DefaultValue(Office2007Theme.Blue)]
	public Office2007Theme Office2007Theme
	{
		get
		{
			return m_office2007Theme;
		}
		set
		{
			if (m_office2007Theme != value)
			{
				m_office2007Theme = value;
				OnOffice2007ThemeChanged();
			}
		}
	}

	[Description("Toggles the read only state of the picker.")]
	[Category("Behavior")]
	[DefaultValue(false)]
	public bool ReadOnly
	{
		get
		{
			return readOnly;
		}
		set
		{
			if (readOnly != value)
			{
				readOnly = value;
				Invalidate();
			}
		}
	}

	[Description("Determines ValueChange when control is readonly")]
	[DefaultValue(true)]
	[Category("Behavior")]
	public bool ReadOnlyValueChange
	{
		get
		{
			return readonlyvaluechange;
		}
		set
		{
			readonlyvaluechange = value;
		}
	}

	[Description("Gets or sets drop down back color in normal mode. If color is empty then uses the default color.")]
	[Category("Appearance")]
	public Color DropDownNormalColor
	{
		get
		{
			return dropButton.NormalColor;
		}
		set
		{
			dropButton.NormalColor = value;
		}
	}

	[Description("Gets or sets drop down back color in pressed mode. If color is empty then uses the default color.")]
	[Category("Appearance")]
	public Color DropDownPressedColor
	{
		get
		{
			return dropButton.PressedColor;
		}
		set
		{
			dropButton.PressedColor = value;
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets drop down back color in selected mode. If color is empty then uses the default color.")]
	public Color DropDownSelectedColor
	{
		get
		{
			return dropButton.SelectedColor;
		}
		set
		{
			dropButton.SelectedColor = value;
		}
	}

	public override Color BorderColor
	{
		get
		{
			return base.BorderColor;
		}
		set
		{
			base.BorderColor = value;
		}
	}

	protected override Color BorderColorInternal
	{
		get
		{
			Color result = base.BorderColorInternal;
			if (result.IsEmpty)
			{
				result = StyleBorderColor;
			}
			return result;
		}
	}

	private Color StyleBorderColor
	{
		get
		{
			return m_styleBorderColor;
		}
		set
		{
			if (m_styleBorderColor != value)
			{
				m_styleBorderColor = value;
				if (BorderColor.IsEmpty)
				{
					OnBorderColorChangedInternal();
					RedrawBorders();
				}
			}
		}
	}

	public override Color BackColor
	{
		get
		{
			return base.BackColor;
		}
		set
		{
			base.BackColor = value;
		}
	}

	[DefaultValue(true)]
	public new bool TabStop
	{
		get
		{
			return base.TabStop;
		}
		set
		{
			base.TabStop = value;
		}
	}

	[DefaultValue(NullModeKeyReset.ArrowKeys)]
	[Description("Indicates what keys will toggle off null date.")]
	[Category("Behavior")]
	public NullModeKeyReset NullModeKeyReset
	{
		get
		{
			return nullModeKeyReset;
		}
		set
		{
			nullModeKeyReset = value;
		}
	}

	[Category("Appearance")]
	[Description("Indicates whether the calendar will size according to the widths of the days.")]
	[DefaultValue(true)]
	public bool CalendarSizeToFit
	{
		get
		{
			return cStore.SizeToFit;
		}
		set
		{
			if (cStore.SizeToFit != value)
			{
				cStore.SizeToFit = value;
				if (monthCalendar != null)
				{
					monthCalendar.SizeToFit = value;
				}
			}
		}
	}

	[DefaultValue(true)]
	[Description("Indicates whether the null date support is enabled. If set to false the DateTimePicker will always have a selected date.")]
	[Category("Behavior")]
	public bool EnableNullDate
	{
		get
		{
			return enableNullDate;
		}
		set
		{
			if (enableNullDate == value)
			{
				return;
			}
			if (!value)
			{
				IsNullDate = false;
				if (monthCalendar != null)
				{
					monthCalendar.NoneButton.Visible = false;
				}
			}
			else if (monthCalendar != null)
			{
				monthCalendar.NoneButton.Visible = true;
			}
			enableNullDate = value;
			cStore.EnableNullDate = value;
		}
	}

	[Category("Appearance")]
	[DefaultValue(false)]
	[Description("Indicates if the context menu will be a Syncfusion XPMenu.")]
	public bool UseEnhancedMenu
	{
		get
		{
			return useEnhancedMenu;
		}
		set
		{
			if (useEnhancedMenu != value)
			{
				useEnhancedMenu = value;
				if (value)
				{
					contextMenu = new DateTimePickerAdvMenuExt();
				}
				else
				{
					contextMenu = new DateTimePickerAdvMenu();
				}
				WireContextMenuEvents();
			}
		}
	}

	[Description("Indicates if the checkbox, drop button ,updown and calendar will be themed.")]
	[Category("Appearance")]
	[DefaultValue(false)]
	public bool ThemedChildControls
	{
		get
		{
			return themedControls;
		}
		set
		{
			if (themedControls != value)
			{
				themedControls = value;
				checkBox.ThemesEnabled = value;
				dropButton.ThemesEnabled = value;
				cStore.ThemedEnabledGrid = value;
				cStore.ThemedEnabledScrollButtons = value;
				if (monthCalendar != null)
				{
					monthCalendar.ThemedEnabledGrid = value;
					monthCalendar.ThemedEnabledScrollButtons = value;
				}
				numericUD.ThemesEnabled = value;
				dropButton.DefaultButtonState = (value ? ButtonState.Flat : ButtonState.Normal);
				UpdateStyles();
				Invalidate();
			}
		}
	}

	[DefaultValue(false)]
	[Description("Indicates if the UpDown will have a VS like look.")]
	[Category("Appearance")]
	public bool VSLikeUpDown
	{
		get
		{
			return numericUD.VSLikeButton;
		}
		set
		{
			numericUD.VSLikeButton = value;
		}
	}

	[Category("Behavior")]
	[Description("Indicates the format of the value of the picker when copying.")]
	[DefaultValue(DateTimePickerFormat.Long)]
	public DateTimePickerFormat ClipboardFormat
	{
		get
		{
			return clipboardFormat;
		}
		set
		{
			clipboardFormat = value;
		}
	}

	[DefaultValue(false)]
	[Description("Indicates if when copy or paste operation is done, only the selected field is taken into consideration.")]
	[Category("Behavior")]
	public bool CopyFieldsOnly
	{
		get
		{
			return copyFieldOnly;
		}
		set
		{
			copyFieldOnly = value;
		}
	}

	[Category("Behavior")]
	[Description("Indicates if the focus will be moved off the control when there are no fields to tab through.")]
	[DefaultValue(true)]
	public bool TabLeave
	{
		get
		{
			return tabLeave;
		}
		set
		{
			tabLeave = value;
		}
	}

	[Category("Appearance")]
	[DefaultValue(false)]
	[Description("Indicates if the dropdown buttonwill have a flat appearance.")]
	public bool FlatDropButton
	{
		get
		{
			return flatButton;
		}
		set
		{
			if (flatButton != value)
			{
				flatButton = value;
				dropButton.DefaultButtonState = (value ? ButtonState.Flat : ButtonState.Normal);
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(false)]
	[Description("When the Tab key gets pressed indicates if the DateTimePicker will advance to the next field.")]
	public bool TabForwarding
	{
		get
		{
			return tabForwarding;
		}
		set
		{
			tabForwarding = value;
		}
	}

	[Description("Indicates if after the completion of a field the DateTimePicker advances to the next field.")]
	[Category("Behavior")]
	[DefaultValue(false)]
	public bool AutoForwarding
	{
		get
		{
			return autoForwarding;
		}
		set
		{
			autoForwarding = value;
		}
	}

	[Category("Appearance")]
	[Description("Indicates the spacing between the fields of the picker.")]
	[DefaultValue(0)]
	public int Spacing
	{
		get
		{
			return spacing;
		}
		set
		{
			if (spacing != value)
			{
				spacing = value;
				RefreshFields();
			}
		}
	}

	[Description("Indicates the size of the popup Calendar.")]
	[Category("Appearance")]
	public Size CalendarSize
	{
		get
		{
			return cStore.PopupSize;
		}
		set
		{
			cStore.PopupSize = value;
			if (popupWindow != null)
			{
				popupWindow.Size = value;
			}
		}
	}

	[DefaultValue(false)]
	[Description("Indicates if the current culture of the machine will be used. It will be set to CultureInfo.CurrentCulture.")]
	[Category("Behavior")]
	public bool UseCurrentCulture
	{
		get
		{
			return useCurrentCulture;
		}
		set
		{
			if (useCurrentCulture != value)
			{
				if (value)
				{
					Culture = CultureInfo.CurrentCulture;
				}
				useCurrentCulture = value;
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates the trailing fore color of the popup calendar.")]
	public Color CalendarTrailingForeColor
	{
		get
		{
			return cStore.TrailingForeColor;
		}
		set
		{
			cStore.TrailingForeColor = value;
			if (monthCalendar != null)
			{
				monthCalendar.InactiveMonthColor = value;
			}
			for (int i = 0; i < iCalendars.Count; i++)
			{
				((IDateTimePickerAdvCalendar)iCalendars[i]).TrailingForeColor = value;
			}
		}
	}

	[Description("Indicates the title fore color of the popup calendar.")]
	[Category("Appearance")]
	public Color CalendarTitleForeColor
	{
		get
		{
			return cStore.TitleForeColor;
		}
		set
		{
			cStore.TitleForeColor = value;
			if (monthCalendar != null)
			{
				monthCalendar.HeadForeColor = value;
			}
			for (int i = 0; i < iCalendars.Count; i++)
			{
				((IDateTimePickerAdvCalendar)iCalendars[i]).TitleForeColor = value;
			}
		}
	}

	[Description("Indicates the title back color of the popup calendar.")]
	[Category("Appearance")]
	public Color CalendarTitleBackColor
	{
		get
		{
			return cStore.TitleBackColor;
		}
		set
		{
			cStore.TitleBackColor = value;
			if (monthCalendar != null)
			{
				monthCalendar.HeaderStartColor = value;
			}
			for (int i = 0; i < iCalendars.Count; i++)
			{
				((IDateTimePickerAdvCalendar)iCalendars[i]).TitleBackColor = value;
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates the back color of the popup calendar.")]
	public Color CalendarMonthBackground
	{
		get
		{
			return cStore.MonthBackground;
		}
		set
		{
			cStore.MonthBackground = value;
			if (monthCalendar != null)
			{
				monthCalendar.GridBackColor = value;
			}
			for (int i = 0; i < iCalendars.Count; i++)
			{
				((IDateTimePickerAdvCalendar)iCalendars[i]).CalendarMonthBackground = value;
			}
		}
	}

	[Description("Indicates the fore color of the popup calendar.")]
	[Category("Appearance")]
	public Color CalendarForeColor
	{
		get
		{
			return cStore.ForeColor;
		}
		set
		{
			cStore.ForeColor = value;
			if (monthCalendar != null)
			{
				monthCalendar.ForeColor = value;
			}
			for (int i = 0; i < iCalendars.Count; i++)
			{
				((IDateTimePickerAdvCalendar)iCalendars[i]).CalendarForeColor = value;
			}
		}
	}

	[Description("Indicates the font of the popup calendar.")]
	[Category("Appearance")]
	public Font CalendarFont
	{
		get
		{
			return cStore.Font;
		}
		set
		{
			cStore.Font = value;
			if (monthCalendar != null)
			{
				monthCalendar.Font = value;
			}
			for (int i = 0; i < iCalendars.Count; i++)
			{
				((IDateTimePickerAdvCalendar)iCalendars[i]).CalendarFont = value;
			}
		}
	}

	[Description("The popup calendar.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Appearance")]
	public MonthCalendarForDateTimePickerAdv Calendar
	{
		get
		{
			if (monthCalendar == null)
			{
				CreatePopupControls();
				if (!initializing)
				{
					InitializePopup();
				}
			}
			return monthCalendar;
		}
	}

	[Category("Behavior")]
	[DefaultValue(true)]
	[Bindable(true)]
	[Description("Indicates the checked state of the check box.")]
	public bool Checked
	{
		get
		{
			return checkBox.Checked;
		}
		set
		{
			checkBox.Checked = value;
			CheckBox_CheckedChanged(checkBox, EventArgs.Empty);
		}
	}

	[DefaultValue(null)]
	[Description("Indicates the image list of the popup menu of the popup calendar.")]
	[Category("Appearance")]
	public ImageList MonthImageList
	{
		get
		{
			return cStore.ImageList;
		}
		set
		{
			cStore.ImageList = value;
			if (monthCalendar != null)
			{
				monthCalendar.MonthImageList = value;
			}
		}
	}

	public new Size Size
	{
		get
		{
			return base.Size;
		}
		set
		{
			base.Size = value;
		}
	}

	[Description("Indicates the popup window`s allignment.")]
	[Category("Appearance")]
	public LeftRightAlignment DropDownAlign
	{
		get
		{
			return dropDownAlign;
		}
		set
		{
			dropDownAlign = value;
		}
	}

	[Description("Indicates if the CustomPopupWindow will be shown instead of the internal calendar popup.")]
	[DefaultValue(false)]
	[Category("Behavior")]
	public bool CustomDrop
	{
		get
		{
			return customPopup;
		}
		set
		{
			customPopup = value;
		}
	}

	[DefaultValue(null)]
	[Category("Behavior")]
	[Description("Indicates the PopupControlContainer that will be shown instead of the internal calendar.")]
	public PopupControlContainer CustomPopupWindow
	{
		get
		{
			return customPopupWindow;
		}
		set
		{
			if (value == null)
			{
				customPopup = false;
				customPopupWindow = null;
			}
			else
			{
				customPopupWindow = value;
				WireCalendarEvents();
			}
		}
	}

	[DefaultValue(1900)]
	[Category("Behavior")]
	[Description("Indicates the year that will complete the year fields when typing.")]
	public int DigitYear
	{
		get
		{
			return digitYear;
		}
		set
		{
			digitYear = value;
		}
	}

	[Description("Indicates the text to be displayed, when no date is selected.")]
	[DefaultValue("No date is selected")]
	[Category("Behavior")]
	public string NullString
	{
		get
		{
			return nullString;
		}
		set
		{
			if (nullString != value)
			{
				nullString = value;
				if (isNullDate)
				{
					Invalidate();
				}
			}
		}
	}

	[DefaultValue(false)]
	[Category("Behavior")]
	[Description("Indicates if there is no date selected.")]
	public bool IsNullDate
	{
		get
		{
			return isNullDate;
		}
		set
		{
			if ((!readOnly || changedByBinding || readonlyvaluechange) && isNullDate != value && enableNullDate)
			{
				isNullDate = value;
				if (value && fields.Count > 0)
				{
					SelectedField = Fields(0);
				}
				OnValueChanged(EventArgs.Empty);
				OnBindableValueChanged(EventArgs.Empty);
				Invalidate(invalidateChildren: true);
			}
		}
	}

	[DefaultValue(DateTimePickerFormat.Long)]
	[Category("Appearance")]
	[Description("Indicates the format of the picker.")]
	public DateTimePickerFormat Format
	{
		get
		{
			return dTformat;
		}
		set
		{
			if (dTformat != value)
			{
				dTformat = value;
				if (!initializing)
				{
					RefreshFormats();
				}
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(false)]
	[Description("Indicates if the UpDown buttons will be visible when got focus.")]
	public bool ShowUpDownOnFocus
	{
		get
		{
			return showUpDownOnFocus;
		}
		set
		{
			showUpDownOnFocus = value;
			if (value)
			{
				numericUD.Visible = false;
			}
			else if (showUpDown)
			{
				numericUD.Visible = true;
			}
			else
			{
				numericUD.Visible = false;
			}
		}
	}

	[DefaultValue(true)]
	[Category("Appearance")]
	[Description("Indicates if the drop button is visible.")]
	public bool ShowDropButton
	{
		get
		{
			return showDropButton;
		}
		set
		{
			if (showDropButton != value)
			{
				showDropButton = value;
			}
			dropButton.Visible = value;
		}
	}

	[Category("Appearance")]
	[DefaultValue(false)]
	[Description("Indicates if the UpDown buttons are visible.")]
	public bool ShowUpDown
	{
		get
		{
			return showUpDown;
		}
		set
		{
			if (showUpDown != value)
			{
				showUpDown = value;
				numericUD.Visible = value;
				if (RightToLeft == RightToLeft.Yes)
				{
					Invalidate();
				}
			}
		}
	}

	[DefaultValue(true)]
	[Category("Appearance")]
	[Description("Indicates if the checkBox will be visible.")]
	public bool ShowCheckBox
	{
		get
		{
			return m_bShowCheckBox;
		}
		set
		{
			if (m_bShowCheckBox != value)
			{
				m_bShowCheckBox = value;
				OnShowCheckBoxChanged();
			}
		}
	}

	[Category("Behavior")]
	[Description("Indicates the minimum value that can be picked from the picker.")]
	public DateTime MinValue
	{
		get
		{
			return minValue;
		}
		set
		{
			if (!(minValue == value))
			{
				if (maxValue < value)
				{
					throw new ArgumentOutOfRangeException("MinValue", value, "value couldn't be greater then MaxValue: " + MaxValue.ToString());
				}
				minValue = value;
				cStore.MinDate = value;
				if (monthCalendar != null)
				{
					monthCalendar.MinValue = value;
				}
				for (int i = 0; i < iCalendars.Count; i++)
				{
					((IDateTimePickerAdvCalendar)iCalendars[i]).MinDate = value;
				}
				if (dvalue < minValue)
				{
					dvalue = minValue;
					RefreshFields();
				}
			}
		}
	}

	[Description("Indicates the maximum value that can be picked from the picker.")]
	[Category("Behavior")]
	public DateTime MaxValue
	{
		get
		{
			return maxValue;
		}
		set
		{
			if (maxValue == value)
			{
				return;
			}
			if (minValue > value)
			{
				throw new ArgumentOutOfRangeException("MaxValue", value, "value couldn't be less then MinValue: " + MinValue.ToString());
			}
			if (maxValue < minValue)
			{
				maxValue = (minValue = value);
				Value = value;
			}
			else
			{
				maxValue = value;
				if (dvalue > maxValue)
				{
					Value = MaxValue;
				}
			}
			if (monthCalendar != null)
			{
				monthCalendar.MaxValue = value;
			}
			for (int i = 0; i < iCalendars.Count; i++)
			{
				((IDateTimePickerAdvCalendar)iCalendars[i]).MaxDate = value;
			}
			cStore.MaxDate = maxValue;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Behavior")]
	[Editor(typeof(DateTimeEditorAdv), typeof(UITypeEditor))]
	[Description("Indicates the selected date of the picker.")]
	public DateTime Value
	{
		get
		{
			return dvalue;
		}
		set
		{
			if ((readOnly && !changedByBinding && !readonlyvaluechange) || (!(dvalue != value) && !IsNullDate))
			{
				return;
			}
			if (monthCalendar != null)
			{
				if (!initializing && !monthCalendar.IsInitializing)
				{
					IsNullDate = false;
				}
			}
			else if (!initializing)
			{
				IsNullDate = false;
			}
			dvalue = value;
			if (selectedField == null || selectedField.Definition.Type != FieldType.Year || !selectedField.M_bSkipYearCheck)
			{
				dvalue = CoerceValue(dvalue);
				OnValueChanged(EventArgs.Empty);
				OnBindableValueChanged(EventArgs.Empty);
				RefreshFields();
				if (monthCalendar != null)
				{
					monthCalendar.Value = dvalue;
				}
			}
		}
	}

	[Category("Behavior")]
	[Description("Wrapper property that indicates the selected date of the picker. Can be set to null.")]
	[Bindable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public object BindableValue
	{
		get
		{
			if (IsNullDate)
			{
				return null;
			}
			return Value;
		}
		set
		{
			if (value == DBNull.Value || value == null)
			{
				IsNullDate = true;
				return;
			}
			if (!typeof(DateTime).IsAssignableFrom(value.GetType()))
			{
				throw new ArgumentException();
			}
			if (IsNullDate)
			{
				IsNullDate = false;
			}
			changedByBinding = true;
			Value = (DateTime)value;
			changedByBinding = false;
		}
	}

	[Description("Indicates the format of the picker when Format is Custom.")]
	[Category("Appearance")]
	public string CustomFormat
	{
		get
		{
			return customFormat;
		}
		set
		{
			customFormat = value;
			if (Format == DateTimePickerFormat.Custom)
			{
				format = value;
				ParseCustomString(format);
			}
		}
	}

	[TypeConverter(typeof(SpecificCultureInfoTypeConverter))]
	[Description("Indicates the current culture of the picker.")]
	[Category("Appearance")]
	public CultureInfo Culture
	{
		get
		{
			return culture;
		}
		set
		{
			if (culture != value && !useCurrentCulture)
			{
				culture = value;
				RefreshFormats();
				RecalculateMaxWidths();
				cStore.Culture = value;
				if (monthCalendar != null)
				{
					monthCalendar.Culture = value;
				}
				m_previousDateSeparator = culture.DateTimeFormat.DateSeparator;
			}
		}
	}

	[DefaultValue(InvalidDateProcessing.SetNearest)]
	[Description("Gets or sets value indicating what action should be chosen if user try to enter value that is not within the specified min or max range.")]
	public InvalidDateProcessing InvalidDateProcessing
	{
		get
		{
			return m_invalidDateProcessing;
		}
		set
		{
			m_invalidDateProcessing = value;
		}
	}

	[Description("Indicates whether the field selection should be reset on focus")]
	[DefaultValue(false)]
	public bool ResetSelectionOnFocus
	{
		get
		{
			return resetSelectionOnFocus;
		}
		set
		{
			if (resetSelectionOnFocus != value)
			{
				resetSelectionOnFocus = value;
			}
		}
	}

	[Description("Occurs when check-box's checked state is changed.")]
	public event EventHandler CheckBoxCheckedChanged;

	[Description("Occurs on Calendar popup.")]
	public event EventHandler OnPopup;

	[Category("Property Changed")]
	[Description("Occurs when Value property is changed.")]
	public event EventHandler ValueChanged;

	[Description("Occurs before Calendar popup.")]
	public event EventHandler BeforePopup;

	[Description("Occurs when Calendar popup is closed.")]
	public event PopupClosedEventHandler PopupClosed;

	[Description("Occurs when StretchDropDownImage property is changed.")]
	public event EventHandler StretchDropDownImageChanged;

	[Category("Property Changed")]
	[Description("Occurs when the BindableValue property is changed.")]
	public event EventHandler BindableValueChanged;

	private void RaiseStretchDropDownImageChanged()
	{
		if (this.StretchDropDownImageChanged != null)
		{
			this.StretchDropDownImageChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnStretchDropDownImageChanged()
	{
		dropButton.StretchImage = StretchDropDownImage;
		RaiseStretchDropDownImageChanged();
	}

	protected virtual void OnCheckBoxCheckedChanged(EventArgs e)
	{
		if (this.CheckBoxCheckedChanged != null)
		{
			this.CheckBoxCheckedChanged(this, e);
		}
	}

	protected virtual void OnOnPopup(EventArgs e)
	{
		if (this.OnPopup != null && !initializing)
		{
			this.OnPopup(this, e);
		}
	}

	protected virtual void OnPopupClosed(PopupClosedEventArgs e)
	{
		dropButton.Dropped = false;
		dropButton.Invalidate();
		if (this.PopupClosed != null && !initializing)
		{
			this.PopupClosed(this, e);
		}
	}

	protected virtual void OnBeforePopup(EventArgs e)
	{
		dropButton.Dropped = true;
		if (this.BeforePopup != null && !initializing)
		{
			this.BeforePopup(this, e);
		}
	}

	protected virtual void OnValueChanged(EventArgs e)
	{
		if (this.ValueChanged != null && !initializing)
		{
			this.ValueChanged(this, e);
		}
	}

	private void OnStyleChanged()
	{
		dropButton.Style = style;
		numericUD.Style = style;
		checkBox.Style = style;
		if (style == VisualStyle.Default)
		{
			base.Border3DStyle = Border3DStyle.Sunken;
			base.BorderStyle = BorderStyle.Fixed3D;
			StyleBorderColor = Color.Black;
			base.DockPadding.All = 0;
		}
		else
		{
			base.Border3DStyle = Border3DStyle.Flat;
			base.BorderStyle = BorderStyle.FixedSingle;
			base.DockPadding.All = -2;
			base.ThemesEnabled = false;
			ThemedChildControls = false;
			if (style == VisualStyle.Office2007)
			{
				m_office2007ColorTable = Office2007Colors.GetColorTable(m_office2007Theme);
				StyleBorderColor = m_office2007ColorTable.DataTimePickerBorderColor;
				Calendar.Style = style;
			}
			else
			{
				StyleBorderColor = SystemColors.ControlDark;
				dropButton.FlatColor = BorderColorInternal;
			}
		}
		if (monthCalendar != null)
		{
			Calendar.Style = style;
			CalendarTitleBackColor = Calendar.HeaderStartColor;
			CalendarTitleForeColor = Calendar.HeadForeColor;
			CalendarTrailingForeColor = Calendar.InactiveMonthColor;
			CalendarMonthBackground = Calendar.GridBackColor;
			CalendarForeColor = Calendar.ForeColor;
		}
	}

	protected virtual void OnOffice2007ThemeChanged()
	{
		ApplyOffice2007ThemeToChildren();
		if (Style == VisualStyle.Office2007)
		{
			m_office2007ColorTable = Office2007Colors.GetColorTable(m_office2007Theme);
			ApplyOffice2007Theme();
			Invalidate();
		}
	}

	private void ApplyOffice2007Theme()
	{
		StyleBorderColor = m_office2007ColorTable.DataTimePickerBorderColor;
		CalendarTitleBackColor = Calendar.HeaderStartColor;
		CalendarTitleForeColor = Calendar.HeadForeColor;
		CalendarTrailingForeColor = Calendar.InactiveMonthColor;
		CalendarMonthBackground = Calendar.GridBackColor;
		CalendarForeColor = Calendar.ForeColor;
	}

	private void ApplyOffice2007ThemeToChildren()
	{
		monthCalendar.Office2007Theme = m_office2007Theme;
		dropButton.Office2007Theme = m_office2007Theme;
		numericUD.Office2007ColorScheme = m_office2007Theme;
		checkBox.Office2007Theme = m_office2007Theme;
	}

	protected bool ShouldSerializeDropDownNormalColor()
	{
		return dropButton.NormalColor != Color.Empty;
	}

	protected void ResetDropDownNormalColor()
	{
		dropButton.NormalColor = Color.Empty;
	}

	protected bool ShouldSerializeDropDownPressedColor()
	{
		return dropButton.PressedColor != Color.Empty;
	}

	protected void ResetDropDownPressedColor()
	{
		dropButton.PressedColor = Color.Empty;
	}

	protected bool ShouldSerializeDropDownSelectedColor()
	{
		return dropButton.SelectedColor != Color.Empty;
	}

	protected void ResetDropDownSelectedColor()
	{
		dropButton.SelectedColor = Color.Empty;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeBorderColor()
	{
		return base.BorderColor != Color.Empty;
	}

	[DocumentationExclude]
	protected void ResetBorderColor()
	{
		base.BorderColor = Color.Empty;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeBackColor()
	{
		return BackColor != SystemColors.Window;
	}

	[DocumentationExclude]
	protected new void ResetBackColor()
	{
		BackColor = SystemColors.Window;
	}

	protected bool ShouldSerializeCalendarSize()
	{
		if (CalendarSize == new Size(208, 176))
		{
			return false;
		}
		return true;
	}

	protected void ResetCalendarSize()
	{
		CalendarSize = new Size(208, 176);
	}

	protected bool ShouldSerializeCalendarTrailingForeColor()
	{
		if (CalendarTrailingForeColor == SystemColors.InactiveCaptionText)
		{
			return false;
		}
		return true;
	}

	protected void ResetCalendarTrailingForeColor()
	{
		CalendarTrailingForeColor = SystemColors.InactiveCaptionText;
	}

	protected bool ShouldSerializeCalendarTitleForeColor()
	{
		if (CalendarTitleForeColor == SystemColors.ActiveCaptionText)
		{
			return false;
		}
		return true;
	}

	protected void ResetCalendarTitleForeColor()
	{
		CalendarTitleForeColor = SystemColors.ActiveCaptionText;
	}

	protected bool ShouldSerializeCalendarTitleBackColor()
	{
		if (CalendarTitleBackColor == SystemColors.ActiveCaption)
		{
			return false;
		}
		return true;
	}

	protected void ResetCalendarTitleBackColor()
	{
		CalendarTitleBackColor = SystemColors.ActiveCaption;
	}

	protected bool ShouldSerializeCalendarMonthBackground()
	{
		if (cStore.MonthBackground == SystemColors.Window)
		{
			return false;
		}
		return true;
	}

	protected void ResetCalendarMonthBackground()
	{
		CalendarMonthBackground = SystemColors.Window;
	}

	protected bool ShouldSerializeCalendarForeColor()
	{
		if (cStore.ForeColor == ForeColor)
		{
			return false;
		}
		return true;
	}

	protected void ResetCalendarForeColor()
	{
		CalendarForeColor = ForeColor;
	}

	protected bool ShouldSerializeCalendarFont()
	{
		if (cStore.Font == Font)
		{
			return false;
		}
		return true;
	}

	protected void ResetCalendarFont()
	{
		CalendarFont = Font;
	}

	protected bool ShouldSerializeSize()
	{
		if (Size.Width == 232 && Size.Height == 20)
		{
			return false;
		}
		return true;
	}

	protected bool ShouldSerializeDropDownAlign()
	{
		if (DropDownAlign == LeftRightAlignment.Left)
		{
			return false;
		}
		return true;
	}

	protected void ResetDropDownAlign()
	{
		DropDownAlign = LeftRightAlignment.Left;
	}

	private void WireContextMenuEvents()
	{
		if (contextMenu != null)
		{
			contextMenu.Popup += ContextMenu_Popup;
			contextMenu.Cut += CutMI_Click;
			contextMenu.Copy += CopyMI_Click;
			contextMenu.Paste += PasteMI_Click;
			contextMenu.NoDateTime += NoDateTimeMI_Click;
		}
	}

	private void WireCalendarEvents()
	{
		if (customPopupWindow == null)
		{
			return;
		}
		customPopupWindow.ParentControl = this;
		customPopupWindow.ControlAdded += CustomPopup_ControlAdded;
		customPopupWindow.BeforePopup += PopupWindow_BeforePopup;
		customPopupWindow.CloseUp += PopupWindow_CloseUp;
		iCalendars.Clear();
		for (int i = 0; i < customPopupWindow.Controls.Count; i++)
		{
			Control control = customPopupWindow.Controls[i];
			if (control is IDateTimePickerCalendarSource)
			{
				IDateTimePickerAdvCalendar calendar = ((IDateTimePickerCalendarSource)control).GetCalendar();
				if (calendar.Active)
				{
					calendar.NullButtonDown += ICalendar_NoneButtonDown;
					calendar.SelectDate += ICalendar_SelectDate;
					calendar.DateChange += ICalendar_DateChanged;
					calendar.Value = Value;
					iCalendars.Add(calendar);
				}
			}
		}
	}

	protected bool ShouldSerializeMinValue()
	{
		if (MinValue == new DateTime(1753, 1, 1, 0, 0, 0))
		{
			return false;
		}
		return true;
	}

	protected void ResetMinValue()
	{
		MinValue = new DateTime(1753, 1, 1, 0, 0, 0);
	}

	protected bool ShouldSerializeMaxValue()
	{
		if (MaxValue == DateTime.MaxValue)
		{
			return false;
		}
		return true;
	}

	protected void ResetMaxValue()
	{
		MaxValue = DateTime.MaxValue;
	}

	protected bool ShouldSerializeValue()
	{
		if (dvalue.Year == designValue.Year && dvalue.Month == designValue.Month && dvalue.Day == designValue.Day && dvalue.Hour == designValue.Hour && dvalue.Minute == designValue.Minute)
		{
			return dvalue.Second != designValue.Second;
		}
		return true;
	}

	protected void ResetValue()
	{
		Value = (designValue = DateTime.Now);
	}

	protected virtual void OnBindableValueChanged(EventArgs e)
	{
		if (this.BindableValueChanged != null)
		{
			this.BindableValueChanged(this, e);
		}
	}

	protected bool ShouldSerializeCustomFormat()
	{
		if (CustomFormat == string.Empty)
		{
			return false;
		}
		return true;
	}

	protected void ResetCustomFormat()
	{
		CustomFormat = string.Empty;
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		RefreshFormats();
		RecalculateMaxWidths();
	}

	protected bool ShouldSerializeCulture()
	{
		if (Culture.Equals(new CultureInfo(string.Empty)))
		{
			return false;
		}
		return true;
	}

	protected void ResetCulture()
	{
		Culture = new CultureInfo(string.Empty);
	}

	void ISupportInitialize.BeginInit()
	{
		initializing = true;
		designValue = (dvalue = DateTime.Now);
	}

	void ISupportInitialize.EndInit()
	{
		WireCalendarEvents();
		for (int i = 0; i < iCalendars.Count; i++)
		{
			IDateTimePickerAdvCalendar dateTimePickerAdvCalendar = (IDateTimePickerAdvCalendar)iCalendars[i];
			dateTimePickerAdvCalendar.CalendarFont = CalendarFont;
			dateTimePickerAdvCalendar.CalendarForeColor = CalendarForeColor;
			dateTimePickerAdvCalendar.CalendarMonthBackground = CalendarMonthBackground;
			dateTimePickerAdvCalendar.Culture = Culture;
			dateTimePickerAdvCalendar.MaxDate = MaxValue;
			dateTimePickerAdvCalendar.MinDate = MinValue;
			dateTimePickerAdvCalendar.TitleBackColor = CalendarTitleBackColor;
			dateTimePickerAdvCalendar.TitleForeColor = CalendarTitleForeColor;
			dateTimePickerAdvCalendar.TrailingForeColor = CalendarTrailingForeColor;
			dateTimePickerAdvCalendar.Value = Value;
		}
		Invalidate(invalidateChildren: true);
		DateTimePickerAdv_SizeChanged(this, EventArgs.Empty);
		initializing = false;
		dateOnPopup = Value;
		isNullDateOnPopup = IsNullDate;
		RefreshFormats();
	}

	public DateTimePickerAdv()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(DateTimePickerAdv));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		InitializeComponent();
		InitializeDateTimePickerAdv();
		InitializeCalendarStore();
		UpdateCheckBoxLocation();
		SetStyle(ControlStyles.UserPaint | ControlStyles.ResizeRedraw | ControlStyles.Selectable | ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
		BorderColor = Color.Empty;
		fields = new Hashtable();
		if (XPThemes.IsThemedOS)
		{
			comboDrawing = new ThemedComboBoxDrawing("COMBOBOX", this);
		}
		if (popupWindow == null || monthCalendar == null || !m_bInitializePopupCalled)
		{
			InitializePopup();
		}
		Office2007Colors.ManagedColorsApplied += Office2007ManagedColorsApplied;
	}

	private void InitializeCalendarStore()
	{
		cStore.Font = Font;
		cStore.ForeColor = ForeColor;
		cStore.MonthBackground = SystemColors.Window;
		cStore.Size = new Size(1, 1);
		cStore.TitleBackColor = SystemColors.ActiveCaption;
		cStore.TitleForeColor = SystemColors.ActiveCaptionText;
		cStore.TrailingForeColor = SystemColors.InactiveCaptionText;
		cStore.Culture = CultureInfo.CurrentCulture;
		cStore.MaxDate = maxValue;
		cStore.MinDate = minValue;
		cStore.PopupSize = new Size(208, 176);
		cStore.NoneEnabled = true;
		cStore.EnableNullDate = enableNullDate;
	}

	protected virtual void InitDefaultPopup(CalendarPopup defaultPopup)
	{
		defaultPopup.ParentControl = this;
		defaultPopup.Calendar = monthCalendar;
	}

	private void CustomPopup_ControlAdded(object sender, ControlEventArgs e)
	{
		Control control = e.Control;
		if (control is IDateTimePickerAdvCalendar)
		{
			IDateTimePickerAdvCalendar dateTimePickerAdvCalendar = control as IDateTimePickerAdvCalendar;
			dateTimePickerAdvCalendar.NullButtonDown += ICalendar_NoneButtonDown;
			dateTimePickerAdvCalendar.SelectDate += ICalendar_SelectDate;
			dateTimePickerAdvCalendar.DateChange += ICalendar_DateChanged;
			iCalendars.Add(dateTimePickerAdvCalendar);
		}
	}

	private void RecalculateMaxWidths()
	{
		Graphics graphics = CreateGraphics();
		maxDayWidth = 0;
		maxAbrevDayWidth = 0;
		maxMonthWidth = 0;
		maxAbrevMonthWidth = 0;
		maxDigitYearWidth = 0;
		maxTwoDigitYearWidth = 0;
		days = culture.DateTimeFormat.DayNames;
		for (int i = 0; i < 7; i++)
		{
			maxDayWidth = Math.Max(maxDayWidth, graphics.MeasureString(days[i], Font).ToSize().Width);
		}
		abrevDays = culture.DateTimeFormat.AbbreviatedDayNames;
		for (int j = 0; j < 7; j++)
		{
			maxAbrevDayWidth = Math.Max(maxAbrevDayWidth, graphics.MeasureString(abrevDays[j], Font).ToSize().Width);
		}
		for (int k = 1; k <= 12; k++)
		{
			months[k] = culture.DateTimeFormat.MonthNames[k - 1];
			maxMonthWidth = Math.Max(maxMonthWidth, graphics.MeasureString(months[k], Font).ToSize().Width);
		}
		for (int l = 1; l <= 12; l++)
		{
			abrevMonths[l] = culture.DateTimeFormat.AbbreviatedMonthNames[l - 1];
			maxAbrevMonthWidth = Math.Max(maxAbrevMonthWidth, graphics.MeasureString(abrevMonths[l], Font).ToSize().Width);
		}
		maxDigitDayWidth = 0;
		for (int m = 0; m < 31; m++)
		{
			maxDigitDayWidth = Math.Max(maxDigitDayWidth, DTField.MeasureString(graphics, m.ToString(), Font) - 2);
		}
		maxDigitHourWidth = 0;
		for (int n = 0; n < 23; n++)
		{
			maxDigitHourWidth = Math.Max(maxDigitHourWidth, DTField.MeasureString(graphics, n.ToString(), Font) - 2);
		}
		maxDigitMinuteWidth = 0;
		for (int num = 0; num < 59; num++)
		{
			maxDigitMinuteWidth = Math.Max(maxDigitMinuteWidth, DTField.MeasureString(graphics, num.ToString(), Font) - 2);
		}
		maxDigitMonthWidth = 0;
		for (int num2 = 1; num2 < 12; num2++)
		{
			maxDigitMonthWidth = Math.Max(maxDigitMonthWidth, DTField.MeasureString(graphics, num2.ToString(), Font) - 2);
		}
		maxYearWidth = DTField.MeasureString(graphics, 9999.ToString(), Font);
		maxDigitYearWidth = DTField.MeasureString(graphics, 9.ToString(), Font);
		maxTwoDigitYearWidth = DTField.MeasureString(graphics, 99.ToString(), Font);
		graphics.Dispose();
		RefreshFields();
	}

	private DateTime IncrementYear(bool inc)
	{
		return CurrentCalendar.AddYears(dvalue, inc ? 1 : (-1));
	}

	private DateTime IncrementMonth(bool inc)
	{
		int year = dvalue.Year;
		DateTime dateTime = CurrentCalendar.AddMonths(dvalue, inc ? 1 : (-1));
		if (year != dateTime.Year)
		{
			dateTime = ((!inc) ? CurrentCalendar.AddYears(dateTime, 1) : CurrentCalendar.AddYears(dateTime, -1));
		}
		return dateTime;
	}

	private DateTime IncrementDay(bool inc)
	{
		DTField dTField = FindField(FieldType.Day);
		if (dTField.Definition.Type != FieldType.Day)
		{
			return dvalue;
		}
		CultureSpecifiecDateTime cultureSpecifiecDateTime = new CultureSpecifiecDateTime(dvalue, CurrentCalendar);
		if (inc)
		{
			cultureSpecifiecDateTime.Day++;
			if (cultureSpecifiecDateTime.Day > dTField.Maximum)
			{
				cultureSpecifiecDateTime.Day = 1;
			}
		}
		else
		{
			cultureSpecifiecDateTime.Day--;
			if (cultureSpecifiecDateTime.Day < 1)
			{
				cultureSpecifiecDateTime.Day = dTField.Maximum;
			}
		}
		return cultureSpecifiecDateTime.DateTime;
	}

	private DateTime IncrementHour(bool inc)
	{
		DateTime date = dvalue.Date;
		DateTime result = dvalue.AddHours(inc ? 1 : (-1));
		if (date != result.Date)
		{
			result = ((!inc) ? result.AddDays(1.0) : result.AddDays(-1.0));
		}
		return result;
	}

	private DateTime IncrementMinute(bool inc)
	{
		int hour = dvalue.Hour;
		DateTime result = dvalue.AddMinutes(inc ? 1 : (-1));
		if (result.Hour != hour)
		{
			result = ((!inc) ? result.AddHours(1.0) : result.AddHours(-1.0));
		}
		return result;
	}

	private DateTime IncrementSecond(bool inc)
	{
		int minute = dvalue.Minute;
		DateTime result = dvalue.AddSeconds(inc ? 1 : (-1));
		if (result.Minute != minute)
		{
			result = ((!inc) ? result.AddMinutes(1.0) : result.AddMinutes(-1.0));
		}
		return result;
	}

	private DateTime IncrementAMPM()
	{
		int num = 12;
		if (dvalue.Hour > 12 || dvalue.Hour == 12)
		{
			num = -12;
		}
		return new DateTime(dvalue.Year, dvalue.Month, dvalue.Day, dvalue.Hour + num, dvalue.Minute, dvalue.Second);
	}

	private void IncrementAMPMChangeValue()
	{
		try
		{
			DateTime value = IncrementAMPM();
			if (CheckDate(value))
			{
				Value = value;
			}
		}
		catch (Exception)
		{
		}
	}

	public override Size GetPreferredSize(Size proposedSize)
	{
		Syncfusion.Runtime.InteropServices.NativeMethods.RECT lpRect = new Syncfusion.Runtime.InteropServices.NativeMethods.RECT(0, 0, 2, 0);
		if (ShowCheckBox && checkBox != null)
		{
			Size preferredSize = checkBox.GetPreferredSize(Size.Empty);
			lpRect.Width += 3 + preferredSize.Width + 2;
			lpRect.Height = preferredSize.Height;
		}
		if (ShowDropButton && dropButton != null)
		{
			Size preferredSize2 = dropButton.GetPreferredSize(Size.Empty);
			lpRect.Width += dropButton.Width;
			if (lpRect.Height < preferredSize2.Height)
			{
				lpRect.Height = preferredSize2.Height;
			}
		}
		if (ShowUpDown && numericUD != null)
		{
			Size preferredSize3 = numericUD.GetPreferredSize(Size.Empty);
			lpRect.Width += preferredSize3.Width;
			if (lpRect.Height < preferredSize3.Height)
			{
				lpRect.Height = preferredSize3.Height;
			}
		}
		for (int i = 0; i < fields.Count; i++)
		{
			DTField dTField = Fields(i);
			lpRect.Width += dTField.Width + spacing;
		}
		int num = offset.X * 2 + Font.Height + (int)Font.Size / 7;
		if (lpRect.Height < num)
		{
			lpRect.Height = num;
		}
		CreateParams createParams = CreateParams;
		AdjustWindowRectEx(ref lpRect, createParams.Style, bMenu: false, createParams.ExStyle);
		Size maximumSize = MaximumSize;
		if (maximumSize.Width > 0 && lpRect.Width > maximumSize.Width)
		{
			lpRect.Width = maximumSize.Width;
		}
		if (maximumSize.Height > 0 && lpRect.Height > maximumSize.Height)
		{
			lpRect.Height = maximumSize.Height;
		}
		Size minimumSize = MinimumSize;
		if (minimumSize.Width > 0 && lpRect.Width < minimumSize.Width)
		{
			lpRect.Width = minimumSize.Width;
		}
		if (minimumSize.Height > 0 && lpRect.Height < minimumSize.Height)
		{
			lpRect.Height = minimumSize.Height;
		}
		return new Size(lpRect.Width, lpRect.Height);
	}

	protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
	{
		if (popupWindow == null)
		{
			InitializePopup();
		}
		if ((popupWindow != null && !popupWindow.IsShowing()) || (customPopupWindow != null && customPopupWindow.IsShowing()))
		{
			if (isNullDate)
			{
				bool flag = false;
				switch (nullModeKeyReset)
				{
				case NullModeKeyReset.Any:
					IsNullDate = false;
					flag = true;
					break;
				case NullModeKeyReset.ArrowKeys:
					if (!showDropDownOnNull)
					{
						if (keyData == Keys.Up || keyData == Keys.Down || keyData == Keys.Left || keyData == Keys.Right)
						{
							IsNullDate = false;
							flag = true;
						}
					}
					else
					{
						flag = true;
					}
					break;
				case NullModeKeyReset.NumericKeys:
				{
					string text = keyData.ToString();
					if ((text.StartsWith("D") && text.Length == 2) || text.StartsWith("NumPad"))
					{
						if (resetSelectionOnFocus)
						{
							selectedField = Fields(0);
						}
						IsNullDate = false;
						flag = true;
					}
					break;
				}
				}
				if (!flag)
				{
					return base.ProcessCmdKey(ref msg, keyData);
				}
			}
			if (Syncfusion.Runtime.InteropServices.NativeMethods.GetKeyboardState(keyState))
			{
				string text2 = Encoding.Unicode.GetString(charBuffer);
				if (selectedField != null)
				{
					int num = (int)fields[selectedField];
					if (num >= 0 && num < fields.Count - 1 && Fields(num + 1).Definition.Type == FieldType.String && Fields(num + 1).Text.Length == 1 && text2 == Fields(num + 1).Text)
					{
						NextField();
					}
				}
			}
			if ((keyData & Keys.KeyCode) == Keys.A && selectedField != null && selectedField.Definition.Type == FieldType.AMPM && selectedField.Text == "PM")
			{
				IncrementAMPMChangeValue();
			}
			if ((keyData & Keys.KeyCode) == Keys.P && selectedField != null && selectedField.Definition.Type == FieldType.AMPM && selectedField.Text == "AM")
			{
				IncrementAMPMChangeValue();
			}
			if ((keyData & Keys.KeyCode) == Keys.X && Control.ModifierKeys == Keys.Control)
			{
				Cut();
			}
			if ((keyData & Keys.KeyCode) == Keys.C && Control.ModifierKeys == Keys.Control)
			{
				Copy();
			}
			if ((keyData & Keys.KeyCode) == Keys.V && Control.ModifierKeys == Keys.Control)
			{
				Paste();
			}
			if (enableNullKeys && (((keyData & Keys.KeyCode) == Keys.D0 && Control.ModifierKeys == Keys.Control) || keyData == Keys.Back || keyData == Keys.Delete))
			{
				IsNullDate = true;
			}
			if ((keyData & Keys.KeyCode) == Keys.Down && Control.ModifierKeys == Keys.Alt)
			{
				DropButton_MouseDown(dropButton, new MouseEventArgs(MouseButtons.Left, 1, 1, 1, 0));
				return true;
			}
			switch (keyData)
			{
			case Keys.Space:
				if (ShowCheckBox)
				{
					checkBox.CheckState = ((checkBox.CheckState == CheckState.Unchecked) ? CheckState.Checked : CheckState.Unchecked);
				}
				return true;
			case Keys.Escape:
				if (customPopup)
				{
					if (customPopupWindow != null && customPopupWindow.IsShowing())
					{
						customPopupWindow.HidePopup(PopupCloseType.Canceled);
					}
				}
				else if (popupWindow != null && popupWindow.IsShowing())
				{
					popupWindow.HidePopup(PopupCloseType.Canceled);
				}
				return true;
			case Keys.Return:
				if (!customPopup && popupWindow != null && popupWindow.IsShowing())
				{
					Value = Calendar.Value;
					popupWindow.HidePopup(PopupCloseType.Done);
					return true;
				}
				break;
			}
			if ((ShowCheckBox && checkBox.Checked) || !ShowCheckBox)
			{
				if ((keyData == Keys.Up || keyData == Keys.Down) && !isNullDate)
				{
					Focus();
					bool inc = keyData == Keys.Up;
					IncrementField(inc);
					return true;
				}
				if (keyData == Keys.Left || keyData == Keys.Right)
				{
					Focus();
					if (selectedField != null && ((keyData == Keys.Left && PreviousField()) || (keyData == Keys.Right && NextField())))
					{
						return true;
					}
				}
				int num2 = -1;
				switch (keyData)
				{
				case Keys.D0:
					num2 = 0;
					break;
				case Keys.D1:
					num2 = 1;
					break;
				case Keys.D2:
					num2 = 2;
					break;
				case Keys.D3:
					num2 = 3;
					break;
				case Keys.D4:
					num2 = 4;
					break;
				case Keys.D5:
					num2 = 5;
					break;
				case Keys.D6:
					num2 = 6;
					break;
				case Keys.D7:
					num2 = 7;
					break;
				case Keys.D8:
					num2 = 8;
					break;
				case Keys.D9:
					num2 = 9;
					break;
				case Keys.NumPad0:
					num2 = 0;
					break;
				case Keys.NumPad1:
					num2 = 1;
					break;
				case Keys.NumPad2:
					num2 = 2;
					break;
				case Keys.NumPad3:
					num2 = 3;
					break;
				case Keys.NumPad4:
					num2 = 4;
					break;
				case Keys.NumPad5:
					num2 = 5;
					break;
				case Keys.NumPad6:
					num2 = 6;
					break;
				case Keys.NumPad7:
					num2 = 7;
					break;
				case Keys.NumPad8:
					num2 = 8;
					break;
				case Keys.NumPad9:
					num2 = 9;
					break;
				}
				if (num2 != -1)
				{
					if (selectedField != null && selectedField.Definition.Type != FieldType.Year)
					{
						if (selectedField.Definition.Type != FieldType.AMPM && selectedField.ProcessNumberKey(num2))
						{
							ValidateField();
							if (autoForwarding)
							{
								NextField();
							}
						}
					}
					else if (selectedField.ProcessNumberKeyYear(num2))
					{
						ValidateField();
						if (autoForwarding)
						{
							NextField();
						}
					}
					return true;
				}
			}
			if (keyData == Keys.Tab && tabForwarding)
			{
				if (NextField(tabKey: true))
				{
					return true;
				}
				NextField();
			}
			if ((keyData & Keys.KeyCode) == Keys.Tab && Control.ModifierKeys == Keys.Shift && tabForwarding && PreviousField(tabKey: true))
			{
				return true;
			}
			if (((ShowCheckBox && checkBox.Checked) || !ShowCheckBox) && (keyData == Keys.Home || keyData == Keys.End))
			{
				ProcessKey(keyData);
			}
		}
		else if (keyData == Keys.Escape)
		{
			bool flag2 = false;
			if (customPopup)
			{
				if (customPopupWindow != null && customPopupWindow.IsShowing())
				{
					customPopupWindow.HidePopup(PopupCloseType.Canceled);
					flag2 = true;
				}
			}
			else if (popupWindow != null && popupWindow.IsShowing())
			{
				popupWindow.HidePopup(PopupCloseType.Canceled);
				flag2 = true;
			}
			if (flag2)
			{
				return true;
			}
		}
		return base.ProcessCmdKey(ref msg, keyData);
	}

	protected override bool IsInputChar(char charCode)
	{
		return true;
	}

	private void ProcessKey(Keys key)
	{
		switch (SelectedField.Definition.Type)
		{
		case FieldType.Day:
			ProcessDay(key);
			break;
		case FieldType.Month:
			ProcessMonth(key);
			break;
		case FieldType.Year:
			ProcessYear(key);
			break;
		case FieldType.Hour:
			ProcessHour(key);
			break;
		case FieldType.Minute:
			ProcessMinute(key);
			break;
		case FieldType.Seconds:
			ProcessSecond(key);
			break;
		case FieldType.AMPM:
			ProcessAMPM(key);
			break;
		}
	}

	private void ProcessAMPM(Keys key)
	{
		switch (key)
		{
		case Keys.Home:
			ProcessAM();
			break;
		case Keys.End:
			ProcessPM();
			break;
		}
	}

	private void ProcessAM()
	{
		if (Value.Hour > c_nTWELVE_HOURS)
		{
			Value = Value.AddHours(-c_nTWELVE_HOURS);
			Invalidate();
		}
	}

	private void ProcessPM()
	{
		if (Value.Hour < c_nTWELVE_HOURS)
		{
			Value = Value.AddHours(c_nTWELVE_HOURS);
			Invalidate();
		}
	}

	private void ProcessYear(Keys key)
	{
		switch (key)
		{
		case Keys.Home:
			ProcessMinYear();
			break;
		case Keys.End:
			ProcessMaxYear();
			break;
		}
	}

	private void ProcessMaxYear()
	{
		Value = new DateTime(c_nMAX_YEAR, c_nMAX_MONTH, c_nMAX_DAY);
		Invalidate();
	}

	private void ProcessMinYear()
	{
		Value = new DateTime(c_nMIN_YEAR, c_nMIN_MONTH, c_nMIN_DAY);
		Invalidate();
	}

	private void ProcessMonth(Keys key)
	{
		switch (key)
		{
		case Keys.Home:
			ProcessMinMonth();
			break;
		case Keys.End:
			ProcessMaxMonth();
			break;
		}
	}

	private void ProcessMaxMonth()
	{
		int month = Value.Month;
		Value = Value.AddMonths(c_nMAX_MONTH - month);
		Invalidate();
	}

	private void ProcessMinMonth()
	{
		int month = Value.Month;
		Value = Value.AddMonths(1 - month);
		Invalidate();
	}

	private void ProcessDay(Keys key)
	{
		switch (key)
		{
		case Keys.Home:
			ProcessMinDay();
			break;
		case Keys.End:
			ProcessMaxDay();
			break;
		}
	}

	private void ProcessMaxDay()
	{
		if (selectedField.Definition.DayFormat == DayFormat.FullName || selectedField.Definition.DayFormat == DayFormat.AbbreviatedName)
		{
			DayOfWeek dayOfWeek = Value.DayOfWeek;
			int num = 0;
			if (dayOfWeek != DayOfWeek.Sunday)
			{
				num = (int)(num + (c_nWEEK_DAYS - dayOfWeek));
			}
			Value = Value.AddDays(num);
		}
		else
		{
			int day = Value.Day;
			Value = Value.AddDays(selectedField.Maximum - day);
		}
		Invalidate();
	}

	private void ProcessMinDay()
	{
		if (selectedField.Definition.DayFormat == DayFormat.FullName || selectedField.Definition.DayFormat == DayFormat.AbbreviatedName)
		{
			DayOfWeek dayOfWeek = Value.DayOfWeek;
			int num = 0;
			num = ((dayOfWeek == DayOfWeek.Sunday) ? (1 - c_nWEEK_DAYS) : ((int)(1 - dayOfWeek)));
			Value = Value.AddDays(num);
		}
		else
		{
			int day = Value.Day;
			Value = Value.AddDays(1 - day);
		}
		Invalidate();
	}

	private void ProcessSecond(Keys key)
	{
		switch (key)
		{
		case Keys.Home:
			ProcessMinSecond();
			break;
		case Keys.End:
			ProcessMaxSecond();
			break;
		}
	}

	private void ProcessMaxSecond()
	{
		int second = Value.Second;
		Value = Value.AddSeconds(c_nMAX_MINUTE_SECOND - second);
		Invalidate();
	}

	private void ProcessMinSecond()
	{
		int second = Value.Second;
		Value = Value.AddSeconds(-second);
		Invalidate();
	}

	private void ProcessMinute(Keys key)
	{
		switch (key)
		{
		case Keys.Home:
			ProcessMinMinute();
			break;
		case Keys.End:
			ProcessMaxMinute();
			break;
		}
	}

	private void ProcessMaxMinute()
	{
		int minute = Value.Minute;
		Value = Value.AddMinutes(c_nMAX_MINUTE_SECOND - minute);
		Invalidate();
	}

	private void ProcessMinMinute()
	{
		int minute = Value.Minute;
		Value = Value.AddMinutes(-minute);
		Invalidate();
	}

	private void ProcessHour(Keys key)
	{
		switch (key)
		{
		case Keys.Home:
			ProcessMinHour();
			break;
		case Keys.End:
			ProcessMaxHour();
			break;
		}
	}

	private void ProcessMaxHour()
	{
		int hour = Value.Hour;
		switch (SelectedField.Definition.HourFormat)
		{
		case HourFormat.OneOrTwoDigit12:
		case HourFormat.TwoDigit12:
			Value = Value.AddHours(c_nMAX_HOUR_12 - hour);
			break;
		case HourFormat.OneOrTwoDigit24:
		case HourFormat.TwoDigit24:
			Value = Value.AddHours(c_nMAX_HOUR_24 - hour);
			break;
		}
		Invalidate();
	}

	private void ProcessMinHour()
	{
		int hour = Value.Hour;
		Value = Value.AddHours(-hour);
		Invalidate();
	}

	private bool PreviousField()
	{
		return PreviousField(tabKey: false);
	}

	private bool PreviousField(bool tabKey)
	{
		int num = ((selectedField != null) ? ((int)fields[selectedField]) : (-1));
		if (num >= 0)
		{
			while (--num >= 0)
			{
				if (Fields(num).Definition.Type != FieldType.String)
				{
					SelectField(Fields(num));
					break;
				}
			}
			if (num < 0)
			{
				if ((tabLeave && tabKey) || !JumpField())
				{
					return false;
				}
				num = fields.Count;
				while (--num >= 0)
				{
					if (Fields(num).Definition.Type != FieldType.String)
					{
						SelectField(Fields(num));
						break;
					}
				}
			}
		}
		return true;
	}

	protected virtual bool JumpField()
	{
		return true;
	}

	private bool NextField()
	{
		return NextField(tabKey: false);
	}

	private bool NextField(bool tabKey)
	{
		int num = ((selectedField != null) ? ((int)fields[selectedField]) : (-1));
		if (num < fields.Count)
		{
			while (++num < fields.Count)
			{
				if (Fields(num).Definition.Type != FieldType.String)
				{
					SelectField(Fields(num));
					break;
				}
			}
			if (num == fields.Count)
			{
				if ((tabLeave && tabKey) || !JumpField())
				{
					return false;
				}
				num = -1;
				while (++num < fields.Count)
				{
					if (Fields(num).Definition.Type != FieldType.String)
					{
						SelectField(Fields(num));
						break;
					}
				}
			}
		}
		return true;
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if (base.DesignMode)
		{
			return;
		}
		Focus();
		if (!readOnly)
		{
			if (isNullDateOnPopup && IsNullDate)
			{
				HidePopup(PopupCloseType.Canceled);
			}
			else
			{
				HidePopup(PopupCloseType.Done);
			}
			if (e.Button == MouseButtons.Left)
			{
				foreach (DTField key in fields.Keys)
				{
					if (key.Bounds.Contains(e.X, e.Y))
					{
						SelectField(key);
					}
				}
			}
			else if (ContextMenu == null && contextMenu != null)
			{
				contextMenu.ShowPopup(this, PointToClient(Control.MousePosition));
			}
		}
		base.OnMouseDown(e);
	}

	private void SelectField(DTField field)
	{
		if (field.Definition.Type != FieldType.String)
		{
			if (selectedField != null)
			{
				selectedField.ResetInsertYearMode();
				ValidateField();
			}
			selectedField = field;
			selectedField.StartedTyping = false;
			RefreshFields();
		}
	}

	private void Field_TextChanged(object sender, EventArgs e)
	{
		RepositionFields();
		Invalidate();
	}

	private void AddField(FieldDefinition fd)
	{
		DTField dTField = new DTField(fd, this);
		dTField.TextChanged += Field_TextChanged;
		fields.Add(dTField, fields.Count);
	}

	private void ParseCustomString(string str)
	{
		FieldDefinitionCollection fieldDefinitionCollection = DateTimeCustomFormatParser.Parse(str);
		fields.Clear();
		selectedField = null;
		foreach (FieldDefinition item in fieldDefinitionCollection)
		{
			AddField(item);
		}
		if (fields.Count > 0)
		{
			NextField();
		}
		RefreshFields();
	}

	protected DTField Fields(int index)
	{
		if (index >= 0 && index < fields.Count)
		{
			foreach (DictionaryEntry field in fields)
			{
				if (index == (int)field.Value)
				{
					return (DTField)field.Key;
				}
			}
		}
		return new DTField(null, this);
	}

	private void RefreshFormats()
	{
		if (minValue < CurrentCalendar.MinSupportedDateTime)
		{
			minValue = CurrentCalendar.MinSupportedDateTime;
		}
		if (maxValue > CurrentCalendar.MaxSupportedDateTime)
		{
			maxValue = CurrentCalendar.MaxSupportedDateTime;
		}
		string dateSeparator = Culture.DateTimeFormat.DateSeparator;
		string dateSeparator2 = new CultureInfo(Culture.Name).DateTimeFormat.DateSeparator;
		switch (dTformat)
		{
		case DateTimePickerFormat.Long:
			format = culture.DateTimeFormat.LongDatePattern;
			format = format.Replace(dateSeparator2, dateSeparator);
			m_previousDateSeparator = dateSeparator;
			break;
		case DateTimePickerFormat.Short:
			format = culture.DateTimeFormat.ShortDatePattern;
			format = format.Replace(dateSeparator2, dateSeparator);
			m_previousDateSeparator = dateSeparator;
			break;
		case DateTimePickerFormat.Time:
			format = culture.DateTimeFormat.LongTimePattern;
			break;
		case DateTimePickerFormat.Custom:
			format = customFormat;
			break;
		}
		ParseCustomString(format);
	}

	private DTField FindField(FieldType ft)
	{
		for (int i = 0; i < fields.Count; i++)
		{
			DTField dTField = Fields(i);
			if (dTField.Definition.Type == ft)
			{
				return dTField;
			}
		}
		return new DTField(null, this);
	}

	private void RepositionFields()
	{
		bool isMirrored = GetIsMirrored();
		int num = 0;
		if (isMirrored)
		{
			num = base.ClientRectangle.Right - offset.X - 5;
			if (ShowCheckBox && checkBox != null)
			{
				num -= checkBox.Width + 2;
			}
		}
		else
		{
			num = offset.X;
			if (ShowCheckBox && checkBox != null)
			{
				num += checkBox.Width + 2;
			}
		}
		for (int i = 0; i < fields.Count; i++)
		{
			DTField dTField = Fields(i);
			if (isMirrored)
			{
				num -= dTField.Width + spacing;
			}
			dTField.Location = new Point(num, (base.ClientRectangle.Height - dTField.Height) / 2);
			if (!isMirrored)
			{
				num += dTField.Width + spacing;
			}
		}
	}

	[Description("Refreshes all date-time input fields of the control.")]
	public void RefreshFields()
	{
		for (int i = 0; i < fields.Count; i++)
		{
			DTField dTField = Fields(i);
			FieldDefinition definition = dTField.Definition;
			int month = CurrentCalendar.GetMonth(dvalue);
			int year = CurrentCalendar.GetYear(dvalue);
			int dayOfMonth = CurrentCalendar.GetDayOfMonth(dvalue);
			switch (definition.Type)
			{
			case FieldType.Day:
			{
				int dayOfWeek = (int)CurrentCalendar.GetDayOfWeek(dvalue);
				switch (definition.DayFormat)
				{
				case DayFormat.OneOrTwoDigit:
					dTField.RightAlign = true;
					dTField.MaxWidth = maxDigitDayWidth;
					dTField.Text = dayOfMonth.ToString();
					break;
				case DayFormat.TwoDigit:
					dTField.RightAlign = true;
					dTField.MaxWidth = maxDigitDayWidth;
					dTField.Text = $"{dayOfMonth:00}";
					break;
				case DayFormat.AbbreviatedName:
					dTField.MaxWidth = maxAbrevDayWidth;
					dTField.Text = abrevDays[dayOfWeek];
					break;
				case DayFormat.FullName:
					dTField.MaxWidth = maxDayWidth;
					dTField.Text = days[dayOfWeek];
					break;
				}
				dTField.Maximum = CurrentCalendar.GetDaysInMonth(year, month);
				break;
			}
			case FieldType.Hour:
				switch (definition.HourFormat)
				{
				case HourFormat.OneOrTwoDigit12:
				{
					dTField.RightAlign = true;
					dTField.MaxWidth = maxDigitHourWidth;
					int num = dvalue.Hour;
					if (num > 12)
					{
						num %= 12;
					}
					if (num == 0)
					{
						num += 12;
					}
					dTField.Text = num.ToString();
					dTField.Maximum = 12;
					break;
				}
				case HourFormat.OneOrTwoDigit24:
					dTField.RightAlign = true;
					dTField.MaxWidth = maxDigitHourWidth;
					dTField.Text = dvalue.Hour.ToString();
					dTField.Maximum = 23;
					break;
				case HourFormat.TwoDigit12:
				{
					dTField.RightAlign = true;
					dTField.MaxWidth = maxDigitHourWidth;
					int num2 = dvalue.Hour;
					if (num2 > 12)
					{
						num2 %= 12;
					}
					if (num2 == 0)
					{
						num2 += 12;
					}
					dTField.Text = ((num2 > 9) ? num2.ToString() : ("0" + num2));
					dTField.Maximum = 12;
					break;
				}
				case HourFormat.TwoDigit24:
					dTField.RightAlign = true;
					dTField.MaxWidth = maxDigitHourWidth;
					dTField.Text = ((dvalue.Hour.ToString().Length > 1) ? dvalue.Hour.ToString() : ("0" + dvalue.Hour));
					dTField.Maximum = 23;
					break;
				}
				break;
			case FieldType.Minute:
				switch (definition.MinuteFormat)
				{
				case MinuteFormat.OneOrTwoDigit:
					dTField.RightAlign = true;
					dTField.MaxWidth = maxDigitMinuteWidth;
					dTField.Text = dvalue.Minute.ToString();
					break;
				case MinuteFormat.TwoDigit:
					dTField.RightAlign = true;
					dTField.MaxWidth = maxDigitMinuteWidth;
					dTField.Text = ((dvalue.Minute.ToString().Length > 1) ? dvalue.Minute.ToString() : ("0" + dvalue.Minute));
					break;
				}
				dTField.Maximum = 59;
				break;
			case FieldType.Month:
				switch (definition.MonthFormat)
				{
				case MonthFormat.AbbreviatedName:
					dTField.MaxWidth = maxAbrevMonthWidth;
					dTField.Text = abrevMonths[month];
					break;
				case MonthFormat.FullName:
					dTField.MaxWidth = maxMonthWidth;
					dTField.Text = months[month];
					break;
				case MonthFormat.OneOrTwoDigit:
					dTField.RightAlign = true;
					dTField.MaxWidth = maxDigitMonthWidth;
					dTField.Text = month.ToString();
					break;
				case MonthFormat.TwoDigit:
					dTField.RightAlign = true;
					dTField.MaxWidth = maxDigitMonthWidth;
					dTField.Text = $"{month:00}";
					break;
				}
				dTField.Maximum = c_nMAX_MONTH;
				break;
			case FieldType.Seconds:
				switch (definition.SecondsFormat)
				{
				case SecondsFormat.OneOrTwoDigit:
					dTField.RightAlign = true;
					dTField.MaxWidth = maxDigitMinuteWidth;
					dTField.Text = dvalue.Second.ToString();
					break;
				case SecondsFormat.TwoDigit:
					dTField.RightAlign = true;
					dTField.MaxWidth = maxDigitMinuteWidth;
					dTField.Text = ((dvalue.Second.ToString().Length > 1) ? dvalue.Second.ToString() : ("0" + dvalue.Second));
					break;
				}
				dTField.Maximum = 59;
				break;
			case FieldType.String:
				dTField.Text = definition.StringData;
				break;
			case FieldType.Year:
				if (selectedField == dTField && Focused)
				{
					dTField.RightAlign = true;
					dTField.MaxWidth = maxYearWidth;
					dTField.Text = year.ToString();
				}
				else
				{
					switch (definition.YearFormat)
					{
					case YearFormat.OneDigit:
						dTField.RightAlign = true;
						dTField.MaxWidth = maxDigitYearWidth;
						dTField.Text = (year % 10).ToString();
						DigitYear = year - year % 10;
						break;
					case YearFormat.TwoDigit:
						dTField.RightAlign = true;
						dTField.MaxWidth = maxTwoDigitYearWidth;
						dTField.Text = $"{year % 100:00}";
						DigitYear = year / 100 * 100;
						break;
					case YearFormat.Full:
						dTField.RightAlign = true;
						dTField.MaxWidth = maxYearWidth;
						dTField.Text = year.ToString();
						break;
					}
				}
				dTField.Maximum = CurrentCalendar.GetYear(MaxValue);
				break;
			case FieldType.AMPM:
			{
				bool flag = dvalue.Hour >= 12;
				dTField.Text = (flag ? culture.DateTimeFormat.PMDesignator : culture.DateTimeFormat.AMDesignator);
				break;
			}
			}
		}
		RepositionFields();
		Invalidate();
	}

	private bool IsNumber(string text)
	{
		if (text.Length == 0)
		{
			return false;
		}
		for (int i = 0; i < text.Length; i++)
		{
			if (!char.IsNumber(text, i))
			{
				return false;
			}
		}
		return true;
	}

	private DateTime ValidateYear()
	{
		if (IsNumber(selectedField.Text))
		{
			int num = int.Parse(selectedField.Text);
			if (num / 10 < 1)
			{
				num += digitYear - digitYear % 10;
			}
			if (num / 100 < 1)
			{
				num += digitYear - digitYear % 100;
			}
			if (num / 1000 < 1)
			{
				num += digitYear;
			}
			if (num < minValue.Year || num > maxValue.Year)
			{
				num = ((num < minValue.Year) ? minValue.Year : maxValue.Year);
			}
			try
			{
				CultureSpecifiecDateTime cultureSpecifiecDateTime = new CultureSpecifiecDateTime(dvalue, CurrentCalendar);
				cultureSpecifiecDateTime.Year = num;
				return cultureSpecifiecDateTime.DateTime;
			}
			catch
			{
				return dvalue;
			}
		}
		return dvalue;
	}

	private DateTime ValidateMonth()
	{
		if (IsNumber(selectedField.Text))
		{
			int month = int.Parse(selectedField.Text);
			try
			{
				CultureSpecifiecDateTime cultureSpecifiecDateTime = new CultureSpecifiecDateTime(dvalue, CurrentCalendar);
				cultureSpecifiecDateTime.Month = month;
				return cultureSpecifiecDateTime.DateTime;
			}
			catch
			{
				return dvalue;
			}
		}
		return dvalue;
	}

	private DateTime ValidateDay()
	{
		if (IsNumber(selectedField.Text))
		{
			int day = int.Parse(selectedField.Text);
			try
			{
				CultureSpecifiecDateTime cultureSpecifiecDateTime = new CultureSpecifiecDateTime(dvalue, CurrentCalendar);
				cultureSpecifiecDateTime.Day = day;
				return cultureSpecifiecDateTime.DateTime;
			}
			catch
			{
				return dvalue;
			}
		}
		return dvalue;
	}

	private DateTime ValidateHour()
	{
		if (!selectedField.StartedTyping)
		{
			return dvalue;
		}
		if (IsNumber(selectedField.Text))
		{
			int num = int.Parse(selectedField.Text);
			try
			{
				if ((selectedField.Definition.HourFormat == HourFormat.OneOrTwoDigit12 || selectedField.Definition.HourFormat == HourFormat.TwoDigit12) && dvalue.Hour >= 12 && num < 12)
				{
					num += 12;
				}
				CultureSpecifiecDateTime cultureSpecifiecDateTime = new CultureSpecifiecDateTime(dvalue, CurrentCalendar);
				cultureSpecifiecDateTime.Hour = num;
				return cultureSpecifiecDateTime.DateTime;
			}
			catch
			{
				return dvalue;
			}
		}
		return dvalue;
	}

	private DateTime ValidateMinute()
	{
		if (IsNumber(selectedField.Text))
		{
			int minute = int.Parse(selectedField.Text);
			try
			{
				CultureSpecifiecDateTime cultureSpecifiecDateTime = new CultureSpecifiecDateTime(dvalue, CurrentCalendar);
				cultureSpecifiecDateTime.Minute = minute;
				return cultureSpecifiecDateTime.DateTime;
			}
			catch
			{
				return dvalue;
			}
		}
		return dvalue;
	}

	private DateTime ValidateSecond()
	{
		if (IsNumber(selectedField.Text))
		{
			int second = int.Parse(selectedField.Text);
			try
			{
				CultureSpecifiecDateTime cultureSpecifiecDateTime = new CultureSpecifiecDateTime(dvalue, CurrentCalendar);
				cultureSpecifiecDateTime.Second = second;
				return cultureSpecifiecDateTime.DateTime;
			}
			catch
			{
				return dvalue;
			}
		}
		return dvalue;
	}

	private void ValidateField()
	{
		if (selectedField != null && !isNullDate)
		{
			DateTime value;
			switch (selectedField.Definition.Type)
			{
			case FieldType.AMPM:
				return;
			case FieldType.Year:
				value = ValidateYear();
				break;
			case FieldType.Month:
				value = ValidateMonth();
				break;
			case FieldType.Day:
				value = ValidateDay();
				break;
			case FieldType.Hour:
				value = ValidateHour();
				break;
			case FieldType.Minute:
				value = ValidateMinute();
				break;
			case FieldType.Seconds:
				value = ValidateSecond();
				break;
			default:
				throw new InvalidOperationException("Field validation can not be done: Field type is unknown to the validatino system.");
			}
			TrySetVelue(value);
		}
	}

	private void TrySetVelue(DateTime value)
	{
		if (m_invalidDateProcessing == InvalidDateProcessing.SetNearest || CheckDate(value))
		{
			Value = value;
		}
		RefreshFields();
	}

	private bool CheckDate(DateTime value)
	{
		return value <= maxValue && value >= minValue;
	}

	private DateTime CoerceValue(DateTime value)
	{
		if (value > maxValue)
		{
			value = maxValue;
		}
		if (value < minValue)
		{
			value = minValue;
		}
		return value;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			base.SizeChanged -= DateTimePickerAdv_SizeChanged;
			base.Enter -= DateTimePickerAdv_Enter;
			base.FontChanged -= DateTimePickerAdv_FontChanged;
			base.BackColorChanged -= DateTimePickerAdv_BackColorChanged;
			base.Leave -= DateTimePickerAdv_Leave;
			base.MouseEnter -= DateTimePickerAdv_MouseEnter;
			base.MouseLeave -= DateTimePickerAdv_MouseLeave;
			if (components != null)
			{
				components.Dispose();
			}
			if (contextMenu != null)
			{
				contextMenu.Popup -= ContextMenu_Popup;
				contextMenu.Cut -= CutMI_Click;
				contextMenu.Copy -= CopyMI_Click;
				contextMenu.Paste -= PasteMI_Click;
				contextMenu.NoDateTime -= NoDateTimeMI_Click;
				contextMenu = null;
			}
			if (comboDrawing != null)
			{
				comboDrawing.Dispose();
				comboDrawing = null;
			}
			if (checkBox != null)
			{
				checkBox.CheckStateChanged -= CheckBox_CheckedChanged;
				checkBox.Dispose();
				checkBox = null;
			}
			if (numericUD != null)
			{
				numericUD.UpDown -= NumericUD_UpDown;
				numericUD.Enter -= NumericUD_Enter;
				numericUD.Leave -= NumericUD_Leave;
				numericUD.MouseEnter -= DateTimePickerAdv_MouseEnter;
				numericUD.MouseLeave -= DateTimePickerAdv_MouseLeave;
				numericUD.Dispose();
				numericUD = null;
			}
			if (dropButton != null)
			{
				dropButton.MouseDown -= DropButton_MouseDown;
				dropButton.MouseEnter -= DateTimePickerAdv_MouseEnter;
				dropButton.MouseLeave -= DateTimePickerAdv_MouseLeave;
				dropButton.Dispose();
				dropButton = null;
			}
			if (monthCalendar != null && !monthCalendar.IsDisposed)
			{
				monthCalendar.DateSelected -= MonthCalendar_DateSelected;
				monthCalendar.NoneButtonClick -= MonthCalendar_NoneButtonClick;
				monthCalendar.DateChanged -= MonthCalendar_DateChanged;
				monthCalendar.SizeChanged -= MonthCalendar_SizeChanged;
				monthCalendar.Dispose();
				monthCalendar = null;
			}
			if (popupWindow != null && !popupWindow.IsDisposed)
			{
				popupWindow.BeforePopup -= PopupWindow_BeforePopup;
				popupWindow.CloseUp -= PopupWindow_CloseUp;
				popupWindow.Dispose();
				popupWindow = null;
			}
			Office2007Colors.ManagedColorsApplied -= Office2007ManagedColorsApplied;
		}
		base.Dispose(disposing);
	}

	private void CreatePopupControls()
	{
		popupWindow = new CalendarPopup();
		monthCalendar = new MonthCalendarForDateTimePickerAdv(dtCalendar: true, this);
	}

	private void InitializePopup()
	{
		if (popupWindow == null || monthCalendar == null)
		{
			CreatePopupControls();
		}
		popupWindow.SuspendLayout();
		((ISupportInitialize)monthCalendar).BeginInit();
		popupWindow.BorderStyle = BorderStyle.FixedSingle;
		popupWindow.Controls.AddRange(new Control[1] { monthCalendar });
		popupWindow.Location = new Point(32, 128);
		popupWindow.Name = "popupWindow";
		popupWindow.Size = cStore.PopupSize;
		popupWindow.TabIndex = 1;
		popupWindow.Visible = false;
		popupWindow.BeforePopup += PopupWindow_BeforePopup;
		popupWindow.CloseUp += PopupWindow_CloseUp;
		monthCalendar.InvalidDateSelected += MonthCalendar_InvalidDateSelected;
		monthCalendar.Dock = DockStyle.Fill;
		monthCalendar.AllowMultipleSelection = false;
		monthCalendar.Culture = cStore.Culture;
		monthCalendar.GridBackColor = cStore.MonthBackground;
		monthCalendar.HeaderStartColor = cStore.TitleBackColor;
		monthCalendar.HeadForeColor = cStore.TitleForeColor;
		monthCalendar.InactiveMonthColor = cStore.TrailingForeColor;
		monthCalendar.MaxValue = cStore.MaxDate;
		monthCalendar.MinValue = cStore.MinDate;
		monthCalendar.MonthImageList = cStore.ImageList;
		monthCalendar.Name = "monthCalendar";
		monthCalendar.ThemedEnabledGrid = cStore.ThemedEnabledGrid;
		monthCalendar.ThemedEnabledScrollButtons = cStore.ThemedEnabledScrollButtons;
		monthCalendar.Font = cStore.Font;
		monthCalendar.Value = dvalue;
		monthCalendar.SizeToFit = cStore.SizeToFit;
		monthCalendar.ScrollButtonSize = new Size(17, 19);
		monthCalendar.Size = new Size(206, 174);
		monthCalendar.TabIndex = 0;
		monthCalendar.ThemedEnabledGrid = ThemedChildControls;
		monthCalendar.ThemedEnabledScrollButtons = true;
		monthCalendar.VerticalAlignment = GridVerticalAlignment.Middle;
		monthCalendar.DateSelected += MonthCalendar_DateSelected;
		monthCalendar.NoneButtonClick += MonthCalendar_NoneButtonClick;
		monthCalendar.DateChanged += MonthCalendar_DateChanged;
		monthCalendar.SizeChanged += MonthCalendar_SizeChanged;
		monthCalendar.Style = Style;
		base.Controls.Add(popupWindow);
		popupWindow.ResumeLayout(performLayout: false);
		((ISupportInitialize)monthCalendar).EndInit();
		InitDefaultPopup(popupWindow);
		m_bInitializePopupCalled = true;
	}

	private void InitTodayButton()
	{
		monthCalendar.TodayButton.Size = new Size(134, 18);
		monthCalendar.TodayButton.Visible = true;
	}

	private void InitNoneButton()
	{
		monthCalendar.NoneButton.Location = new Point(134, 0);
		monthCalendar.NoneButton.Size = new Size(72, 18);
		monthCalendar.NoneButton.Visible = cStore.NoneEnabled && (cStore.EnableNullDate || enableNullKeys);
	}

	private void InitializeDateTimePickerAdv()
	{
		components = new Container();
		dropButton = new DateTimePickerDropButton();
		checkBox = new ThemedCheckButton();
		numericUD = new DateTimePickerUpDownButton();
		SuspendLayout();
		contextMenu = new DateTimePickerAdvMenu();
		WireContextMenuEvents();
		dropButton.Dock = DockStyle.Right;
		dropButton.ButtonType = System.Windows.Forms.ScrollButton.Down;
		dropButton.CheckState = CheckState.Unchecked;
		dropButton.DefaultButtonState = ButtonState.Normal;
		dropButton.DrawText = false;
		dropButton.Size = new Size(18, 16);
		dropButton.Location = new Point(209, 0);
		dropButton.TabStop = false;
		dropButton.Text = "V";
		dropButton.TextAlign = ContentAlignment.MiddleCenter;
		dropButton.ThemesEnabled = false;
		dropButton.MouseDown += DropButton_MouseDown;
		dropButton.MouseEnter += DateTimePickerAdv_MouseEnter;
		dropButton.MouseLeave += DateTimePickerAdv_MouseLeave;
		UpdateDropButtonLocation();
		checkBox.Checked = true;
		checkBox.CheckState = CheckState.Checked;
		checkBox.DefaultButtonState = ButtonState.Normal;
		checkBox.DrawText = false;
		checkBox.Location = new Point(3, 1);
		checkBox.Size = new Size(13, 13);
		checkBox.TabStop = false;
		checkBox.TextAlign = ContentAlignment.MiddleCenter;
		checkBox.ThemesEnabled = false;
		checkBox.CheckStateChanged += CheckBox_CheckedChanged;
		UpdateCheckBoxLocation();
		numericUD.Dock = DockStyle.Right;
		numericUD.Location = new Point(211, 0);
		numericUD.Size = new Size(16, 16);
		numericUD.Visible = false;
		numericUD.ScrollButtonAppearance = ScrollButtonAppearance.Vertical;
		numericUD.UpDown += NumericUD_UpDown;
		numericUD.Enter += NumericUD_Enter;
		numericUD.Leave += NumericUD_Leave;
		numericUD.MouseEnter += DateTimePickerAdv_MouseEnter;
		numericUD.MouseLeave += DateTimePickerAdv_MouseLeave;
		numericUD.TabStop = false;
		UpdateUpDownLocation();
		BackColor = SystemColors.Window;
		base.Controls.AddRange(new Control[3] { numericUD, checkBox, dropButton });
		Size = new Size(232, 20);
		base.SizeChanged += DateTimePickerAdv_SizeChanged;
		base.Enter += DateTimePickerAdv_Enter;
		base.FontChanged += DateTimePickerAdv_FontChanged;
		base.BackColorChanged += DateTimePickerAdv_BackColorChanged;
		base.Leave += DateTimePickerAdv_Leave;
		base.MouseEnter += DateTimePickerAdv_MouseEnter;
		base.MouseLeave += DateTimePickerAdv_MouseLeave;
		TabStop = true;
		if (base.DesignMode)
		{
			InitializePopup();
		}
		ResumeLayout(performLayout: false);
	}

	private void InitializeComponent()
	{
		this.Size = new System.Drawing.Size(150, 50);
	}

	private void NumericUD_Enter(object sender, EventArgs e)
	{
		Focus();
	}

	private void NumericUD_Leave(object sender, EventArgs e)
	{
		DateTimePickerAdv_Leave(this, e);
	}

	private void DropButton_MouseDown(object sender, MouseEventArgs e)
	{
		if (e.Button != MouseButtons.Left || !dropButton.Visible)
		{
			return;
		}
		ValidateField();
		if (popupWindow == null || monthCalendar == null || !m_bInitializePopupCalled)
		{
			OnBeforePopup(EventArgs.Empty);
			InitializePopup();
		}
		Point pt;
		if (GetIsMirrored())
		{
			if (LeftRightAlignment.Right == dropDownAlign)
			{
				pt = PointToScreen(new Point(0, base.Height));
				pt.X += dropButton.Width;
			}
			else
			{
				int num = base.ClientRectangle.Width - offset.X - popupWindow.Width;
				pt = PointToScreen(new Point(num, base.Height));
				if (checkBox.Visible)
				{
					pt.X -= checkBox.Width;
				}
			}
		}
		else if (dropDownAlign == LeftRightAlignment.Right)
		{
			pt = PointToScreen(new Point(base.Width, base.Height));
			pt.X -= popupWindow.Width + dropButton.Width + 2 * SystemInformation.Border3DSize.Width;
		}
		else
		{
			pt = PointToScreen(new Point(offset.X, base.Height));
			pt.X += (checkBox.Visible ? checkBox.Width : 0);
		}
		ShowPopup(pt);
		monthCalendar.RightToLeft = RightToLeft;
	}

	private void HidePopup(PopupCloseType type)
	{
		if (customPopup)
		{
			if (customPopupWindow.IsShowing())
			{
				customPopupWindow.HidePopup(type);
			}
		}
		else if (popupWindow != null && popupWindow.IsShowing())
		{
			popupWindow.HidePopup(type);
		}
	}

	private void ShowPopup(Point pt)
	{
		if (readOnly)
		{
			return;
		}
		if (customPopup && customPopupWindow != null)
		{
			if (!customPopupWindow.IsShowing())
			{
				OnBeforePopup(EventArgs.Empty);
				customPopupWindow.ShowPopup(pt);
			}
			else
			{
				customPopupWindow.HidePopup(PopupCloseType.Canceled);
			}
			return;
		}
		if (popupWindow != null && !popupWindow.IsShowing())
		{
			OnBeforePopup(EventArgs.Empty);
		}
		if (popupWindow == null || monthCalendar == null || !m_bInitializePopupCalled)
		{
			OnBeforePopup(EventArgs.Empty);
			InitializePopup();
		}
		if (!popupWindow.IsShowing())
		{
			if (!monthCalendar.Visible)
			{
				monthCalendar.Visible = true;
				monthCalendar.WrapText = true;
			}
			InitTodayButton();
			InitNoneButton();
			popupWindow.ShowPopup(pt);
			monthCalendar.GridFocus();
			OnOnPopup(EventArgs.Empty);
		}
		else
		{
			popupWindow.HidePopup(PopupCloseType.Canceled);
		}
	}

	private void PopupWindow_BeforePopup(object sender, CancelEventArgs e)
	{
		dateOnPopup = Value;
		isNullDateOnPopup = IsNullDate;
	}

	private void PopupWindow_CloseUp(object sender, PopupClosedEventArgs args)
	{
		if (args.PopupCloseType == PopupCloseType.Canceled)
		{
			if (dateOnPopup != Value || isNullDateOnPopup != IsNullDate)
			{
				Value = dateOnPopup;
				IsNullDate = isNullDateOnPopup;
			}
		}
		else if (args.PopupCloseType == PopupCloseType.Done && monthCalendar != null)
		{
			Value = monthCalendar.Value;
		}
		Focus();
		OnPopupClosed(args);
	}

	[Description("Displays Calendar popup.")]
	public void DisplayCalendar()
	{
		DropButton_MouseDown(dropButton, new MouseEventArgs(MouseButtons.Left, 1, 1, 1, 0));
	}

	private void MonthCalendar_DateSelected(object sender, EventArgs e)
	{
		popupWindow.HidePopup(PopupCloseType.Done);
	}

	private void MonthCalendar_SizeChanged(object sender, EventArgs e)
	{
		if (cStore.SizeToFit && popupWindow != null && monthCalendar != null)
		{
			popupWindow.Size = new Size(monthCalendar.Width, cStore.PopupSize.Height);
		}
	}

	private void MonthCalendar_DateChanged(object sender, EventArgs e)
	{
		if (!initializing && !monthCalendar.IsInitializing)
		{
			initializing = true;
			IsNullDate = false;
			initializing = false;
		}
		Value = monthCalendar.Value;
		if (!checkBox.Checked)
		{
			checkBox.Checked = true;
			CheckBox_CheckedChanged(checkBox, EventArgs.Empty);
		}
	}

	private void ICalendar_NoneButtonDown(object sender, EventArgs e)
	{
		if (sender is IDateTimePickerAdvCalendar && ((IDateTimePickerAdvCalendar)sender).Active)
		{
			customPopupWindow.HidePopup(PopupCloseType.Canceled);
			IsNullDate = true;
		}
	}

	private void ICalendar_SelectDate(object sender, EventArgs e)
	{
		if (sender is IDateTimePickerAdvCalendar && ((IDateTimePickerAdvCalendar)sender).Active)
		{
			Value = ((IDateTimePickerAdvCalendar)sender).Value;
			customPopupWindow.HidePopup(PopupCloseType.Done);
		}
	}

	private void ICalendar_DateChanged(object sender, EventArgs e)
	{
		if (sender is IDateTimePickerAdvCalendar && ((IDateTimePickerAdvCalendar)sender).Active)
		{
			if (!initializing && !monthCalendar.IsInitializing)
			{
				IsNullDate = false;
			}
			checkBox.Checked = true;
			Value = ((IDateTimePickerAdvCalendar)sender).Value;
			CheckBox_CheckedChanged(checkBox, EventArgs.Empty);
		}
	}

	private void OnShowCheckBoxChanged()
	{
		checkBox.Visible = ShowCheckBox;
		RefreshFields();
		Invalidate(invalidateChildren: true);
	}

	private void CheckBox_CheckedChanged(object sender, EventArgs e)
	{
		OnCheckBoxCheckedChanged(EventArgs.Empty);
		Invalidate();
	}

	private void IncrementField(bool inc)
	{
		if (selectedField != null)
		{
			selectedField.ResetInsertYearMode();
			try
			{
				TrySetVelue(selectedField.Definition.Type switch
				{
					FieldType.Year => IncrementYear(inc), 
					FieldType.Month => IncrementMonth(inc), 
					FieldType.Day => IncrementDay(inc), 
					FieldType.Hour => IncrementHour(inc), 
					FieldType.Minute => IncrementMinute(inc), 
					FieldType.Seconds => IncrementSecond(inc), 
					FieldType.AMPM => IncrementAMPM(), 
					_ => throw new InvalidOperationException("Field incrementation failed: invalid field type."), 
				});
			}
			catch (Exception)
			{
				RefreshFields();
			}
		}
		selectedField.StartedTyping = false;
	}

	private void NumericUD_UpDown(object sender, UpDownEventArgs e)
	{
		if (!Focused)
		{
			Focus();
		}
		string text = selectedField.Definition.Type switch
		{
			FieldType.Day => dvalue.Day.ToString(), 
			FieldType.Hour => dvalue.Hour.ToString(), 
			FieldType.Minute => dvalue.Minute.ToString(), 
			FieldType.Month => dvalue.Month.ToString(), 
			FieldType.Seconds => dvalue.Second.ToString(), 
			FieldType.Year => dvalue.Year.ToString(), 
			_ => string.Empty, 
		};
		if (selectedField.Text != text)
		{
			ValidateField();
		}
		IncrementField(e.ButtonID == 1);
	}

	protected override void OnThemeChanged(EventArgs e)
	{
		Invalidate(invalidateChildren: true);
		base.OnThemeChanged(e);
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 794)
		{
			RecreateHandle();
			if (comboDrawing != null)
			{
				comboDrawing.RefreshThemeHandle();
				Invalidate();
			}
			Invalidate(invalidateChildren: true);
		}
		base.WndProc(ref m);
	}

	protected override void OnGotFocus(EventArgs e)
	{
		if (resetSelectionOnFocus)
		{
			SelectField(Fields(0));
		}
		base.OnGotFocus(e);
	}

	protected override void OnLostFocus(EventArgs e)
	{
		if (selectedField != null)
		{
			ValidateField();
			if (selectedField.M_bSkipYearCheck)
			{
				selectedField.ResetInsertYearMode();
				monthCalendar.Value = Value;
			}
		}
		base.OnLostFocus(e);
	}

	private void MonthCalendar_NoneButtonClick(object sender, EventArgs e)
	{
		IsNullDate = true;
		isNullDateOnPopup = true;
		popupWindow.HidePopup(PopupCloseType.Canceled);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (m_previousDateSeparator != Culture.DateTimeFormat.DateSeparator)
		{
			RefreshFormats();
		}
		base.OnPaint(e);
		if ((!base.ThemesEnabled || !XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !XPThemes.IsAppThemed || base.IgnoreThemeBackground) && (!base.Enabled || readOnly))
		{
			if (!ShouldSerializeBackColor())
			{
				e.Graphics.FillRectangle(SystemBrushes.Control, base.ClientRectangle);
			}
		}
		else if (readOnly)
		{
			e.Graphics.Clear(SystemColors.Control);
		}
		else if (base.ThemesEnabled && XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed && !base.IgnoreThemeBackground)
		{
			using Brush brush = new SolidBrush(SystemColors.Window);
			e.Graphics.FillRectangle(brush, base.ClientRectangle);
		}
		SolidBrush solidBrush = new SolidBrush(ForeColor);
		if (isNullDate)
		{
			Size size = ((!(nullString == string.Empty)) ? e.Graphics.MeasureString(nullString, Font).ToSize() : new Size(base.Width - 8, Font.Height));
			int num = (base.ClientRectangle.Height - size.Height) / 2;
			int num2;
			if (RightToLeft == RightToLeft.Yes)
			{
				num2 = (dropButton.Visible ? dropButton.Width : 0) + (numericUD.Visible ? numericUD.Width : 0) + offset.X + 4;
				num2 = base.Width - num2 - size.Width;
			}
			else
			{
				num2 = (checkBox.Visible ? checkBox.Width : 0) + offset.X + 4;
			}
			Point point = new Point(num2, num);
			if (Focused)
			{
				ControlPaint.DrawFocusRectangle(rectangle: new Rectangle(point.X - 1, point.Y, size.Width + 1, size.Height + 1), graphics: e.Graphics);
			}
			if (base.Enabled)
			{
				e.Graphics.DrawString(nullString, Font, solidBrush, point);
				return;
			}
			Brush brush2 = new SolidBrush(SystemColors.GrayText);
			e.Graphics.DrawString(nullString, Font, brush2, point);
			brush2.Dispose();
			return;
		}
		string text = string.Empty;
		if (selectedField != null && Focused)
		{
			Rectangle textRectangle = selectedField.TextRectangle;
			textRectangle.Offset(2, 0);
			e.Graphics.FillRectangle(SystemBrushes.Highlight, textRectangle);
		}
		for (int i = 0; i < fields.Count; i++)
		{
			DTField dTField = Fields(i);
			text += dTField.Text;
			if ((ShowCheckBox && !checkBox.Checked) || !base.Enabled)
			{
				Brush brush3 = new SolidBrush(SystemColors.GrayText);
				e.Graphics.DrawString(dTField.Text, Font, brush3, new Rectangle(dTField.MiddleLocation, new Size(dTField.Width + 10, dTField.Height + 10)));
				brush3.Dispose();
			}
			else if (dTField == selectedField && Focused)
			{
				e.Graphics.DrawString(dTField.Text, Font, SystemBrushes.HighlightText, dTField.MiddleLocation);
			}
			else
			{
				e.Graphics.DrawString(dTField.Text, Font, solidBrush, dTField.MiddleLocation);
			}
		}
		solidBrush.Dispose();
	}

	private void DateTimePickerAdv_SizeChanged(object sender, EventArgs e)
	{
		UpdateCheckBoxLocation();
		RefreshFields();
		Invalidate(invalidateChildren: true);
	}

	private void DateTimePickerAdv_Leave(object sender, EventArgs e)
	{
		if (selectedField != null && ((ShowCheckBox && Checked) || !ShowCheckBox) && !isNullDate)
		{
			ValidateField();
		}
		if (showUpDownOnFocus)
		{
			numericUD.Visible = false;
		}
		if (Style == VisualStyle.OfficeXP)
		{
			StyleBorderColor = MenuColors.DropDownBorderColor;
		}
		else if (Style == VisualStyle.Office2003)
		{
			StyleBorderColor = MenuColors.DropDownBorderColor;
		}
		dropButton.Selected = false;
		dropButton.Invalidate();
		numericUD.Selected = false;
		numericUD.ButtonState = ButtonState.Normal;
		numericUD.Invalidate();
		checkBox.Selected = false;
		checkBox.Invalidate();
		RefreshFields();
	}

	private void DateTimePickerAdv_Enter(object sender, EventArgs e)
	{
		if (selectedField == null)
		{
			NextField();
		}
		if (showUpDownOnFocus)
		{
			numericUD.Visible = true;
		}
		if (Style == VisualStyle.OfficeXP)
		{
			StyleBorderColor = MenuColors.SelBorderColor;
		}
		else if (Style == VisualStyle.Office2003)
		{
			StyleBorderColor = Office2003Colors.SelBorderColor;
		}
		dropButton.Selected = true;
		dropButton.Invalidate();
		numericUD.Selected = true;
		numericUD.Invalidate();
		checkBox.Selected = true;
		checkBox.Invalidate();
		Invalidate();
	}

	private void DateTimePickerAdv_FontChanged(object sender, EventArgs e)
	{
		RecalculateMaxWidths();
		ParseCustomString(format);
		Size = new Size(base.Width, offset.X * 2 + Font.Height + (int)Font.Size / 7);
		if (base.Height < 20)
		{
			base.Height = 20;
		}
	}

	private void DateTimePickerAdv_BackColorChanged(object sender, EventArgs e)
	{
		checkBox.BackColor = BackColor;
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		UpdateDropButtonLocation();
		UpdateUpDownLocation();
		UpdateCheckBoxLocation();
		RefreshFields();
	}

	private void UpdateDropButtonLocation()
	{
		bool isMirrored = GetIsMirrored();
		dropButton.Dock = (isMirrored ? DockStyle.Left : DockStyle.Right);
	}

	private void UpdateUpDownLocation()
	{
		bool isMirrored = GetIsMirrored();
		numericUD.Dock = (isMirrored ? DockStyle.Left : DockStyle.Right);
	}

	private void UpdateCheckBoxLocation()
	{
		int num = 3;
		int num2 = (base.Height - checkBox.Height) / 2;
		if (GetIsMirrored())
		{
			num = base.ClientRectangle.Width - checkBox.Size.Width - 3;
		}
		checkBox.Location = new Point(num, num2);
	}

	public bool Cut()
	{
		if (!copyFieldOnly)
		{
			string text = dvalue.ToLongDateString();
			switch (clipboardFormat)
			{
			case DateTimePickerFormat.Long:
				text = dvalue.ToLongDateString();
				break;
			case DateTimePickerFormat.Short:
				text = dvalue.ToShortDateString();
				break;
			case DateTimePickerFormat.Time:
				text = dvalue.ToLongTimeString();
				break;
			case DateTimePickerFormat.Custom:
			{
				text = string.Empty;
				for (int i = 0; i < fields.Count; i++)
				{
					text += Fields(i).Text;
				}
				break;
			}
			}
			Clipboard.SetDataObject(text);
			IsNullDate = true;
			return true;
		}
		if (selectedField != null)
		{
			Clipboard.SetDataObject(selectedField.Text);
			return true;
		}
		return false;
	}

	public bool Copy()
	{
		if (!copyFieldOnly)
		{
			string text = dvalue.ToLongDateString();
			switch (clipboardFormat)
			{
			case DateTimePickerFormat.Long:
				text = dvalue.ToLongDateString();
				break;
			case DateTimePickerFormat.Short:
				text = dvalue.ToShortDateString();
				break;
			case DateTimePickerFormat.Time:
				text = dvalue.ToLongTimeString();
				break;
			case DateTimePickerFormat.Custom:
			{
				text = string.Empty;
				for (int i = 0; i < fields.Count; i++)
				{
					text += Fields(i).Text;
				}
				break;
			}
			}
			Clipboard.SetDataObject(text);
		}
		else
		{
			if (selectedField == null)
			{
				return false;
			}
			Clipboard.SetDataObject(selectedField.Text);
		}
		return true;
	}

	[Description("Pastes clipboard data to Value property.")]
	public bool Paste()
	{
		string empty = string.Empty;
		if ((empty = (string)Clipboard.GetDataObject().GetData(typeof(string))) != null)
		{
			try
			{
				DateTime value = DateTime.Parse(empty);
				Value = value;
				if (isNullDate)
				{
					IsNullDate = false;
				}
			}
			catch
			{
				return false;
			}
			return true;
		}
		return false;
	}

	private void CutMI_Click(object sender, EventArgs e)
	{
		Cut();
	}

	private void CopyMI_Click(object sender, EventArgs e)
	{
		Copy();
	}

	private void PasteMI_Click(object sender, EventArgs e)
	{
		Paste();
	}

	protected override void OnBorderStyleChanged()
	{
		base.OnBorderStyleChanged();
	}

	private void NoDateTimeMI_Click(object sender, EventArgs e)
	{
		if (customPopup)
		{
			if (customPopupWindow != null)
			{
				customPopupWindow.HidePopup(PopupCloseType.Canceled);
			}
		}
		else
		{
			popupWindow.HidePopup(PopupCloseType.Canceled);
		}
		IsNullDate = !isNullDate;
	}

	private void ContextMenu_Popup(object sender, EventArgs e)
	{
		contextMenu.CutEnabled = !isNullDate;
		contextMenu.CopyEnabled = !isNullDate;
		contextMenu.PasteEnabled = false;
		if (Clipboard.GetDataObject().GetData(typeof(string)) is string)
		{
			try
			{
				contextMenu.PasteEnabled = true;
			}
			catch
			{
			}
		}
		contextMenu.ShowNoDateTime = enableNullDate;
		contextMenu.NoDateTimeChecked = isNullDate;
	}

	private bool GetIsMirrored()
	{
		return RightToLeft.Yes == base.RightToLeft;
	}

	private void DateTimePickerAdv_MouseEnter(object sender, EventArgs e)
	{
		if (Style == VisualStyle.OfficeXP)
		{
			StyleBorderColor = MenuColors.SelBorderColor;
		}
		if (Style == VisualStyle.Office2003)
		{
			StyleBorderColor = Office2003Colors.SelBorderColor;
		}
		dropButton.Selected = true;
		dropButton.Invalidate();
		numericUD.Selected = true;
		numericUD.Invalidate();
		checkBox.Selected = true;
		checkBox.Invalidate();
	}

	private void DateTimePickerAdv_MouseLeave(object sender, EventArgs e)
	{
		bool flag = true;
		foreach (Control control in base.Controls)
		{
			if (RectangleToScreen(control.Bounds).Contains(Control.MousePosition))
			{
				flag = false;
			}
		}
		if (!Focused && flag && (Style == VisualStyle.OfficeXP || Style == VisualStyle.Office2003 || Style == VisualStyle.VS2005 || Style == VisualStyle.Office2007) && !dropButton.Dropped)
		{
			if (Style == VisualStyle.OfficeXP || Style == VisualStyle.Office2003)
			{
				StyleBorderColor = MenuColors.DropDownBorderColor;
			}
			dropButton.Selected = false;
			dropButton.Invalidate();
			numericUD.Selected = false;
			numericUD.Invalidate();
			checkBox.Selected = false;
			checkBox.Invalidate();
		}
	}

	protected override void OnBorderColorChanged()
	{
		OnBorderColorChangedInternal();
		base.OnBorderColorChanged();
	}

	private void OnBorderColorChangedInternal()
	{
		dropButton.FlatColor = BorderColorInternal;
	}

	private void MonthCalendar_InvalidDateSelected(object sender, EventArgs e)
	{
		monthCalendar.Value = dateOnPopup;
	}

	private void Office2007ManagedColorsApplied(Office2007Colors.ManagedColorsAppliedEventArgs args)
	{
		if (Style == VisualStyle.Office2007)
		{
			ApplyOffice2007Theme();
		}
	}

	[DllImport("user32.dll", CharSet = CharSet.Auto)]
	internal static extern int AdjustWindowRectEx(ref Syncfusion.Runtime.InteropServices.NativeMethods.RECT lpRect, int dwStyle, bool bMenu, int dwExStyle);
}
