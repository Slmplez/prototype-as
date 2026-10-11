using System;
using System.ComponentModel;
using System.Drawing;
using System.Globalization;
using System.Text;
using System.Text.RegularExpressions;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Represents a TextBox to handle currency input and validation.")]
[ToolboxItem(true)]
[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.CurrencyTextBox.bmp")]
public class CurrencyTextBox : NumberTextBoxBase
{
	private Color m_prevBackColor = Color.Empty;

	public static int MaxNumberLength;

	private string[] currencyNegativePatterns;

	private decimal minValue = decimal.MinValue;

	private decimal maxValue = decimal.MaxValue;

	private int numberDigitsValue;

	private decimal initDecimalValue;

	private decimal enterDecimalValue;

	private decimal preservedDecimalValue;

	private string oldDecimalValue = string.Empty;

	private string newDecimalValue = string.Empty;

	private int initCurrencyDecimalDigits = -1;

	private string initCurrencyDecimalSeparator;

	private string initCurrencyGroupSeparator;

	private int[] initCurrencyGroupSizes;

	private int initCurrencyNegativePattern = -1;

	private int initCurrencyPositivePattern = -1;

	private string initCurrencySymbol;

	private char c_cLeadingSymbol = '0';

	private bool m_bRemoveDecimalZeros;

	private bool m_bCorrectConcatModifiedText;

	private int m_iZerosNeedAddedCount;

	public new bool ReadOnly
	{
		get
		{
			return base.ReadOnly;
		}
		set
		{
			if (value != base.ReadOnly)
			{
				OnReadOnlyChanging();
				base.ReadOnly = value;
				OnReadOnlyChanged();
			}
		}
	}

	[Localizable(true)]
	[Browsable(true)]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("The number of digits for the number part. This is not part of the globalization structure.")]
	public int NumberDigits
	{
		get
		{
			return numberDigitsValue;
		}
		set
		{
			if (value <= MaxNumberLength)
			{
				numberDigitsValue = value;
			}
		}
	}

	[Localizable(true)]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("The maximum number of digits for the decimal portion of the currency.")]
	[Browsable(true)]
	public int CurrencyDecimalDigits
	{
		get
		{
			return base.NumberFormatInfoObject.CurrencyDecimalDigits;
		}
		set
		{
			if (!base.Initializing)
			{
				string textBoxText = GetTextBoxText();
				NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
				base.NumberFormatInfoObject.CurrencyDecimalDigits = value;
				FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
			}
			else
			{
				initCurrencyDecimalDigits = value;
				base.NumberFormatInfoObject.CurrencyDecimalDigits = value;
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	protected string[] CurrencyNegativePatterns
	{
		get
		{
			return currencyNegativePatterns;
		}
		set
		{
			currencyNegativePatterns = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Appearance")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("The decimal separator character that will be used for the display.")]
	[Localizable(true)]
	[Browsable(true)]
	public string CurrencyDecimalSeparator
	{
		get
		{
			return base.NumberFormatInfoObject.CurrencyDecimalSeparator;
		}
		set
		{
			if (!base.Initializing)
			{
				string textBoxText = GetTextBoxText();
				NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
				base.NumberFormatInfoObject.CurrencyDecimalSeparator = value;
				FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
			}
			else
			{
				initCurrencyDecimalSeparator = value;
				base.NumberFormatInfoObject.CurrencyDecimalSeparator = value;
			}
		}
	}

	[Localizable(false)]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("This property specifies the separator to be used for grouping digits.")]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public string CurrencyGroupSeparator
	{
		get
		{
			return base.NumberFormatInfoObject.CurrencyGroupSeparator;
		}
		set
		{
			if (!base.Initializing)
			{
				string textBoxText = GetTextBoxText();
				NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
				base.NumberFormatInfoObject.CurrencyGroupSeparator = value;
				FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
			}
			else
			{
				initCurrencyGroupSeparator = value;
				base.NumberFormatInfoObject.CurrencyGroupSeparator = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Localizable(false)]
	[Description("This property specifies the grouping of CurrencyDigits in the CurrencyTextBox.")]
	[Category("Appearance")]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public int[] CurrencyGroupSizes
	{
		get
		{
			return base.NumberFormatInfoObject.CurrencyGroupSizes;
		}
		set
		{
			if (!base.Initializing)
			{
				string textBoxText = GetTextBoxText();
				NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
				base.NumberFormatInfoObject.CurrencyGroupSizes = value;
				FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
			}
			else
			{
				initCurrencyGroupSizes = value;
				base.NumberFormatInfoObject.CurrencyGroupSizes = value;
			}
		}
	}

	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Localizable(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("This property specifies the pattern to use when the value is negative.")]
	[Browsable(true)]
	public int CurrencyNegativePattern
	{
		get
		{
			return base.NumberFormatInfoObject.CurrencyNegativePattern;
		}
		set
		{
			if (!base.Initializing)
			{
				string textBoxText = GetTextBoxText();
				NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
				base.NumberFormatInfoObject.CurrencyNegativePattern = value;
				FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
			}
			else
			{
				initCurrencyNegativePattern = value;
				base.NumberFormatInfoObject.CurrencyNegativePattern = value;
			}
		}
	}

	[Localizable(false)]
	[Category("Appearance")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("This property specifies the pattern to use when the value is positive.")]
	public int CurrencyPositivePattern
	{
		get
		{
			return base.NumberFormatInfoObject.CurrencyPositivePattern;
		}
		set
		{
			if (!base.Initializing)
			{
				string textBoxText = GetTextBoxText();
				NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
				base.NumberFormatInfoObject.CurrencyPositivePattern = value;
				FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
			}
			else
			{
				initCurrencyPositivePattern = value;
				base.NumberFormatInfoObject.CurrencyPositivePattern = value;
			}
		}
	}

	[Description("This property specifies the currency symbol to be used in the CurrencyTextBox.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Localizable(false)]
	[Browsable(true)]
	[Category("Appearance")]
	public string CurrencySymbol
	{
		get
		{
			return base.NumberFormatInfoObject.CurrencySymbol;
		}
		set
		{
			if (!base.Initializing)
			{
				string textBoxText = GetTextBoxText();
				NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
				base.NumberFormatInfoObject.CurrencySymbol = value;
				FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
			}
			else
			{
				initCurrencySymbol = value;
				base.NumberFormatInfoObject.CurrencySymbol = value;
			}
		}
	}

	[Localizable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	[Description("The number of digits for the number part. This is not part of the globalization structure.")]
	[Category("Appearance")]
	public int CurrencyNumberDigits
	{
		get
		{
			return NumberDigits;
		}
		set
		{
			NumberDigits = value;
		}
	}

	[Description("Gets or sets remove last decimal zeros.")]
	[Category("Appearance")]
	[DefaultValue(false)]
	public bool RemoveDecimalZeros
	{
		get
		{
			return m_bRemoveDecimalZeros;
		}
		set
		{
			if (m_bRemoveDecimalZeros != value)
			{
				m_bRemoveDecimalZeros = value;
				ApplyFormattingAndSetText(DecimalValue.ToString());
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
			if (!base.IsNull && !AllowNull)
			{
				if (base.ClipMode == CurrencyClipModes.IncludeFormatting || !base.IsHandleCreated)
				{
					return FormattedText;
				}
				return ClipText;
			}
			return base.Text;
		}
		set
		{
			SetTextProperty(value);
		}
	}

	[Category("Behavior")]
	[Description("The Maximum Value that can be set through the CurrencyTextBox.")]
	public decimal MaxValue
	{
		get
		{
			return maxValue;
		}
		set
		{
			if (value < MinValue)
			{
				maxValue = decimal.MaxValue;
				throw new ArgumentOutOfRangeException("MaxValue", value, "MaxValue Cannot be lesser than MinValue");
			}
			maxValue = value;
			if (!CheckForMinMax(DecimalValue.ToString()))
			{
				DecimalValue = value;
			}
		}
	}

	[Category("Behavior")]
	[Description("The Minimum Value that can be set through the CurrencyTextBox.")]
	public decimal MinValue
	{
		get
		{
			return minValue;
		}
		set
		{
			if (value > MaxValue)
			{
				minValue = decimal.MinValue;
				throw new ArgumentOutOfRangeException("MinValue", value, "MinValue Cannot be greater than MaxValue");
			}
			minValue = value;
			if (!CheckForMinMax(DecimalValue.ToString()))
			{
				DecimalValue = value;
			}
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("The decimal value of the currency control.")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Data")]
	public decimal DecimalValue
	{
		get
		{
			if (GetPreserveData())
			{
				return preservedDecimalValue;
			}
			return Convert.ToDecimal(GetNumberValue(GetTextBoxText(), 0));
		}
		set
		{
			if (!base.Initializing)
			{
				SetDecimalValue(value);
			}
			else
			{
				initDecimalValue = value;
			}
		}
	}

	[Description("Occurs when the DecimalValue property is changed.")]
	[Category("PropertyChanged")]
	public event EventHandler DecimalValueChanged;

	protected virtual void OnReadOnlyChanging()
	{
		if (!ReadOnly)
		{
			m_prevBackColor = base.BackColor;
		}
	}

	protected virtual void OnReadOnlyChanged()
	{
		if (ReadOnly)
		{
			base.BackColor = base.ReadOnlyBackColor;
		}
		else
		{
			base.BackColor = m_prevBackColor;
		}
	}

	static CurrencyTextBox()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(CurrencyTextBox));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		MaxNumberLength = 27;
	}

	public static string CurrencyFormattedText(NumberFormatInfo nfi, string currencyText, string nullString, out decimal dValue)
	{
		decimal num = 0m;
		bool flag = false;
		if (currencyText != null && currencyText != string.Empty)
		{
			try
			{
				num = decimal.Parse(currencyText, NumberStyles.Currency, nfi);
			}
			catch
			{
				Console.WriteLine("Exception parsing {0}", currencyText);
			}
		}
		else
		{
			flag = true;
		}
		dValue = num;
		if (!flag || nullString == null)
		{
			return string.Format(nfi, "{0:C}", new object[1] { num });
		}
		return string.Format(nfi, "{0}", new object[1] { nullString });
	}

	public CurrencyTextBox()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(CurrencyTextBox));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		SetDefaultValue(0m);
		currencyNegativePatterns = new string[16]
		{
			"^\\((<CurrencySymbol>){0,<CurrencySymbolLength>}(.*)\\)$", "^-(<CurrencySymbol>){0,<CurrencySymbolLength>}(.*)", "^(<CurrencySymbol>){0,<CurrencySymbolLength>}-(.*)", "^(<CurrencySymbol>){0,<CurrencySymbolLength>}(.*)-$", "^\\((.*)(<CurrencySymbol>){0,<CurrencySymbolLength>}\\)$", "^-(.*)(<CurrencySymbol>){0,<CurrencySymbolLength>}$", "(.*)-(<CurrencySymbol>){0,<CurrencySymbolLength>}$", "(.*)(<CurrencySymbol>){0,<CurrencySymbolLength>}-$", "^-(.*) (<CurrencySymbol>){0,<CurrencySymbolLength>}$", "^-(<CurrencySymbol>){0,<CurrencySymbolLength>} (.*)",
			"(.*) (<CurrencySymbol>){0,<CurrencySymbolLength>}-$", "^(<CurrencySymbol>){0,<CurrencySymbolLength>} (.*)-$", "^(<CurrencySymbol>){0,<CurrencySymbolLength>} -(.*)", "(.*)- {0,<CurrencySymbolLength>}(<CurrencySymbol>)$", "^\\({0,<CurrencySymbolLength>}(<CurrencySymbol>) (.*)\\)$", "^\\((.*) {0,<CurrencySymbolLength>}(<CurrencySymbol>)\\)$"
		};
		numberDigitsValue = MaxNumberLength;
		InitializeComponent();
	}

	private void InitializeComponent()
	{
		this.Multiline = false;
	}

	protected override void InitializeNumberTextBox()
	{
		ignoreTextChange = true;
		bool flag = false;
		if (initDecimalValue == 0m && AllowNull && Text == base.NullString)
		{
			flag = true;
		}
		base.InitializeNumberTextBox();
		SetNumberFormatInfoInitValues();
		if (initDecimalValue != 0m)
		{
			DecimalValue = initDecimalValue;
		}
		else if (flag)
		{
			SetTextBoxText(base.NullString);
		}
		if (!CheckForMinMax(DecimalValue))
		{
			DecimalValue = MinValue;
		}
		ignoreTextChange = false;
	}

	private void SetNumberFormatInfoInitValues()
	{
		NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
		bool flag = false;
		if (initNumberFormatInfoObject != null)
		{
			base.NumberFormatInfoObject = initNumberFormatInfoObject;
		}
		if (initCurrencyDecimalDigits != -1)
		{
			base.NumberFormatInfoObject.CurrencyDecimalDigits = initCurrencyDecimalDigits;
			flag = true;
		}
		if (initCurrencyDecimalSeparator != null && initCurrencyGroupSeparator != null)
		{
			if (initCurrencyDecimalSeparator != initCurrencyGroupSeparator)
			{
				base.NumberFormatInfoObject.CurrencyDecimalSeparator = initCurrencyDecimalSeparator;
				base.NumberFormatInfoObject.NumberDecimalSeparator = initCurrencyDecimalSeparator;
				base.NumberFormatInfoObject.CurrencyGroupSeparator = initCurrencyGroupSeparator;
				base.NumberFormatInfoObject.NumberGroupSeparator = initCurrencyGroupSeparator;
				flag = true;
			}
		}
		else
		{
			if (initCurrencyDecimalSeparator != null && initCurrencyDecimalSeparator != base.NumberFormatInfoObject.CurrencyGroupSeparator)
			{
				base.NumberFormatInfoObject.CurrencyDecimalSeparator = initCurrencyDecimalSeparator;
				base.NumberFormatInfoObject.NumberDecimalSeparator = initCurrencyDecimalSeparator;
				flag = true;
			}
			if (initCurrencyGroupSeparator != null && initCurrencyGroupSeparator != base.NumberFormatInfoObject.CurrencyDecimalSeparator)
			{
				base.NumberFormatInfoObject.CurrencyGroupSeparator = initCurrencyGroupSeparator;
				base.NumberFormatInfoObject.NumberGroupSeparator = initCurrencyGroupSeparator;
				flag = true;
			}
		}
		if (initCurrencyGroupSizes != null)
		{
			base.NumberFormatInfoObject.CurrencyGroupSizes = initCurrencyGroupSizes;
			flag = true;
		}
		if (initCurrencyNegativePattern != -1)
		{
			base.NumberFormatInfoObject.CurrencyNegativePattern = initCurrencyNegativePattern;
			flag = true;
		}
		if (initCurrencyPositivePattern != -1)
		{
			base.NumberFormatInfoObject.CurrencyPositivePattern = initCurrencyPositivePattern;
			flag = true;
		}
		if (initCurrencySymbol != null)
		{
			base.NumberFormatInfoObject.CurrencySymbol = initCurrencySymbol;
			flag = true;
		}
		if (flag)
		{
			FormatChanged(GetTextBoxText(), copyOfCurrentNumberFormatInfo);
		}
	}

	protected bool ShouldSerializeNumberDigits()
	{
		return NumberDigits != MaxNumberLength;
	}

	protected void ResetNumberDigits()
	{
		NumberDigits = MaxNumberLength;
	}

	protected bool ShouldSerializeCurrencyDecimalDigits()
	{
		if (base.Culture.NumberFormat.CurrencyDecimalDigits != CurrencyDecimalDigits)
		{
			return true;
		}
		return false;
	}

	protected void ResetCurrencyDecimalDigits()
	{
		CurrencyDecimalDigits = base.Culture.NumberFormat.CurrencyDecimalDigits;
	}

	protected bool ShouldSerializeCurrencyDecimalSeparator()
	{
		if (base.Culture.NumberFormat.CurrencyDecimalSeparator != CurrencyDecimalSeparator)
		{
			return true;
		}
		return false;
	}

	protected void ResetCurrencyDecimalSeparator()
	{
		CurrencyDecimalSeparator = base.Culture.NumberFormat.CurrencyDecimalSeparator;
	}

	protected bool ShouldSerializeCurrencyGroupSeparator()
	{
		if (base.Culture.NumberFormat.CurrencyGroupSeparator != CurrencyGroupSeparator)
		{
			return true;
		}
		return false;
	}

	protected void ResetCurrencyGroupSeparator()
	{
		CurrencyGroupSeparator = base.Culture.NumberFormat.CurrencyGroupSeparator;
	}

	protected bool ShouldSerializeCurrencyGroupSizes()
	{
		if (base.Culture.NumberFormat.CurrencyGroupSizes.Length == CurrencyGroupSizes.Length)
		{
			for (int i = 0; i < base.Culture.NumberFormat.CurrencyGroupSizes.Length; i++)
			{
				if (!base.Culture.NumberFormat.CurrencyGroupSizes[i].Equals(CurrencyGroupSizes[i]))
				{
					return true;
				}
			}
		}
		return false;
	}

	protected void ResetCurrencyGroupSizes()
	{
		CurrencyGroupSizes = base.Culture.NumberFormat.CurrencyGroupSizes;
	}

	protected bool ShouldSerializeCurrencyNegativePattern()
	{
		if (base.Culture.NumberFormat.CurrencyNegativePattern != CurrencyNegativePattern)
		{
			return true;
		}
		return false;
	}

	protected void ResetCurrencyNegativePattern()
	{
		CurrencyNegativePattern = base.Culture.NumberFormat.CurrencyNegativePattern;
	}

	protected bool ShouldSerializeCurrencyPositivePattern()
	{
		if (base.Culture.NumberFormat.CurrencyPositivePattern != CurrencyPositivePattern)
		{
			return true;
		}
		return false;
	}

	protected void ResetCurrencyPositivePattern()
	{
		CurrencyPositivePattern = base.Culture.NumberFormat.CurrencyPositivePattern;
	}

	protected bool ShouldSerializeCurrencySymbol()
	{
		if (!base.Culture.NumberFormat.CurrencySymbol.Equals(CurrencySymbol))
		{
			return true;
		}
		return false;
	}

	protected void ResetCurrencySymbol()
	{
		CurrencySymbol = base.Culture.NumberFormat.CurrencySymbol;
	}

	protected bool ShouldSerializeCurrencyNumberDigits()
	{
		return CurrencyNumberDigits != MaxNumberLength;
	}

	protected void ResetCurrencyNumberDigits()
	{
		CurrencyNumberDigits = MaxNumberLength;
	}

	protected override void FormatChanged(string currentText, NumberFormatInfo previousFormat)
	{
		decimal num = 0m;
		if (base.Initializing)
		{
			return;
		}
		try
		{
			if (GetPreserveData())
			{
				num = DecimalValue;
				return;
			}
			currentText = currentText.Trim();
			if (currentText != string.Empty)
			{
				num = decimal.Parse(currentText, NumberStyles.Currency, previousFormat);
			}
		}
		catch
		{
			num = Convert.ToDecimal(GetNumberValue(currentText, 0));
		}
		finally
		{
			ApplyFormattingAndSetText(num.ToString());
		}
	}

	protected override string ConcatModifiedText(string startCurrentText, string inputRawText, string endCurrentText)
	{
		if (RemoveDecimalZeros && m_bCorrectConcatModifiedText && startCurrentText.IndexOf(CurrencyDecimalSeparator) == -1 && endCurrentText.IndexOf(CurrencyDecimalSeparator) == -1)
		{
			startCurrentText += CurrencyDecimalSeparator;
			for (int i = 0; i < m_iZerosNeedAddedCount; i++)
			{
				startCurrentText += c_cLeadingSymbol;
			}
		}
		return base.ConcatModifiedText(startCurrentText, inputRawText, endCurrentText);
	}

	protected override bool HandleDecimalKey()
	{
		if (RemoveDecimalZeros && Text.IndexOf(CurrencyDecimalSeparator) == -1)
		{
			m_bCorrectConcatModifiedText = true;
		}
		string text = GetTextBoxText();
		int decimalSeparatorPosition = GetDecimalSeparatorPosition(text);
		if (decimalSeparatorPosition > 0 && SelectionLength != 0)
		{
			string formattedText = DeleteSelectedText(text, base.SelectionStart, decimalSeparatorPosition);
			text = ApplyFormattingAndSetText(GetNumberValue(formattedText, base.SelectionStart));
		}
		decimalSeparatorPosition = GetDecimalSeparatorPosition(text);
		if (decimalSeparatorPosition > 0)
		{
			decimalSeparatorPosition++;
			base.SelectionStart = decimalSeparatorPosition;
			SelectionLength = CurrencyDecimalDigits;
			m_bDecimalMode = false;
		}
		else if (base.IsNull && base.NumberFormatInfoObject.CurrencyDecimalDigits > 0)
		{
			m_bDecimalMode = true;
		}
		return true;
	}

	[DocumentationExclude]
	protected override string ApplyFormatting(string rawValue)
	{
		decimal result = 0m;
		bool flag = false;
		if (rawValue != null && rawValue != string.Empty)
		{
			flag = decimal.TryParse(rawValue, out result);
		}
		NumberFormatInfo numberFormatInfo = (NumberFormatInfo)base.NumberFormatInfoObject.Clone();
		if (RemoveDecimalZeros)
		{
			int num = rawValue.IndexOf(CultureInfo.CurrentCulture.NumberFormat.NumberDecimalSeparator);
			if (num != -1)
			{
				int num2 = 0;
				int num3 = rawValue.Length - 1;
				while (num3 > 0 && rawValue[num3] == c_cLeadingSymbol)
				{
					num2++;
					num3--;
				}
				numberFormatInfo.CurrencyDecimalDigits = rawValue.Length - (num + num2 + CultureInfo.CurrentCulture.NumberFormat.NumberDecimalSeparator.Length);
			}
			else
			{
				numberFormatInfo.CurrencyDecimalDigits = 0;
			}
		}
		if (flag || !AllowNull)
		{
			return string.Format(numberFormatInfo, "{0:C}", new object[1] { result });
		}
		return string.Format(base.NullFormat, "{0}", new object[1] { base.NullString });
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
				decimal decimalValue = decimal.Parse(newText, NumberStyles.Currency, base.NumberFormatInfoObject);
				SetDecimalValue(decimalValue);
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

	protected bool ShouldSerializeMaxValue()
	{
		if (maxValue != decimal.MaxValue)
		{
			return true;
		}
		return false;
	}

	protected void ResetMaxValue()
	{
		MaxValue = decimal.MaxValue;
	}

	protected bool ShouldSerializeMinValue()
	{
		if (minValue != decimal.MinValue)
		{
			return true;
		}
		return false;
	}

	protected void ResetMinValue()
	{
		MinValue = decimal.MinValue;
	}

	protected void SetDecimalValue(decimal newValue)
	{
		base.SelectionStart = 0;
		SelectionLength = base.TextLength;
		if (CheckForMinMax(newValue))
		{
			preservedDecimalValue = newValue;
			SetPreserveData(preserveData: true);
			ApplyFormattingAndSetText(newValue.ToString());
			SetPreserveData(preserveData: false);
		}
	}

	protected override bool IsAssignable(object val)
	{
		if (val == null || Convert.IsDBNull(val))
		{
			return false;
		}
		return typeof(decimal).IsAssignableFrom(val.GetType());
	}

	protected override void SetValue(object val)
	{
		DecimalValue = (decimal)val;
	}

	protected override object GetValue()
	{
		return DecimalValue;
	}

	protected virtual void OnDecimalValueChanged(EventArgs e)
	{
		if (!ignoreTextChange && this.DecimalValueChanged != null)
		{
			this.DecimalValueChanged(this, e);
		}
	}

	protected override void OnTextChanged(EventArgs e)
	{
		base.OnTextChanged(e);
		OnDecimalValueChanged(e);
		OnBindableValueChanged(e);
	}

	internal override void OnAllowNullChanged()
	{
		if (base.IsNull)
		{
			if (AllowNull)
			{
				SetTextBoxText(base.NullString);
				return;
			}
			string rawValue = ((MinValue < 0m) ? "0" : MinValue.ToString());
			ApplyFormattingAndSetText(rawValue);
		}
	}

	protected override void SetNullNumberValue()
	{
		preservedDecimalValue = 0m;
		SetPreserveData(preserveData: true);
	}

	private int GetNumberStartPosition()
	{
		string formattedText = FormattedText;
		int num = FormattedText.IndexOf(CurrencySymbol);
		int num2 = num + CurrencySymbol.Length;
		int i = 0;
		for (int length = formattedText.Length; i < length; i++)
		{
			if (char.IsNumber(formattedText[i]) && (num < i || num2 > i))
			{
				return i;
			}
		}
		return -1;
	}

	private int GetNumberEndPosition()
	{
		string formattedText = FormattedText;
		if (CurrencySymbol == null || CurrencySymbol.Length == 0)
		{
			return formattedText.Length;
		}
		int num = FormattedText.IndexOf(CurrencySymbol);
		int num2 = num + CurrencySymbol.Length;
		for (int num3 = formattedText.Length - 1; num3 >= 0; num3--)
		{
			if (char.IsNumber(formattedText[num3]) && (num < num3 || num2 > num3))
			{
				return num3;
			}
		}
		return -1;
	}

	protected override bool HandleBackspaceKey()
	{
		if (base.SelectionStart >= 0 && base.SelectionStart <= FormattedText.Length && ((SelectionLength > 0 && base.NegativeSign != "" && FormattedText.Substring(base.SelectionStart, SelectionLength).IndexOf(base.NegativeSign) >= 0) || (base.SelectionStart > 0 && SelectionLength == 0 && FormattedText[base.SelectionStart - 1].ToString() == base.NegativeSign)))
		{
			int numberStartPosition = GetNumberStartPosition();
			int numberEndPosition = GetNumberEndPosition();
			int num = base.SelectionStart + SelectionLength;
			int num2 = base.SelectionStart;
			int num3 = ((numberStartPosition >= num2) ? (num - numberStartPosition) : (numberEndPosition - num2));
			NumberModifyState numberModifyState = HandleSubtractKey();
			CompleteSubtractKey(numberModifyState);
			if (num3 > 0)
			{
				base.SelectionStart = ((numberStartPosition >= num2) ? GetNumberStartPosition() : (num2 - numberStartPosition));
				SelectionLength = num3;
				return base.HandleBackspaceKey();
			}
			base.SelectionStart = 0;
			SelectionLength = 0;
			return true;
		}
		if (DecimalValue == 0m && AllowNull)
		{
			SetTextBoxText(base.NullString);
			return true;
		}
		return base.HandleBackspaceKey();
	}

	protected override bool HandleDeleteKey()
	{
		if (base.SelectionStart >= 0 && base.SelectionStart < FormattedText.Length && ((base.NegativeSign != "" && FormattedText.Substring(base.SelectionStart, SelectionLength).IndexOf(base.NegativeSign) >= 0) || FormattedText[base.SelectionStart].ToString() == base.NegativeSign))
		{
			int numberStartPosition = GetNumberStartPosition();
			int numberEndPosition = GetNumberEndPosition();
			int num = base.SelectionStart + SelectionLength;
			int num2 = base.SelectionStart;
			int num3 = ((numberStartPosition >= num2) ? (num - numberStartPosition) : (numberEndPosition - num2));
			NumberModifyState numberModifyState = HandleSubtractKey();
			CompleteSubtractKey(numberModifyState);
			if (num3 > 0)
			{
				base.SelectionStart = ((numberStartPosition >= num2) ? GetNumberStartPosition() : (num2 - numberStartPosition));
				SelectionLength = num3;
				return base.HandleDeleteKey();
			}
			base.SelectionStart = 0;
			SelectionLength = 0;
			return true;
		}
		if (DecimalValue == 0m && AllowNull)
		{
			SetTextBoxText(base.NullString);
			return true;
		}
		return base.HandleDeleteKey();
	}

	protected override int CanInsert(string currentText, string inputText, int initialZeroCount)
	{
		int num = base.SelectionStart;
		int num2 = GetDecimalSeparatorPosition(currentText);
		int decimalSeparatorPosition = GetDecimalSeparatorPosition(inputText);
		if (currentText == null || currentText.Length == 0)
		{
			if (decimalSeparatorPosition < 0)
			{
				return NumberDigits;
			}
			return NumberDigits + (inputText.Length - decimalSeparatorPosition) + GetDecimalSeparator().Length;
		}
		if (num2 >= 0 && num > num2)
		{
			return GetDecimalDigits();
		}
		int num3 = initialZeroCount;
		int num4 = 0;
		if (num2 < 0)
		{
			num2 = currentText.Length;
		}
		string text = currentText.Substring(0, num2);
		string text2 = RemoveFormatting(text, padIfEmpty: false);
		int num5 = Math.Max(0, num - (text.Length - text2.Length));
		if (num5 < num3)
		{
			num3--;
		}
		if (decimalSeparatorPosition < 0)
		{
			return Math.Max(0, NumberDigits - (text2.Length - num3));
		}
		return Math.Max(0, NumberDigits - (text2.Length - num3) + inputText.Length - decimalSeparatorPosition + GetDecimalSeparator().Length);
	}

	[DocumentationExclude]
	protected override bool CheckIfNegative(string rawValue)
	{
		if (rawValue != null && rawValue != string.Empty)
		{
			decimal num = Convert.ToDecimal(rawValue);
			if (num >= 0m)
			{
				return false;
			}
			return true;
		}
		return false;
	}

	[DocumentationExclude]
	protected int GetNumberPartLength(decimal numberValue)
	{
		return GetNumberPartLength(numberValue.ToString());
	}

	protected bool CheckForMinMax(decimal numericValue)
	{
		return CheckForMinMax(numericValue.ToString(), ignoreLength: true);
	}

	[DocumentationExclude]
	protected override bool CheckForMinMax(string currentTextValue, bool ignoreLength)
	{
		if (base.MinMaxValidation == MinMaxValidation.OnLostFocus)
		{
			return true;
		}
		bool result = true;
		string formattedText = RemoveFormatting(currentTextValue);
		decimal result2 = 0m;
		decimal.TryParse(GetNumberValue(formattedText, 0), out result2);
		if (currentTextValue == string.Empty && AllowNull)
		{
			return true;
		}
		if (result2 < MinValue || result2 > MaxValue)
		{
			result = false;
		}
		return result;
	}

	protected override int GetDecimalSeparatorPosition(string currentText)
	{
		int num = ((CurrencySymbol.Length > 0) ? currentText.IndexOf(CurrencySymbol) : (-1));
		int length = CurrencySymbol.Length;
		int startIndex = 0;
		int num2 = 0;
		num2 = currentText.IndexOf(CurrencyDecimalSeparator, startIndex);
		if (num != -1 && num2 > num && num2 < num + length)
		{
			startIndex = num + length + 1;
			if (startIndex > currentText.Length)
			{
				return -1;
			}
			num2 = currentText.IndexOf(CurrencyDecimalSeparator, startIndex);
		}
		return num2;
	}

	[DocumentationExclude]
	protected override bool IsInDecimalPosition(string currentText, int startPosition)
	{
		bool result = false;
		int num = ((CurrencySymbol.Length > 0) ? currentText.IndexOf(CurrencySymbol) : (-1));
		if (num != -1 && num < startPosition)
		{
			int decimalSeparatorPosition = GetDecimalSeparatorPosition(currentText);
			if (decimalSeparatorPosition != -1 && startPosition > decimalSeparatorPosition)
			{
				result = true;
			}
		}
		else
		{
			int decimalSeparatorPosition2 = GetDecimalSeparatorPosition(currentText);
			if (decimalSeparatorPosition2 != -1 && startPosition > decimalSeparatorPosition2)
			{
				result = true;
			}
		}
		return result;
	}

	[DocumentationExclude]
	protected override string GetNumberValue(string formattedText, int startPosition)
	{
		decimal num = 0m;
		string empty = string.Empty;
		string empty2 = string.Empty;
		bool flag = false;
		empty = ((startPosition >= formattedText.Length) ? formattedText : (formattedText.Substring(0, startPosition) + formattedText.Substring(startPosition)));
		try
		{
			empty2 = RemoveFormatting(empty);
			if (empty2[0] == '-')
			{
				empty2 = empty2.Substring(1);
				flag = true;
			}
			num = decimal.Parse(empty2, NumberStyles.Any, base.NumberFormatInfoObject);
			if (flag)
			{
				num *= -1m;
			}
		}
		catch (Exception innerException)
		{
			throw new Exception("Invalid value has been set for the currency.", innerException);
		}
		if (base.IsNegative && num > 0m)
		{
			num *= -1m;
		}
		return num.ToString();
	}

	[DocumentationExclude]
	protected override string GetDecimalSeparator(NumberFormatInfo info)
	{
		return info.CurrencyDecimalSeparator;
	}

	[DocumentationExclude]
	protected override string GetGroupSeparator(NumberFormatInfo info)
	{
		return info.CurrencyGroupSeparator;
	}

	protected override bool ParseForNegativeFormat(string currentText, NumberFormatInfo info)
	{
		string text = null;
		Match match = null;
		string text2 = info.CurrencySymbol;
		if (text2 == "$")
		{
			text2 = "\\" + text2;
		}
		else if (text2 == string.Empty)
		{
			text2 = "\\$";
		}
		string[] array = CurrencyNegativePatterns;
		foreach (string input in array)
		{
			text = Regex.Replace(input, "<CurrencySymbol>", text2);
			text = Regex.Replace(text, "<CurrencySymbolLength>", text2.Length.ToString());
			match = Regex.Match(currentText, text);
			if (match.Success)
			{
				return true;
			}
		}
		return false;
	}

	protected override string RemoveFormatting(string formattedText, NumberFormatInfo info, bool padIfEmpty)
	{
		string text = formattedText;
		if (ContainsNumbers(CurrencySymbol))
		{
			text = formattedText.Replace(CurrencySymbol, "");
		}
		if (text.IndexOf(CurrencySymbol) >= 0 && CurrencySymbol != string.Empty && CurrencySymbol != "")
		{
			text = text.Replace(CurrencySymbol, "");
		}
		return base.RemoveFormatting(text, info, padIfEmpty);
	}

	protected override int GetStartPositionJustNumbers(string formattedText, int startPosition)
	{
		if (ContainsNumbers(CurrencySymbol))
		{
			int num = formattedText.IndexOf(CurrencySymbol, 0);
			if (startPosition >= num)
			{
				string currentText = formattedText.Replace(CurrencySymbol, "");
				return base.GetStartPositionJustNumbers(currentText, Math.Max(startPosition - CurrencySymbol.Length, 0));
			}
		}
		return base.GetStartPositionJustNumbers(formattedText, startPosition);
	}

	protected override void PositionCursorAfterEdit(int startPositionJustNumbers, bool inDecimalPosition, bool back, bool delete)
	{
		if (ContainsNumbers(CurrencySymbol))
		{
			string textBoxText = GetTextBoxText();
			int num = textBoxText.IndexOf(CurrencySymbol, 0);
			if (startPositionJustNumbers >= num)
			{
				int numberCharactersCount = GetNumberCharactersCount(CurrencySymbol);
				base.PositionCursorAfterEdit(startPositionJustNumbers + numberCharactersCount, inDecimalPosition, back, delete);
				return;
			}
		}
		if (m_bCorrectConcatModifiedText)
		{
			int num2 = Text.IndexOf(CurrencyDecimalSeparator);
			if (num2 != -1)
			{
				base.SelectionStart = num2 + CurrencyDecimalSeparator.Length + m_iZerosNeedAddedCount + 1;
				return;
			}
		}
		base.PositionCursorAfterEdit(startPositionJustNumbers, inDecimalPosition, back, delete);
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

	private int GetNumberCharactersCount(string s)
	{
		int num = 0;
		for (int i = 0; i < s.Length; i++)
		{
			if (char.IsDigit(s[i]))
			{
				num++;
			}
		}
		return num;
	}

	protected override bool HandleCharacterKey(char charToBeInserted)
	{
		if (ContainsNumbers(CurrencySymbol))
		{
			string textBoxText = GetTextBoxText();
			int num = textBoxText.IndexOf(CurrencySymbol, 0);
			if (base.SelectionStart > num && base.SelectionStart < num + CurrencySymbol.Length)
			{
				base.SelectionStart = GetNextDataPos(num + CurrencySymbol.Length, inDecimalPosition: false, back: false, delete: false);
			}
		}
		bool result = base.HandleCharacterKey(charToBeInserted);
		if (m_bCorrectConcatModifiedText)
		{
			if (charToBeInserted == c_cLeadingSymbol)
			{
				m_iZerosNeedAddedCount++;
			}
			else
			{
				m_bCorrectConcatModifiedText = false;
				m_iZerosNeedAddedCount = 0;
			}
		}
		return result;
	}

	[DocumentationExclude]
	protected override int GetDecimalDigits()
	{
		return base.NumberFormatInfoObject.CurrencyDecimalDigits;
	}

	[DocumentationExclude]
	protected override string ToggleNegative(string currentText)
	{
		decimal num = decimal.Parse(currentText, NumberStyles.Any, base.NumberFormatInfoObject);
		num *= -1m;
		if (num == 0m)
		{
			SetZeroNegative(!GetZeroNegative());
		}
		return num.ToString();
	}

	protected override bool IsDataPosition(string formattedText, int position)
	{
		if (position >= formattedText.Length)
		{
			return false;
		}
		StringBuilder stringBuilder = new StringBuilder(formattedText);
		int num = formattedText.IndexOf(CurrencySymbol);
		if (num >= 0 && CurrencySymbol != "")
		{
			string newValue = new string('Ā', CurrencySymbol.Length);
			stringBuilder.Replace(CurrencySymbol, newValue);
			formattedText = stringBuilder.ToString();
		}
		return char.IsDigit(formattedText[position]);
	}

	protected override NumberModifyState PrepareInsertString(string currentText, int startPosition, int selectionLength, string textToBeInserted, bool pasteOperation)
	{
		if (DecimalValue == 0m)
		{
			currentText = currentText.Substring(0, startPosition + selectionLength);
		}
		return base.PrepareInsertString(currentText, startPosition, selectionLength, textToBeInserted, pasteOperation);
	}

	protected override void OnEnter(EventArgs args)
	{
		enterDecimalValue = DecimalValue;
		base.OnEnter(args);
	}

	protected override void OnValidating(CancelEventArgs e)
	{
		if (GetTextBoxText().Length == 0 && base.BindableValue != null)
		{
			DecimalValue = 0m;
		}
		oldDecimalValue = Text;
		if (base.MinMaxValidation == MinMaxValidation.OnLostFocus && (!AllowNull || !(Text == base.NullString)) && (DecimalValue < MinValue || DecimalValue > MaxValue))
		{
			string formattedText = FormattedText;
			switch (base.OnValidationFailed)
			{
			case OnValidationFailed.SetNullString:
				if (AllowNull)
				{
					SetTextBoxText(base.NullString);
					break;
				}
				Focus();
				base.SelectionStart = Text.Length;
				break;
			case OnValidationFailed.SetMinOrMax:
				DecimalValue = ((DecimalValue < MinValue) ? MinValue : DecimalValue);
				DecimalValue = ((DecimalValue > MaxValue) ? MaxValue : DecimalValue);
				break;
			case OnValidationFailed.KeepFocus:
				Focus();
				base.SelectionStart = Text.Length;
				break;
			}
			RaiseValidationError(formattedText, 0, "Current value does not meet MinValue and MaxValue requirements.");
		}
		newDecimalValue = Text;
		base.OnValidating(e);
	}

	protected override void OnValidated(EventArgs e)
	{
		base.OnValidated(e);
		OnControlValidated(newDecimalValue, oldDecimalValue);
	}
}
