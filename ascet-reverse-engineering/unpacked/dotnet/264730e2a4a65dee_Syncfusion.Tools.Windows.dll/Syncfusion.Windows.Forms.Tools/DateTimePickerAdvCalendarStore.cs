using System;
using System.Drawing;
using System.Globalization;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class DateTimePickerAdvCalendarStore
{
	private Font font;

	private Color foreColor;

	private Color monthBackground;

	private Size size;

	private Color titleBackColor;

	private Color titleForeColor;

	private Color trailingForeColor;

	private CultureInfo culture;

	private DateTime minDate;

	private DateTime maxDate;

	private bool themedEnabledGrid;

	private bool themedEnabledScrollButtons;

	private Size popupSize;

	private ImageList imageList;

	private bool noneEnabled = true;

	private bool sizeToFit = true;

	private bool enableNullDate = true;

	public bool EnableNullDate
	{
		get
		{
			return enableNullDate;
		}
		set
		{
			enableNullDate = value;
		}
	}

	public bool SizeToFit
	{
		get
		{
			return sizeToFit;
		}
		set
		{
			sizeToFit = value;
		}
	}

	public bool NoneEnabled
	{
		get
		{
			return noneEnabled;
		}
		set
		{
			noneEnabled = value;
		}
	}

	public ImageList ImageList
	{
		get
		{
			return imageList;
		}
		set
		{
			imageList = value;
		}
	}

	public Size PopupSize
	{
		get
		{
			return popupSize;
		}
		set
		{
			popupSize = value;
		}
	}

	public bool ThemedEnabledGrid
	{
		get
		{
			return themedEnabledGrid;
		}
		set
		{
			themedEnabledGrid = value;
		}
	}

	public bool ThemedEnabledScrollButtons
	{
		get
		{
			return themedEnabledScrollButtons;
		}
		set
		{
			themedEnabledScrollButtons = value;
		}
	}

	public DateTime MaxDate
	{
		get
		{
			return maxDate;
		}
		set
		{
			maxDate = value;
		}
	}

	public DateTime MinDate
	{
		get
		{
			return minDate;
		}
		set
		{
			minDate = value;
		}
	}

	public CultureInfo Culture
	{
		get
		{
			return culture;
		}
		set
		{
			culture = value;
		}
	}

	public Font Font
	{
		get
		{
			return font;
		}
		set
		{
			font = value;
		}
	}

	public Color ForeColor
	{
		get
		{
			return foreColor;
		}
		set
		{
			foreColor = value;
		}
	}

	public Color MonthBackground
	{
		get
		{
			return monthBackground;
		}
		set
		{
			monthBackground = value;
		}
	}

	public Size Size
	{
		get
		{
			return size;
		}
		set
		{
			size = value;
		}
	}

	public Color TitleBackColor
	{
		get
		{
			return titleBackColor;
		}
		set
		{
			titleBackColor = value;
		}
	}

	public Color TitleForeColor
	{
		get
		{
			return titleForeColor;
		}
		set
		{
			titleForeColor = value;
		}
	}

	public Color TrailingForeColor
	{
		get
		{
			return trailingForeColor;
		}
		set
		{
			trailingForeColor = value;
		}
	}
}
