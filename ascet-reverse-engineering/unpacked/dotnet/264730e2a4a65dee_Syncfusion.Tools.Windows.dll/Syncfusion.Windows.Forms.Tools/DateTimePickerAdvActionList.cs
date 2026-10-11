using System.ComponentModel;
using System.Globalization;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class DateTimePickerAdvActionList : SyncActionListBase<DateTimePickerAdv>
{
	public string Name
	{
		get
		{
			string result = " ";
			if (base.Control != null)
			{
				DateTimePickerAdv dateTimePickerAdv = base.Control;
				result = dateTimePickerAdv.Name;
			}
			return result;
		}
		set
		{
			SetValue("Name", value);
		}
	}

	[TypeConverter(typeof(SpecificCultureInfoTypeConverter))]
	public CultureInfo Culture
	{
		get
		{
			CultureInfo result = CultureInfo.CurrentCulture;
			if (base.Control != null)
			{
				DateTimePickerAdv dateTimePickerAdv = base.Control;
				result = dateTimePickerAdv.Culture;
			}
			return result;
		}
		set
		{
			SetValue("Culture", value);
		}
	}

	public bool ShowCheckBox
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				DateTimePickerAdv dateTimePickerAdv = base.Control;
				result = dateTimePickerAdv.ShowCheckBox;
			}
			return result;
		}
		set
		{
			SetValue("ShowCheckBox", value);
		}
	}

	public bool ShowDropButton
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				DateTimePickerAdv dateTimePickerAdv = base.Control;
				result = dateTimePickerAdv.ShowDropButton;
			}
			return result;
		}
		set
		{
			SetValue("ShowDropButton", value);
		}
	}

	public bool ShowUpDown
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				DateTimePickerAdv dateTimePickerAdv = base.Control;
				result = dateTimePickerAdv.ShowUpDown;
			}
			return result;
		}
		set
		{
			SetValue("ShowUpDown", value);
		}
	}

	public bool ShowUpDownOnFocus
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				DateTimePickerAdv dateTimePickerAdv = base.Control;
				result = dateTimePickerAdv.ShowUpDownOnFocus;
			}
			return result;
		}
		set
		{
			SetValue("ShowUpDownOnFocus", value);
		}
	}

	public bool ThemesEnabled
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				DateTimePickerAdv dateTimePickerAdv = base.Control;
				result = dateTimePickerAdv.ThemesEnabled;
			}
			return result;
		}
		set
		{
			SetValue("ThemesEnabled", value);
		}
	}

	public VisualStyle Style
	{
		get
		{
			VisualStyle result = VisualStyle.Default;
			if (base.Control != null)
			{
				DateTimePickerAdv dateTimePickerAdv = base.Control;
				result = dateTimePickerAdv.Style;
			}
			return result;
		}
		set
		{
			SetValue("Style", value);
		}
	}

	public bool Checked
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				DateTimePickerAdv dateTimePickerAdv = base.Control;
				result = dateTimePickerAdv.Checked;
			}
			return result;
		}
		set
		{
			SetValue("Checked", value);
		}
	}

	public bool IsNullDate
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				DateTimePickerAdv dateTimePickerAdv = base.Control;
				result = dateTimePickerAdv.IsNullDate;
			}
			return result;
		}
		set
		{
			SetValue("IsNullDate", value);
		}
	}

	public DateTimePickerAdvActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - DateTimePickerAdv");
		AddDesignerActionHeaderItem("Design");
		AddDesignerActionPropertyItem("Name", "Name", "Design", "Indicates the Name used in code to identify the Object.");
		AddDesignerActionPropertyItem("Culture", "Culture", "Appearance", "Indicates the Current culture of the DateTimePickerAdv.");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("ShowCheckBox", "Show CheckBox", "Appearance", "Indicates if the CheckBox will be visible.");
		AddDesignerActionPropertyItem("ShowDropButton", "Show Drop Down Button", "Appearance", "Indicates if the Drop down button is visible.");
		AddDesignerActionPropertyItem("ShowUpDown", "Show UpDown Button", "Appearance", "Indicates if the Updown Buttons are visible.");
		AddDesignerActionPropertyItem("ShowUpDownOnFocus", "Show UpDown Button on Focus", "Appearance", "Indicates if the Updown will be visible when got a focus.");
		AddDesignerActionPropertyItem("ThemesEnabled", "Themes Enabled", "Appearance", "Indicates if the DateTimePickerAdv is enabled themes.");
		AddDesignerActionPropertyItem("Style", "Visual Style", "Appearance", "Indicates Office Style of the DateTimePickerAdv.");
		AddDesignerActionHeaderItem("Behavior");
		AddDesignerActionPropertyItem("Checked", "Checked State", "Behavior", "Indicates the Checked state of the DateTimePickerAdv.");
		AddDesignerActionPropertyItem("IsNullDate", "Is Null Date", "Behavior", "Indicates if there is no date selected.");
	}
}
