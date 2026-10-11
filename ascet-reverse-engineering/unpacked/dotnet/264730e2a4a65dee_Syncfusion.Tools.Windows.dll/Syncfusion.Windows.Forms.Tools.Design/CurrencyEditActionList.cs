using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class CurrencyEditActionList : SyncActionListBase<CurrencyEdit>
{
	public HorizontalAlignment TextAlign
	{
		get
		{
			HorizontalAlignment result = HorizontalAlignment.Left;
			if (base.Control != null)
			{
				CurrencyEdit currencyEdit = base.Control;
				result = currencyEdit.TextAlign;
			}
			return result;
		}
		set
		{
			SetValue("TextAlign", value);
		}
	}

	public CalculatorLayoutTypes CalculatorLayoutType
	{
		get
		{
			CalculatorLayoutTypes result = CalculatorLayoutTypes.WindowsStandard;
			if (base.Control != null)
			{
				CurrencyEdit currencyEdit = base.Control;
				result = currencyEdit.CalculatorLayoutType;
			}
			return result;
		}
		set
		{
			SetValue("CalculatorLayoutType", value);
		}
	}

	public CalculatorPopupAlignment PopupCalculatorAlignment
	{
		get
		{
			CalculatorPopupAlignment result = CalculatorPopupAlignment.Right;
			if (base.Control != null)
			{
				CurrencyEdit currencyEdit = base.Control;
				result = currencyEdit.PopupCalculatorAlignment;
			}
			return result;
		}
		set
		{
			SetValue("PopupCalculatorAlignment", value);
		}
	}

	public ButtonAppearance ButtonStyle
	{
		get
		{
			ButtonAppearance result = ButtonAppearance.Classic;
			if (base.Control != null)
			{
				CurrencyEdit currencyEdit = base.Control;
				result = currencyEdit.ButtonStyle;
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
				CurrencyEdit currencyEdit = base.Control;
				result = currencyEdit.UseVisualStyle;
			}
			return result;
		}
		set
		{
			SetValue("UseVisualStyle", value);
		}
	}

	public CalcActions CloseAction
	{
		get
		{
			CalcActions result = CalcActions.CalcOperatorEquals;
			if (base.Control != null)
			{
				CurrencyEdit currencyEdit = base.Control;
				result = currencyEdit.CloseAction;
			}
			return result;
		}
		set
		{
			SetValue("CloseAction", value);
		}
	}

	public bool TransferFromCalculator
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				CurrencyEdit currencyEdit = base.Control;
				result = currencyEdit.TransferFromCalculator;
			}
			return result;
		}
		set
		{
			SetValue("TransferFromCalculator", value);
		}
	}

	public bool TransferToCalculator
	{
		get
		{
			bool result = true;
			if (base.Control != null)
			{
				CurrencyEdit currencyEdit = base.Control;
				result = currencyEdit.TransferToCalculator;
			}
			return result;
		}
		set
		{
			SetValue("TransferToCalculator", value);
		}
	}

	public decimal DecimalValue
	{
		get
		{
			decimal result = 1.0m;
			if (base.Control != null)
			{
				CurrencyEdit currencyEdit = base.Control;
				result = currencyEdit.DecimalValue;
			}
			return result;
		}
		set
		{
			SetValue("DecimalValue", value);
		}
	}

	public CurrencyEditActionList(IComponent component)
		: base(component)
	{
	}

	protected override void InitializeActionList()
	{
		AddDesignerActionHeaderItem("Essential Tools - Currency Edit");
		AddDesignerActionHeaderItem("Appearance");
		AddDesignerActionPropertyItem("TextAlign", "Text Alignment", "Appearance", "Horizontal text alignment for the control.");
		AddDesignerActionPropertyItem("CalculatorLayoutType", "Layout Type", "Appearance", "Specifies the Calculator Layout types.");
		AddDesignerActionPropertyItem("PopupCalculatorAlignment", "Popup Calculator Alignment", "Appearance", "Gets or sets the alignment of the Popup Calculator with respect to the ButtonEdit control.");
		AddDesignerActionPropertyItem("ButtonStyle", "Button Styles", "Appearance", "Specifies the different styles of buttons");
		AddDesignerActionPropertyItem("UseVisualStyle", "Enable Visual styles", "Appearance", "Enables Visual Styles for buttons");
		AddDesignerActionHeaderItem("Behavior");
		AddDesignerActionPropertyItem("TransferFromCalculator", "Transfer From Calculator", "Behavior", "Indicates whether to transfer the calculated value to the edit control.");
		AddDesignerActionPropertyItem("TransferToCalculator", "Transfer To Calculator", "Behavior", "Indicates whether to transfer the values from the edit control to the calculator.");
		AddDesignerActionPropertyItem("CloseAction", "Close Action", "Behavior", "Enables visual styles for the buttons");
		AddDesignerActionPropertyItem("DecimalValue", "DecimalValue", "Behavior", "Gets or sets the decimal value of the control. This will be formatted and displayed.");
	}
}
