using System;
using System.ComponentModel;
using System.Drawing;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.DoubleTextBox.bmp")]
[ToolboxItem(true)]
[Description("Represents a TextBox to handle double input and validation.")]
public class DoubleTextBox : NumericTextBox
{
	private const string DEF_NULL_VALUE = "0";

	private double minValue = double.MinValue;

	private string newDoubleValue = string.Empty;

	private string oldDoubleValue = string.Empty;

	private double maxValue = double.MaxValue;

	private double initDoubleValue;

	private double enterDoubleValue;

	private double preservedDoubleValue;

	private bool m_bIsNullValue;

	private bool m_initIsNullValue;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public override string Text
	{
		get
		{
			return base.Text;
		}
		set
		{
			SetTextProperty(value);
		}
	}

	[Category("Behavior")]
	[Browsable(false)]
	[Description("Specifies if the NULLString will be used when the value is NULL.")]
	[DefaultValue(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Obsolete("This property will not be used in future.Insead Use AllowNull")]
	public new bool UseNullString
	{
		get
		{
			return base.UseNullString;
		}
		set
		{
			base.UseNullString = value;
			if (!value)
			{
				_ = m_bIsNullValue;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Data")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Browsable(true)]
	[Description("The double value of the currency control.")]
	public double DoubleValue
	{
		get
		{
			if (GetPreserveData())
			{
				return preservedDoubleValue;
			}
			return Convert.ToDouble(GetNumberValue(base.Text, 0));
		}
		set
		{
			if (!base.Initializing)
			{
				SetDoubleValue(value);
			}
			else
			{
				initDoubleValue = value;
			}
		}
	}

	[Category("Behavior")]
	[Description("Gets or sets the maximum value that can be set through the DoubleTextBox.")]
	public double MaxValue
	{
		get
		{
			return maxValue;
		}
		set
		{
			if (value < MinValue)
			{
				maxValue = double.MaxValue;
				throw new ArgumentOutOfRangeException("MaxValue", value, "MaxValue Cannot be lesser than MinValue");
			}
			maxValue = value;
			if (!IsValid(DoubleValue))
			{
				DoubleValue = value;
			}
		}
	}

	[Description("Gets or sets the minimum value that can be set through the DoubleTextBox.")]
	[Category("Behavior")]
	public double MinValue
	{
		get
		{
			return minValue;
		}
		set
		{
			if (value > MaxValue)
			{
				minValue = double.MinValue;
				throw new ArgumentOutOfRangeException("MinValue", value, "MinValue Cannot be greater than MaxValue");
			}
			minValue = value;
			if (!IsValid(DoubleValue))
			{
				DoubleValue = value;
			}
		}
	}

	[Category("PropertyChanged")]
	[Description("Occurs when the DoubleValue property is changed.")]
	public event EventHandler DoubleValueChanged;

	public DoubleTextBox()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(DoubleTextBox));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		SetDefaultValue(0.0);
		InitializeComponent();
	}

	private void InitializeComponent()
	{
		this.Multiline = false;
		base.NullString = string.Empty;
	}

	protected override void InitializeNumberTextBox()
	{
		ignoreTextChange = true;
		bool flag = false;
		if (initDoubleValue == 0.0 && AllowNull && Text == base.NullString)
		{
			flag = true;
		}
		base.InitializeNumberTextBox();
		SetNumberFormatInfoInitValues();
		if (flag)
		{
			SetNullNumberValue();
			SetTextBoxText(base.NullString);
		}
		else if (IsValid(initDoubleValue))
		{
			DoubleValue = initDoubleValue;
		}
		else
		{
			DoubleValue = MinValue;
		}
		ignoreTextChange = false;
	}

	protected override bool CheckIsZero()
	{
		if (!base.IsNull)
		{
			return DoubleValue.Equals(0.0);
		}
		return false;
	}

	protected override bool IsValidNumberValue(string doubleString)
	{
		bool result = true;
		try
		{
			double.Parse(doubleString, base.NumberFormatInfoObject);
		}
		catch
		{
			result = false;
		}
		return result;
	}

	[DocumentationExclude]
	protected int GetNumberPartLength(double numberValue)
	{
		return GetNumberPartLength(numberValue.ToString());
	}

	[DocumentationExclude]
	protected override string GetNumberValue(string formattedText, int startPosition)
	{
		double num = 0.0;
		string empty = string.Empty;
		string empty2 = string.Empty;
		empty = ((startPosition >= formattedText.Length) ? formattedText : (formattedText.Substring(0, startPosition) + formattedText.Substring(startPosition)));
		try
		{
			empty2 = RemoveFormatting(empty);
			if (empty2 == string.Empty)
			{
				empty2 = "0";
			}
			string text = string.Format(base.NumberFormatInfoObject, "{0:n}", new object[1] { double.MaxValue });
			string text2 = string.Format(base.NumberFormatInfoObject, "{0:n}", new object[1] { double.MinValue });
			if (!text.Equals(formattedText) && !text2.Equals(formattedText))
			{
				num = double.Parse(empty2, NumberStyles.Any, base.NumberFormatInfoObject);
			}
		}
		catch
		{
			rollBackOperation = true;
		}
		if (base.IsNegative && num > 0.0)
		{
			num *= -1.0;
		}
		return num.ToString();
	}

	[DocumentationExclude]
	protected override bool CheckIfNegative(string rawValue)
	{
		if (rawValue != null && rawValue != string.Empty)
		{
			double num = Convert.ToDouble(rawValue);
			if (num >= 0.0 || double.IsNaN(num))
			{
				return false;
			}
			return true;
		}
		return false;
	}

	protected override void FormatChanged(string currentText, NumberFormatInfo previousFormat)
	{
		double num = 0.0;
		if (base.Initializing)
		{
			return;
		}
		try
		{
			if (GetPreserveData())
			{
				num = DoubleValue;
				return;
			}
			currentText = currentText.Trim();
			if (currentText != string.Empty)
			{
				num = double.Parse(currentText, NumberStyles.Float, previousFormat);
			}
		}
		catch
		{
			num = Convert.ToDouble(GetNumberValue(currentText, 0));
		}
		finally
		{
			ApplyFormattingAndSetText(num.ToString());
		}
	}

	[DocumentationExclude]
	protected override string ToggleNegative(string currentText)
	{
		double num = Convert.ToDouble(currentText);
		num *= -1.0;
		if (num.Equals(0.0))
		{
			SetZeroNegative(!GetZeroNegative());
		}
		return num.ToString();
	}

	[DocumentationExclude]
	protected override string ApplyFormatting(string rawValue)
	{
		double num = 0.0;
		if (rawValue != null && rawValue != string.Empty)
		{
			num = Convert.ToDouble(rawValue);
		}
		else if (AllowNull)
		{
			return string.Format(base.NullFormat, "{0}", new object[1] { base.NullString });
		}
		return string.Format(base.NumberFormatInfoObject, "{0:n}", new object[1] { num });
	}

	private bool IsValid(double value)
	{
		bool flag = double.IsNaN(value) || double.IsInfinity(value);
		if (!flag)
		{
			flag = value >= MinValue && value <= MaxValue;
		}
		return flag;
	}

	protected bool ShouldSerializeText()
	{
		if (!(base.NullString != string.Empty))
		{
			return Text != base.NullString;
		}
		return true;
	}

	protected new void ResetText()
	{
		Text = base.DefaultValue.ToString();
	}

	protected override void SetTextProperty(string newText)
	{
		bool flag = true;
		bool flag2 = newText == null || newText == string.Empty;
		if (AllowNull && newText == base.NullString)
		{
			SetNullNumberValue();
			SetTextBoxText(base.NullString);
			return;
		}
		if (AllowNull && flag2)
		{
			flag = false;
		}
		else
		{
			try
			{
				double doubleValue = (flag2 ? double.Parse("0", NumberStyles.Number, base.NumberFormatInfoObject) : double.Parse(newText, NumberStyles.Number, base.NumberFormatInfoObject));
				SetDoubleValue(doubleValue);
			}
			catch
			{
				flag = false;
			}
		}
		if (!flag)
		{
			base.SetTextProperty(newText);
		}
	}

	protected void SetDoubleValue(double newValue)
	{
		base.SelectionStart = 0;
		SelectionLength = base.TextLength;
		if (IsValid(newValue))
		{
			base.IsNegative = newValue < 0.0;
			newValue = Math.Round(newValue, base.NumberDecimalDigits);
			preservedDoubleValue = newValue;
			SetPreserveData(preserveData: true);
			ApplyFormattingAndSetText(newValue.ToString("r"));
		}
	}

	private bool ShouldSerializeMaxValue()
	{
		if (maxValue != double.MaxValue)
		{
			return true;
		}
		return false;
	}

	private void ResetMaxValue()
	{
		MaxValue = double.MaxValue;
	}

	private bool ShouldSerializeMinValue()
	{
		if (minValue != double.MinValue)
		{
			return true;
		}
		return false;
	}

	private void ResetMinValue()
	{
		MinValue = double.MinValue;
	}

	[DocumentationExclude]
	protected override bool CheckForMinMax(string currentTextValue, bool ignoreLength)
	{
		if (base.MinMaxValidation == MinMaxValidation.OnLostFocus)
		{
			return true;
		}
		if (currentTextValue.IndexOf('-') == -1)
		{
			_ = currentTextValue.Length;
		}
		else
		{
			_ = currentTextValue.Length;
		}
		if (!double.TryParse(currentTextValue, NumberStyles.Any, base.NumberFormatInfoObject, out var result) && AllowNull)
		{
			return true;
		}
		if (result < MinValue || result > MaxValue)
		{
			return false;
		}
		return true;
	}

	protected override bool CheckNullStringIsInRange(string nullString)
	{
		if (double.TryParse(nullString, NumberStyles.Any, base.NumberFormatInfoObject, out var result))
		{
			return CheckForMinMax(result.ToString(), ignoreLength: true);
		}
		return true;
	}

	protected virtual void OnDoubleValueChanged(EventArgs e)
	{
		if (!ignoreTextChange && this.DoubleValueChanged != null)
		{
			this.DoubleValueChanged(this, e);
		}
	}

	protected override void OnTextChanged(EventArgs e)
	{
		bool flag = GetPreserveData();
		SetPreserveData(preserveData: false);
		base.OnTextChanged(e);
		OnDoubleValueChanged(e);
		OnBindableValueChanged(e);
		SetPreserveData(flag);
	}

	internal override void OnAllowNullChanged()
	{
		if (base.IsNull)
		{
			if (AllowNull)
			{
				SetNullNumberValue();
				SetTextBoxText(base.NullString);
			}
			else
			{
				string rawValue = ((MinValue < 0.0) ? "0" : MinValue.ToString());
				ApplyFormattingAndSetText(rawValue);
			}
		}
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		base.OnKeyDown(e);
	}

	protected override void OnEnter(EventArgs args)
	{
		enterDoubleValue = DoubleValue;
		base.OnEnter(args);
	}

	protected override void OnValidating(CancelEventArgs e)
	{
		newDoubleValue = Text;
		double doubleValue = DoubleValue;
		if ((!AllowNull || !(Text == base.NullString)) && (DoubleValue < MinValue || DoubleValue > MaxValue))
		{
			string formattedText = FormattedText;
			switch (base.OnValidationFailed)
			{
			case OnValidationFailed.SetNullString:
				if (AllowNull)
				{
					SetNullNumberValue();
					SetTextBoxText(base.NullString);
				}
				else
				{
					Focus();
					base.SelectionStart = Text.Length;
				}
				break;
			case OnValidationFailed.SetMinOrMax:
				doubleValue = ((doubleValue < MinValue) ? MinValue : doubleValue);
				doubleValue = ((doubleValue > MaxValue) ? MaxValue : doubleValue);
				DoubleValue = doubleValue;
				break;
			case OnValidationFailed.KeepFocus:
				Focus();
				base.SelectionStart = Text.Length;
				break;
			}
			RaiseValidationError(formattedText, 0, "Current value does not meet MinValue and MaxValue requirements.");
		}
		oldDoubleValue = Text;
		base.OnValidating(e);
	}

	protected override void OnValidated(EventArgs e)
	{
		base.OnValidated(e);
		OnControlValidated(newDoubleValue, oldDoubleValue);
	}

	protected override void SetNullNumberValue()
	{
		preservedDoubleValue = 0.0;
		SetPreserveData(preserveData: true);
	}

	protected override bool IsAssignable(object val)
	{
		if (val == null || Convert.IsDBNull(val))
		{
			return false;
		}
		return typeof(double).IsAssignableFrom(val.GetType());
	}

	protected override void SetValue(object val)
	{
		DoubleValue = (double)val;
	}

	protected override object GetValue()
	{
		return DoubleValue;
	}

	[DocumentationExclude]
	protected override bool HandleBackspaceKey()
	{
		if (CheckIsZero() && AllowNull)
		{
			SetNullNumberValue();
			SetTextBoxText(base.NullString);
			return true;
		}
		return base.HandleBackspaceKey();
	}

	[DocumentationExclude]
	protected override bool HandleDeleteKey()
	{
		if (CheckIsZero() && AllowNull)
		{
			SetNullNumberValue();
			SetTextBoxText(base.NullString);
			return true;
		}
		return base.HandleDeleteKey();
	}

	[DocumentationExclude]
	protected override bool HandleDecimalKey()
	{
		_ = base.SelectionStart;
		string currentText = base.Text;
		int decimalSeparatorPosition = GetDecimalSeparatorPosition(currentText);
		if (decimalSeparatorPosition != -1)
		{
			decimalSeparatorPosition++;
			SetEmptySelection(decimalSeparatorPosition);
		}
		else
		{
			if (!base.IsNull || base.NumberFormatInfoObject.CurrencyDecimalDigits <= 0)
			{
				return false;
			}
			m_bDecimalMode = true;
		}
		return true;
	}

	protected override NumberModifyState HandleSubtractKey()
	{
		NumberModifyState result = base.HandleSubtractKey();
		if (base.DeleteSelectionOnNegative)
		{
			SetEmptySelection(GetDecimalSeparatorPosition(GetTextBoxText()));
		}
		return result;
	}

	protected override NumberModifyState PrepareInsertString(string currentText, int startPosition, int selectionLength, string textToBeInserted, bool pasteOperation)
	{
		if (DoubleValue == 0.0)
		{
			currentText = currentText.Substring(0, startPosition + selectionLength);
		}
		return base.PrepareInsertString(currentText, startPosition, selectionLength, textToBeInserted, pasteOperation);
	}
}
