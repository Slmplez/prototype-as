using System;
using System.ComponentModel;
using System.Globalization;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class NumericTextBox : NumberTextBoxBase
{
	private int initNumberDecimalDigits = -1;

	private string initNumberDecimalSeparator;

	private string initNumberGroupSeparator;

	private int[] initNumberGroupSizes;

	private int initNumberNegativePattern = -1;

	private bool m_bDeleteSelectionOnNegative;

	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Gets or sets the maximum number of digits for the decimal portion of the number.")]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Localizable(false)]
	[Browsable(true)]
	public int NumberDecimalDigits
	{
		get
		{
			return base.NumberFormatInfoObject.NumberDecimalDigits;
		}
		set
		{
			if (!base.Initializing)
			{
				string textBoxText = GetTextBoxText();
				NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
				base.NumberFormatInfoObject.NumberDecimalDigits = value;
				FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
			}
			else
			{
				initNumberDecimalDigits = value;
				base.NumberFormatInfoObject.NumberDecimalDigits = value;
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the decimal separator character that will be used for the display.")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Localizable(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public string NumberDecimalSeparator
	{
		get
		{
			return base.NumberFormatInfoObject.NumberDecimalSeparator;
		}
		set
		{
			if (value.Equals(string.Empty))
			{
				throw new ArgumentOutOfRangeException("NumberDecimalSeparator", "Decimal separator cannot be the empty string.");
			}
			if (!char.IsLetterOrDigit(value, 0) && value.Length == 1)
			{
				if (!base.Initializing)
				{
					string textBoxText = GetTextBoxText();
					NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
					base.NumberFormatInfoObject.NumberDecimalSeparator = value;
					base.NumberFormatInfoObject.CurrencyDecimalSeparator = value;
					FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
				}
				else
				{
					initNumberDecimalSeparator = value;
					base.NumberFormatInfoObject.NumberDecimalSeparator = value;
				}
			}
		}
	}

	[Localizable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Gets or sets the separator to be used for grouping digits.")]
	[Browsable(true)]
	[Category("Appearance")]
	public string NumberGroupSeparator
	{
		get
		{
			return base.NumberFormatInfoObject.NumberGroupSeparator;
		}
		set
		{
			if (value.Equals(string.Empty) || (!char.IsLetterOrDigit(value, 0) && value.Length == 1))
			{
				if (!base.Initializing)
				{
					string textBoxText = GetTextBoxText();
					NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
					base.NumberFormatInfoObject.NumberGroupSeparator = value;
					base.NumberFormatInfoObject.CurrencyGroupSeparator = value;
					FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
				}
				else
				{
					initNumberGroupSeparator = value;
					base.NumberFormatInfoObject.NumberGroupSeparator = value;
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the grouping of NumberDigits in the NumberTextBox.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Localizable(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Browsable(true)]
	public int[] NumberGroupSizes
	{
		get
		{
			return base.NumberFormatInfoObject.NumberGroupSizes;
		}
		set
		{
			if (!base.Initializing)
			{
				string textBoxText = GetTextBoxText();
				NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
				base.NumberFormatInfoObject.NumberGroupSizes = value;
				FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
			}
			else
			{
				initNumberGroupSizes = value;
				base.NumberFormatInfoObject.NumberGroupSizes = value;
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the pattern to use when the value is negative.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	[Localizable(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public int NumberNegativePattern
	{
		get
		{
			return base.NumberFormatInfoObject.NumberNegativePattern;
		}
		set
		{
			if (!base.Initializing)
			{
				string textBoxText = GetTextBoxText();
				NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
				base.NumberFormatInfoObject.NumberNegativePattern = value;
				FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
			}
			else
			{
				initNumberNegativePattern = value;
				base.NumberFormatInfoObject.NumberNegativePattern = value;
			}
		}
	}

	[Description("Gets or sets a value indicating whether to delete selection when number is changed to negative.")]
	[DefaultValue(false)]
	public bool DeleteSelectionOnNegative
	{
		get
		{
			return m_bDeleteSelectionOnNegative;
		}
		set
		{
			if (value != m_bDeleteSelectionOnNegative)
			{
				m_bDeleteSelectionOnNegative = value;
			}
		}
	}

	public NumericTextBox()
	{
		InitializeComponent();
	}

	private void InitializeComponent()
	{
		this.Multiline = false;
	}

	protected void SetNumberFormatInfoInitValues()
	{
		NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
		bool flag = false;
		if (initNumberDecimalDigits != -1)
		{
			base.NumberFormatInfoObject.NumberDecimalDigits = initNumberDecimalDigits;
			flag = true;
		}
		if (initNumberDecimalSeparator != null && initNumberGroupSeparator != null)
		{
			if (initNumberDecimalSeparator != initNumberGroupSeparator)
			{
				base.NumberFormatInfoObject.CurrencyDecimalSeparator = initNumberDecimalSeparator;
				base.NumberFormatInfoObject.NumberDecimalSeparator = initNumberDecimalSeparator;
				base.NumberFormatInfoObject.CurrencyGroupSeparator = initNumberGroupSeparator;
				base.NumberFormatInfoObject.NumberGroupSeparator = initNumberGroupSeparator;
				flag = true;
			}
		}
		else
		{
			if (initNumberDecimalSeparator != null && initNumberDecimalSeparator != base.NumberFormatInfoObject.NumberGroupSeparator)
			{
				base.NumberFormatInfoObject.CurrencyDecimalSeparator = initNumberDecimalSeparator;
				base.NumberFormatInfoObject.NumberDecimalSeparator = initNumberDecimalSeparator;
				flag = true;
			}
			if (initNumberGroupSeparator != null && initNumberGroupSeparator != base.NumberFormatInfoObject.NumberDecimalSeparator)
			{
				base.NumberFormatInfoObject.CurrencyGroupSeparator = initNumberGroupSeparator;
				base.NumberFormatInfoObject.NumberGroupSeparator = initNumberGroupSeparator;
				flag = true;
			}
		}
		if (initNumberGroupSizes != null)
		{
			base.NumberFormatInfoObject.NumberGroupSizes = initNumberGroupSizes;
			flag = true;
		}
		if (initNumberNegativePattern != -1)
		{
			base.NumberFormatInfoObject.NumberNegativePattern = initNumberNegativePattern;
			flag = true;
		}
		if (flag)
		{
			FormatChanged(GetTextBoxText(), copyOfCurrentNumberFormatInfo);
		}
	}

	[Description("Indicates whether the NumberDecimalDigits should not be serialized if the UseLocaleDefault property is set.")]
	private bool ShouldSerializeNumberDecimalDigits()
	{
		return base.Culture.NumberFormat.CurrencyDecimalDigits != NumberDecimalDigits;
	}

	private void ResetNumberDecimalDigits()
	{
		NumberDecimalDigits = base.Culture.NumberFormat.NumberDecimalDigits;
	}

	[Description("Indicates whether the NumberDecimalSeparator should not be serialized if the UseLocaleDefault property is set.")]
	protected bool ShouldSerializeNumberDecimalSeparator()
	{
		return base.Culture.NumberFormat.CurrencyDecimalSeparator != NumberDecimalSeparator;
	}

	private void ResetNumberDecimalSeparator()
	{
		NumberDecimalSeparator = base.Culture.NumberFormat.NumberDecimalSeparator;
	}

	protected bool ShouldSerializeNumberGroupSeparator()
	{
		if (base.Culture.NumberFormat.NumberGroupSeparator != NumberGroupSeparator)
		{
			return true;
		}
		return false;
	}

	private void ResetNumberGroupSeparator()
	{
		NumberGroupSeparator = base.Culture.NumberFormat.NumberGroupSeparator;
	}

	protected bool ShouldSerializeNumberGroupSizes()
	{
		if (base.Culture.NumberFormat.NumberGroupSizes.Length == NumberGroupSizes.Length)
		{
			for (int i = 0; i < base.Culture.NumberFormat.NumberGroupSizes.Length; i++)
			{
				if (!base.Culture.NumberFormat.NumberGroupSizes[i].Equals(NumberGroupSizes[i]))
				{
					return true;
				}
			}
		}
		return false;
	}

	private void ResetNumberGroupSizes()
	{
		NumberGroupSizes = base.Culture.NumberFormat.NumberGroupSizes;
	}

	private bool ShouldSerializeNumberNegativePattern()
	{
		if (base.Culture.NumberFormat.NumberNegativePattern != NumberNegativePattern)
		{
			return true;
		}
		return false;
	}

	private void ResetNumberNegativePattern()
	{
		NumberNegativePattern = base.Culture.NumberFormat.NumberNegativePattern;
	}

	protected virtual int GetNumberStartPosition()
	{
		string formattedText = FormattedText;
		if (formattedText == null || formattedText.Length == 0)
		{
			return -1;
		}
		int i = 0;
		for (int length = formattedText.Length; i < length; i++)
		{
			if (char.IsNumber(formattedText[i]))
			{
				return i;
			}
		}
		return -1;
	}

	protected virtual int GetNumberEndPosition()
	{
		string formattedText = FormattedText;
		if (formattedText == null || formattedText.Length == 0)
		{
			return -1;
		}
		for (int num = formattedText.Length - 1; num >= 0; num--)
		{
			if (char.IsNumber(formattedText[num]) || !(formattedText[num].ToString() != base.NegativeSign))
			{
				return num;
			}
		}
		return -1;
	}

	protected override NumberModifyState HandleSubtractKey()
	{
		bool flag = base.IsNegative;
		NumberModifyState numberModifyState = null;
		if (m_bDeleteSelectionOnNegative)
		{
			if (SelectionLength == 0)
			{
				numberModifyState = base.HandleSubtractKey();
			}
			else
			{
				int num = SelectionLength;
				int length = FormattedText.Length;
				int num2 = FormattedText.IndexOf(base.NegativeSign);
				if (num2 >= base.SelectionStart && num2 <= base.SelectionStart + SelectionLength)
				{
					base.HandleDeleteKey();
					base.IsNegative = flag;
					numberModifyState = new NumberModifyState();
					numberModifyState.handled = false;
				}
				else
				{
					base.HandleDeleteKey();
					if (num == length)
					{
						base.IsNegative = flag;
						numberModifyState = new NumberModifyState();
						numberModifyState.handled = false;
					}
					else
					{
						numberModifyState = base.HandleSubtractKey();
					}
					SetZeroNegative(!GetZeroNegative());
				}
			}
		}
		else
		{
			numberModifyState = base.HandleSubtractKey();
		}
		return numberModifyState;
	}

	protected override bool HandleCharacterKey(char charToBeInserted)
	{
		if (DeleteSelectionOnNegative && GetTextBoxText().Length == SelectionLength)
		{
			base.IsNegative = false;
		}
		return base.HandleCharacterKey(charToBeInserted);
	}

	protected override bool HandleBackspaceKey()
	{
		if (base.SelectionStart >= 0 && base.SelectionStart <= FormattedText.Length && ((SelectionLength > 0 && FormattedText.Substring(base.SelectionStart, SelectionLength).IndexOf(base.NegativeSign) >= 0) || (base.SelectionStart > 0 && SelectionLength == 0 && FormattedText[base.SelectionStart - 1].ToString() == base.NegativeSign)))
		{
			int numberStartPosition = GetNumberStartPosition();
			int numberEndPosition = GetNumberEndPosition();
			int num = base.SelectionStart + SelectionLength;
			int num2 = base.SelectionStart;
			int num3 = ((numberStartPosition >= num2) ? (num - numberStartPosition) : (numberEndPosition - num2));
			NumberModifyState numberModifyState = base.HandleSubtractKey();
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
		return base.HandleBackspaceKey();
	}

	protected override bool HandleDeleteKey()
	{
		if (base.SelectionStart >= 0 && base.SelectionStart < FormattedText.Length && (FormattedText.Substring(base.SelectionStart, SelectionLength).IndexOf(base.NegativeSign) >= 0 || FormattedText[base.SelectionStart].ToString() == base.NegativeSign))
		{
			int numberStartPosition = GetNumberStartPosition();
			int numberEndPosition = GetNumberEndPosition();
			int num = base.SelectionStart + SelectionLength;
			int num2 = base.SelectionStart;
			int num3 = ((numberStartPosition >= num2) ? (num - numberStartPosition) : (numberEndPosition - num2));
			NumberModifyState numberModifyState = base.HandleSubtractKey();
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
		return base.HandleDeleteKey();
	}
}
