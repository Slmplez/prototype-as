using System;
using System.ComponentModel;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class MonthCalendarAdvActionList : SyncActionListBase<MonthCalendarAdv>
{
	[TypeConverter(typeof(SpecificCultureInfoTypeConverter))]
	public CultureInfo Culture
	{
		get
		{
			CultureInfo result = CultureInfo.CurrentCulture;
			if (base.Control != null)
			{
				MonthCalendarAdv monthCalendarAdv = base.Control;
				result = monthCalendarAdv.Culture;
			}
			return result;
		}
		set
		{
			SetValue("Culture", value);
		}
	}

	public VisualStyle Style
	{
		get
		{
			VisualStyle result = VisualStyle.Default;
			if (base.Control != null)
			{
				MonthCalendarAdv monthCalendarAdv = base.Control;
				result = monthCalendarAdv.Style;
			}
			return result;
		}
		set
		{
			SetValue("Style", value);
		}
	}

	public bool ThemedBorder
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				MonthCalendarAdv monthCalendarAdv = base.Control;
				result = monthCalendarAdv.ThemedBorder;
			}
			return result;
		}
		set
		{
			SetValue("ThemedBorder", value);
		}
	}

	public bool ThemedEnabledGrid
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				MonthCalendarAdv monthCalendarAdv = base.Control;
				result = monthCalendarAdv.ThemedEnabledGrid;
			}
			return result;
		}
		set
		{
			SetValue("ThemedEnabledGrid", value);
		}
	}

	public bool ThemedEnabledScrollButtons
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				MonthCalendarAdv monthCalendarAdv = base.Control;
				result = monthCalendarAdv.ThemedEnabledScrollButtons;
			}
			return result;
		}
		set
		{
			SetValue("ThemedEnabledScrollButtons", value);
		}
	}

	public bool AllowMultipleSelection
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				MonthCalendarAdv monthCalendarAdv = base.Control;
				result = monthCalendarAdv.AllowMultipleSelection;
			}
			return result;
		}
		set
		{
			SetValue("AllowMultipleSelection", value);
		}
	}

	public Day FirstDayOfWeek
	{
		get
		{
			Day result = Day.Default;
			if (base.Control != null)
			{
				MonthCalendarAdv monthCalendarAdv = base.Control;
				result = monthCalendarAdv.FirstDayOfWeek;
			}
			return result;
		}
		set
		{
			SetValue("FirstDayOfWeek", value);
		}
	}

	public DateTime[] SelectedDates
	{
		get
		{
			DateTime[] result = new DateTime[100];
			if (base.Control != null)
			{
				MonthCalendarAdv monthCalendarAdv = base.Control;
				result = monthCalendarAdv.SelectedDates;
			}
			return result;
		}
		set
		{
			SetValue("SelectedDates", value);
		}
	}

	public MonthCalendarAdvActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - MonthCalendarAdv");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("Culture", "Culture", "Appearance", "Specfies the culture for the calendar.");
		AddDesignerActionPropertyItem("Style", "Visual Style", "Appearance", "Specifies visual style for the control.");
		AddDesignerActionPropertyItem("ThemedBorder", "ThemedBorder", "Appearance", "Specifies whether border should be themed.");
		AddDesignerActionPropertyItem("ThemedEnabledGrid", "ThemedEnabledGrid", "Appearance", "Specifies whether themes should be enabled for grid..");
		AddDesignerActionPropertyItem("ThemedEnabledScrollButtons", "ShowColumnHeader", "Appearance", "Specifies whether column header should be shown or not.");
		AddDesignerActionHeaderItem("Behavior");
		AddDesignerActionPropertyItem("AllowMultipleSelection", "AllowMultipleSelection", "Behavior", "Specifies the width of the dropdown.");
		AddDesignerActionPropertyItem("FirstDayOfWeek", "First Day of Week", "Behavior", "Specfies the maximum number of items to be displayed in the combobox dropdown.");
		AddDesignerActionPropertyItem("SelectedDates", "Selected Dates", "Behavior", "Specifies whether the text in the edit portion can be changed or not.");
	}
}
