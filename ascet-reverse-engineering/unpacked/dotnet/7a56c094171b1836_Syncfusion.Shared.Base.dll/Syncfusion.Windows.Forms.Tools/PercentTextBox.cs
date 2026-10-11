using System;
using System.ComponentModel;
using System.Drawing;
using System.Globalization;
using System.Text.RegularExpressions;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(true)]
[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.PercentTextBox.bmp")]
[Description("Represents a TextBox to handle percentage input and validation.")]
public class PercentTextBox : NumberTextBoxBase
{
	private Container components;

	private PercentTextBoxMode internalMode;

	private double minValue = -100.0;

	private double maxValue = 100.0;

	private string internalValue = string.Empty;

	private bool returnActualText;

	private bool switchModeOnFocus;

	private double initDoubleValue;

	private double enterDoubleValue;

	private double preservedDoubleValue;

	private int initPercentDecimalDigits = -1;

	private string initPercentDecimalSeparator;

	private string oldDoubleValue = string.Empty;

	private string newDoubleValue = string.Empty;

	private string initPercentGroupSeparator;

	private int[] initPercentGroupSizes;

	private int initPercentNegativePattern = -1;

	private int initPercentPositivePattern = -1;

	private string initPercentSymbol;

	private string[] percentNegativePatterns;

	[Description("Gets / sets the percent symbol to be used in the PercentTextBox.")]
	[Category("Appearance")]
	[Localizable(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	public string PercentSymbol
	{
		get
		{
			return base.NumberFormatInfoObject.PercentSymbol;
		}
		set
		{
			if (!base.Initializing)
			{
				string textBoxText = GetTextBoxText();
				NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
				base.NumberFormatInfoObject.PercentSymbol = value;
				FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
			}
			else
			{
				initPercentSymbol = value;
				base.NumberFormatInfoObject.PercentSymbol = value;
			}
		}
	}

	[Browsable(true)]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Localizable(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Gets / sets the pattern to use when the value is positive.")]
	public int PercentPositivePattern
	{
		get
		{
			return base.NumberFormatInfoObject.PercentPositivePattern;
		}
		set
		{
			if (!base.Initializing)
			{
				string textBoxText = GetTextBoxText();
				NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
				base.NumberFormatInfoObject.PercentPositivePattern = value;
				FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
			}
			else
			{
				initPercentPositivePattern = value;
				base.NumberFormatInfoObject.PercentPositivePattern = value;
			}
		}
	}

	[Description("Gets / sets the maximum number of digits for the decimal portion of the percentage.")]
	[Browsable(true)]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Localizable(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public int PercentDecimalDigits
	{
		get
		{
			return base.NumberFormatInfoObject.PercentDecimalDigits;
		}
		set
		{
			if (!base.Initializing)
			{
				string textBoxText = GetTextBoxText();
				NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
				base.NumberFormatInfoObject.PercentDecimalDigits = value;
				FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
			}
			else
			{
				initPercentDecimalDigits = value;
				base.NumberFormatInfoObject.PercentDecimalDigits = value;
			}
		}
	}

	[Description("Gets / sets the decimal separator character that will be used for the display.")]
	[Localizable(false)]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public string PercentDecimalSeparator
	{
		get
		{
			return base.NumberFormatInfoObject.PercentDecimalSeparator;
		}
		set
		{
			if (!char.IsLetterOrDigit(value, 0) && value.Length == 1)
			{
				if (!base.Initializing)
				{
					string textBoxText = GetTextBoxText();
					NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
					base.NumberFormatInfoObject.PercentDecimalSeparator = value;
					FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
				}
				else
				{
					initPercentDecimalSeparator = value;
					base.NumberFormatInfoObject.PercentDecimalSeparator = value;
				}
			}
		}
	}

	[Localizable(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Gets / sets the separator to be used for grouping digits.")]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	public string PercentGroupSeparator
	{
		get
		{
			return base.NumberFormatInfoObject.PercentGroupSeparator;
		}
		set
		{
			if (!base.Initializing)
			{
				string textBoxText = GetTextBoxText();
				NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
				base.NumberFormatInfoObject.PercentGroupSeparator = value;
				FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
			}
			else
			{
				initPercentGroupSeparator = value;
				base.NumberFormatInfoObject.PercentGroupSeparator = value;
			}
		}
	}

	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Gets / sets the grouping of PercentDigits in the PercentTextBox.")]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Localizable(false)]
	public int[] PercentGroupSizes
	{
		get
		{
			return base.NumberFormatInfoObject.PercentGroupSizes;
		}
		set
		{
			if (!base.Initializing)
			{
				string textBoxText = GetTextBoxText();
				NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
				base.NumberFormatInfoObject.PercentGroupSizes = value;
				FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
			}
			else
			{
				initPercentGroupSizes = value;
				base.NumberFormatInfoObject.PercentGroupSizes = value;
			}
		}
	}

	[Description("Gets / sets the pattern to use when the value is negative.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Browsable(true)]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Localizable(false)]
	public int PercentNegativePattern
	{
		get
		{
			return base.NumberFormatInfoObject.PercentNegativePattern;
		}
		set
		{
			if (!base.Initializing)
			{
				string textBoxText = GetTextBoxText();
				NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
				base.NumberFormatInfoObject.PercentNegativePattern = value;
				FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
			}
			else
			{
				initPercentNegativePattern = value;
				base.NumberFormatInfoObject.PercentNegativePattern = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Description("The negative patterns.")]
	protected string[] PercentNegativePatterns
	{
		get
		{
			return percentNegativePatterns;
		}
		set
		{
			percentNegativePatterns = value;
		}
	}

	[Description("Specifies if the mode is to be automatically switched on focus.")]
	[DefaultValue(false)]
	public bool SwitchModeOnFocus
	{
		get
		{
			return switchModeOnFocus;
		}
		set
		{
			switchModeOnFocus = value;
			if (!value)
			{
				ChangeMode(PercentTextBoxMode.PercentMode);
			}
		}
	}

	[Category("Behavior")]
	[Description("Gets / sets the maximum value that can be set through the PercentTextBox.")]
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
			if (value >= -1.7976931348623156E+306 && value <= 1.7976931348623156E+306)
			{
				maxValue = value;
			}
			if (!CheckForMinMax(DoubleValue.ToString()))
			{
				DoubleValue = value;
			}
		}
	}

	[Description("Gets / sets the minimum value that can be set through the PercentTextBox.")]
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
			if (value >= -1.7976931348623156E+306 && value <= 1.7976931348623156E+306)
			{
				minValue = value;
			}
			if (!CheckForMinMax(DoubleValue.ToString()))
			{
				DoubleValue = value;
			}
		}
	}

	[Browsable(true)]
	[Category("Data")]
	[Description("The double value of the PercentTextBox control.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public double DoubleValue
	{
		get
		{
			double result = 0.0;
			if (internalMode == PercentTextBoxMode.NumberMode)
			{
				internalValue = GetTextBoxText();
				double.TryParse(internalValue, NumberStyles.Number, base.NumberFormatInfoObject, out result);
			}
			else
			{
				internalValue = GetNumberValue(GetTextBoxText(), 0);
				double.TryParse(internalValue, NumberStyles.Number, base.NumberFormatInfoObject, out result);
				result /= 100.0;
			}
			return result;
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

	[Description("The double value of the PercentTextBox control.")]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Category("Data")]
	public double PercentValue
	{
		get
		{
			return DoubleValue * 100.0;
		}
		set
		{
			DoubleValue = value / 100.0;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Wrapper property that indicates the PercentValue. Can be set to NULL.")]
	[Bindable(true)]
	[Category("Behavior")]
	public object BindablePercentValue
	{
		get
		{
			if (base.IsNull)
			{
				return null;
			}
			return PercentValue;
		}
		set
		{
			try
			{
				bool flag = false;
				if ((value == DBNull.Value || value == null) && !RaiseSetNull(value))
				{
					SetNullNumberValue();
					SetTextBoxText(base.NullString);
					flag = true;
				}
				if (!flag)
				{
					if (!IsAssignable(value))
					{
						throw new ArgumentException();
					}
					SetPercentValue(value);
				}
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex.Message);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public override string Text
	{
		get
		{
			if (base.ReturnBaseText)
			{
				return base.Text;
			}
			if (base.IsNull && AllowNull)
			{
				return base.NullString;
			}
			return FormattedText;
		}
		set
		{
			SetTextProperty(value);
		}
	}

	[DefaultValue(false)]
	[Description("Specify whether the TextBox can be empty ")]
	[Category("Behavior")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public override bool AllowNull
	{
		get
		{
			return base.AllowNull;
		}
		set
		{
			if (base.AllowNull != value)
			{
				base.AllowNull = value;
			}
			if (!value && base.IsNull)
			{
				SetTextBoxText(FormattedText);
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Category("Appearance")]
	public override string FormattedText
	{
		get
		{
			string empty = string.Empty;
			if (internalMode == PercentTextBoxMode.NumberMode)
			{
				internalValue = GetTextBoxText();
			}
			else
			{
				internalValue = GetNumberValue(GetTextBoxText(), 0);
			}
			empty = internalValue;
			if (!returnActualText)
			{
				empty = GetFormattedText(internalValue, PercentTextBoxMode.PercentMode);
			}
			return empty;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Category("Appearance")]
	public override string ClipText
	{
		get
		{
			if (internalMode == PercentTextBoxMode.NumberMode)
			{
				internalValue = GetTextBoxText();
			}
			else
			{
				internalValue = GetNumberValue(GetTextBoxText(), 0);
			}
			string formattedText = GetFormattedText(internalValue, PercentTextBoxMode.PercentMode);
			return RemoveFormatting(formattedText);
		}
	}

	[Category("PropertyChanged")]
	[Description("Occurs when the DoubleValue property is changed.")]
	public event EventHandler DoubleValueChanged;

	[Category("Property Changed")]
	[Description("Occurs when the BindablePercentValue property is changed.")]
	public event EventHandler BindablePercentValueChanged;

	public PercentTextBox()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(PercentTextBox));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		SetDefaultValue(0.0);
		percentNegativePatterns = new string[3] { "^-(.*) (<PercentSymbol>){0,<PercentSymbolLength>}$", "^-(.*)(<PercentSymbol>){0,<PercentSymbolLength>}$", "^-(<PercentSymbol>){0,<PercentSymbolLength>}(.*)" };
		InitializeComponent();
		base.NullString = $"{string.Empty:P}";
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.Multiline = false;
	}

	protected override void InitializeNumberTextBox()
	{
		bool flag = base.ReturnBaseText;
		base.ReturnBaseText = true;
		ignoreTextChange = true;
		bool flag2 = false;
		if (AllowNull && initDoubleValue.Equals(0.0) && (Text == base.NullString || Text == string.Empty))
		{
			flag2 = true;
		}
		base.InitializeNumberTextBox();
		SetNumberFormatInfoInitValues();
		if (initDoubleValue != 0.0)
		{
			DoubleValue = initDoubleValue;
		}
		else if (flag2)
		{
			SetNullNumberValue();
			SetTextBoxText(base.NullString);
		}
		ignoreTextChange = false;
		base.ReturnBaseText = flag;
	}

	private bool ContainsNumbers(string s)
	{
		Match match = null;
		match = Regex.Match(s, "[0-9]");
		if (match.Success)
		{
			return true;
		}
		return false;
	}

	protected override string RemoveFormatting(string formattedText, NumberFormatInfo info, bool padIfEmpty)
	{
		string text = formattedText;
		if (ContainsNumbers(PercentSymbol))
		{
			text = formattedText.Replace(PercentSymbol, "");
		}
		if (text.IndexOf(PercentSymbol) >= 0 && PercentSymbol != string.Empty && PercentSymbol != "")
		{
			text = text.Replace(PercentSymbol, "");
		}
		return base.RemoveFormatting(text, info, padIfEmpty);
	}

	private void SetNumberFormatInfoInitValues()
	{
		NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
		bool flag = false;
		if (initPercentDecimalDigits != -1)
		{
			base.NumberFormatInfoObject.PercentDecimalDigits = initPercentDecimalDigits;
			flag = true;
		}
		if (initPercentDecimalSeparator != null && initPercentGroupSeparator != null)
		{
			if (initPercentDecimalSeparator != initPercentGroupSeparator)
			{
				base.NumberFormatInfoObject.PercentDecimalSeparator = initPercentDecimalSeparator;
				base.NumberFormatInfoObject.NumberDecimalSeparator = initPercentDecimalSeparator;
				base.NumberFormatInfoObject.PercentGroupSeparator = initPercentGroupSeparator;
				base.NumberFormatInfoObject.NumberGroupSeparator = initPercentGroupSeparator;
				flag = true;
			}
		}
		else
		{
			if (initPercentDecimalSeparator != null && initPercentDecimalSeparator != base.NumberFormatInfoObject.PercentGroupSeparator)
			{
				base.NumberFormatInfoObject.PercentDecimalSeparator = initPercentDecimalSeparator;
				base.NumberFormatInfoObject.NumberDecimalSeparator = initPercentDecimalSeparator;
				flag = true;
			}
			if (initPercentGroupSeparator != null && initPercentGroupSeparator != base.NumberFormatInfoObject.PercentDecimalSeparator)
			{
				base.NumberFormatInfoObject.PercentGroupSeparator = initPercentGroupSeparator;
				base.NumberFormatInfoObject.NumberGroupSeparator = initPercentGroupSeparator;
				flag = true;
			}
		}
		if (initPercentGroupSizes != null)
		{
			base.NumberFormatInfoObject.PercentGroupSizes = initPercentGroupSizes;
			flag = true;
		}
		if (initPercentNegativePattern != -1)
		{
			base.NumberFormatInfoObject.PercentNegativePattern = initPercentNegativePattern;
			flag = true;
		}
		if (initPercentPositivePattern != -1)
		{
			base.NumberFormatInfoObject.PercentPositivePattern = initPercentPositivePattern;
			flag = true;
		}
		if (initPercentSymbol != null)
		{
			base.NumberFormatInfoObject.PercentSymbol = initPercentSymbol;
			flag = true;
		}
		if (base.UseUserOverride)
		{
			CultureInfo cultureInfo = new CultureInfo(CultureInfo.CurrentCulture.LCID, useUserOverride: false);
			if (base.NumberFormatInfoObject.CurrencyDecimalSeparator == base.NumberFormatInfoObject.NumberGroupSeparator || base.NumberFormatInfoObject.CurrencyGroupSeparator == base.NumberFormatInfoObject.NumberDecimalSeparator)
			{
				base.NumberFormatInfoObject.CurrencyDecimalSeparator = cultureInfo.NumberFormat.CurrencyDecimalSeparator;
				base.NumberFormatInfoObject.NumberGroupSeparator = cultureInfo.NumberFormat.NumberGroupSeparator;
				base.NumberFormatInfoObject.CurrencyGroupSeparator = cultureInfo.NumberFormat.CurrencyGroupSeparator;
				base.NumberFormatInfoObject.NumberDecimalSeparator = cultureInfo.NumberFormat.NumberDecimalSeparator;
				flag = true;
			}
		}
		if (flag)
		{
			FormatChanged(GetTextBoxText(), copyOfCurrentNumberFormatInfo);
		}
	}

	private bool ShouldSerializePercentSymbol()
	{
		if (!base.Culture.NumberFormat.PercentSymbol.Equals(PercentSymbol))
		{
			return true;
		}
		return false;
	}

	private void ResetPercentSymbol()
	{
		PercentSymbol = base.Culture.NumberFormat.PercentSymbol;
	}

	private bool ShouldSerializePercentPositivePattern()
	{
		if (base.Culture.NumberFormat.PercentPositivePattern != PercentPositivePattern)
		{
			return true;
		}
		return false;
	}

	private void ResetPercentPositivePattern()
	{
		PercentPositivePattern = base.Culture.NumberFormat.PercentPositivePattern;
	}

	[DocumentationExclude]
	protected override bool CheckIfNegative(string rawValue)
	{
		try
		{
			if (rawValue != null && rawValue != string.Empty)
			{
				double.TryParse(rawValue, NumberStyles.Number, base.NumberFormatInfoObject, out var result);
				if (result >= 0.0)
				{
					return false;
				}
				return true;
			}
		}
		catch
		{
		}
		return false;
	}

	private bool ShouldSerializePercentDecimalDigits()
	{
		if (base.Culture.NumberFormat.PercentDecimalDigits != PercentDecimalDigits)
		{
			return true;
		}
		return false;
	}

	private void ResetPercentDecimalDigits()
	{
		PercentDecimalDigits = base.Culture.NumberFormat.PercentDecimalDigits;
	}

	protected bool ShouldSerializePercentDecimalSeparator()
	{
		if (base.Culture.NumberFormat.PercentDecimalSeparator != PercentDecimalSeparator)
		{
			return true;
		}
		return false;
	}

	private void ResetPercentDecimalSeparator()
	{
		PercentDecimalSeparator = base.Culture.NumberFormat.PercentDecimalSeparator;
	}

	protected bool ShouldSerializePercentGroupSeparator()
	{
		if (base.Culture.NumberFormat.PercentGroupSeparator != PercentGroupSeparator)
		{
			return true;
		}
		return false;
	}

	private void ResetPercentGroupSeparator()
	{
		PercentGroupSeparator = base.Culture.NumberFormat.PercentGroupSeparator;
	}

	protected bool ShouldSerializePercentGroupSizes()
	{
		if (base.Culture.NumberFormat.PercentGroupSizes.Length == PercentGroupSizes.Length)
		{
			for (int i = 0; i < base.Culture.NumberFormat.PercentGroupSizes.Length; i++)
			{
				if (!base.Culture.NumberFormat.PercentGroupSizes[i].Equals(PercentGroupSizes[i]))
				{
					return true;
				}
			}
		}
		return false;
	}

	private void ResetPercentGroupSizes()
	{
		PercentGroupSizes = base.Culture.NumberFormat.PercentGroupSizes;
	}

	private bool ShouldSerializePercentNegativePattern()
	{
		if (base.Culture.NumberFormat.PercentNegativePattern != PercentNegativePattern)
		{
			return true;
		}
		return false;
	}

	private void ResetPercentNegativePattern()
	{
		PercentNegativePattern = base.Culture.NumberFormat.PercentNegativePattern;
	}

	protected override void OnEnter(EventArgs args)
	{
		enterDoubleValue = DoubleValue;
		if (SwitchModeOnFocus && !base.ReadOnly && internalMode == PercentTextBoxMode.PercentMode)
		{
			ChangeMode(PercentTextBoxMode.NumberMode);
		}
		base.OnEnter(args);
	}

	protected override void OnLeave(EventArgs args)
	{
		base.OnLeave(args);
		if (SwitchModeOnFocus && !base.ReadOnly && internalMode == PercentTextBoxMode.NumberMode)
		{
			ChangeMode(PercentTextBoxMode.PercentMode);
		}
	}

	[DocumentationExclude]
	protected override string ApplyFormatting(string rawValue)
	{
		return GetFormattedText(rawValue, internalMode);
	}

	private string GetFormattedText(string incomingValue, PercentTextBoxMode mode)
	{
		string empty = string.Empty;
		double result = 0.0;
		string text = ((incomingValue[0] == '-') ? incomingValue : base.RemoveFormatting(incomingValue));
		bool flag = false;
		if (text != null && text != string.Empty)
		{
			flag = double.TryParse(text, NumberStyles.Any, base.NumberFormatInfoObject, out result);
			if (!flag)
			{
				result = 0.0;
			}
		}
		if (!base.IsNull || flag)
		{
			if (mode == PercentTextBoxMode.NumberMode)
			{
				return internalValue;
			}
			return (result / 100.0).ToString("P", base.NumberFormatInfoObject);
		}
		if (mode == PercentTextBoxMode.NumberMode)
		{
			return internalValue;
		}
		return string.Format(base.NullFormat, "{0}", new object[1] { base.NullString });
	}

	[DocumentationExclude]
	protected override string ToggleNegative(string currentText)
	{
		double.TryParse(currentText, NumberStyles.Number, base.NumberFormatInfoObject, out var result);
		result *= -1.0;
		if (result.Equals(0.0))
		{
			SetZeroNegative(!GetZeroNegative());
		}
		return result.ToString();
	}

	[DocumentationExclude]
	protected override string GetDecimalSeparator(NumberFormatInfo info)
	{
		return info.PercentDecimalSeparator;
	}

	[DocumentationExclude]
	protected override string GetGroupSeparator(NumberFormatInfo info)
	{
		return info.PercentGroupSeparator;
	}

	protected override bool ParseForNegativeFormat(string currentText, NumberFormatInfo info)
	{
		string text = null;
		Match match = null;
		string text2 = info.PercentSymbol;
		_ = info.PercentSymbol.Length;
		if (text2 == "%")
		{
			text2 = "\\" + text2;
		}
		else if (text2 == string.Empty)
		{
			text2 = "\\%";
		}
		if (PercentNegativePatterns != null)
		{
			string[] array = PercentNegativePatterns;
			foreach (string input in array)
			{
				text = Regex.Replace(input, "<PercentSymbol>", text2);
				text = Regex.Replace(text, "<PercentSymbolLength>", text2.Length.ToString());
				match = Regex.Match(currentText, text);
				if (match.Success)
				{
					return true;
				}
			}
		}
		return false;
	}

	[DocumentationExclude]
	protected override int GetDecimalDigits()
	{
		return base.NumberFormatInfoObject.PercentDecimalDigits;
	}

	protected override void FormatChanged(string currentText, NumberFormatInfo previousFormat)
	{
		double num = 0.0;
		string s = RemoveFormatting(currentText, previousFormat);
		if (!base.Initializing)
		{
			if (double.TryParse(s, NumberStyles.Number, previousFormat, out var result))
			{
				num = result;
			}
			ApplyFormattingAndSetText(num.ToString());
		}
	}

	private void ChangeMode(PercentTextBoxMode newMode)
	{
		if (internalMode != newMode)
		{
			string empty = string.Empty;
			internalMode = newMode;
			internalValue = GetNumberValue(GetTextBoxText(), 0);
			if (internalValue == string.Empty)
			{
				internalValue = "0" + base.NumberFormatInfoObject.PercentDecimalSeparator + "0";
			}
			else
			{
				empty = internalValue;
				empty = RemoveFormatting(empty);
				internalValue = empty;
			}
			double.TryParse(internalValue, NumberStyles.Any, base.NumberFormatInfoObject, out var result);
			result = ((newMode != PercentTextBoxMode.PercentMode) ? (result / 100.0) : (result * 100.0));
			internalValue = string.Format(base.NumberFormatInfoObject, "{0}", new object[1] { result });
			if (newMode == PercentTextBoxMode.NumberMode && internalValue.IndexOf(base.NumberFormatInfoObject.PercentDecimalSeparator) == -1)
			{
				internalValue += base.NumberFormatInfoObject.PercentDecimalSeparator;
			}
			ignoreTextChange = true;
			ApplyFormattingAndSetText(internalValue);
			ignoreTextChange = false;
		}
	}

	[DocumentationExclude]
	protected int GetNumberPartLength(double numberValue)
	{
		return GetNumberPartLength(numberValue.ToString());
	}

	[DocumentationExclude]
	protected override string GetNumberValue(string formattedText, int startPosition)
	{
		double result = 0.0;
		string empty = string.Empty;
		string empty2 = string.Empty;
		empty = ((startPosition >= formattedText.Length) ? formattedText : (formattedText.Substring(0, startPosition) + formattedText.Substring(startPosition)));
		try
		{
			empty2 = RemoveFormatting(empty);
			if (empty != null && empty != string.Empty)
			{
				double.TryParse(empty2, NumberStyles.Any, base.NumberFormatInfoObject, out result);
			}
		}
		catch
		{
			rollBackOperation = true;
		}
		if (base.IsNegative && result > 0.0)
		{
			result *= -1.0;
		}
		return string.Format(base.NumberFormatInfoObject, "{0}", new object[1] { result });
	}

	public bool ShouldSerializeMaxValue()
	{
		if (maxValue != 1.0)
		{
			return true;
		}
		return false;
	}

	public void ResetMaxValue()
	{
		MaxValue = 1.0;
	}

	public bool ShouldSerializeMinValue()
	{
		if (minValue != -1.0)
		{
			return true;
		}
		return false;
	}

	public void ResetMinValue()
	{
		MinValue = -1.0;
	}

	[DocumentationExclude]
	protected override bool CheckForMinMax(string currentTextValue, bool ignoreLength)
	{
		bool result = true;
		if (base.MinMaxValidation == MinMaxValidation.OnLostFocus)
		{
			return true;
		}
		string formattedText = RemoveFormatting(currentTextValue);
		double result2 = 0.0;
		double.TryParse(GetNumberValue(formattedText, 0), NumberStyles.Any, base.NumberFormatInfoObject, out result2);
		double num = MinValue * 100.0;
		double num2 = MaxValue * 100.0;
		if (currentTextValue == string.Empty && AllowNull)
		{
			return true;
		}
		if (result2 * 100.0 < num || result2 * 100.0 > num2)
		{
			result = false;
		}
		return result;
	}

	public override bool Validate(bool bRaiseValidationError)
	{
		string numberValue = GetNumberValue(internalValue, 0);
		bool flag = CheckForMinMax(numberValue);
		if (!flag && bRaiseValidationError)
		{
			RaiseValidationError(FormattedText, 0, "Current value does not meet minimum and maximum requirements.");
		}
		return flag;
	}

	protected override void OnValidating(CancelEventArgs e)
	{
		if (Text.Length == 0 && base.BindableValue != null)
		{
			DoubleValue = 0.0;
		}
		else
		{
			try
			{
				if (enterDoubleValue != DoubleValue && !base.IsNull)
				{
					DoubleValue = DoubleValue;
				}
			}
			catch
			{
			}
		}
		oldDoubleValue = Text;
		if (base.MinMaxValidation == MinMaxValidation.OnLostFocus && (!AllowNull || !(Text == base.NullString)) && (DoubleValue < MinValue || DoubleValue > MaxValue))
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
				DoubleValue = ((DoubleValue < MinValue) ? MinValue : DoubleValue);
				DoubleValue = ((DoubleValue > MaxValue) ? MaxValue : DoubleValue);
				break;
			case OnValidationFailed.KeepFocus:
				Focus();
				base.SelectionStart = Text.Length;
				break;
			}
			RaiseValidationError(formattedText, 0, "Current value does not meet MinValue and MaxValue requirements.");
		}
		newDoubleValue = Text;
		base.OnValidating(e);
	}

	protected override void OnValidated(EventArgs e)
	{
		base.OnValidated(e);
		OnControlValidated(newDoubleValue, oldDoubleValue);
	}

	[DocumentationExclude]
	protected override bool HandleCharacterKey(char charToBeInserted)
	{
		if (internalMode == PercentTextBoxMode.NumberMode)
		{
			string textBoxText = GetTextBoxText();
			string newText = textBoxText.Substring(0, base.SelectionStart) + charToBeInserted + textBoxText.Substring(base.SelectionStart + SelectionLength);
			bool flag = CheckForMinMax(newText, ignoreLength: false);
			supressKeyPress = !flag;
			return !flag;
		}
		return base.HandleCharacterKey(charToBeInserted);
	}

	[DocumentationExclude]
	protected override bool HandleDecimalKey()
	{
		if (internalMode == PercentTextBoxMode.NumberMode)
		{
			return false;
		}
		return base.HandleDecimalKey();
	}

	[DocumentationExclude]
	protected override bool HandleBackspaceKey()
	{
		if (internalMode == PercentTextBoxMode.NumberMode)
		{
			return false;
		}
		if (CheckIsZero() && AllowNull)
		{
			SetNullNumberValue();
			SetTextBoxText(base.NullString);
			return true;
		}
		return base.HandleBackspaceKey();
	}

	[DocumentationExclude]
	protected override bool HandleBackspaceKeyChar()
	{
		if (internalMode == PercentTextBoxMode.NumberMode)
		{
			return false;
		}
		return base.HandleBackspaceKeyChar();
	}

	[DocumentationExclude]
	protected override bool HandleDeleteKey()
	{
		if (internalMode == PercentTextBoxMode.NumberMode)
		{
			return false;
		}
		if (CheckIsZero() && AllowNull)
		{
			SetNullNumberValue();
			SetTextBoxText(base.NullString);
			return true;
		}
		return base.HandleDeleteKey();
	}

	[DocumentationExclude]
	protected override NumberModifyState HandleSubtractKey()
	{
		NumberModifyState numberModifyState = new NumberModifyState();
		if (internalMode == PercentTextBoxMode.NumberMode)
		{
			numberModifyState.success = false;
			base.SelectionStart = 0;
			SelectionLength = 0;
		}
		else
		{
			numberModifyState.success = true;
			double newValue = DoubleValue * -1.0;
			if (CheckForMinMax(newValue.ToString(), ignoreLength: true))
			{
				string changedString = ApplyFormatting(GetAdjustedValue(newValue).ToString());
				numberModifyState.changedString = changedString;
			}
			else
			{
				numberModifyState.success = false;
			}
		}
		return numberModifyState;
	}

	[DocumentationExclude]
	protected override bool CompleteSubtractKey(NumberModifyState state)
	{
		if (!state.success)
		{
			base.SelectionStart = 0;
			SelectionLength = 0;
			return false;
		}
		DoubleValue *= -1.0;
		return true;
	}

	protected void SetDoubleValue(double newValue)
	{
		base.SelectionStart = 0;
		SelectionLength = base.TextLength;
		if (CheckForMinMax(newValue.ToString(), ignoreLength: true))
		{
			double num = (preservedDoubleValue = GetAdjustedValue(newValue));
			SetPreserveData(preserveData: true);
			ApplyFormattingAndSetText(num.ToString());
		}
	}

	protected double GetAdjustedValue(double newValue)
	{
		double result = newValue;
		if (newValue != 0.0 && !Convert.IsDBNull(newValue))
		{
			result = newValue * 100.0;
		}
		return result;
	}

	protected void SetNullState(double val)
	{
	}

	protected virtual void OnBindablePercentValueChanged(EventArgs e)
	{
		if (this.BindablePercentValueChanged != null)
		{
			this.BindablePercentValueChanged(this, e);
		}
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
		if (AllowNull && newText == base.NullString)
		{
			SetNullNumberValue();
			SetTextBoxText(base.NullString);
			return;
		}
		if (newText == null || newText == string.Empty)
		{
			flag = false;
		}
		else
		{
			try
			{
				_ = base.Culture;
				double.TryParse(newText, NumberStyles.Number, base.NumberFormatInfoObject, out var result);
				SetDoubleValue(result);
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

	protected virtual void OnDoubleValueChanged(EventArgs e)
	{
		if (!ignoreTextChange && this.DoubleValueChanged != null)
		{
			this.DoubleValueChanged(this, e);
		}
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

	protected override void OnTextChanged(EventArgs e)
	{
		base.OnTextChanged(e);
		OnDoubleValueChanged(e);
		OnBindableValueChanged(e);
		OnBindablePercentValueChanged(e);
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
		return true;
	}

	protected override bool CheckIsZero()
	{
		if (!base.IsNull)
		{
			return DoubleValue.Equals(0.0);
		}
		return false;
	}

	protected override void SetValue(object val)
	{
		double.TryParse(val as string, NumberStyles.Number, base.NumberFormatInfoObject, out var result);
		DoubleValue = result;
	}

	protected override object GetValue()
	{
		return DoubleValue;
	}

	protected void SetPercentValue(object val)
	{
		double.TryParse(val as string, NumberStyles.Number, base.NumberFormatInfoObject, out var result);
		DoubleValue = result / 100.0;
	}

	public new void Paste()
	{
		if (base.ReadOnly)
		{
			return;
		}
		string empty = string.Empty;
		IDataObject dataObject = Clipboard.GetDataObject();
		if (dataObject.GetDataPresent(DataFormats.Text))
		{
			empty = dataObject.GetData(DataFormats.Text).ToString();
			if (empty != null)
			{
				InsertString(GetTextBoxText(), base.SelectionStart, SelectionLength, empty, pasteOperation: true);
			}
		}
	}

	protected override NumberModifyState PrepareInsertString(string currentText, int startPosition, int selectionLength, string textToBeInserted, bool pasteOperation)
	{
		if (PercentValue == 0.0)
		{
			currentText = currentText.Substring(0, startPosition + selectionLength);
		}
		return base.PrepareInsertString(currentText, startPosition, selectionLength, textToBeInserted, pasteOperation);
	}
}
