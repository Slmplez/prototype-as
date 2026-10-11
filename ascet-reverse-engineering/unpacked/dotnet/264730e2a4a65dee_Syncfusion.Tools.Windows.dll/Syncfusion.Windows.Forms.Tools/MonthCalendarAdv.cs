using System;
using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Drawing.Design;
using System.Drawing.Drawing2D;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Grid;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(MonthCalendarAdv), "ToolboxIcons.MonthCalendarExt.bmp")]
[Designer(typeof(MonthCalendarAdvDesigner), typeof(IDesigner))]
[ToolboxItem(true)]
[TypeConverter(typeof(MonthCalendarAdvConverter))]
[Description("Represents advanced MonthCalendar with Themes, Internationalization, Multiple Selection support.")]
[DesignerSerializer(typeof(MonthCalendarAdvDesignSerializer), typeof(CodeDomSerializer))]
public class MonthCalendarAdv : UserControl, ISupportInitialize, INonClientPaintingSupport, ISupportCulture
{
	private const int c_iBorderThickness = 2;

	private const int DEF_SAUDI_ARABIA_LCID = 1025;

	private const string DEF_FONT_NAME = "Verdana";

	private const int DEF_FONT_SIZE = 8;

	private const int DEF_OFFSET = 1;

	private const int DEF_WEEK_COLUMN_INDEX = 0;

	private const int DEF_ROW_COUNT = 6;

	private const int DEF_DAYS_COUNT = 7;

	private const int DEF_DAYS_OFFSET = 1;

	private const string DEF_STYLE_HEADER = "Header";

	private const string DEF_STYLE_STATIC = "Static";

	private const string DEF_EMPTY_CAPTION = " ";

	private readonly DateTime c_validMinValue = DateTime.MinValue.AddMinutes(1.0);

	private readonly DateTime c_validMaxValue = DateTime.MaxValue;

	private readonly Font c_defaultHeaderFont = FontUtil.CreateFont("Microsoft Sans Serif", 8.25f, FontStyle.Bold);

	private IContainer components;

	private bool wantEnterKey = true;

	private bool m_bMouseDragMultiselect;

	private Point m_ptMouseDragMultiselectFirtsRowCol = Point.Empty;

	private Point m_ptMouseDragMultiselectLastRowCol = Point.Empty;

	private bool m_bSkipCheckCell;

	private long m_tiksLastClickTime;

	private Point m_ptLastMouseDown = Point.Empty;

	private bool m_bDoubleClicked;

	private bool dateTimePickerCalendar;

	private CalendarGrid grid;

	private CalendarModel model;

	private Panel headerPanel;

	private Panel bottomPanel;

	private MonthCalendarTodayButton todayButton;

	private MonthCalendarNoneButton nullButton;

	private Label monthLabel;

	private ThemedScrollButton leftButton;

	private ThemedScrollButton rightButton;

	private YearNumericUpDown yearUD;

	private Label yearLabel;

	private CultureInfo culture = CultureInfo.InvariantCulture;

	private DateTime dvalue = DateTime.Now;

	private DateTime minValue = DateTime.MinValue.AddMinutes(1.0);

	private DateTime maxValue = DateTime.MaxValue;

	private ContextMenu contextMenu;

	private MenuItem gotoToday;

	private GridFontInfo dayNamesFontInfo;

	private Font dayNamesFont;

	private int dayNamesHeight = 17;

	private Font daysFont;

	private GridFontInfo daysFontInfo;

	private Color daysColor = SystemColors.ControlText;

	private Color headerStartColor = SystemColors.ActiveCaption;

	private Color headerEndColor = SystemColors.ControlDark;

	private bool headGradient;

	private Image headImage;

	private Brush headerBrush = new SolidBrush(SystemColors.ActiveCaptionText);

	private bool headerVerticalGradient = true;

	private int prevMonthCell;

	private int nextMonthCell;

	private ArrayList virtualCells;

	private PopupMenu popupMonths;

	private ParentBarItem parentBarItem1;

	private string[] days = new string[8] { "", "", "", "", "", "", "", "" };

	private string[] months = new string[13]
	{
		"", "", "", "", "", "", "", "", "", "",
		"", "", ""
	};

	private int buttonOffset = 10;

	private GridHorizontalAlignment horizontalAlignment = GridHorizontalAlignment.Center;

	private GridVerticalAlignment verticalAlignment = GridVerticalAlignment.Middle;

	private bool m_bCellClicked;

	private bool cancelMoveTo;

	private Color highlightColor = Color.Red;

	private Color inactiveMonthColor = SystemColors.InactiveCaptionText;

	private Color dayNamesColor = SystemColors.ControlText;

	private Color todayFontColor = SystemColors.ActiveCaption;

	private bool sizeToFit;

	private bool needsRefresh;

	private DateTime[] selectedDates = new DateTime[0];

	private bool allowMultipleSelection = true;

	private bool m_bShortestDayNames = true;

	private VisualStyle style;

	private Office2007Theme m_office2007Theme;

	private Office2007Colors m_office2007ColorTable;

	private BorderStyle m_borderStyle;

	private Border3DSide m_borderSides = Border3DSide.All;

	private Border3DStyle m_border3DStyle = Border3DStyle.Sunken;

	private Color m_borderColor = Color.Black;

	private bool m_bThemedBorder = true;

	private ThemedEditDrawing m_themedEditDrawing;

	private ControlDrawing m_controlDrawing = new ControlDrawing();

	private Day m_firstDayOfWeek = Day.Default;

	private bool m_bThemedEnabledGrid;

	private Color m_gridBackColor = SystemColors.Window;

	private CalendarPopup popupParent;

	private bool m_stretchScrollImage;

	private BrushInfo daysHeaderInterior = new BrushInfo(GradientStyle.Vertical, Color.PeachPuff, Color.AntiqueWhite);

	private bool m_bIsInitializing;

	private HybridDictionary m_selectedDates;

	private bool m_bShowWeekNumbers;

	private Font m_weekFont;

	private GridFontInfo m_weekFontInfo = new GridFontInfo();

	private Color m_weekTextColor = SystemColors.ControlText;

	private BrushInfo m_weekInterior = new BrushInfo(GradientStyle.Vertical, Color.PeachPuff, Color.AntiqueWhite);

	private int m_weekColumnOffset;

	private int maxColWidth = 67;

	private UmAlQuraCalendar m_umAlCuma;

	private HijriCalendar m_hijriCalendar;

	internal bool DateTimePickerCalendar
	{
		get
		{
			return dateTimePickerCalendar;
		}
		set
		{
			dateTimePickerCalendar = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue(true)]
	[Browsable(false)]
	public bool WantEnterKey
	{
		get
		{
			return wantEnterKey;
		}
		set
		{
			if (wantEnterKey != value)
			{
				wantEnterKey = value;
				if (grid != null && grid.GridControl.WantEnterKey != value)
				{
					grid.GridControl.WantEnterKey = value;
				}
			}
		}
	}

	[Description("Gets or sets mouse drag multiselect mode.")]
	[Category("Behavior")]
	[DefaultValue(false)]
	public bool MouseDragMultiselect
	{
		get
		{
			return m_bMouseDragMultiselect;
		}
		set
		{
			m_bMouseDragMultiselect = value;
		}
	}

	[DefaultValue(true)]
	[Category("Appearance")]
	[Description("Gets or sets value indicating whether the shortest name of the weekdays should be used.\tThis property value have influence only under Framework 2.0 and higher.")]
	public bool UseShortestDayNames
	{
		get
		{
			return m_bShortestDayNames;
		}
		set
		{
			if (m_bShortestDayNames != value)
			{
				m_bShortestDayNames = value;
				RefreshNames();
			}
		}
	}

	[Description("Gets or sets the visual style for the MonthCalendarAdv.")]
	[DefaultValue(typeof(VisualStyle), "Default")]
	[TypeConverter(typeof(DefaultVisualStyleEnumFilter))]
	public VisualStyle Style
	{
		get
		{
			return style;
		}
		set
		{
			if (style == value)
			{
				return;
			}
			style = value;
			leftButton.Style = value;
			rightButton.Style = value;
			yearUD.ThemesEnabled = true;
			yearUD.ThemedBorder = true;
			yearUD.VisualStyle = value;
			if (base.DesignMode || !m_bIsInitializing)
			{
				HeadForeColor = SystemColors.ActiveCaptionText;
				HeadGradient = false;
			}
			if (style == VisualStyle.Default)
			{
				ResetHeaderStartColor();
				ResetHeaderEndColor();
				ResetHeaderFont();
				HeaderFont = new Font(monthLabel.Font, FontStyle.Bold);
				leftButton.FlatColor = SystemColors.ControlDark;
				rightButton.FlatColor = SystemColors.ControlDark;
				leftButton.Transparent = false;
				rightButton.Transparent = false;
				leftButton.BackColor = BackColor;
				rightButton.BackColor = BackColor;
				buttonOffset = 10;
				ScrollButtonSize = new Size(17, 19);
				HeaderHeight = 32;
				ResetDaysHeaderInterior();
				GridLines = GridBorderStyle.Dotted;
				TodayButton.UseVisualStyle = false;
				NoneButton.UseVisualStyle = false;
				TodayButton.Appearance = ButtonAppearance.None;
				NoneButton.Appearance = ButtonAppearance.None;
			}
			else
			{
				if (Style == VisualStyle.OfficeXP)
				{
					if (base.DesignMode)
					{
						MenuColors.UpdateMenuColors();
					}
					if (base.DesignMode || !m_bIsInitializing)
					{
						HeaderStartColor = MenuColors.PressedSelColor;
						ResetHeaderEndColor();
						ResetHeaderFont();
						HeaderFont = new Font(monthLabel.Font, FontStyle.Regular);
					}
					TodayButton.UseVisualStyle = true;
					NoneButton.UseVisualStyle = true;
					TodayButton.Appearance = ButtonAppearance.OfficeXP;
					NoneButton.Appearance = ButtonAppearance.OfficeXP;
				}
				else if (Style == VisualStyle.Office2007)
				{
					m_office2007ColorTable = Office2007Colors.GetColorTable(m_office2007Theme);
					if (base.DesignMode || !m_bIsInitializing)
					{
						HeadGradient = true;
						ResetHeaderFont();
						HeaderFont = new Font(monthLabel.Font, FontStyle.Regular);
						HeaderStartColor = m_office2007ColorTable.MonthCalendarHeaderStartColor;
						HeaderEndColor = m_office2007ColorTable.MonthCalendarHeaderEndColor;
						HeadForeColor = m_office2007ColorTable.MonthCalendarForeColor;
					}
					yearUD.BorderStyle = BorderStyle.FixedSingle;
					leftButton.ArrowColor = m_office2007ColorTable.MonthCalendarForeColor;
					rightButton.ArrowColor = m_office2007ColorTable.MonthCalendarForeColor;
					TodayButton.UseVisualStyle = true;
					NoneButton.UseVisualStyle = true;
					TodayButton.Appearance = ButtonAppearance.Office2007;
					TodayButton.Office2007ColorScheme = m_office2007Theme;
					NoneButton.Appearance = ButtonAppearance.Office2007;
					NoneButton.Office2007ColorScheme = m_office2007Theme;
				}
				else if (Style == VisualStyle.Office2003)
				{
					Office2003Colors.UpdateMenuColors();
					if (base.DesignMode || !m_bIsInitializing)
					{
						HeaderStartColor = Office2003Colors.PressedSelColor;
						ResetHeaderEndColor();
						ResetHeaderFont();
						HeaderFont = new Font(monthLabel.Font, FontStyle.Regular);
					}
					TodayButton.UseVisualStyle = true;
					NoneButton.UseVisualStyle = true;
					TodayButton.Appearance = ButtonAppearance.Office2003;
					NoneButton.Appearance = ButtonAppearance.Office2003;
				}
				else
				{
					TodayButton.UseVisualStyle = false;
					NoneButton.UseVisualStyle = false;
					TodayButton.Appearance = ButtonAppearance.Classic;
					NoneButton.Appearance = ButtonAppearance.Classic;
				}
				if (base.DesignMode || !m_bIsInitializing)
				{
					HeaderHeight = 20;
					ResetHeaderFont();
					HeaderFont = new Font(monthLabel.Font, FontStyle.Regular);
				}
				leftButton.FlatColor = Color.Transparent;
				rightButton.FlatColor = Color.Transparent;
				leftButton.Transparent = true;
				rightButton.Transparent = true;
				leftButton.BackColor = Color.Transparent;
				rightButton.BackColor = Color.Transparent;
				buttonOffset = 0;
				ScrollButtonSize = new Size(24, 24);
				if (grid != null)
				{
					DaysHeaderInterior = new BrushInfo(grid.BackColor);
				}
				GridLines = GridBorderStyle.None;
			}
			RefreshNames();
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets a value indicating the Office2007 theme used for drawing the control.")]
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

	public new ContextMenu ContextMenu
	{
		get
		{
			return base.ContextMenu;
		}
		set
		{
			base.ContextMenu = value;
			grid.ContextMenu = Menu;
		}
	}

	private ContextMenu Menu
	{
		get
		{
			if (ContextMenu == null)
			{
				return contextMenu;
			}
			return ContextMenu;
		}
	}

	[DefaultValue(false)]
	[Description("Indicates whether the calendar will adapt it`s width to fit the contents of the day names.")]
	[Category("Appearance")]
	public bool SizeToFit
	{
		get
		{
			return sizeToFit;
		}
		set
		{
			if (sizeToFit != value)
			{
				sizeToFit = value;
				RecalculateWidth();
			}
		}
	}

	[Description("Indicates the color of the today date text in the calendar.")]
	[Category("Appearance")]
	public Color TodayFontColor
	{
		get
		{
			return todayFontColor;
		}
		set
		{
			if (todayFontColor != value)
			{
				todayFontColor = value;
				if (grid != null)
				{
					grid.Refresh();
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("The today button at the bottom of the calendar.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public MonthCalendarButton TodayButton => todayButton;

	[Description("The none button at the bottom of the calendar.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Appearance")]
	public MonthCalendarButton NoneButton => nullButton;

	[Description("Indicates the minimum value selectable by the calendar.")]
	[Editor(typeof(DateTimeEditorAdv), typeof(UITypeEditor))]
	[Category("Behavior")]
	public DateTime MinValue
	{
		get
		{
			return minValue;
		}
		set
		{
			if (value > maxValue)
			{
				throw new ArgumentException("MaxValue must be greater then MinValue.", "value");
			}
			minValue = ((value >= c_validMinValue) ? value : c_validMinValue);
			if (minValue > dvalue)
			{
				Value = minValue;
			}
			if (minValue >= CurrentCalendar.MinSupportedDateTime)
			{
				yearUD.Minimum = CurrentCalendar.GetYear(minValue);
			}
		}
	}

	[Editor(typeof(DateTimeEditorAdv), typeof(UITypeEditor))]
	[Description("Indicates the maximum value selectable by the calendar.")]
	[Category("Behavior")]
	public DateTime MaxValue
	{
		get
		{
			return maxValue;
		}
		set
		{
			if (value < minValue)
			{
				throw new ArgumentException("MaxValue must be greater then MinValue.", "value");
			}
			maxValue = ((value <= c_validMaxValue) ? value : c_validMaxValue);
			if (maxValue < dvalue)
			{
				Value = maxValue;
			}
			if (maxValue <= CurrentCalendar.MaxSupportedDateTime)
			{
				yearUD.Maximum = CurrentCalendar.GetYear(maxValue);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue(GridSelectionFlags.Any)]
	[Obsolete("This enum has been replaced by the AllowMultipleSellection bool property")]
	[Browsable(false)]
	[Description("Indicates the selection types of the calendar.")]
	[Category("Behavior")]
	public GridSelectionFlags AllowSelection
	{
		get
		{
			return model.Options.AllowSelection;
		}
		set
		{
			model.Options.AllowSelection = value;
		}
	}

	[Category("Behavior")]
	[Description("Indicates the selection types of the calendar.")]
	[DefaultValue(true)]
	public bool AllowMultipleSelection
	{
		get
		{
			return allowMultipleSelection;
		}
		set
		{
			allowMultipleSelection = value;
		}
	}

	[Browsable(false)]
	public CalendarPopup PopupParent
	{
		set
		{
			popupParent = value;
		}
	}

	[Description("Indicates the imagelist of the popup menu.")]
	[Category("Appearance")]
	[DefaultValue(null)]
	public ImageList MonthImageList
	{
		get
		{
			return parentBarItem1.ImageList;
		}
		set
		{
			parentBarItem1.ImageList = value;
			for (int i = 0; i < parentBarItem1.Items.Count; i++)
			{
				parentBarItem1.Items[i].ImageList = value;
				parentBarItem1.Items[i].ImageIndex = i;
			}
		}
	}

	[Description("Indicates the color of the day names.")]
	[Category("Appearance")]
	public Color DayNamesColor
	{
		get
		{
			return dayNamesColor;
		}
		set
		{
			if (!(dayNamesColor == value))
			{
				dayNamesColor = value;
				if (grid != null)
				{
					grid.Refresh();
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates the fore color of the header.")]
	public Color HeadForeColor
	{
		get
		{
			return monthLabel.ForeColor;
		}
		set
		{
			monthLabel.ForeColor = value;
			yearLabel.ForeColor = value;
			headerPanel.Invalidate();
		}
	}

	[Category("Appearance")]
	[Description("Indicates the trailing fore color of the calendar.")]
	public Color InactiveMonthColor
	{
		get
		{
			return inactiveMonthColor;
		}
		set
		{
			if (!(inactiveMonthColor == value))
			{
				inactiveMonthColor = value;
				if (grid != null)
				{
					grid.Refresh();
				}
			}
		}
	}

	[Description("Indicates the color of the selected date.")]
	[Category("Appearance")]
	public Color HighlightColor
	{
		get
		{
			return highlightColor;
		}
		set
		{
			if (!(highlightColor == value))
			{
				highlightColor = value;
				if (grid != null)
				{
					grid.Refresh();
				}
			}
		}
	}

	[Description("Indicates the themed state of the scroll buttons.")]
	[Category("Appearance")]
	[DefaultValue(true)]
	public bool ThemedEnabledScrollButtons
	{
		get
		{
			return leftButton.ThemesEnabled;
		}
		set
		{
			leftButton.ThemesEnabled = value;
			rightButton.ThemesEnabled = value;
		}
	}

	[Category("Appearance")]
	[Description("Indicates the themed state of the grid.")]
	[DefaultValue(false)]
	public bool ThemedEnabledGrid
	{
		get
		{
			return m_bThemedEnabledGrid;
		}
		set
		{
			m_bThemedEnabledGrid = value;
			if (grid != null)
			{
				grid.ThemesEnabled = m_bThemedEnabledGrid;
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates the size of the scroll buttons.")]
	public Size ScrollButtonSize
	{
		get
		{
			return leftButton.Size;
		}
		set
		{
			leftButton.Size = value;
			rightButton.Size = value;
			SetHeaderPositions();
		}
	}

	[Category("Appearance")]
	[Description("Image for left scroll button.")]
	[DefaultValue(null)]
	public Image LeftScrollButtonImage
	{
		get
		{
			return leftButton.Image;
		}
		set
		{
			if (value != leftButton.Image)
			{
				leftButton.Image = value;
			}
		}
	}

	[Category("Appearance")]
	[Description("Image for reight scroll button.")]
	[DefaultValue(null)]
	public Image RightScrollButtonImage
	{
		get
		{
			return rightButton.Image;
		}
		set
		{
			if (value != rightButton.Image)
			{
				rightButton.Image = value;
			}
		}
	}

	[Description("Indicate wether the image for scroll button is stretched or shrunk to fit the size of the scroll button.")]
	[DefaultValue(false)]
	[Category("Behavior")]
	public bool StretchScrollImage
	{
		get
		{
			return m_stretchScrollImage;
		}
		set
		{
			if (value != m_stretchScrollImage)
			{
				m_stretchScrollImage = value;
				OnStretchScrollImageChanged();
			}
		}
	}

	[Description("First day of week.")]
	[DefaultValue(typeof(Day), "Default")]
	[Category("Behavior")]
	public Day FirstDayOfWeek
	{
		get
		{
			return m_firstDayOfWeek;
		}
		set
		{
			if (value != m_firstDayOfWeek)
			{
				m_firstDayOfWeek = value;
				OnFirstDayOfWeekChanged();
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates the horizontal allignment of the grid.")]
	[DefaultValue(GridHorizontalAlignment.Center)]
	public GridHorizontalAlignment HorizontalAlignment
	{
		get
		{
			return horizontalAlignment;
		}
		set
		{
			if (horizontalAlignment != value)
			{
				horizontalAlignment = value;
				if (grid != null)
				{
					grid.Refresh();
				}
			}
		}
	}

	[DefaultValue(GridVerticalAlignment.Middle)]
	[Description("Indicates the vertical alignment of the grid.")]
	[Category("Appearance")]
	public GridVerticalAlignment VerticalAlignment
	{
		get
		{
			return verticalAlignment;
		}
		set
		{
			if (verticalAlignment != value)
			{
				verticalAlignment = value;
				if (grid != null)
				{
					grid.Refresh();
				}
			}
		}
	}

	[Category("Behavior")]
	[Description("Gets or sets the selected dates.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public DateTime[] SelectedDates
	{
		get
		{
			ArrayList arrayList = new ArrayList();
			foreach (DictionaryEntry selectedDate in m_selectedDates)
			{
				_ = (DateTime)selectedDate.Key;
				GridRangeInfoList gridRangeInfoList = (GridRangeInfoList)selectedDate.Value;
				foreach (GridRangeInfoAdv item in gridRangeInfoList)
				{
					arrayList.AddRange(item.Dates);
				}
			}
			return arrayList.ToArray(typeof(DateTime)) as DateTime[];
		}
		set
		{
			if (selectedDates == value)
			{
				return;
			}
			if (selectedDates.Length != 0)
			{
				Array.Sort(value);
				for (int i = 0; i < value.Length; i++)
				{
					if (value[i] <= maxValue && value[0] >= minValue)
					{
						Value = value[i];
						break;
					}
				}
			}
			m_selectedDates.Clear();
			selectedDates = value;
			if (grid != null)
			{
				ValueChanged(sameMonth: true);
			}
		}
	}

	[Description("Indicates the back color of the grid.")]
	[Category("Appearance")]
	public Color GridBackColor
	{
		get
		{
			return m_gridBackColor;
		}
		set
		{
			m_gridBackColor = value;
			if (grid != null)
			{
				grid.BackColor = m_gridBackColor;
			}
		}
	}

	[Description("Indicates the height of the day names.")]
	[Category("Appearance")]
	[DefaultValue(17)]
	public int DayNamesHeight
	{
		get
		{
			return dayNamesHeight;
		}
		set
		{
			dayNamesHeight = value;
			if (grid == null)
			{
				model.RowHeights[0] = value;
			}
			else
			{
				grid.Model.RowHeights[0] = value;
			}
			MonthCalendarAdv_SizeChanged(this, EventArgs.Empty);
		}
	}

	[Category("Appearance")]
	[Description("Indicates the font of the day names.")]
	public Font DayNamesFont
	{
		get
		{
			if (dayNamesFont == null)
			{
				dayNamesFont = FontUtil.CreateFont("Verdana", 8f);
			}
			return dayNamesFont;
		}
		set
		{
			dayNamesFont = value;
			if (dayNamesFontInfo == null)
			{
				dayNamesFontInfo = new GridFontInfo();
			}
			dayNamesFontInfo.Facename = dayNamesFont.Name;
			dayNamesFontInfo.Bold = dayNamesFont.Bold;
			dayNamesFontInfo.Italic = dayNamesFont.Italic;
			dayNamesFontInfo.Underline = dayNamesFont.Underline;
			dayNamesFontInfo.Size = dayNamesFont.Size;
			dayNamesFontInfo.Strikeout = dayNamesFont.Strikeout;
			if (grid != null)
			{
				grid.Model.IgnoreReadOnly = true;
				grid.RefreshRange(GridRangeInfo.Cells(0, 0, 0, 7));
				grid.Model.IgnoreReadOnly = false;
			}
		}
	}

	[DefaultValue(GridBorderStyle.Dotted)]
	[Category("Appearance")]
	[Description("Determines the style of the grid lines.")]
	public GridBorderStyle GridLines
	{
		get
		{
			return model.Options.DefaultGridBorderStyle;
		}
		set
		{
			model.Options.DefaultGridBorderStyle = value;
		}
	}

	[DefaultValue(20)]
	[Description("Indicates the height of the bottom controls.")]
	[Category("Appearance")]
	public int BottomHeight
	{
		get
		{
			return bottomPanel.Height;
		}
		set
		{
			bottomPanel.Height = value;
			MonthCalendarAdv_SizeChanged(this, EventArgs.Empty);
		}
	}

	[DefaultValue(32)]
	[Category("Appearance")]
	[Description("Indicates the height of the header.")]
	public int HeaderHeight
	{
		get
		{
			return headerPanel.Height;
		}
		set
		{
			headerPanel.Height = value;
			MonthCalendarAdv_SizeChanged(this, EventArgs.Empty);
		}
	}

	[Description("Indicates the color of the days.")]
	[Category("Appearance")]
	public Color DaysColor
	{
		get
		{
			return daysColor;
		}
		set
		{
			if (daysColor == value)
			{
				return;
			}
			daysColor = value;
			for (int i = 1; i <= 6; i++)
			{
				for (int j = 1; j <= 7; j++)
				{
					GetInfo(i, j).TextColor = value;
				}
			}
			if (grid != null)
			{
				grid.Model.IgnoreReadOnly = true;
				grid.RefreshRange(GridRangeInfo.Cells(1, 1, 6, 7));
				grid.Model.IgnoreReadOnly = false;
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates the background image of the calendar.")]
	public override Image BackgroundImage
	{
		get
		{
			return base.BackgroundImage;
		}
		set
		{
			base.BackgroundImage = value;
			if (grid != null)
			{
				grid.BackgroundImage = value;
			}
		}
	}

	[Description("Indicates the background image layout of the calendar.")]
	[Category("Appearance")]
	public override ImageLayout BackgroundImageLayout
	{
		get
		{
			return base.BackgroundImageLayout;
		}
		set
		{
			base.BackgroundImageLayout = value;
			if (grid != null)
			{
				grid.BackgroundImageLayout = value;
			}
		}
	}

	[Description("Indicates of the grid should wrap text.")]
	[DefaultValue(true)]
	[Category("Appearance")]
	public bool WrapText
	{
		get
		{
			return model.TableStyle.WrapText;
		}
		set
		{
			model.IgnoreReadOnly = true;
			model.TableStyle.WrapText = value;
			model.RowStyles[0].WrapText = value;
			model.IgnoreReadOnly = false;
		}
	}

	[Description("Indicates the font of the header.")]
	[Category("Appearance")]
	public Font HeaderFont
	{
		get
		{
			return monthLabel.Font;
		}
		set
		{
			if (monthLabel.Font != value)
			{
				monthLabel.Font = value;
				yearLabel.Font = value;
				yearUD.Font = value;
				SetHeaderPositions();
				headerPanel.Invalidate();
			}
		}
	}

	[DefaultValue(true)]
	[Description("Indicates if the header gradient will be vertical.")]
	[Category("Appearance")]
	public bool HeaderVerticalGradient
	{
		get
		{
			return headerVerticalGradient;
		}
		set
		{
			if (headerVerticalGradient != value)
			{
				headerVerticalGradient = value;
				RefreshHeaderBrush();
				headerPanel.Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates the image of the header.")]
	[DefaultValue(null)]
	public Image HeaderImage
	{
		get
		{
			return headImage;
		}
		set
		{
			if (headImage != value)
			{
				headImage = value;
				headerPanel.BackgroundImage = value;
			}
		}
	}

	[Category("Appearance")]
	[Description("Determines if the header will show a gradient background.")]
	[DefaultValue(false)]
	public bool HeadGradient
	{
		get
		{
			return headGradient;
		}
		set
		{
			if (headGradient != value)
			{
				headGradient = value;
				headerPanel.Invalidate();
			}
		}
	}

	[Description("Indicates the end color of the header gradient.")]
	[Category("Appearance")]
	public Color HeaderEndColor
	{
		get
		{
			return headerEndColor;
		}
		set
		{
			if (!(headerEndColor == value))
			{
				headerEndColor = value;
				RefreshHeaderBrush();
				if (headGradient)
				{
					headerPanel.Invalidate();
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates the start color of the header gradient. Also used as backcolor.")]
	public Color HeaderStartColor
	{
		get
		{
			return headerStartColor;
		}
		set
		{
			if (!(headerStartColor == value))
			{
				headerStartColor = value;
				headerPanel.BackColor = value;
				RefreshHeaderBrush();
				if (headGradient)
				{
					headerPanel.Invalidate();
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates the font of the days.")]
	public Font DaysFont
	{
		get
		{
			if (daysFont == null)
			{
				daysFont = FontUtil.CreateFont("Verdana", 8f);
			}
			return daysFont;
		}
		set
		{
			if (daysFont != value)
			{
				daysFont = value;
				if (grid != null)
				{
					UpdateDaysFont();
				}
			}
		}
	}

	[Editor(typeof(DateTimeEditorAdv), typeof(UITypeEditor))]
	[Description("Indicates the current value of the calendar.")]
	[Category("Behavior")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public DateTime Value
	{
		get
		{
			return dvalue;
		}
		set
		{
			if (value < minValue || value > maxValue || !(dvalue != value))
			{
				return;
			}
			bool flag = CurrentCalendar.GetYear(dvalue) == CurrentCalendar.GetYear(value);
			bool flag2 = CurrentCalendar.GetMonth(dvalue) == CurrentCalendar.GetMonth(value);
			if ((Control.ModifierKeys & Keys.Control) == 0 && flag && flag2)
			{
				selectedDates = new DateTime[0];
				if (grid != null)
				{
					CurrentSelDates.Clear();
					grid.Refresh();
				}
			}
			dvalue = value;
			OnDateChanged(EventArgs.Empty);
			if (grid != null)
			{
				ValueChanged(flag && flag2);
			}
		}
	}

	[TypeConverter(typeof(SpecificCultureInfoTypeConverter))]
	[Description("Indicates the culture of the calendar.")]
	[Category("Appearance")]
	public CultureInfo Culture
	{
		get
		{
			return culture;
		}
		set
		{
			if (culture != value)
			{
				culture = value;
				DateTimePickerAdv.CultureSpecifiecDateTime cultureSpecifiecDateTime = new DateTimePickerAdv.CultureSpecifiecDateTime(dvalue, CurrentCalendar);
				yearUD.Maximum = CurrentCalendar.GetYear(CurrentCalendar.MaxSupportedDateTime);
				yearUD.Minimum = CurrentCalendar.GetYear(CurrentCalendar.MinSupportedDateTime);
				yearUD.Value = cultureSpecifiecDateTime.Year;
				if (grid != null)
				{
					RefreshNames();
					m_selectedDates.Clear();
					ValueChanged(sameMonth: true);
					SetHeaderPositions();
					headerPanel.Invalidate();
				}
			}
		}
	}

	[Description("Gets or sets the border type of the text box control.")]
	[DefaultValue(BorderStyle.None)]
	[Category("Appearance")]
	public new BorderStyle BorderStyle
	{
		get
		{
			return m_borderStyle;
		}
		set
		{
			if (m_borderStyle != value)
			{
				m_borderStyle = value;
				RecreateHandle();
				OnBorderStyleChanged();
			}
		}
	}

	[DefaultValue(Border3DSide.All)]
	[Description("Gets or sets the border sides for which you want the 3D border style applied.")]
	[Category("Appearance")]
	public Border3DSide BorderSides
	{
		get
		{
			return m_borderSides;
		}
		set
		{
			if (m_borderSides != value)
			{
				m_borderSides = value;
				OnBorderSidesChanged();
				if (grid != null)
				{
					InvalidateWindow();
				}
			}
		}
	}

	[Description("Gets or sets the 3D border style for the control.")]
	[DefaultValue(Border3DStyle.Sunken)]
	[Category("Appearance")]
	public Border3DStyle Border3DStyle
	{
		get
		{
			return m_border3DStyle;
		}
		set
		{
			if (m_border3DStyle != value)
			{
				m_border3DStyle = value;
				OnBorder3DStyleChanged();
				if (grid != null)
				{
					InvalidateWindow();
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the single border color for the control.")]
	[DefaultValue(typeof(Color), "Black")]
	public Color BorderColor
	{
		get
		{
			return m_borderColor;
		}
		set
		{
			if (m_borderColor != value)
			{
				m_borderColor = value;
				OnBorderColorChanged();
				if (grid != null)
				{
					InvalidateWindow();
				}
			}
		}
	}

	[Description("Gets or sets the draw themed border.")]
	[DefaultValue(true)]
	[Category("Appearance")]
	public bool ThemedBorder
	{
		get
		{
			return m_bThemedBorder;
		}
		set
		{
			if (m_bThemedBorder != value)
			{
				m_bThemedBorder = value;
				OnThemedBorderChanged();
				if (grid != null)
				{
					InvalidateWindow();
				}
			}
		}
	}

	[Description("Lets you set the background color, gradient, etc. for the days header.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Appearance")]
	public BrushInfo DaysHeaderInterior
	{
		get
		{
			return daysHeaderInterior;
		}
		set
		{
			daysHeaderInterior = value;
			if (grid != null)
			{
				grid.Refresh();
			}
		}
	}

	protected internal bool IsInitializing => m_bIsInitializing;

	protected GridRangeInfoList CurrentSelDates
	{
		get
		{
			int month = CurrentCalendar.GetMonth(dvalue);
			int year = CurrentCalendar.GetYear(dvalue);
			DateTime dateTime = new DateTime(year, month, 1, CurrentCalendar);
			GridRangeInfoList gridRangeInfoList;
			if (!m_selectedDates.Contains(dateTime))
			{
				gridRangeInfoList = new GridRangeInfoList();
				m_selectedDates.Add(dateTime, gridRangeInfoList);
			}
			else
			{
				gridRangeInfoList = (GridRangeInfoList)m_selectedDates[dateTime];
			}
			return gridRangeInfoList;
		}
	}

	protected int WeekColumnOffset => m_weekColumnOffset;

	[Description("Indicates the font of the week numbers column.")]
	[Category("Appearance")]
	public Font WeekFont
	{
		get
		{
			if (m_weekFont == null)
			{
				ResetWeekFont();
			}
			return m_weekFont;
		}
		set
		{
			if (value == null)
			{
				ResetWeekFont();
			}
			else
			{
				m_weekFont = value;
			}
			m_weekFontInfo.Facename = m_weekFont.Name;
			m_weekFontInfo.Bold = m_weekFont.Bold;
			m_weekFontInfo.Italic = m_weekFont.Italic;
			m_weekFontInfo.Underline = m_weekFont.Underline;
			m_weekFontInfo.Size = m_weekFont.Size;
			m_weekFontInfo.Strikeout = m_weekFont.Strikeout;
			if (grid != null)
			{
				grid.Model.IgnoreReadOnly = true;
				grid.Refresh();
				grid.Model.IgnoreReadOnly = false;
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the text color for weeks column.")]
	[DefaultValue(typeof(Color), "ControlText")]
	public Color WeekTextColor
	{
		get
		{
			return m_weekTextColor;
		}
		set
		{
			if (value != m_weekTextColor)
			{
				m_weekTextColor = value;
				if (grid != null)
				{
					grid.Refresh();
				}
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Appearance")]
	[Description("Lets you set the background color, gradient, etc. for the week numbers column.")]
	public BrushInfo WeekInterior
	{
		get
		{
			return m_weekInterior;
		}
		set
		{
			if (value != m_weekInterior)
			{
				if (value == null)
				{
					ResetWeekInterior();
				}
				m_weekInterior = value;
				if (grid != null)
				{
					grid.Refresh();
				}
			}
		}
	}

	[Browsable(true)]
	[Description("Indicates, are week numbers displayed or not.")]
	[DefaultValue(false)]
	[Category("Appearance")]
	public bool ShowWeekNumbers
	{
		get
		{
			return m_bShowWeekNumbers;
		}
		set
		{
			if (value != m_bShowWeekNumbers)
			{
				m_bShowWeekNumbers = value;
				OnShowWeekNumbersChanged();
			}
		}
	}

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			if (BorderStyle != BorderStyle.None)
			{
				createParams.ExStyle |= 512;
			}
			return createParams;
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
				if (m_hijriCalendar != null)
				{
					return m_hijriCalendar;
				}
				Calendar[] optionalCalendars = culture.OptionalCalendars;
				foreach (Calendar calendar in optionalCalendars)
				{
					if (calendar is UmAlQuraCalendar umAlCuma)
					{
						return m_umAlCuma = umAlCuma;
					}
					if (calendar is HijriCalendar hijriCalendar)
					{
						return m_hijriCalendar = hijriCalendar;
					}
				}
			}
			return culture.Calendar;
		}
	}

	internal event EventHandler InvalidDateSelected;

	[Description("Occurs when the user makes a date selection.")]
	public event EventHandler DateSelected;

	[Description("Occurs when the date selected in the MonthCalendarAdv changes.")]
	public event EventHandler DateChanged;

	[Description("Occurs when the selection of date within the control has changed.")]
	public event EventHandler SelectionChanged;

	[Description("Occurs when a NoneButton on the MonthCalendarAdv is clicked.")]
	public event EventHandler NoneButtonClick;

	[Category("Property Changed")]
	[Description("This event is raised if the BorderStyle property is changed.")]
	public event EventHandler BorderStyleChanged;

	[Description("This event is raised if the BorderSides property is changed.")]
	[Category("Property Changed")]
	public event EventHandler BorderSidesChanged;

	[Description("This event is raised if the Border3DStyle property is changed.")]
	[Category("Property Changed")]
	public event EventHandler Border3DStyleChanged;

	[Category("Property Changed")]
	[Description("This event is raised if the BorderColor property is changed.")]
	public event EventHandler BorderColorChanged;

	[Description("This event is raised if the ThemedBorder property is changed.")]
	[Category("Property Changed")]
	public event EventHandler ThemedBorderChanged;

	[Category("Property Changed")]
	[Description("Occurs when StretchScrollImage is changed.")]
	public event EventHandler StretchScrollImageChanged;

	[Description("Occurs when FirstDayOfWeek is changed.")]
	[Category("Behavior")]
	public event EventHandler FirstDayOfWeekChanged;

	[Description("Handle this event to provide custom formatting for calendar cells.")]
	public event DateCellQueryInfoEventHandler DateCellQueryInfo;

	[Description("Notifies that the numbering of the weeks have changed.")]
	public event EventHandler ShowWeekNumbersChanged;

	protected virtual void OnBorderStyleChanged()
	{
		if (this.BorderStyleChanged != null)
		{
			this.BorderStyleChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnBorderSidesChanged()
	{
		if (this.BorderSidesChanged != null)
		{
			this.BorderSidesChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnBorder3DStyleChanged()
	{
		if (this.Border3DStyleChanged != null)
		{
			this.Border3DStyleChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnBorderColorChanged()
	{
		if (this.BorderColorChanged != null)
		{
			this.BorderColorChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnThemedBorderChanged()
	{
		if (this.ThemedBorderChanged != null)
		{
			this.ThemedBorderChanged(this, EventArgs.Empty);
		}
	}

	protected void OnNoneButtonClick(EventArgs e)
	{
		if (this.NoneButtonClick != null)
		{
			this.NoneButtonClick(this, e);
		}
	}

	protected void OnSelectionChanged(EventArgs e)
	{
		if (this.SelectionChanged != null)
		{
			this.SelectionChanged(this, e);
		}
	}

	protected void OnDateSelected(EventArgs e)
	{
		if (this.DateSelected != null)
		{
			this.DateSelected(this, e);
		}
	}

	protected void OnDateChanged(EventArgs e)
	{
		if (this.DateChanged != null)
		{
			this.DateChanged(this, e);
		}
	}

	protected void ResetStyle()
	{
		Style = VisualStyle.Default;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeTodayFontColor()
	{
		return todayFontColor != SystemColors.ActiveCaption;
	}

	protected void ResetTodayFontColor()
	{
		TodayFontColor = SystemColors.ActiveCaption;
	}

	private bool ShouldSerializeMinValue()
	{
		if (MinValue <= c_validMinValue)
		{
			return false;
		}
		return true;
	}

	private void ResetMinValue()
	{
		MinValue = c_validMinValue;
	}

	private bool ShouldSerializeMaxValue()
	{
		if (MaxValue == c_validMaxValue)
		{
			return false;
		}
		return true;
	}

	private void ResetMaxValue()
	{
		MaxValue = c_validMaxValue;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeDayNamesColor()
	{
		return DayNamesColor != SystemColors.ControlText;
	}

	protected void ResetDayNamesColor()
	{
		DayNamesColor = SystemColors.ControlText;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeHeadForeColor()
	{
		return HeadForeColor != SystemColors.ActiveCaptionText;
	}

	protected void ResetHeaderForeColor()
	{
		HeadForeColor = SystemColors.ActiveCaptionText;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeInactiveMonthColor()
	{
		return inactiveMonthColor != SystemColors.InactiveCaptionText;
	}

	protected void ResetInactiveMonthColor()
	{
		InactiveMonthColor = SystemColors.InactiveCaptionText;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeHighlightColor()
	{
		return highlightColor != Color.Red;
	}

	protected void ResetHighlightColor()
	{
		HighlightColor = Color.Red;
	}

	private void RaiseFirstDayOfWeekChanged()
	{
		if (this.FirstDayOfWeekChanged != null)
		{
			this.FirstDayOfWeekChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnFirstDayOfWeekChanged()
	{
		if (Culture.Clone() is CultureInfo cultureInfo)
		{
			int firstDayOfWeek = (int)FirstDayOfWeek;
			DayOfWeek firstDayOfWeek2 = CultureInfo.CurrentCulture.DateTimeFormat.FirstDayOfWeek;
			if (firstDayOfWeek < 6)
			{
				firstDayOfWeek2 = (DayOfWeek)(firstDayOfWeek + 1);
			}
			else if (firstDayOfWeek == 6)
			{
				firstDayOfWeek2 = DayOfWeek.Sunday;
			}
			cultureInfo.DateTimeFormat.FirstDayOfWeek = firstDayOfWeek2;
			Culture = cultureInfo;
		}
		RaiseFirstDayOfWeekChanged();
	}

	[DocumentationExclude]
	protected bool ShouldSerializeScrollButtonSize()
	{
		if (ScrollButtonSize.Width == 17)
		{
			return ScrollButtonSize.Height != 19;
		}
		return true;
	}

	protected void ResetScrollButtonSize()
	{
		ScrollButtonSize = new Size(17, 19);
	}

	[DocumentationExclude]
	protected bool ShouldSerializeGridBackColor()
	{
		return GridBackColor != SystemColors.Window;
	}

	protected void ResetGridBackColor()
	{
		GridBackColor = SystemColors.Window;
	}

	protected void ResetDayNamesFont()
	{
		DayNamesFont = FontUtil.CreateFont("Verdana", 8f);
	}

	[DocumentationExclude]
	protected bool ShouldSerializeDayNamesFont()
	{
		if (!(DayNamesFont.FontFamily.Name != "Verdana"))
		{
			return DayNamesFont.Size != 8f;
		}
		return true;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeDaysColor()
	{
		return daysColor != SystemColors.ControlText;
	}

	protected void ResetDaysColor()
	{
		DaysColor = SystemColors.ControlText;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeHeaderFont()
	{
		return HeaderFont != c_defaultHeaderFont;
	}

	protected void ResetHeaderFont()
	{
		HeaderFont = c_defaultHeaderFont;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeHeaderEndColor()
	{
		return headerEndColor != SystemColors.ControlDark;
	}

	protected void ResetHeaderEndColor()
	{
		headerEndColor = SystemColors.ControlDark;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeHeaderStartColor()
	{
		return headerStartColor != SystemColors.ActiveCaption;
	}

	protected void ResetHeaderStartColor()
	{
		HeaderStartColor = SystemColors.ActiveCaption;
	}

	private void UpdateDaysFont()
	{
		if (daysFont == null)
		{
			return;
		}
		GridFontInfo gridFontInfo = new GridFontInfo();
		gridFontInfo.Facename = daysFont.Name;
		gridFontInfo.Bold = daysFont.Bold;
		gridFontInfo.Italic = daysFont.Italic;
		gridFontInfo.Underline = daysFont.Underline;
		gridFontInfo.Size = daysFont.Size;
		gridFontInfo.Strikeout = daysFont.Strikeout;
		daysFontInfo = gridFontInfo;
		for (int i = 1; i <= 6; i++)
		{
			for (int j = 1; j <= 7; j++)
			{
				GetInfo(i, j).Font = gridFontInfo;
			}
		}
		grid.Model.IgnoreReadOnly = true;
		grid.Refresh();
		grid.Invalidate();
		grid.Model.IgnoreReadOnly = false;
	}

	[DocumentationExclude]
	protected bool ShouldSerializeDaysFont()
	{
		if (!(DaysFont.FontFamily.Name != "Microsoft Sans Serif"))
		{
			return DaysFont.Size != 8f;
		}
		return true;
	}

	protected void ResetDaysFont()
	{
		DaysFont = FontUtil.CreateFont("Microsoft Sans Serif", 8f);
	}

	protected internal void GridFocus()
	{
		if (grid != null)
		{
			grid.GridControl.Focus();
		}
	}

	internal MonthCalendarAdv(bool dtCalendar)
		: this()
	{
		dateTimePickerCalendar = dtCalendar;
	}

	private bool ShouldSerializeDaysHeaderInterior()
	{
		if (DaysHeaderInterior.GradientStyle == GradientStyle.Vertical && DaysHeaderInterior.ForeColor == Color.PeachPuff && DaysHeaderInterior.BackColor == Color.AntiqueWhite)
		{
			return false;
		}
		return true;
	}

	private void ResetDaysHeaderInterior()
	{
		DaysHeaderInterior = new BrushInfo(GradientStyle.Vertical, Color.PeachPuff, Color.AntiqueWhite);
	}

	public MonthCalendarAdv()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(MonthCalendarAdv));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		m_themedEditDrawing = new ThemedEditDrawing(this);
		InitializeComponent();
		InitializeMonthCalendarAdv();
		daysHeaderInterior = new BrushInfo(GradientStyle.Vertical, Color.PeachPuff, Color.AntiqueWhite);
		SetStyle(ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
		m_selectedDates = new HybridDictionary();
		GridModel gridModel = new GridModel();
		gridModel.CommandStack.Enabled = false;
		gridModel.Rows.DefaultSize = 17;
		gridModel.Cols.DefaultSize = 65;
		gridModel.RowHeights[0] = 21;
		gridModel.ColWidths[0] = 35;
		gridModel.RowHeights.ResetModified();
		gridModel.ColWidths.ResetModified();
		gridModel.Options.ExcelLikeCurrentCell = false;
		gridModel.Options.ExcelLikeSelectionFrame = false;
		gridModel.Options.AllowDragSelectedCols = false;
		gridModel.Options.AllowDragSelectedRows = false;
		gridModel.CommandStack.Enabled = false;
		gridModel.Options.FloatCellsMode = GridFloatCellsMode.None;
		ResetBaseStylesMap(gridModel);
		gridModel.RowCount = 10;
		gridModel.ColCount = 10;
		model = new CalendarModel(gridModel);
		CreateVirtualCells();
		Office2007Colors.ManagedColorsApplied += Office2007ManagedColorsApplied;
	}

	private void ResetBaseStylesMap(GridModel model)
	{
		model.BaseStylesMap.RegisterStandardStyles();
		GridStyleInfo styleInfo = model.BaseStylesMap["Standard"].StyleInfo;
		GridStyleInfo styleInfo2 = model.BaseStylesMap["Header"].StyleInfo;
		GridStyleInfo styleInfo3 = model.BaseStylesMap["Row Header"].StyleInfo;
		_ = model.BaseStylesMap["Column Header"].StyleInfo;
		GridFontInfo gridFontInfo = new GridFontInfo();
		gridFontInfo.Bold = true;
		gridFontInfo.Size = 8f;
		gridFontInfo.Facename = "Verdana";
		styleInfo2.Interior = new BrushInfo(GradientStyle.Vertical, Color.FromArgb(203, 199, 184), Color.FromArgb(238, 234, 216));
		styleInfo3.Interior = new BrushInfo(GradientStyle.Horizontal, Color.FromArgb(203, 199, 184), Color.FromArgb(238, 234, 216));
		styleInfo.Font.Facename = "Tahoma";
		model.BaseStylesMap.Modified = false;
	}

	void ISupportInitialize.BeginInit()
	{
		m_bIsInitializing = true;
	}

	void ISupportInitialize.EndInit()
	{
		m_bIsInitializing = false;
		if (Style == VisualStyle.Office2007 && Office2007Theme == Office2007Theme.Managed)
		{
			ApplyOffice2007Theme();
		}
		SetHeaderPositions();
	}

	private bool SelectCell(int rowIndex, int colIndex, bool multiSelect)
	{
		DateTime dateTime = dvalue;
		int num = (rowIndex - 1) * 7 + colIndex;
		if (num < prevMonthCell)
		{
			dateTime = dvalue.AddMonths(-1);
		}
		else if (num > nextMonthCell)
		{
			dateTime = dvalue.AddMonths(1);
		}
		dateTime = new DateTime(dateTime.Year, dateTime.Month, GetDayFromCell(rowIndex, colIndex));
		bool flag = dateTime <= MaxValue && dateTime >= MinValue;
		if (flag)
		{
			if (!multiSelect)
			{
				m_selectedDates.Clear();
			}
			GridRangeInfoAdv gridRangeInfoAdv = GridRangeInfoAdv.FromGridRangeInfo(GridRangeInfo.Cell(rowIndex, colIndex));
			SetRangeDates(gridRangeInfoAdv);
			CurrentSelDates.Add(gridRangeInfoAdv);
		}
		return flag;
	}

	private void CreateGrid()
	{
		grid = new CalendarGrid();
		if (grid.GridControl.WantEnterKey != WantEnterKey)
		{
			grid.GridControl.WantEnterKey = WantEnterKey;
		}
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		if (!base.RecreatingHandle)
		{
			InitializeMenu();
			InitializeGrid(ref grid);
			SetHeaderPositions();
			RefreshCalendar(forceRefresh: true);
			RecalculateWidth();
			grid.Invalidate();
		}
	}

	protected virtual void InitializeGrid(ref CalendarGrid grid)
	{
		if (grid == null)
		{
			CreateGrid();
		}
		model.RowCount = 6;
		model.ColCount = 7;
		model.Cols.Hidden[0] = true;
		model.Options.AllowSelection = GridSelectionFlags.None;
		model.Options.ActivateCurrentCellBehavior = GridCellActivateAction.None;
		model.Options.ControllerOptions = GridControllerOptions.None;
		model.Options.ResizeColsBehavior = GridResizeCellsBehavior.None;
		GridStyleInfo gridStyleInfo = new GridStyleInfo();
		gridStyleInfo.CellType = "Static";
		model.ChangeCells(GridRangeInfo.Cells(1, 1, 6, 7), gridStyleInfo);
		model.Rows.FrozenCount = 6;
		model.Cols.FrozenCount = 7 + WeekColumnOffset;
		model.TableStyle.HorizontalAlignment = GridHorizontalAlignment.Center;
		model.SelectionChanged += GridSelectionChanged;
		model.QueryRowCount += QueryRowCount;
		model.QueryColCount += QueryColCount;
		model.QueryCellInfo += QueryCellInfo;
		grid.Model = model;
		grid.HScrollBehavior = GridScrollbarMode.Disabled;
		grid.VScrollBehavior = GridScrollbarMode.Disabled;
		grid.MouseControllerDispatcher.Add(new GridSelectCellsMouseController(grid.GridControl));
		grid.ContextMenu = Menu;
		grid.CellDrawn += grid_CellDrawn;
		grid.CellClick += CellClick;
		grid.CellMouseDown += grid_CellMouseDown;
		grid.CurrentCellMoving += CurrentCellMoving;
		grid.MouseDown += child_MouseDown;
		grid.Click += child_Click;
		grid.GridControl.CellMouseMove += grid_CellMouseMove;
		grid.GridControl.CellMouseUp += grid_CellMouseUp;
		grid.MoveCurrentCellDirection += grid_MoveCurrentCellDirection;
		base.Controls.Add(grid.GridControl);
		grid.BringToFront();
		grid.Dock = DockStyle.Fill;
		grid.Model.ReadOnly = true;
		grid.ForceCurrentCellMoveTo = true;
		grid.CurrentCell.MoveTo(1, 1, GridSetCurrentCellOptions.SetFocus);
		grid.CurrentCell.Activate(1, 1, GridSetCurrentCellOptions.SetFocus);
		grid.ThemesEnabled = m_bThemedEnabledGrid;
		grid.BackColor = m_gridBackColor;
		if (Style != VisualStyle.Default)
		{
			DaysHeaderInterior = new BrushInfo(grid.BackColor);
		}
		grid.BackgroundImage = base.BackgroundImage;
		grid.BackgroundImageLayout = base.BackgroundImageLayout;
		UpdateDaysFont();
		MonthCalendarAdv_SizeChanged(this, EventArgs.Empty);
		RefreshNames();
		ValueChanged(sameMonth: false);
	}

	private void grid_CellDrawn(object sender, GridDrawCellEventArgs e)
	{
		if (CurrentSelDates.AnyRangeContains(GridRangeInfo.Cell(e.RowIndex, e.ColIndex)) && e.Style.Enabled)
		{
			using (Brush brush = new SolidBrush(grid.Model.Options.AlphaBlendSelectionColor))
			{
				e.Graphics.FillRectangle(brush, e.Bounds);
			}
		}
	}

	private void grid_CellMouseMove(object sender, GridCellMouseEventArgs e)
	{
		if (MouseDragMultiselect && m_ptMouseDragMultiselectFirtsRowCol != Point.Empty)
		{
			grid.GridControl.PointToRowCol(new Point(e.MouseEventArgs.X, e.MouseEventArgs.Y), out var rowIndex, out var colIndex);
			Point point = new Point(rowIndex, colIndex);
			if (colIndex > 0 && rowIndex > 0 && m_ptMouseDragMultiselectLastRowCol != point)
			{
				m_ptMouseDragMultiselectLastRowCol = point;
				ProccesMouseDragMultiselect(rowIndex, colIndex);
			}
		}
	}

	private void grid_CellMouseUp(object sender, GridCellMouseEventArgs e)
	{
		if (m_ptMouseDragMultiselectFirtsRowCol != m_ptMouseDragMultiselectLastRowCol)
		{
			m_bSkipCheckCell = true;
		}
		m_ptMouseDragMultiselectFirtsRowCol = Point.Empty;
		m_ptMouseDragMultiselectLastRowCol = Point.Empty;
	}

	private void grid_MoveCurrentCellDirection(object sender, GridMoveCurrentCellDirectionEventArgs e)
	{
		switch (e.Direction)
		{
		default:
			return;
		case GridDirectionType.Left:
			Value -= new TimeSpan(1, 0, 0, 0, 0);
			break;
		case GridDirectionType.Right:
			Value += new TimeSpan(1, 0, 0, 0, 0);
			break;
		case GridDirectionType.Up:
			Value -= new TimeSpan(7, 0, 0, 0, 0);
			break;
		case GridDirectionType.Down:
			Value += new TimeSpan(7, 0, 0, 0, 0);
			break;
		}
		OnSelectionChanged(EventArgs.Empty);
		e.Handled = true;
		e.Result = true;
	}

	private void ProccesMouseDragMultiselect(int row, int col)
	{
		CurrentSelDates.Clear();
		Point ptMouseDragMultiselectFirtsRowCol = m_ptMouseDragMultiselectFirtsRowCol;
		Point point = new Point(row, col);
		if ((ptMouseDragMultiselectFirtsRowCol.X != point.X) ? (ptMouseDragMultiselectFirtsRowCol.X > point.X) : (ptMouseDragMultiselectFirtsRowCol.Y > point.Y))
		{
			for (int num = ptMouseDragMultiselectFirtsRowCol.X; num >= point.X; num--)
			{
				int num2 = ((num != point.X) ? 1 : point.Y);
				int num3 = ((num == ptMouseDragMultiselectFirtsRowCol.X) ? ptMouseDragMultiselectFirtsRowCol.Y : 7);
				for (int num4 = num3; num4 >= num2; num4--)
				{
					SelectCell(num, num4, multiSelect: true);
				}
			}
		}
		else
		{
			for (int i = ptMouseDragMultiselectFirtsRowCol.X; i <= point.X; i++)
			{
				int num5 = ((i == point.X) ? point.Y : 7);
				int num6 = ((i != ptMouseDragMultiselectFirtsRowCol.X) ? 1 : ptMouseDragMultiselectFirtsRowCol.Y);
				for (int j = num6; j <= num5; j++)
				{
					SelectCell(i, j, multiSelect: true);
				}
			}
		}
		grid.Invalidate();
		OnSelectionChanged(EventArgs.Empty);
	}

	private void ToggleSelectRowCol(int row, int col)
	{
		if (!grid.Model[row, col].Enabled)
		{
			return;
		}
		bool flag = (Control.ModifierKeys & Keys.Control) != 0;
		GridRangeInfoAdv gridRangeInfoAdv = GridRangeInfoAdv.FromGridRangeInfo(GridRangeInfo.Cell(row, col));
		bool flag2 = CurrentSelDates.AnyRangeContains(gridRangeInfoAdv);
		if (flag && flag2)
		{
			CurrentSelDates.Remove(gridRangeInfoAdv);
		}
		else if (flag && !flag2)
		{
			SelectCell(row, col, allowMultipleSelection);
		}
		else if (!flag)
		{
			GridRangeInfoList gridRangeInfoList = CurrentSelDates.Clone();
			if (SelectCell(row, col, multiSelect: false))
			{
				gridRangeInfoList.Add(gridRangeInfoAdv);
			}
			foreach (GridRangeInfoAdv item in gridRangeInfoList)
			{
				grid.RefreshRange(item, forceRefreshCurrentCell: true);
			}
		}
		OnSelectionChanged(EventArgs.Empty);
	}

	private void InitializeMenu()
	{
		parentBarItem1.Items.Clear();
		for (int i = 0; i < 12; i++)
		{
			BarItem barItem = new BarItem(months[i + 1], ItemClick);
			barItem.ImageIndex = i;
			barItem.ImageList = parentBarItem1.ImageList;
			parentBarItem1.Items.Add(barItem);
		}
	}

	private void ItemClick(object sender, EventArgs e)
	{
		int num = parentBarItem1.Items.IndexOf(sender) + 1;
		if (num > 0)
		{
			DateTimePickerAdv.CultureSpecifiecDateTime cultureSpecifiecDateTime = new DateTimePickerAdv.CultureSpecifiecDateTime(dvalue, CurrentCalendar);
			CurrentCalendar.GetDaysInMonth(cultureSpecifiecDateTime.Year, cultureSpecifiecDateTime.Month);
			int daysInMonth = CurrentCalendar.GetDaysInMonth(cultureSpecifiecDateTime.Year, num);
			if (cultureSpecifiecDateTime.Day > daysInMonth)
			{
				cultureSpecifiecDateTime.Day = daysInMonth;
			}
			cultureSpecifiecDateTime.Month = num;
			Value = cultureSpecifiecDateTime.DateTime;
		}
	}

	public GridStyleInfo GetInfo(int i, int j)
	{
		GridStyleInfo result = null;
		if (virtualCells.Count > i && ((ArrayList)virtualCells[i]).Count > j)
		{
			result = (GridStyleInfo)((ArrayList)virtualCells[i])[j];
		}
		return result;
	}

	public void SetInfo(int i, int j, GridStyleInfo style)
	{
		((ArrayList)virtualCells[i])[j] = style;
	}

	public void ClearSelection()
	{
		SelectCell(grid.CurrentCell.RowIndex, grid.CurrentCell.ColIndex, multiSelect: false);
		if (grid != null)
		{
			grid.Invalidate();
		}
	}

	protected internal void CorrectCurrentSelectedCell()
	{
		DateTimePickerAdv.CultureSpecifiecDateTime cultureSpecifiecDateTime = new DateTimePickerAdv.CultureSpecifiecDateTime(Value, CurrentCalendar);
		int day = cultureSpecifiecDateTime.Day;
		int i = 1;
		for (int rowCount = grid.Model.RowCount; i <= rowCount; i++)
		{
			int j = 1;
			for (int colCount = grid.Model.ColCount; j <= colCount; j++)
			{
				int num = (i - 1) * 7 + (j - 1);
				int dayFromCell = GetDayFromCell(i, j);
				if (dayFromCell == day && num >= prevMonthCell - 1 && num <= nextMonthCell)
				{
					grid.CurrentCell.MoveTo(i, j);
					return;
				}
			}
		}
	}

	protected virtual bool OnDateCellQueryInfo(DateCellQueryInfoEventArgs args)
	{
		if (this.DateCellQueryInfo != null)
		{
			this.DateCellQueryInfo(this, args);
		}
		if (args.Handled)
		{
			return true;
		}
		return false;
	}

	protected virtual void RaiseInvalidDateSelected()
	{
		if (this.InvalidDateSelected != null)
		{
			this.InvalidDateSelected(this, EventArgs.Empty);
		}
	}

	public void RefreshCalendar()
	{
		RefreshCalendar(needsRefresh);
	}

	public void RefreshCalendar(bool forceRefresh)
	{
		if (forceRefresh && grid != null)
		{
			grid.Refresh();
			needsRefresh = false;
		}
	}

	private void QueryCellInfo(object sender, GridQueryCellInfoEventArgs e)
	{
		if (e.ColIndex == 0 && m_bShowWeekNumbers)
		{
			SetWeek(e);
			e.Handled = true;
		}
		else
		{
			if (e.RowIndex < 0 || e.ColIndex < 0)
			{
				return;
			}
			int num = (e.RowIndex - 1) * 7 + e.ColIndex;
			GridStyleInfo gridStyleInfo = null;
			gridStyleInfo = GetInfo(e.RowIndex, e.ColIndex);
			e.Style.Text = gridStyleInfo.Text;
			e.Style.Font = daysFontInfo;
			e.Style.HorizontalAlignment = horizontalAlignment;
			e.Style.VerticalAlignment = verticalAlignment;
			e.Style.TextColor = gridStyleInfo.TextColor;
			if (e.RowIndex == 0)
			{
				e.Style.Text = days[e.ColIndex];
				e.Style.Font = dayNamesFontInfo;
				e.Style.TextColor = dayNamesColor;
				e.Style.WrapText = WrapText;
				e.Style.Interior = daysHeaderInterior;
				if (style == VisualStyle.Default)
				{
					e.Style.BaseStyle = "Header";
				}
				else
				{
					e.Style.BaseStyle = "Static";
					e.Style.Borders.Bottom = new GridBorder(GridBorderStyle.Solid);
				}
			}
			if (e.RowIndex != 0 && e.ColIndex != 0)
			{
				bool flag = false;
				bool isOutsideRange = false;
				object obj = null;
				CalendarCurrentCell currentCell = grid.CurrentCell;
				int rowIndex = currentCell.RowIndex;
				int colIndex = currentCell.ColIndex;
				if (e.RowIndex == rowIndex && e.ColIndex == colIndex)
				{
					flag = true;
				}
				if (num < prevMonthCell || num > nextMonthCell)
				{
					isOutsideRange = true;
				}
				try
				{
					if (gridStyleInfo.Text != null && gridStyleInfo.Text != string.Empty && IsNumber(gridStyleInfo.Text))
					{
						int dayFromCell = GetDayFromCell(e.RowIndex, e.ColIndex);
						DateTimePickerAdv.CultureSpecifiecDateTime cultureSpecifiecDateTime = new DateTimePickerAdv.CultureSpecifiecDateTime(dvalue, CurrentCalendar);
						int daysInMonth = CurrentCalendar.GetDaysInMonth(cultureSpecifiecDateTime.Year, cultureSpecifiecDateTime.Month);
						if (num < prevMonthCell)
						{
							cultureSpecifiecDateTime.Day = 1;
							cultureSpecifiecDateTime.DateTime = CurrentCalendar.AddMonths(cultureSpecifiecDateTime.DateTime, -1);
							cultureSpecifiecDateTime.Day = dayFromCell;
						}
						else if (num > nextMonthCell)
						{
							cultureSpecifiecDateTime.Day = 1;
							cultureSpecifiecDateTime.DateTime = CurrentCalendar.AddMonths(cultureSpecifiecDateTime.DateTime, 1);
							cultureSpecifiecDateTime.Day = dayFromCell;
						}
						else if (dayFromCell <= daysInMonth)
						{
							cultureSpecifiecDateTime.Day = dayFromCell;
						}
						obj = cultureSpecifiecDateTime.DateTime;
					}
				}
				catch
				{
				}
				DateCellQueryInfoEventArgs args = new DateCellQueryInfoEventArgs(e.RowIndex, e.ColIndex, e.Style, obj, flag, isOutsideRange);
				if (num < prevMonthCell || num > nextMonthCell)
				{
					e.Style.TextColor = inactiveMonthColor;
				}
				else if (dvalue.Year == DateTime.Now.Year && dvalue.Month == DateTime.Now.Month)
				{
					try
					{
						int dayFromCell2 = GetDayFromCell(e.RowIndex, e.ColIndex);
						int dayOfMonth = CurrentCalendar.GetDayOfMonth(DateTime.Now);
						if (dayFromCell2 == dayOfMonth)
						{
							e.Style.TextColor = todayFontColor;
						}
					}
					catch
					{
					}
				}
				if (flag)
				{
					e.Style.TextColor = highlightColor;
				}
				e.Style.CellType = gridStyleInfo.CellType;
				e.Style.Interior = BrushInfo.Empty;
				e.Style.Enabled = true;
				if (OnDateCellQueryInfo(args))
				{
					needsRefresh = true;
				}
				if (obj != null && ((DateTime)obj < minValue || (DateTime)obj > MaxValue))
				{
					e.Style.Enabled = false;
				}
				if (flag && e.Style.Enabled)
				{
					GridBordersInfo borders = e.Style.Borders;
					_ = borders.Top;
					borders.All = new GridBorder(GridBorderStyle.None);
				}
			}
			e.Handled = true;
		}
	}

	private void QueryRowCount(object sender, GridRowColCountEventArgs e)
	{
		e.Count = 6;
		e.Handled = true;
	}

	private void QueryColCount(object sender, GridRowColCountEventArgs e)
	{
		e.Count = 7;
		e.Handled = true;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (grid != null)
			{
				grid.GridControl.CellMouseMove -= grid_CellMouseMove;
				grid.GridControl.CellMouseUp -= grid_CellMouseUp;
			}
			if (nullButton != null)
			{
				nullButton.Click -= nullButton_Click;
				nullButton.MouseDown -= child_MouseDown;
				nullButton.Click -= child_Click;
				nullButton.Dispose();
				nullButton = null;
			}
			if (todayButton != null)
			{
				todayButton.Click -= todayButton_Click;
				todayButton.MouseDown -= child_MouseDown;
				todayButton.Click -= child_Click;
				todayButton.Dispose();
				todayButton = null;
			}
			if (m_themedEditDrawing != null)
			{
				m_themedEditDrawing.Dispose();
				m_themedEditDrawing = null;
			}
			Office2007Colors.ManagedColorsApplied -= Office2007ManagedColorsApplied;
			if (components != null)
			{
				components.Dispose();
			}
		}
		base.Dispose(disposing);
	}

	private void InitializeMonthCalendarAdv()
	{
		components = new Container();
		headerPanel = new Panel();
		rightButton = new ThemedScrollButton();
		leftButton = new ThemedScrollButton();
		yearLabel = new Label();
		yearUD = new YearNumericUpDown();
		monthLabel = new Label();
		bottomPanel = new Panel();
		nullButton = new MonthCalendarNoneButton();
		todayButton = new MonthCalendarTodayButton();
		contextMenu = new ContextMenu();
		gotoToday = new MenuItem();
		parentBarItem1 = new ParentBarItem();
		headerPanel.SuspendLayout();
		((ISupportInitialize)yearUD).BeginInit();
		bottomPanel.SuspendLayout();
		SuspendLayout();
		headerPanel.BackColor = SystemColors.ActiveCaption;
		headerPanel.Controls.AddRange(new Control[5] { rightButton, leftButton, yearLabel, yearUD, monthLabel });
		headerPanel.Dock = DockStyle.Top;
		headerPanel.Name = "headerPanel";
		headerPanel.Size = new Size(192, 32);
		headerPanel.TabIndex = 0;
		headerPanel.Paint += headerPanel_Paint;
		headerPanel.MouseDown += headerPanel_MouseDown;
		headerPanel.MouseDown += child_MouseDown;
		headerPanel.MouseEnter += headerPanel_MouseEnter;
		headerPanel.MouseLeave += headerPanel_MouseLeave;
		headerPanel.Click += child_Click;
		rightButton.Anchor = AnchorStyles.Top | AnchorStyles.Right;
		rightButton.BackColor = SystemColors.Control;
		rightButton.ButtonType = System.Windows.Forms.ScrollButton.Right;
		rightButton.DefaultButtonState = ButtonState.Flat;
		rightButton.Location = new Point(168, 8);
		rightButton.Name = "rightButton";
		rightButton.Size = new Size(16, 18);
		rightButton.TabIndex = 4;
		rightButton.Text = ">";
		rightButton.TabStop = false;
		rightButton.ThemesEnabled = true;
		rightButton.MouseDown += rightButton_MouseDown;
		rightButton.MouseDown += child_MouseDown;
		rightButton.MouseEnter += rightButton_MouseEnter;
		rightButton.MouseLeave += rightButton_MouseLeave;
		rightButton.Click += child_Click;
		leftButton.BackColor = SystemColors.Control;
		leftButton.ButtonType = System.Windows.Forms.ScrollButton.Left;
		leftButton.DefaultButtonState = ButtonState.Flat;
		leftButton.Location = new Point(8, 8);
		leftButton.Name = "leftButton";
		leftButton.Size = new Size(17, 19);
		leftButton.TabIndex = 3;
		leftButton.Text = "<";
		leftButton.TabStop = false;
		leftButton.ThemesEnabled = true;
		leftButton.MouseDown += leftButton_MouseDown;
		leftButton.MouseDown += child_MouseDown;
		leftButton.MouseEnter += rightButton_MouseEnter;
		leftButton.MouseLeave += rightButton_MouseLeave;
		leftButton.Click += child_Click;
		yearLabel.BackColor = Color.Transparent;
		yearLabel.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Bold, GraphicsUnit.Point, 0);
		yearLabel.ForeColor = SystemColors.ActiveCaptionText;
		yearLabel.Location = new Point(96, 8);
		yearLabel.Name = "yearLabel";
		yearLabel.Size = new Size(45, 16);
		yearLabel.TabIndex = 2;
		yearLabel.Text = "";
		yearLabel.Visible = false;
		yearLabel.MouseDown += yearLabel_MouseDown;
		yearLabel.MouseDown += child_MouseDown;
		yearLabel.Click += child_Click;
		yearUD.Location = new Point(96, 8);
		yearUD.Maximum = new decimal(new int[4] { c_validMaxValue.Year, 0, 0, 0 });
		yearUD.Minimum = new decimal(new int[4] { c_validMinValue.Year, 0, 0, 0 });
		yearUD.Name = "yearUD";
		yearUD.Size = new Size(48, 20);
		yearUD.TabIndex = 1;
		yearUD.ThemesEnabled = true;
		yearUD.Value = new decimal(new int[4] { 2003, 0, 0, 0 });
		yearUD.Visible = false;
		yearUD.VisibleChanged += yearUD_VisibleChanged;
		yearUD.Leave += yearUD_Leave;
		yearUD.ValueChanged += yearUD_ValueChanged;
		yearUD.MouseDown += child_MouseDown;
		yearUD.Click += child_Click;
		monthLabel.BackColor = Color.Transparent;
		monthLabel.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Bold, GraphicsUnit.Point, 0);
		monthLabel.ForeColor = SystemColors.ActiveCaptionText;
		monthLabel.Location = new Point(32, 11);
		monthLabel.Name = "monthLabel";
		monthLabel.Size = new Size(48, 16);
		monthLabel.TabIndex = 0;
		monthLabel.Text = "January";
		monthLabel.Visible = false;
		monthLabel.MouseDown += monthLabel_MouseDown;
		monthLabel.MouseDown += child_MouseDown;
		monthLabel.Click += child_Click;
		bottomPanel.Controls.AddRange(new Control[2] { nullButton, todayButton });
		bottomPanel.Dock = DockStyle.Bottom;
		bottomPanel.Location = new Point(0, 148);
		bottomPanel.Name = "bottomPanel";
		bottomPanel.Size = new Size(192, 20);
		bottomPanel.TabIndex = 1;
		bottomPanel.MouseDown += child_MouseDown;
		bottomPanel.Click += child_Click;
		bottomPanel.VisibleChanged += bottomPanel_VisibleChanged;
		nullButton.Dock = DockStyle.Right;
		nullButton.FlatStyle = FlatStyle.Popup;
		nullButton.Location = new Point(120, 0);
		nullButton.Name = "nullButton";
		nullButton.Size = new Size(72, 20);
		nullButton.TabIndex = 1;
		nullButton.Text = "None";
		nullButton.Click += nullButton_Click;
		nullButton.MouseDown += child_MouseDown;
		nullButton.Click += child_Click;
		todayButton.Dock = DockStyle.Fill;
		todayButton.FlatStyle = FlatStyle.Popup;
		todayButton.Name = "todayButton";
		todayButton.Size = new Size(120, 20);
		todayButton.TabIndex = 0;
		todayButton.Text = "Today";
		todayButton.Click += todayButton_Click;
		todayButton.BringToFront();
		todayButton.MouseDown += child_MouseDown;
		todayButton.Click += child_Click;
		contextMenu.MenuItems.AddRange(new MenuItem[1] { gotoToday });
		gotoToday.Index = 0;
		gotoToday.Text = "Go to Today";
		gotoToday.Click += gotoToday_Click;
		parentBarItem1.CategoryIndex = -1;
		base.Controls.AddRange(new Control[2] { bottomPanel, headerPanel });
		base.Name = "MonthCalendarAdv";
		base.Size = new Size(192, 168);
		base.SizeChanged += MonthCalendarAdv_SizeChanged;
		headerPanel.ResumeLayout(performLayout: false);
		((ISupportInitialize)yearUD).EndInit();
		bottomPanel.ResumeLayout(performLayout: false);
		ResumeLayout(performLayout: false);
	}

	private void CreateVirtualCells()
	{
		if (virtualCells != null)
		{
			return;
		}
		virtualCells = new ArrayList();
		for (int i = 0; i <= 6; i++)
		{
			virtualCells.Add(new ArrayList());
			for (int j = 0; j <= 7; j++)
			{
				GridStyleInfo gridStyleInfo = new GridStyleInfo();
				if (i == 0)
				{
					gridStyleInfo.CellType = "Header";
				}
				else
				{
					gridStyleInfo.CellType = "Static";
				}
				((ArrayList)virtualCells[i]).Add(gridStyleInfo);
			}
		}
	}

	private void InitMonthsPopup()
	{
		popupMonths = new PopupMenu();
		popupMonths.ParentBarItem = parentBarItem1;
	}

	private void rightButton_MouseEnter(object sender, EventArgs e)
	{
		ThemedScrollButton themedScrollButton = sender as ThemedScrollButton;
		if (Style == VisualStyle.Office2007)
		{
			themedScrollButton.ArrowColor = m_office2007ColorTable.DataTimePickerHighLightedForeColor;
			themedScrollButton.Invalidate();
		}
	}

	private void rightButton_MouseLeave(object sender, EventArgs e)
	{
		ThemedScrollButton themedScrollButton = sender as ThemedScrollButton;
		if (Style == VisualStyle.Office2007)
		{
			themedScrollButton.ArrowColor = m_office2007ColorTable.MonthCalendarForeColor;
			themedScrollButton.Invalidate();
		}
	}

	private void headerPanel_MouseEnter(object sender, EventArgs e)
	{
		if (Style == VisualStyle.Office2007)
		{
			yearLabel.ForeColor = m_office2007ColorTable.DataTimePickerHighLightedForeColor;
			monthLabel.ForeColor = m_office2007ColorTable.DataTimePickerHighLightedForeColor;
			headerPanel.Invalidate(invalidateChildren: true);
		}
	}

	private void headerPanel_MouseLeave(object sender, EventArgs e)
	{
		if (Style == VisualStyle.Office2007)
		{
			yearLabel.ForeColor = m_office2007ColorTable.MonthCalendarForeColor;
			monthLabel.ForeColor = m_office2007ColorTable.MonthCalendarForeColor;
			headerPanel.Invalidate(invalidateChildren: true);
		}
	}

	private void InitializeComponent()
	{
	}

	private void child_Click(object sender, EventArgs e)
	{
		OnClick(e);
	}

	private void child_MouseDown(object sender, MouseEventArgs e)
	{
		Point p = new Point(e.X, e.Y);
		if (sender is Control)
		{
			p = PointToClient(((Control)sender).PointToScreen(p));
		}
		OnMouseDown(new MouseEventArgs(e.Button, e.Clicks, p.X, p.Y, e.Delta));
	}

	private void GridSelectionChanged(object sender, GridSelectionChangedEventArgs e)
	{
		if (e.Reason == GridSelectionReason.ArrowKey)
		{
			try
			{
				CheckCell((grid.CurrentCell.RowIndex - 1) * 7 + grid.CurrentCell.ColIndex);
			}
			catch
			{
			}
		}
		OnSelectionChanged(EventArgs.Empty);
	}

	private void CurrentCellMoving(object sender, GridCurrentCellMovingEventArgs e)
	{
		e.Cancel = cancelMoveTo;
		if (cancelMoveTo)
		{
			cancelMoveTo = false;
		}
		if (e.RowIndex == 0)
		{
			e.Cancel = true;
		}
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

	private void CheckCell(int cellNo)
	{
		int num = cellNo % grid.Model.ColCount;
		num = ((num == 0) ? grid.Model.ColCount : num);
		int rowIndex = (cellNo - num) / grid.Model.ColCount + 1;
		if (!grid.Model[rowIndex, num].Enabled)
		{
			RaiseInvalidDateSelected();
		}
		else
		{
			if (!IsNumber(grid.Model[grid.CurrentCell.RowIndex, grid.CurrentCell.ColIndex].Text))
			{
				return;
			}
			DateTimePickerAdv.CultureSpecifiecDateTime cultureSpecifiecDateTime = new DateTimePickerAdv.CultureSpecifiecDateTime(dvalue, CurrentCalendar);
			if (cellNo < prevMonthCell && Control.ModifierKeys != Keys.Control)
			{
				if (cultureSpecifiecDateTime.Month == 1)
				{
					if (Value.Year == c_validMinValue.Year)
					{
						return;
					}
					cultureSpecifiecDateTime.Year--;
					cultureSpecifiecDateTime.Month = 12;
				}
				else
				{
					cultureSpecifiecDateTime.Month--;
				}
			}
			else if (cellNo > nextMonthCell && Control.ModifierKeys != Keys.Control)
			{
				if (cultureSpecifiecDateTime.Month == 12)
				{
					if (Value.Year == c_validMaxValue.Year)
					{
						return;
					}
					cultureSpecifiecDateTime.Month = 1;
					cultureSpecifiecDateTime.Year++;
				}
				else
				{
					cultureSpecifiecDateTime.Month++;
				}
			}
			cultureSpecifiecDateTime.Day = GetDayFromCell(grid.CurrentCell.RowIndex, grid.CurrentCell.ColIndex);
			Value = cultureSpecifiecDateTime.DateTime;
		}
	}

	private void grid_CellMouseDown(object sender, GridCellMouseEventArgs e)
	{
		if (e.RowIndex > 0 && e.ColIndex > 0)
		{
			m_ptMouseDragMultiselectFirtsRowCol = new Point(e.RowIndex, e.ColIndex);
			m_ptMouseDragMultiselectLastRowCol = new Point(e.RowIndex, e.ColIndex);
		}
		ToggleSelectRowCol(e.RowIndex, e.ColIndex);
	}

	protected virtual void OnShowWeekNumbersChanged()
	{
		m_weekColumnOffset = (m_bShowWeekNumbers ? 1 : 0);
		if (grid == null)
		{
			model.ColumnOffset = m_weekColumnOffset;
		}
		else
		{
			grid.ColumnOffset = m_weekColumnOffset;
		}
		if (grid == null)
		{
			model.RowCount = 6;
			model.ColCount = 7;
			model.Rows.FrozenCount = 6;
			model.Cols.FrozenCount = 7 + WeekColumnOffset;
		}
		else
		{
			grid.Model.RowCount = 6;
			grid.Model.ColCount = 7;
			grid.Model.Rows.FrozenCount = 6;
			grid.Model.Cols.FrozenCount = 7 + WeekColumnOffset;
			if (m_bShowWeekNumbers)
			{
				grid.CurrentCell.Activate(grid.CurrentCell.RowIndex, grid.CurrentCell.ColIndex + 1, GridSetCurrentCellOptions.SetFocus);
			}
			else
			{
				grid.CurrentCell.Activate(grid.CurrentCell.RowIndex, grid.CurrentCell.ColIndex - 1, GridSetCurrentCellOptions.SetFocus);
			}
		}
		RecalculateWidth();
		MonthCalendarAdv_SizeChanged(this, EventArgs.Empty);
		RaiseShowWeekNumbersChanged();
	}

	protected void RaiseShowWeekNumbersChanged()
	{
		if (this.ShowWeekNumbersChanged != null)
		{
			this.ShowWeekNumbersChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseStretchScrollImageChanged()
	{
		if (this.StretchScrollImageChanged != null)
		{
			this.StretchScrollImageChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnStretchScrollImageChanged()
	{
		leftButton.StretchImage = StretchScrollImage;
		rightButton.StretchImage = StretchScrollImage;
		RaiseStretchScrollImageChanged();
	}

	private void ResetWeekFont()
	{
		m_weekFont = FontUtil.CreateFont("Verdana", 8f);
	}

	private void ResetWeekInterior()
	{
		WeekInterior = new BrushInfo(GradientStyle.Vertical, Color.PeachPuff, Color.AntiqueWhite);
	}

	private void SetWeekCaption(GridQueryCellInfoEventArgs e)
	{
		e.Style.Text = " ";
		e.Style.Font = dayNamesFontInfo;
		e.Style.TextColor = dayNamesColor;
		e.Style.WrapText = WrapText;
		e.Style.Interior = daysHeaderInterior;
		if (style == VisualStyle.Default)
		{
			e.Style.BaseStyle = "Header";
			return;
		}
		e.Style.BaseStyle = "Static";
		e.Style.Borders.Bottom = new GridBorder(GridBorderStyle.Solid);
	}

	private void SetWeekNumber(GridQueryCellInfoEventArgs e)
	{
		int weekColumnOffset = WeekColumnOffset;
		int rowIndex = e.RowIndex;
		int num = (rowIndex - 1) * 7 + weekColumnOffset;
		GridStyleInfo info = GetInfo(rowIndex, weekColumnOffset);
		string text = info.Text;
		if (text != null && text.Length > 0 && IsNumber(text))
		{
			int dayFromCell = GetDayFromCell(rowIndex, weekColumnOffset);
			DateTimePickerAdv.CultureSpecifiecDateTime cultureSpecifiecDateTime = new DateTimePickerAdv.CultureSpecifiecDateTime(dvalue, CurrentCalendar);
			int daysInMonth = CurrentCalendar.GetDaysInMonth(cultureSpecifiecDateTime.Year, cultureSpecifiecDateTime.Month);
			if (num < prevMonthCell)
			{
				cultureSpecifiecDateTime.Day = 1;
				cultureSpecifiecDateTime.DateTime = CurrentCalendar.AddMonths(cultureSpecifiecDateTime.DateTime, -1);
				cultureSpecifiecDateTime.Day = dayFromCell;
			}
			else if (num > nextMonthCell)
			{
				cultureSpecifiecDateTime.Day = 1;
				cultureSpecifiecDateTime.DateTime = CurrentCalendar.AddMonths(cultureSpecifiecDateTime.DateTime, 1);
				cultureSpecifiecDateTime.Day = dayFromCell;
			}
			else if (dayFromCell <= daysInMonth)
			{
				cultureSpecifiecDateTime.Day = dayFromCell;
			}
			e.Style.Text = cultureSpecifiecDateTime.WeekOfYear.ToString();
			e.Style.TextColor = WeekTextColor;
			if (m_weekFontInfo != null)
			{
				e.Style.Font = m_weekFontInfo;
			}
			if (WeekInterior != null)
			{
				e.Style.Interior = WeekInterior;
			}
		}
	}

	private void SetWeek(GridQueryCellInfoEventArgs e)
	{
		e.Style.Enabled = false;
		if (e.RowIndex == 0)
		{
			SetWeekCaption(e);
		}
		else if (e.RowIndex > 0)
		{
			SetWeekNumber(e);
		}
	}

	private void CellClick(object sender, GridCellClickEventArgs e)
	{
		m_bCellClicked = true;
		int cellNo = (e.RowIndex - 1) * 7 + e.ColIndex;
		if (e.RowIndex != 0 && (e.ColIndex != 0 || !m_bShowWeekNumbers))
		{
			selectedDates = new DateTime[0];
			if (!m_bSkipCheckCell)
			{
				CheckCell(cellNo);
			}
			else
			{
				m_bSkipCheckCell = false;
			}
			OnDateSelected(EventArgs.Empty);
			m_bCellClicked = false;
		}
	}

	private void RecalculateWidth()
	{
		if (sizeToFit && grid != null)
		{
			grid.Model.ColWidths.ResizeToFit(GridRangeInfo.Row(0));
			maxColWidth = 0;
			int num = 7 + WeekColumnOffset;
			for (int i = 1; i <= num; i++)
			{
				maxColWidth = Math.Max(maxColWidth, grid.Model.ColWidths[i]);
			}
			for (int j = 1; j <= num; j++)
			{
				grid.Model.ColWidths[j] = maxColWidth;
			}
			if (base.Width != maxColWidth * num)
			{
				base.Width = maxColWidth * num;
			}
		}
	}

	private void MonthCalendarAdv_SizeChanged(object sender, EventArgs e)
	{
		if (grid == null)
		{
			return;
		}
		grid.DefaultRowHeight = (base.Height - headerPanel.Height - bottomPanel.Height - dayNamesHeight) / grid.Model.RowCount;
		grid.SetRowHeight(0, 0, dayNamesHeight);
		grid.Model.RowHeights[grid.Model.RowCount] = base.Height - headerPanel.Height - bottomPanel.Height - dayNamesHeight - grid.DefaultRowHeight * (grid.Model.RowCount - 1);
		int num = 7 + WeekColumnOffset;
		if (sizeToFit)
		{
			if (base.Width != maxColWidth * num)
			{
				base.Width = maxColWidth * num;
			}
		}
		else
		{
			int num2 = base.Width / num;
			int num3 = base.Width - num2 * num;
			grid.DefaultColWidth = num2;
			for (int i = 1; i <= num; i++)
			{
				grid.Model.ColWidths[i] = num2 + ((i <= num3) ? 1 : 0);
			}
		}
		SetHeaderPositions();
		RefreshHeaderBrush();
		headerPanel.Invalidate();
	}

	private void bottomPanel_VisibleChanged(object sender, EventArgs e)
	{
	}

	private void RefreshHeaderBrush()
	{
		try
		{
			headerBrush = new LinearGradientBrush(headerPanel.ClientRectangle, headerStartColor, headerEndColor, headerVerticalGradient ? 90 : 0);
		}
		catch
		{
		}
	}

	private void RefreshNames()
	{
		if (grid != null)
		{
			DateTimeFormatInfo dateTimeFormat = culture.DateTimeFormat;
			for (int i = 1; i <= 7; i++)
			{
				int num = (int)(i - 1 + dateTimeFormat.FirstDayOfWeek) % 7;
				string text = (m_bShortestDayNames ? dateTimeFormat.ShortestDayNames[num] : dateTimeFormat.AbbreviatedDayNames[num]);
				days[i] = text;
			}
			for (int j = 1; j <= 12; j++)
			{
				months[j] = dateTimeFormat.MonthNames[j - 1];
			}
			grid.RefreshRange(GridRangeInfo.Cells(0, 0, 0, 7));
			int month = CurrentCalendar.GetMonth(dvalue);
			monthLabel.Text = months[month];
			InitializeMenu();
			if (sizeToFit)
			{
				RecalculateWidth();
			}
		}
	}

	private DateTime GetDateFromCell(int row, int col)
	{
		int num = CurrentCalendar.GetMonth(dvalue);
		int num2 = CurrentCalendar.GetYear(dvalue);
		int num3 = col + 7 * (row - 1);
		int day;
		if (num3 < prevMonthCell)
		{
			day = GetPrevMonthDayCount() - prevMonthCell + num3 + 1;
			num--;
			if (num < 1)
			{
				num = 12;
				num2--;
			}
		}
		else if (num3 > nextMonthCell)
		{
			day = num3 - prevMonthCell - CurrentCalendar.GetDaysInMonth(num2, num) + 1;
			num++;
			if (num > 12)
			{
				num = 1;
				num2++;
			}
		}
		else
		{
			day = num3 - prevMonthCell + 1;
		}
		return new DateTime(num2, num, day, CurrentCalendar);
	}

	private int GetDayFromCell(int rowIndex, int colIndex)
	{
		int num = colIndex + 7 * (rowIndex - 1);
		if (num < prevMonthCell)
		{
			return GetPrevMonthDayCount() - prevMonthCell + num + 1;
		}
		if (num > nextMonthCell)
		{
			int year = CurrentCalendar.GetYear(dvalue);
			int month = CurrentCalendar.GetMonth(dvalue);
			return num - prevMonthCell - CurrentCalendar.GetDaysInMonth(year, month) + 1;
		}
		return num - prevMonthCell + 1;
	}

	private int GetPrevMonthDayCount()
	{
		int month = CurrentCalendar.GetMonth(dvalue);
		int year = CurrentCalendar.GetYear(dvalue);
		if (month == 1)
		{
			if (dvalue.Year == DateTime.MinValue.Year)
			{
				return 30;
			}
			return CurrentCalendar.GetDaysInMonth(year - 1, 12);
		}
		return CurrentCalendar.GetDaysInMonth(year, month - 1);
	}

	private void SetHeaderPositions()
	{
		if (!IsInitializing)
		{
			Graphics graphics = monthLabel.CreateGraphics();
			Size size = graphics.MeasureString(monthLabel.Text, monthLabel.Font).ToSize();
			size.Width += 4;
			monthLabel.Size = size;
			graphics.Dispose();
			graphics = yearLabel.CreateGraphics();
			Size size2 = graphics.MeasureString(yearLabel.Text, yearLabel.Font).ToSize();
			graphics.Dispose();
			size2.Width += 4;
			yearLabel.Size = size2;
			yearUD.Size = new Size(size2.Width + 20, yearUD.Height);
			monthLabel.Location = new Point((base.Width - size.Width - yearLabel.Width) / 2, (headerPanel.Height - monthLabel.Height) / 2);
			yearLabel.Location = new Point(monthLabel.Location.X + monthLabel.Width, (headerPanel.Height - yearLabel.Height) / 2);
			yearUD.Location = new Point(monthLabel.Location.X + monthLabel.Width, (headerPanel.Height - yearUD.Height) / 2);
			leftButton.Location = new Point(buttonOffset, (headerPanel.Height - leftButton.Height) / 2);
			rightButton.Location = new Point(base.Width - buttonOffset - rightButton.Width, (headerPanel.Height - rightButton.Height) / 2);
		}
	}

	private void SetHeaderPanelTexts(string month, int year)
	{
		monthLabel.Text = month;
		yearLabel.Text = year.ToString();
		yearUD.Value = year;
		SetHeaderPositions();
	}

	private void ValueChanged(bool sameMonth)
	{
		DateTimePickerAdv.CultureSpecifiecDateTime cultureSpecifiecDateTime = new DateTimePickerAdv.CultureSpecifiecDateTime(dvalue, CurrentCalendar);
		CurrentCalendar.GetDayOfWeek(dvalue);
		SetHeaderPanelTexts(culture.DateTimeFormat.MonthNames[cultureSpecifiecDateTime.Month - 1], cultureSpecifiecDateTime.Year);
		grid.Model.IgnoreReadOnly = true;
		int day = cultureSpecifiecDateTime.Day;
		cultureSpecifiecDateTime.Day = 1;
		int firstDayOfWeek = (int)culture.DateTimeFormat.FirstDayOfWeek;
		int num = (7 - firstDayOfWeek + cultureSpecifiecDateTime.DayOfWeek) % 7 + 1;
		cultureSpecifiecDateTime.Day = day;
		int prevMonthDayCount = GetPrevMonthDayCount();
		prevMonthCell = num;
		for (int i = 1; i < num; i++)
		{
			GridStyleInfo info = GetInfo(1, i);
			info.Text = (prevMonthDayCount - num + i + 1).ToString();
			info.TextColor = SystemColors.InactiveCaptionText;
			info.Interior = BrushInfo.Empty;
			info.Enabled = true;
		}
		int daysInMonth = CurrentCalendar.GetDaysInMonth(cultureSpecifiecDateTime.Year, cultureSpecifiecDateTime.Month);
		nextMonthCell = daysInMonth + num - 1;
		for (int j = num - 1; j < daysInMonth + num - 1; j++)
		{
			int num2 = j / 7 + 1;
			int num3 = j % 7 + 1;
			GridStyleInfo info2 = GetInfo(num2, num3);
			info2.Text = (j - num + 2).ToString();
			info2.TextColor = daysColor;
			info2.Interior = BrushInfo.Empty;
			info2.Enabled = true;
			if (j - num + 2 == cultureSpecifiecDateTime.Day)
			{
				grid.CurrentCell.MoveTo(num2, num3);
			}
			for (int k = 0; k < selectedDates.Length; k++)
			{
				DateTimePickerAdv.CultureSpecifiecDateTime cultureSpecifiecDateTime2 = new DateTimePickerAdv.CultureSpecifiecDateTime(selectedDates[k], CurrentCalendar);
				if (cultureSpecifiecDateTime2.Year == cultureSpecifiecDateTime.Year && cultureSpecifiecDateTime2.Month == cultureSpecifiecDateTime.Month && cultureSpecifiecDateTime2.Day == j - num + 2)
				{
					SelectCell(num2, num3, allowMultipleSelection);
				}
			}
		}
		for (int l = daysInMonth + num - 1; l < 42; l++)
		{
			GridStyleInfo info3 = GetInfo(l / 7 + 1, l % 7 + 1);
			info3.Text = (l - (daysInMonth + num - 1) + 1).ToString();
			info3.TextColor = SystemColors.InactiveCaptionText;
			info3.Interior = BrushInfo.Empty;
			info3.Enabled = true;
		}
		if (!sameMonth || CurrentSelDates.Count == 0)
		{
			if (!sameMonth)
			{
				CorrectCurrentSelectedCell();
				cancelMoveTo = m_bCellClicked;
			}
			GridRangeInfoAdv gridRangeInfoAdv = GridRangeInfoAdv.FromGridRangeInfo(GridRangeInfo.Cell(grid.CurrentCell.RowIndex, grid.CurrentCell.ColIndex));
			SetRangeDates(gridRangeInfoAdv);
			CurrentSelDates.Add(gridRangeInfoAdv);
			grid.RefreshRange(GridRangeInfo.Cells(1, 1, 6, 7));
			grid.Refresh();
		}
		else
		{
			grid.Invalidate();
		}
		grid.Model.IgnoreReadOnly = false;
		headerPanel.Refresh();
	}

	private void SetRangeDates(GridRangeInfoAdv range)
	{
		CurrentCalendar.GetYear(dvalue);
		CurrentCalendar.GetMonth(dvalue);
		if (range.GetFirstCell(out var top, out var left))
		{
			range.Dates.Add(GetDateFromCell(top, left));
			while (range.GetNextCell(ref top, ref left))
			{
				range.Dates.Add(GetDateFromCell(top, left));
			}
		}
	}

	private void todayButton_Click(object sender, EventArgs e)
	{
		Value = DateTime.Now;
		OnDateSelected(EventArgs.Empty);
	}

	private void leftButton_MouseDown(object sender, MouseEventArgs e)
	{
		SelectNextMonth(RightToLeft == RightToLeft.Yes);
	}

	private void rightButton_MouseDown(object sender, MouseEventArgs e)
	{
		SelectNextMonth(RightToLeft == RightToLeft.No);
	}

	private void SelectNextMonth(bool bForward)
	{
		if (bForward)
		{
			if (Value.Year != c_validMaxValue.Year || Value.Month != 12)
			{
				DateTime dateTime = CurrentCalendar.AddMonths(dvalue, 1);
				if (dateTime > MaxValue)
				{
					dateTime = MaxValue;
				}
				SelectMonth(dateTime);
			}
		}
		else if (Value.Year != DateTime.MinValue.Year || Value.Month != 1)
		{
			DateTime dateTime2 = CurrentCalendar.AddMonths(dvalue, -1);
			if (dateTime2 < MinValue)
			{
				dateTime2 = MinValue;
			}
			SelectMonth(dateTime2);
		}
	}

	private void SelectMonth(DateTime value)
	{
		SuspendLayout();
		grid.GridControl.BeginUpdate();
		if ((Control.ModifierKeys & Keys.Control) == 0)
		{
			m_selectedDates.Clear();
			Value = value;
		}
		else
		{
			Value = value;
			Deselect(value);
		}
		grid.GridControl.EndUpdate();
		ResumeLayout();
	}

	private void Deselect(DateTime value)
	{
		DateTime dateTime = new DateTime(value.Year, value.Month, 1);
		if (!(m_selectedDates[dateTime] is GridRangeInfoList gridRangeInfoList))
		{
			return;
		}
		for (int i = 0; i < gridRangeInfoList.Count; i++)
		{
			GridRangeInfoAdv gridRangeInfoAdv = gridRangeInfoList[i] as GridRangeInfoAdv;
			if (gridRangeInfoAdv != null && gridRangeInfoAdv.Dates.Count > 0 && gridRangeInfoAdv.Dates[0] == value)
			{
				gridRangeInfoList.RemoveAt(i);
				break;
			}
		}
	}

	private void nullButton_Click(object sender, EventArgs e)
	{
		grid.CurrentCell.Deactivate(discardChanges: true);
		OnNoneButtonClick(EventArgs.Empty);
	}

	private void gotoToday_Click(object sender, EventArgs e)
	{
		Value = DateTime.Now;
	}

	private void headerPanel_Paint(object sender, PaintEventArgs e)
	{
		base.OnPaint(e);
		Graphics graphics = e.Graphics;
		if (headGradient)
		{
			graphics.FillRectangle(headerBrush, headerPanel.ClientRectangle);
		}
		graphics.DrawString(monthLabel.Text, monthLabel.Font, new SolidBrush(monthLabel.ForeColor), monthLabel.Location);
		if (!yearUD.Visible)
		{
			graphics.DrawString(yearLabel.Text, yearLabel.Font, new SolidBrush(yearLabel.ForeColor), yearLabel.Location);
		}
	}

	private void headerPanel_MouseDown(object sender, MouseEventArgs e)
	{
		if (monthLabel.ClientRectangle.Contains(monthLabel.PointToClient(Control.MousePosition)))
		{
			ShowMonthPopup();
		}
		if (yearLabel.ClientRectangle.Contains(yearLabel.PointToClient(Control.MousePosition)))
		{
			yearUD.Visible = true;
			yearUD.Focus();
		}
		else
		{
			yearUD.Visible = false;
		}
	}

	private void yearUD_ValueChanged(object sender, EventArgs e)
	{
		DateTimePickerAdv.CultureSpecifiecDateTime cultureSpecifiecDateTime = new DateTimePickerAdv.CultureSpecifiecDateTime(dvalue, CurrentCalendar);
		cultureSpecifiecDateTime.Year = (int)yearUD.Value;
		cultureSpecifiecDateTime.Day = Math.Min(cultureSpecifiecDateTime.Day, cultureSpecifiecDateTime.DaysInMonth);
		Value = cultureSpecifiecDateTime.DateTime;
	}

	private void yearUD_VisibleChanged(object sender, EventArgs e)
	{
	}

	private void yearUD_Leave(object sender, EventArgs e)
	{
		yearUD.Visible = false;
	}

	private void monthLabel_MouseDown(object sender, MouseEventArgs e)
	{
		yearUD.Visible = false;
		ShowMonthPopup();
	}

	private void ShowMonthPopup()
	{
		try
		{
			if (popupParent != null)
			{
				popupParent.TogglePopup(Control.MousePosition, parentBarItem1);
				return;
			}
			if (popupMonths == null)
			{
				InitMonthsPopup();
			}
			if (popupMonths.IsShowing())
			{
				popupMonths.Hide();
				return;
			}
			popupMonths.ParentBarItem.Style = Style;
			popupMonths.Show(this, PointToClient(Control.MousePosition));
		}
		catch
		{
		}
	}

	private void yearLabel_MouseDown(object sender, MouseEventArgs e)
	{
		yearUD.Visible = true;
		yearUD.BringToFront();
		yearUD.Focus();
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if (!m_bDoubleClicked && IsLessDoubleClickTimeInterval() && m_ptLastMouseDown.Equals(Cursor.Position))
		{
			OnDoubleClick(EventArgs.Empty);
			m_bDoubleClicked = true;
		}
		else
		{
			m_bDoubleClicked = false;
		}
		m_ptLastMouseDown = Cursor.Position;
		m_tiksLastClickTime = DateTime.Now.Ticks;
		base.OnMouseDown(e);
	}

	private bool IsLessDoubleClickTimeInterval()
	{
		return DateTime.Now.Ticks - m_tiksLastClickTime <= SystemInformation.DoubleClickTime * 10000;
	}

	private void InvalidateWindow()
	{
		Syncfusion.Runtime.InteropServices.NativeMethods.RedrawWindow(base.Handle, IntPtr.Zero, IntPtr.Zero, 1281u);
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 133)
		{
			DrawingUtils.NCPaintHelper(this, this, ref m);
		}
		base.WndProc(ref m);
	}

	public IntPtr NonClientPaint(PaintEventArgs e, Rectangle displayRect, Rectangle windowRectInScreen)
	{
		Graphics graphics = e.Graphics;
		Point location = PointToScreen(new Point(0, 0));
		location.Offset(-windowRectInScreen.X, -windowRectInScreen.Y);
		Rectangle rect = new Rectangle(location, base.ClientSize);
		using (Region region = new Region(displayRect))
		{
			region.Exclude(rect);
			using Brush brush = new SolidBrush(BackColor);
			graphics.FillRegion(brush, region);
		}
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemedBorder && BorderStyle == BorderStyle.Fixed3D)
		{
			Region clip = graphics.Clip;
			graphics.ExcludeClip(rect);
			m_themedEditDrawing.DrawEditBoxBackground(graphics, displayRect, base.Enabled);
			graphics.Clip = clip;
		}
		else if (BorderSides != Border3DSide.All)
		{
			if (BorderSides != Border3DSide.Middle)
			{
				m_controlDrawing.DrawBorder(graphics, displayRect, BorderStyle, Border3DStyle, ButtonBorderStyle.Solid, BorderColor, BorderSides);
			}
		}
		else
		{
			m_controlDrawing.DrawBorder(graphics, displayRect, BorderStyle, Border3DStyle, ButtonBorderStyle.Solid, BorderColor);
		}
		return Syncfusion.Runtime.InteropServices.NativeMethods.CreateRectRgn(windowRectInScreen.Left + 2, windowRectInScreen.Top + 2, windowRectInScreen.Right - 2, windowRectInScreen.Bottom - 2);
	}

	private void OnOffice2007ThemeChanged()
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
		if (Style == VisualStyle.Office2007)
		{
			HeadForeColor = m_office2007ColorTable.MonthCalendarForeColor;
			HeaderStartColor = m_office2007ColorTable.MonthCalendarHeaderStartColor;
			HeaderEndColor = m_office2007ColorTable.MonthCalendarHeaderEndColor;
			leftButton.ArrowColor = m_office2007ColorTable.MonthCalendarForeColor;
			rightButton.ArrowColor = m_office2007ColorTable.MonthCalendarForeColor;
		}
	}

	private void ApplyOffice2007ThemeToChildren()
	{
		yearUD.ColorScheme = m_office2007Theme;
		TodayButton.Office2007ColorScheme = m_office2007Theme;
		NoneButton.Office2007ColorScheme = m_office2007Theme;
	}

	private void Office2007ManagedColorsApplied(Office2007Colors.ManagedColorsAppliedEventArgs args)
	{
		ApplyOffice2007Theme();
	}
}
