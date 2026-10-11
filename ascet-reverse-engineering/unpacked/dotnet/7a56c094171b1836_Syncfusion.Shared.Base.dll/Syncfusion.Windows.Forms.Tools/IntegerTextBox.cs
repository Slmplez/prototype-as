using System;
using System.ComponentModel;
using System.Drawing;
using System.Globalization;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(true)]
[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.IntegerTextBox.bmp")]
[Description("Represents a TextBox to handle integer input and validation.")]
public class IntegerTextBox : NumericTextBox
{
	private const char c_chZeroChar = '0';

	private const char c_chMinusChar = '-';

	private const char c_chGroupSeparator = ',';

	private MinMaxValidation m_MinMaxValidation;

	private bool m_bPerformingMinMaxValidation;

	private long minValue = long.MinValue;

	private long maxValue = long.MaxValue;

	private long initIntegerValue;

	private string oldIntegerValue = string.Empty;

	private string newIntegerValue = string.Empty;

	private bool m_initIsNullValue;

	private long enterIntegerValue;

	private string m_enterString = "";

	private long preservedIntegerValue;

	private bool m_bAllowLeadingZeros;

	private bool m_bIsNullValue;

	[RefreshProperties(RefreshProperties.Repaint)]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public new string Text
	{
		get
		{
			return base.Text;
		}
		set
		{
			if (base.Parent != null && base.Text != value)
			{
				SetTextProperty(value);
				if (base.MinMaxValidation == MinMaxValidation.OnLostFocus || base.MinMaxValidation == MinMaxValidation.OnKeyPress)
				{
					PerformMinMaxValidation();
				}
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Data")]
	[Browsable(true)]
	[Description("The integer value of the text.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public long IntegerValue
	{
		get
		{
			if (GetPreserveData())
			{
				return preservedIntegerValue;
			}
			return Convert.ToInt64(GetNumberValue(base.Text, 0));
		}
		set
		{
			if (!base.Initializing)
			{
				SetIntegerValue(value);
			}
			else
			{
				initIntegerValue = value;
			}
		}
	}

	[Category("Behavior")]
	public long MaxValue
	{
		get
		{
			return maxValue;
		}
		set
		{
			if (value < MinValue)
			{
				maxValue = long.MaxValue;
				throw new ArgumentOutOfRangeException("MaxValue", value, "MaxValue Cannot be lesser than MinValue");
			}
			maxValue = value;
			if (!CheckForMinMax(IntegerValue.ToString()))
			{
				IntegerValue = value;
			}
		}
	}

	[Category("Behavior")]
	public long MinValue
	{
		get
		{
			return minValue;
		}
		set
		{
			if (value > MaxValue)
			{
				minValue = long.MinValue;
				throw new ArgumentOutOfRangeException("MinValue", value, "MinValue Cannot be greater than MaxValue");
			}
			minValue = value;
			if (!CheckForMinMax(IntegerValue.ToString()))
			{
				IntegerValue = value;
			}
		}
	}

	[DefaultValue(false)]
	[Category("Behavior")]
	[Description("Gets or sets allow insets zero in begining value.")]
	public bool AllowLeadingZeros
	{
		get
		{
			return m_bAllowLeadingZeros;
		}
		set
		{
			if (m_bAllowLeadingZeros != value)
			{
				m_bAllowLeadingZeros = value;
				SetTextProperty(GetTextBoxText());
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Obsolete("This property will not be used in future. Use NullState property to get the null state of the text box")]
	[Category("Behavior")]
	[Description("Gets or sets value that indicates whether NullString should be set if UseNullString is true.")]
	[DefaultValue(false)]
	public bool IsNullValue
	{
		get
		{
			return m_bIsNullValue;
		}
		set
		{
			m_bIsNullValue = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue(false)]
	[Obsolete("This property will not be used in future.")]
	[Description("Gets or sets value that indicates whether NullString should be set")]
	[Browsable(false)]
	[Category("Behavior")]
	public new bool UseNullString
	{
		get
		{
			return base.UseNullString;
		}
		set
		{
			base.UseNullString = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new string NumberDecimalSeparator
	{
		get
		{
			return " ";
		}
		set
		{
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new int NumberDecimalDigits
	{
		get
		{
			return 0;
		}
		set
		{
			base.NumberFormatInfoObject.NumberDecimalDigits = 0;
		}
	}

	[Description("Occurs when the IntegerValue property is changed.")]
	[Category("PropertyChanged")]
	public event EventHandler IntegerValueChanged;

	public IntegerTextBox()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(IntegerTextBox));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		SetDefaultValue(0L);
		NumberDecimalDigits = 0;
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
		if (initIntegerValue == 0 && AllowNull && Text == base.NullString)
		{
			flag = true;
		}
		base.InitializeNumberTextBox();
		SetNumberFormatInfoInitValues();
		if (initIntegerValue != 0)
		{
			IntegerValue = initIntegerValue;
		}
		else if (flag)
		{
			SetNullNumberValue();
			SetTextBoxText(base.NullString);
		}
		if (!CheckForMinMax(FormattedText, ignoreLength: true))
		{
			IntegerValue = MinValue;
		}
		ignoreTextChange = false;
	}

	public override void ResetText()
	{
		if (AllowNull)
		{
			base.ResetText();
		}
		else
		{
			IntegerValue = 0L;
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

	protected override void SetTextProperty(string newText)
	{
		long num = 0L;
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
				num = long.Parse(newText, NumberStyles.Number, base.NumberFormatInfoObject);
				if (AllowLeadingZeros)
				{
					string text = SaveZeroInValue(GetNumberValue(newText, 0), num < 0);
					ApplyFormattingAndSetText(text + Math.Abs(num));
				}
				else
				{
					ApplyFormattingAndSetText(num.ToString());
				}
			}
			catch
			{
				flag = false;
			}
		}
		if (!flag)
		{
			base.SetTextProperty(newText);
			try
			{
				IntegerValue = long.Parse(base.Text, NumberStyles.Number, base.NumberFormatInfoObject);
				return;
			}
			catch
			{
				return;
			}
		}
		IntegerValue = num;
	}

	protected void SetIntegerValue(long newValue)
	{
		base.SelectionStart = 0;
		SelectionLength = base.TextLength;
		if (CheckForMinMax(newValue.ToString(), ignoreLength: true))
		{
			preservedIntegerValue = newValue;
			SetPreserveData(preserveData: true);
			ApplyFormattingAndSetText(newValue.ToString());
		}
	}

	private bool ShouldSerializeMaxValue()
	{
		if (maxValue != long.MaxValue)
		{
			return true;
		}
		return false;
	}

	private void ResetMaxValue()
	{
		MaxValue = long.MaxValue;
	}

	private string GenerateFormat(int valueLength, bool negative, int[] gs)
	{
		string text = string.Empty;
		int num = 0;
		int num2 = 0;
		int num3 = valueLength;
		if (negative)
		{
			num3--;
		}
		int num4 = 0;
		while (num3 > num4)
		{
			if (gs != null && gs.Length > 0 && num2 == gs[num] && gs[num] != 0)
			{
				text = ',' + text;
				num2 = 0;
				if (gs.Length - 1 > num)
				{
					num++;
				}
			}
			text = '0' + text;
			num4++;
			num2++;
		}
		return text;
	}

	private string AddNegaviveSymbol(string sValue, string negativ, int numberNegativePattern)
	{
		string result = string.Empty;
		switch (numberNegativePattern)
		{
		case 0:
			result = $"({sValue})";
			break;
		case 1:
			result = $"{negativ}{sValue}";
			break;
		case 2:
			result = $"{negativ} {sValue}";
			break;
		case 3:
			result = $"{sValue}{negativ}";
			break;
		case 4:
			result = $"{sValue} {negativ}";
			break;
		}
		return result;
	}

	private string SaveZeroInValue(string sValue, bool Negative)
	{
		string text = (Negative ? '-'.ToString() : string.Empty);
		int i = 0;
		if (sValue.Length > 0 && sValue[0] == '-')
		{
			i = 1;
		}
		for (; sValue.Length - 1 > i && sValue[i] == '0'; i++)
		{
			text += '0';
		}
		return text;
	}

	private bool ShouldSerializeMinValue()
	{
		if (minValue != long.MinValue)
		{
			return true;
		}
		return false;
	}

	private void ResetMinValue()
	{
		MinValue = long.MinValue;
	}

	protected override bool CheckNullStringIsInRange(string nullString)
	{
		if (long.TryParse(nullString, NumberStyles.Any, base.NumberFormatInfoObject, out var result))
		{
			return CheckForMinMax(result.ToString(), ignoreLength: true);
		}
		return true;
	}

	[DocumentationExclude]
	protected override bool CheckForMinMax(string currentTextValue, bool ignoreLength)
	{
		if (base.MinMaxValidation == MinMaxValidation.OnLostFocus && !m_bPerformingMinMaxValidation)
		{
			return true;
		}
		bool result = true;
		string formattedText = RemoveFormatting(currentTextValue);
		long result2 = 0L;
		long.TryParse(GetNumberValue(formattedText, 0), NumberStyles.Any, base.NumberFormatInfoObject, out result2);
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

	private long GetAbsValue(long val)
	{
		if (val < 0)
		{
			if (val < -9223372036854775807L)
			{
				val++;
			}
			val *= -1;
		}
		return val;
	}

	protected virtual void OnIntegerValueChanged(EventArgs e)
	{
		if (!ignoreTextChange && this.IntegerValueChanged != null)
		{
			this.IntegerValueChanged(this, e);
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
				string rawValue = ((MinValue < 0) ? "0" : MinValue.ToString());
				ApplyFormattingAndSetText(rawValue);
			}
		}
	}

	protected override void OnTextChanged(EventArgs e)
	{
		bool flag = GetPreserveData();
		SetPreserveData(preserveData: false);
		base.OnTextChanged(e);
		OnIntegerValueChanged(e);
		SetPreserveData(flag);
	}

	protected override void OnEnter(EventArgs args)
	{
		enterIntegerValue = IntegerValue;
		m_enterString = base.Text;
		base.OnEnter(args);
	}

	protected override void OnValidating(CancelEventArgs e)
	{
		oldIntegerValue = Text;
		if (base.MinMaxValidation == MinMaxValidation.OnLostFocus && (!AllowNull || !(Text == base.NullString)))
		{
			PerformMinMaxValidation();
		}
		newIntegerValue = Text;
		if (Text.Length == 0 && base.BindableValue != null)
		{
			IntegerValue = 0L;
		}
		if (m_enterString != base.Text)
		{
			OnBindableValueChanged(EventArgs.Empty);
		}
		base.OnValidating(e);
	}

	protected override void OnValidated(EventArgs e)
	{
		base.OnValidated(e);
		OnControlValidated(newIntegerValue, oldIntegerValue);
	}

	protected virtual void PerformMinMaxValidation()
	{
		m_bPerformingMinMaxValidation = true;
		string textBoxText = GetTextBoxText();
		GetTextBoxTextLength();
		string textBoxText2 = textBoxText;
		string formattedText = FormattedText;
		bool flag = false;
		long num = Convert.ToInt64(GetNumberValue(textBoxText, 0));
		if (num < MinValue || num > MaxValue)
		{
			flag = true;
			switch (base.OnValidationFailed)
			{
			case OnValidationFailed.SetNullString:
				if (AllowNull)
				{
					textBoxText2 = base.NullString;
					break;
				}
				Focus();
				base.SelectionStart = Text.Length;
				break;
			case OnValidationFailed.SetMinOrMax:
				num = ((num < MinValue) ? MinValue : num);
				textBoxText2 = ((num > MaxValue) ? MaxValue : num).ToString();
				break;
			case OnValidationFailed.KeepFocus:
				Focus();
				base.SelectionStart = Text.Length;
				break;
			}
		}
		bool flag2 = ignoreTextChange;
		ignoreTextChange = true;
		SetTextBoxText(string.Empty);
		if (Text == string.Empty)
		{
			SetTextBoxText(textBoxText2);
		}
		ignoreTextChange = flag2;
		m_bPerformingMinMaxValidation = false;
		if (flag)
		{
			RaiseValidationError(formattedText, 0, "Current value does not meet MinValue and MaxValue requirements.");
		}
	}

	protected override void SetNullNumberValue()
	{
		preservedIntegerValue = 0L;
		SetPreserveData(preserveData: true);
	}

	protected override bool IsAssignable(object val)
	{
		if (val == null || Convert.IsDBNull(val))
		{
			return false;
		}
		return typeof(long).IsAssignableFrom(val.GetType()) || typeof(int).IsAssignableFrom(val.GetType()) || typeof(short).IsAssignableFrom(val.GetType());
	}

	protected override void SetValue(object val)
	{
		if (val.GetType() == typeof(long))
		{
			IntegerValue = (long)val;
		}
		else if (val.GetType() == typeof(int))
		{
			IntegerValue = (int)val;
		}
		else if (val.GetType() == typeof(short))
		{
			IntegerValue = (short)val;
		}
	}

	protected override object GetValue()
	{
		return IntegerValue;
	}

	public bool ShouldSerializeNumberDecimalDigits()
	{
		return false;
	}

	public new bool ShouldSerializeNumberDecimalSeparator()
	{
		return false;
	}

	[DocumentationExclude]
	protected int GetNumberPartLength(long numberValue)
	{
		return GetNumberPartLength(numberValue.ToString());
	}

	[DocumentationExclude]
	protected override string GetNumberValue(string formattedText, int startPosition)
	{
		long num = 0L;
		string empty = string.Empty;
		string text = string.Empty;
		empty = ((startPosition >= formattedText.Length) ? formattedText : (formattedText.Substring(0, startPosition) + formattedText.Substring(startPosition)));
		try
		{
			text = RemoveFormatting(empty);
			if (text == string.Empty)
			{
				text = "0";
			}
			num = long.Parse(text, NumberStyles.Any, base.NumberFormatInfoObject);
		}
		catch
		{
			rollBackOperation = true;
		}
		if (base.IsNegative && num > 0)
		{
			num *= -1;
		}
		string result = num.ToString();
		if (AllowLeadingZeros)
		{
			string text2 = SaveZeroInValue(text, num < 0);
			result = text2 + Math.Abs(num);
		}
		return result;
	}

	protected override bool CheckIsZero()
	{
		if (!base.IsNull)
		{
			return IntegerValue.Equals(0L);
		}
		return false;
	}

	protected override bool IsValidNumberValue(string intString)
	{
		bool result = true;
		string s = intString;
		try
		{
			string numberDecimalSeparator = base.NumberFormatInfoObject.NumberDecimalSeparator;
			int num = -1;
			if (numberDecimalSeparator != null && numberDecimalSeparator != string.Empty)
			{
				num = intString.IndexOf(numberDecimalSeparator);
				if (num != -1)
				{
					s = intString.Substring(0, num);
				}
			}
			long.Parse(s);
		}
		catch
		{
			result = false;
		}
		return result;
	}

	[DocumentationExclude]
	protected override bool CheckIfNegative(string rawValue)
	{
		if (rawValue != null && rawValue != string.Empty)
		{
			long num = Convert.ToInt64(rawValue);
			if (num >= 0)
			{
				return false;
			}
			return true;
		}
		return false;
	}

	protected override int GetInitialZeroCount(string currentText, int startPosition)
	{
		if (AllowLeadingZeros)
		{
			return 0;
		}
		return base.GetInitialZeroCount(currentText, startPosition);
	}

	protected override void FormatChanged(string currentText, NumberFormatInfo previousFormat)
	{
		long num = 0L;
		if (base.Initializing)
		{
			return;
		}
		try
		{
			if (GetPreserveData())
			{
				num = IntegerValue;
				return;
			}
			currentText = currentText.Trim();
			if (currentText != string.Empty)
			{
				num = long.Parse(currentText, NumberStyles.Integer, previousFormat);
			}
		}
		catch
		{
			num = Convert.ToInt64(GetNumberValue(currentText, 0));
		}
		finally
		{
			if (AllowLeadingZeros)
			{
				string text = SaveZeroInValue(GetNumberValue(currentText, 0), num < 0);
				ApplyFormattingAndSetText(text + Math.Abs(num));
			}
			else
			{
				ApplyFormattingAndSetText(num.ToString());
			}
		}
	}

	protected override bool HandleDecimalKey()
	{
		return true;
	}

	protected override bool HandleBackspaceKey()
	{
		if (base.ReadOnly)
		{
			return false;
		}
		int num = base.SelectionStart;
		string textBoxText = GetTextBoxText();
		_ = string.Empty;
		int num2 = 0;
		bool flag = false;
		int num3 = 0;
		num2 = GetStartPositionJustNumbers(textBoxText, num);
		int decimalSeparatorPosition = GetDecimalSeparatorPosition(textBoxText);
		flag = IsInDecimalPosition(textBoxText, num);
		if (num == decimalSeparatorPosition + GetDecimalSeparator().Length)
		{
			flag = false;
		}
		if (SelectionLength == 0)
		{
			num3 = 0;
			int num4 = num;
			num = (base.SelectionStart = GetPrevDataPos(num - 1));
			SelectionLength = num4 - num;
		}
		else
		{
			num3 = SelectionLength;
		}
		if (num > 0 && num3 == 0)
		{
			num2--;
		}
		textBoxText = DeleteSelectedText();
		if (!CheckForMinMax(textBoxText))
		{
			return true;
		}
		if (textBoxText == string.Empty)
		{
			if (AllowNull)
			{
				if (!RaiseSetNull(textBoxText))
				{
					SetNullNumberValue();
					SetTextBoxText(base.NullString);
				}
			}
			else
			{
				textBoxText = base.DefaultValue.ToString();
				if (IsValidNumberValue(RemoveFormatting(textBoxText)))
				{
					textBoxText = ApplyFormattingAndSetText(GetNumberValue(textBoxText, num));
					PositionCursorAfterEdit(num2, flag, back: true, delete: false);
				}
			}
		}
		else if (Text != base.NullString && IsValidNumberValue(RemoveFormatting(textBoxText)))
		{
			textBoxText = ApplyFormattingAndSetText(GetNumberValue(textBoxText, num));
			PositionCursorAfterEdit(num2, flag, back: true, delete: false);
		}
		SetControlColor();
		return true;
	}

	protected override bool HandleDeleteKey()
	{
		if (base.ReadOnly)
		{
			return false;
		}
		int i = base.SelectionStart;
		string textBoxText = GetTextBoxText();
		string nullValue = null;
		int num = 0;
		bool flag = false;
		num = GetStartPositionJustNumbers(textBoxText, i);
		flag = IsInDecimalPosition(textBoxText, i);
		if (SelectionLength == 0)
		{
			int prevDataPos = GetPrevDataPos(Math.Max(0, i - 1));
			if (!flag && prevDataPos == GetFirstDataPos() && textBoxText != string.Empty && textBoxText[prevDataPos] == '0')
			{
				i = CursorShouldBeMoved(i, flag);
			}
			int decimalSeparatorPosition = GetDecimalSeparatorPosition(textBoxText);
			if (i == decimalSeparatorPosition)
			{
				for (; i < textBoxText.Length && !IsDataPosition(textBoxText, i); i++)
				{
				}
				flag = IsInDecimalPosition(textBoxText, i);
			}
			if (!IsDataPosition(textBoxText, i))
			{
				i = GetNextDataPos(i, flag, back: false, delete: false);
			}
			int num2 = 0;
			num2 = ((!flag) ? GetNextDataPos(i + 1, flag, back: false, delete: false) : GetNextDataPos(i, flag, back: false, delete: false));
			base.SelectionStart = i;
			SelectionLength = num2 - i;
		}
		if (CheckIsZero())
		{
			SelectAll();
		}
		textBoxText = DeleteSelectedText();
		if (!CheckForMinMax(textBoxText))
		{
			return true;
		}
		if (textBoxText == string.Empty)
		{
			if (AllowNull)
			{
				if (!RaiseSetNull(nullValue))
				{
					SetNullNumberValue();
					SetTextBoxText(base.NullString);
				}
			}
			else
			{
				nullValue = base.DefaultValue.ToString();
				if (IsValidNumberValue(nullValue))
				{
					textBoxText = ApplyFormattingAndSetText(GetNumberValue(nullValue, i));
					PositionCursorAfterEdit(num, flag, back: false, delete: true);
				}
			}
		}
		else if (Text != base.NullString)
		{
			nullValue = RemoveFormatting(textBoxText.Substring(0, i) + textBoxText.Substring(i));
			if (IsValidNumberValue(nullValue))
			{
				textBoxText = ApplyFormattingAndSetText(GetNumberValue(nullValue, i));
				PositionCursorAfterEdit(num, flag, back: false, delete: true);
			}
		}
		SetControlColor();
		return true;
	}

	protected override bool InsertString(string currentText, int startPosition, int selectionLength, string textToBeInserted, bool pasteOperation)
	{
		if (AllowNull && (textToBeInserted == string.Empty || textToBeInserted == base.NullString))
		{
			SetNullNumberValue();
			SetTextBoxText(base.NullString);
			return true;
		}
		return base.InsertString(currentText, startPosition, selectionLength, textToBeInserted, pasteOperation);
	}

	[DocumentationExclude]
	protected override string ApplyFormatting(string rawValue)
	{
		long num = ((rawValue != null && rawValue != string.Empty) ? Convert.ToInt64(rawValue) : 0);
		string text = base.NullString;
		string text2;
		if (rawValue == null || rawValue == text)
		{
			text2 = string.Format(base.NullFormat, "{0}", new object[1] { text });
		}
		else if (!AllowLeadingZeros)
		{
			text2 = string.Format(base.NumberFormatInfoObject, "{0:n}", new object[1] { num });
		}
		else
		{
			string text3 = GenerateFormat(rawValue.Length, num < 0, base.NumberFormatInfoObject.NumberGroupSizes);
			text2 = string.Format(base.NumberFormatInfoObject, "{0:" + text3 + "}", new object[1] { Math.Abs(num) });
			if (num < 0)
			{
				text2 = AddNegaviveSymbol(text2, base.NumberFormatInfoObject.NegativeSign, base.NumberFormatInfoObject.NumberNegativePattern);
			}
		}
		return text2.Trim();
	}

	[DocumentationExclude]
	protected override string ToggleNegative(string currentText)
	{
		long num = Convert.ToInt64(currentText);
		num *= -1;
		if (num == 0)
		{
			SetZeroNegative(!GetZeroNegative());
		}
		string result = num.ToString();
		if (AllowLeadingZeros)
		{
			result = currentText;
		}
		return result;
	}

	protected override int CursorShouldBeMoved(int startPosition, bool inDecimalPosition)
	{
		int result = startPosition;
		if (!AllowLeadingZeros)
		{
			result = base.CursorShouldBeMoved(startPosition, inDecimalPosition);
		}
		return result;
	}

	protected override NumberModifyState PrepareInsertString(string currentText, int startPosition, int selectionLength, string textToBeInserted, bool pasteOperation)
	{
		if (IntegerValue == 0)
		{
			currentText = currentText.Substring(0, startPosition + selectionLength);
		}
		return base.PrepareInsertString(currentText, startPosition, selectionLength, textToBeInserted, pasteOperation);
	}
}
