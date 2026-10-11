using System.ComponentModel;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class CalculatorControlActionList : SyncActionListBase<CalculatorControl>
{
	public CultureInfo Culture
	{
		get
		{
			CultureInfo result = new CultureInfo("en-US");
			if (base.Control != null)
			{
				CalculatorControl calculatorControl = base.Control;
				result = calculatorControl.Culture;
			}
			return result;
		}
		set
		{
			SetValue("Culture", value);
		}
	}

	public HorizontalAlignment DisplayTextAlign
	{
		get
		{
			HorizontalAlignment result = HorizontalAlignment.Right;
			if (base.Control != null)
			{
				CalculatorControl calculatorControl = base.Control;
				result = calculatorControl.DisplayTextAlign;
			}
			return result;
		}
		set
		{
			SetValue("DisplayTextAlign", value);
		}
	}

	public CalculatorLayoutTypes LayoutType
	{
		get
		{
			CalculatorLayoutTypes result = CalculatorLayoutTypes.WindowsStandard;
			if (base.Control != null)
			{
				CalculatorControl calculatorControl = base.Control;
				result = calculatorControl.LayoutType;
			}
			return result;
		}
		set
		{
			SetValue("LayoutType", value);
		}
	}

	public bool ShowDisplayArea
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				CalculatorControl calculatorControl = base.Control;
				result = calculatorControl.ShowDisplayArea;
			}
			return result;
		}
		set
		{
			SetValue("ShowDisplayArea", value);
		}
	}

	public bool ThemesEnabled
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				CalculatorControl calculatorControl = base.Control;
				result = calculatorControl.ThemesEnabled;
			}
			return result;
		}
		set
		{
			SetValue("ThemesEnabled", value);
		}
	}

	public bool RepeatAssignAction
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				CalculatorControl calculatorControl = base.Control;
				result = calculatorControl.RepeatAssignAction;
			}
			return result;
		}
		set
		{
			SetValue("RepeatAssignAction", value);
		}
	}

	public AnchorStyles Anchor
	{
		get
		{
			AnchorStyles result = AnchorStyles.Top | AnchorStyles.Left;
			if (base.Control != null)
			{
				CalculatorControl calculatorControl = base.Control;
				result = calculatorControl.Anchor;
			}
			return result;
		}
		set
		{
			SetValue("Anchor", value);
		}
	}

	public DockStyle Dock
	{
		get
		{
			DockStyle result = DockStyle.None;
			if (base.Control != null)
			{
				CalculatorControl calculatorControl = base.Control;
				result = calculatorControl.Dock;
			}
			return result;
		}
		set
		{
			SetValue("Dock", value);
		}
	}

	public ButtonAppearance ButtonStyle
	{
		get
		{
			ButtonAppearance result = ButtonAppearance.Classic;
			if (base.Control != null)
			{
				CalculatorControl calculatorControl = base.Control;
				result = calculatorControl.ButtonStyle;
			}
			return result;
		}
		set
		{
			SetValue("ButtonStyle", value);
		}
	}

	public bool UseVisualStyle
	{
		get
		{
			bool result = false;
			if (base.Control != null)
			{
				CalculatorControl calculatorControl = base.Control;
				result = calculatorControl.UseVisualStyle;
			}
			return result;
		}
		set
		{
			SetValue("UseVisualStyle", value);
		}
	}

	public CalculatorControlActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools for Windows Forms 2.0");
		AddDesignerActionPropertyItem("Culture", "Culture", "Appearance", "Specifies the Culture to be used for Calculator control.");
		AddDesignerActionPropertyItem("DisplayTextAlign", "Text Alignment", "Appearance", "Horizontal text alignment for the control.");
		AddDesignerActionPropertyItem("LayoutType", "Layout Type", "Appearance", "Specifies the Calculator Layout types.");
		AddDesignerActionPropertyItem("ShowDisplayArea", "Show/Hide Display Area", "Appearance", "Shows/Hides the text display area in the calculator.");
		AddDesignerActionPropertyItem("ThemesEnabled", "Themes Enabled", "Appearance", "Gets/Sets Themes Enabled property.");
		AddDesignerActionPropertyItem("RepeatAssignAction", "RepeatAssignAction", "Behavior", "Indicates whether the assignment action will repeat the previous action.");
		AddDesignerActionPropertyItem("Anchor", "Anchor", "Layout", "Specifies the edges of the container to which a certain control is to be bound.");
		AddDesignerActionPropertyItem("Dock", "Dock", "Layout", "Defines which borders of the control are to be bound to the container.");
		AddDesignerActionPropertyItem("ButtonStyle", "Button Styles", "Miscellaneous", "Specifies the different styles of buttons");
		AddDesignerActionPropertyItem("UseVisualStyle", "Enable Visual styles", "Miscellaneous", "Enables Visual Styles for buttons");
	}
}
