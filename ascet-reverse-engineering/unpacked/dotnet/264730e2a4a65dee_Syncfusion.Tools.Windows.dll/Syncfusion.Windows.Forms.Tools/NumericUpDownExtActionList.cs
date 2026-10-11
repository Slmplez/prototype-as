using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class NumericUpDownExtActionList : SyncActionListBase<NumericUpDownExt>
{
	public string Name
	{
		get
		{
			string result = " ";
			if (base.Control != null)
			{
				NumericUpDownExt numericUpDownExt = base.Control;
				result = numericUpDownExt.Name;
			}
			return result;
		}
		set
		{
			SetValue("Name", value);
		}
	}

	public decimal Value
	{
		get
		{
			decimal result = 0m;
			if (base.Control != null)
			{
				NumericUpDownExt numericUpDownExt = base.Control;
				result = numericUpDownExt.Value;
			}
			return result;
		}
		set
		{
			SetValue("Value", value);
		}
	}

	public HorizontalAlignment TextAlign
	{
		get
		{
			HorizontalAlignment result = HorizontalAlignment.Left;
			if (base.Control != null)
			{
				NumericUpDownExt numericUpDownExt = base.Control;
				result = numericUpDownExt.TextAlign;
			}
			return result;
		}
		set
		{
			SetValue("TextAlign", value);
		}
	}

	public bool ThemedBorder
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				NumericUpDownExt numericUpDownExt = base.Control;
				result = numericUpDownExt.ThemedBorder;
			}
			return result;
		}
		set
		{
			SetValue("ThemedBorder", value);
		}
	}

	public LeftRightAlignment UpDownAlign
	{
		get
		{
			LeftRightAlignment result = LeftRightAlignment.Right;
			if (base.Control != null)
			{
				NumericUpDownExt numericUpDownExt = base.Control;
				result = numericUpDownExt.UpDownAlign;
			}
			return result;
		}
		set
		{
			SetValue("UpDownAlign", value);
		}
	}

	public bool ThemesEnabled
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				NumericUpDownExt numericUpDownExt = base.Control;
				result = numericUpDownExt.ThemesEnabled;
			}
			return result;
		}
		set
		{
			SetValue("ThemesEnabled", value);
		}
	}

	public bool Hexadecimal
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				NumericUpDownExt numericUpDownExt = base.Control;
				result = numericUpDownExt.Hexadecimal;
			}
			return result;
		}
		set
		{
			SetValue("Hexadecimal", value);
		}
	}

	public int DecimalPlaces
	{
		get
		{
			int result = 0;
			if (base.Control != null)
			{
				NumericUpDownExt numericUpDownExt = base.Control;
				result = numericUpDownExt.DecimalPlaces;
			}
			return result;
		}
		set
		{
			SetValue("DecimalPlaces", value);
		}
	}

	public decimal Increment
	{
		get
		{
			decimal result = 1m;
			if (base.Control != null)
			{
				NumericUpDownExt numericUpDownExt = base.Control;
				result = numericUpDownExt.Increment;
			}
			return result;
		}
		set
		{
			SetValue("Increment", value);
		}
	}

	public decimal Maximum
	{
		get
		{
			decimal result = 100m;
			if (base.Control != null)
			{
				NumericUpDownExt numericUpDownExt = base.Control;
				result = numericUpDownExt.Maximum;
			}
			return result;
		}
		set
		{
			SetValue("Maximum", value);
		}
	}

	public decimal Minimum
	{
		get
		{
			decimal result = 0m;
			if (base.Control != null)
			{
				NumericUpDownExt numericUpDownExt = base.Control;
				result = numericUpDownExt.Minimum;
			}
			return result;
		}
		set
		{
			SetValue("Minimum", value);
		}
	}

	public bool ThousandsSeparator
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				NumericUpDownExt numericUpDownExt = base.Control;
				result = numericUpDownExt.ThousandsSeparator;
			}
			return result;
		}
		set
		{
			SetValue("ThousandsSeparator", value);
		}
	}

	public NumericUpDownExtActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - NumericUpDownExt");
		AddDesignerActionPropertyItem("Name", "Name", "Design", "Indicates the Name used in code to identify the Object.");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("ThemesEnabled", "ThemesEnabled", "Appearance", "Specifies whether XP Themes (visual styles) should be used for this control when available.");
		AddDesignerActionPropertyItem("ThemedBorder", "Themed Border", "Appearance", "Specifies whether or not you want themed border around the control when themes are enabled.");
		AddDesignerActionPropertyItem("Hexadecimal", "HexaDecimal", "Appearance", " Gets or sets a value indicating whether the Numeric UpDown should display the value it contains in hexadecimal format.");
		AddDesignerActionPropertyItem("Value", "Value", "Appearance", "The current value of the Numeric UpDown control.");
		AddDesignerActionPropertyItem("TextAlign", "Text Alignment", "Appearance", "Gets or sets the alignment of the text.");
		AddDesignerActionPropertyItem("UpDownAlign", "UpDown Align", "Appearance", "Gets or sets the alignment of the up and down buttons on the control.");
		AddDesignerActionHeaderItem("Data");
		AddDesignerActionPropertyItem("ThousandsSeparator", "Thousands Separator", "Data", "  Gets or sets a value indicating whether a thousands separator is displayed in the Numeric UpDown.");
		AddDesignerActionPropertyItem("DecimalPlaces", "Decimal Places", "Data", " Gets or sets the number of decimal places to display in the Numeric UpDown. ");
		AddDesignerActionPropertyItem("Increment", "Increment", "Data", " Gets or sets the value to increment or decrement the Numeric UpDown.");
		AddDesignerActionPropertyItem("Maximum", "Maximum", "Data", "  Gets or sets the maximum value for the Numeric UpDown");
		AddDesignerActionPropertyItem("Minimum", "Minimum", "Data", " Gets or sets the minimum allowed value for the Numeric UpDown.");
	}
}
