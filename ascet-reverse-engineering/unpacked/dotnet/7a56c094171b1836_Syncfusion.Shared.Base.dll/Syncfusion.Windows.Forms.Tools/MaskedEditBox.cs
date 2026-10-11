using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Globalization;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Localization;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(true)]
[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.MaskedEditBox.bmp")]
[Description("Provides restricted data input as well as formatted data output.")]
public class MaskedEditBox : TextBoxExt
{
	private bool m_bIsTextByInputChanged;

	private bool m_bModified;

	private string maskString = string.Empty;

	private string maskDisplay;

	private string displayString;

	private int promptCharacterInt = 95;

	private int passivePromptCharacterInt = 32;

	private int paddingCharacterInt = 32;

	private string undoBufferText;

	private string redoBufferText;

	private bool insertMode = true;

	private bool allowPrompt;

	private static ArrayList maskList;

	private Hashtable specialMasks;

	private CasingNormalize casingNormalize;

	private NumberFormatInfo numberFormatInfoObject;

	private DateTimeFormatInfo dateTimeFormatInfoObject;

	private MaskedUsageMode usageMode;

	private bool focusClick = true;

	private decimal maxValue = decimal.MaxValue;

	private decimal minValue;

	private bool internalTextChange;

	private string initText = string.Empty;

	private string initMask = string.Empty;

	private int initMaxLength;

	private char initDateSeparator;

	private string internalDisplayString;

	private SortedList listDisplayToInternalString;

	private bool m_bSequentially;

	private bool isPassivePromptCharFilled;

	private int adjustedSelectionLength = -1;

	private int adjustedSelectionStart = -1;

	private char lastUsedPromptChar;

	private MaskedEditState internalState = MaskedEditState.None;

	private ClipModes clipMode;

	private static int maskOffset;

	private ContextMenu editMenu;

	private MenuItem miUndo;

	private MenuItem miCut;

	private MenuItem miCopy;

	private MenuItem miPaste;

	private MenuItem miDelete;

	private MenuItem miSelectAll;

	private bool useLocaleDefault;

	private MaskedEditDataGroupInfoCollection dataGroups;

	private MaskedEditDataGroupInfoCollection internalDataGroups;

	private CultureInfo selectedCulture = new CultureInfo(CultureInfo.CurrentCulture.LCID);

	private SpecialCultureValues specialCultureValue = SpecialCultureValues.CurrentCulture;

	private ArrayList rightToLeftCultures = new ArrayList();

	private bool useUserOverride = true;

	private bool hasFocus;

	private bool returnActualText;

	private SpecialCursorPosition m_positionAt;

	private Hashtable customFilledPositions;

	private bool supressKeyPress;

	private bool supressKeyDown;

	private MaskInputMode inputMode;

	private CultureInfo initCulture = new CultureInfo(CultureInfo.CurrentCulture.LCID);

	public new bool Modified
	{
		get
		{
			if (!base.Modified)
			{
				return m_bModified;
			}
			return true;
		}
		set
		{
			base.Modified = value;
			m_bModified = value;
		}
	}

	[DefaultValue("")]
	[Browsable(true)]
	[Category("Behavior")]
	[Description("Use this property to define the mask string for the MaskedEditBox control.")]
	public string Mask
	{
		get
		{
			return maskDisplay;
		}
		set
		{
			if (base.Initializing)
			{
				initMask = value;
				if (value != null || value != string.Empty)
				{
					SetMaskedEditState(MaskedEditState.EditState);
					maskDisplay = value;
					maskString = ExtractMaskValues(value);
					SetMaxLength(maskString.Length);
					Reset();
					RefreshDisplay(DisplayString, updateUndo: false);
					SetMaskedEditState(MaskedEditState.NormalState);
					OnPropertyChanged(new PropertyChangedEventArgs("Mask"));
					if (ContextMenu == null)
					{
						ContextMenu = editMenu;
						ContextMenu.Popup += HandleContextMenuPopup;
					}
					else
					{
						ContextMenu = editMenu;
					}
				}
				return;
			}
			if (value == null || value == string.Empty)
			{
				maskDisplay = string.Empty;
				maskString = string.Empty;
				internalDisplayString = string.Empty;
				displayString = string.Empty;
				if (ContextMenu != null)
				{
					ContextMenu.Popup -= HandleContextMenuPopup;
					ContextMenu = null;
				}
				MaxLength = 32767;
				SetBaseText(string.Empty);
				return;
			}
			SetMaskedEditState(MaskedEditState.EditState);
			maskDisplay = value;
			maskString = ExtractMaskValues(value);
			SetMaxLength(maskString.Length);
			string text = DisplayString;
			Reset();
			RefreshDisplay(DisplayString, updateUndo: false);
			if (text != string.Empty)
			{
				SetExternalText(text, 0, insertMode: true, ignorePromptCharacters: true);
			}
			SetMaskedEditState(MaskedEditState.NormalState);
			OnPropertyChanged(new PropertyChangedEventArgs("Mask"));
			if (ContextMenu == null)
			{
				ContextMenu = editMenu;
				ContextMenu.Popup += HandleContextMenuPopup;
			}
			else
			{
				ContextMenu = editMenu;
			}
			initMask = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Obsolete]
	public bool PositionAtDecimal
	{
		get
		{
			bool result = false;
			if (PositionAt == SpecialCursorPosition.Decimal)
			{
				result = true;
			}
			return result;
		}
		set
		{
			if (value)
			{
				PositionAt = SpecialCursorPosition.Decimal;
			}
			else
			{
				PositionAt = SpecialCursorPosition.FirstMaskPosition;
			}
		}
	}

	[Browsable(true)]
	[DefaultValue(SpecialCursorPosition.FirstPosition)]
	[Category("Behavior")]
	[Description("Use this property to define MaskedEditBox control cursor position behavior on getting focus.")]
	public SpecialCursorPosition PositionAt
	{
		get
		{
			return m_positionAt;
		}
		set
		{
			if (m_positionAt != value)
			{
				m_positionAt = value;
			}
		}
	}

	[Description("The Maximum length of the input string.")]
	[Category("Behavior")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public override int MaxLength
	{
		set
		{
			if (base.Initializing)
			{
				initMaxLength = value;
				return;
			}
			int length = maskString.Length;
			int num = Mask.Length - length;
			if (length == 0)
			{
				base.MaxLength = value;
			}
			else if (length < value)
			{
				char lastMaskCharacter = GetLastMaskCharacter();
				if (lastMaskCharacter != 0)
				{
					Mask = Mask.PadRight(value + num, lastMaskCharacter);
				}
			}
			else if (length > value)
			{
				Mask = Mask.Remove(value, length - value);
			}
			else
			{
				base.MaxLength = value;
			}
			initMaxLength = value;
		}
	}

	private string DisplayString
	{
		get
		{
			return displayString;
		}
		set
		{
			if (value != null)
			{
				displayString = value;
			}
		}
	}

	[Description("Specifies the character that will be used instead of mask characters when the mask position has not been filled.")]
	[Browsable(true)]
	[DefaultValue('_')]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public char PromptCharacter
	{
		get
		{
			return (char)promptCharacterInt;
		}
		set
		{
			if (base.Initializing)
			{
				promptCharacterInt = value;
				return;
			}
			promptCharacterInt = value;
			SetMaskedEditState(MaskedEditState.EditState);
			if (hasFocus)
			{
				RefreshPromptCharacter();
			}
			SetMaskedEditState(MaskedEditState.NormalState);
		}
	}

	[Browsable(false)]
	[DefaultValue(32)]
	public int PromptCharacterInt
	{
		get
		{
			return promptCharacterInt;
		}
		set
		{
			PromptCharacter = (char)value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(true)]
	[DefaultValue(' ')]
	[Category("Appearance")]
	[Description("Specifies the character that will be used instead of mask characters when the mask position has not been filled when the Text property is used.")]
	public char PaddingCharacter
	{
		get
		{
			return (char)paddingCharacterInt;
		}
		set
		{
			paddingCharacterInt = value;
		}
	}

	[Browsable(false)]
	[DefaultValue(32)]
	public int PaddingCharacterInt
	{
		get
		{
			return paddingCharacterInt;
		}
		set
		{
			PaddingCharacter = (char)value;
		}
	}

	[Description("Specifies if the MaskedEditBox is to behave as a numeric control.")]
	[Browsable(true)]
	[DefaultValue(MaskedUsageMode.Normal)]
	[Category("Behavior")]
	public MaskedUsageMode UsageMode
	{
		get
		{
			return usageMode;
		}
		set
		{
			usageMode = value;
		}
	}

	[Description("Specifies the input mode for the MaskedEditBox.")]
	[Browsable(true)]
	[DefaultValue(MaskInputMode.OvertypeOnly)]
	[Category("Behavior")]
	public MaskInputMode InputMode
	{
		get
		{
			return inputMode;
		}
		set
		{
			inputMode = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	[Category("Appearance")]
	[Description("The current culture for the MaskedEditBox control.")]
	[Localizable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Editor(typeof(MaskedEditCultureEditor), typeof(UITypeEditor))]
	public CultureInfo Culture
	{
		get
		{
			return selectedCulture;
		}
		set
		{
			if (SpecialCultureValue == SpecialCultureValues.None)
			{
				selectedCulture = value;
			}
			else if (SpecialCultureValue == SpecialCultureValues.CurrentCulture)
			{
				selectedCulture = CultureInfo.CurrentCulture;
			}
			else if (SpecialCultureValue == SpecialCultureValues.UICulture)
			{
				selectedCulture = CultureInfo.CurrentUICulture;
			}
			else if (SpecialCultureValue == SpecialCultureValues.InstalledCulture)
			{
				selectedCulture = CultureInfo.InstalledUICulture;
			}
			initCulture = value;
			if (!base.Initializing)
			{
				ApplyRightToLeft();
				NumberFormatInfoObject = Culture.NumberFormat;
				DateTimeFormatInfoObject = Culture.DateTimeFormat;
			}
		}
	}

	[Description("The special culture value will override the current culture if set to value other than none.")]
	[Browsable(true)]
	[Category("Appearance")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public SpecialCultureValues SpecialCultureValue
	{
		get
		{
			return specialCultureValue;
		}
		set
		{
			specialCultureValue = value;
		}
	}

	[Description("The prompt character that will serve as placeholder for mask characters when the control does not have the focus.")]
	[Browsable(true)]
	[DefaultValue(' ')]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public char PassivePromptCharacter
	{
		get
		{
			return (char)passivePromptCharacterInt;
		}
		set
		{
			if (base.Initializing)
			{
				passivePromptCharacterInt = value;
				return;
			}
			passivePromptCharacterInt = value;
			SetMaskedEditState(MaskedEditState.EditState);
			if (!base.Initializing && !hasFocus)
			{
				RefreshPromptCharacter();
			}
			SetMaskedEditState(MaskedEditState.NormalState);
		}
	}

	[Browsable(false)]
	[DefaultValue(32)]
	public int PassivePromptCharacterInt
	{
		get
		{
			return passivePromptCharacterInt;
		}
		set
		{
			PassivePromptCharacter = (char)value;
		}
	}

	[Browsable(false)]
	[Category("Behavior")]
	[Description("Returns the text in the MaskedEditBox control, excluding literal characters of the input mask.")]
	public string ClipText
	{
		get
		{
			string empty = string.Empty;
			int adjSelectionStart = 0;
			int adjSelectionLength = 0;
			internalTextChange = true;
			returnActualText = true;
			empty = DisplayString;
			GetAdjustedValuesForNullPrompt(ref empty, ref adjSelectionStart, ref adjSelectionLength);
			string clipText = GetClipText(empty, 0, maskString.Length);
			internalTextChange = false;
			returnActualText = false;
			return clipText;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Browsable(true)]
	[Category("Behavior")]
	[Description("The data groups that can be used for splitting up the text.")]
	public MaskedEditDataGroupInfoCollection DataGroups => dataGroups;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public string FormattedText
	{
		get
		{
			string text = base.Text;
			int num = 0;
			bool flag = false;
			if (hasFocus)
			{
				if (promptCharacterInt == 0)
				{
					flag = true;
				}
			}
			else if (passivePromptCharacterInt == 0)
			{
				flag = true;
			}
			if (flag || Sequentially)
			{
				text = internalDisplayString;
			}
			if (text == null)
			{
				text = string.Empty;
			}
			if (text.Length > 0 && text.Length == maskString.Length && !returnActualText)
			{
				StringBuilder stringBuilder = new StringBuilder();
				stringBuilder.Append(text);
				for (int i = 0; i < maskString.Length; i++)
				{
					if (!IsLiteralCharacter(maskString[i]) && !IsMaskPositionFilled(text, i))
					{
						if (paddingCharacterInt == 0)
						{
							stringBuilder.Remove(i - num, 1);
							num++;
						}
						else
						{
							stringBuilder[i - num] = PaddingCharacter;
						}
					}
				}
				text = stringBuilder.ToString();
			}
			return text;
		}
	}

	[Category("Behavior")]
	[Browsable(true)]
	[Description("Specifies the format of the text that will be returned by the MaskedEditBox control.")]
	[DefaultValue(ClipModes.IncludeLiterals)]
	public ClipModes ClipMode
	{
		get
		{
			return clipMode;
		}
		set
		{
			clipMode = value;
		}
	}

	[Category("Appearance")]
	[Browsable(true)]
	[Description("The character to use when a thousands separator position is specified.")]
	public char ThousandSeparator
	{
		get
		{
			string numberGroupSeparator = NumberFormatInfoObject.NumberGroupSeparator;
			return Convert.ToChar(numberGroupSeparator);
		}
		set
		{
			if (value != 0)
			{
				NumberFormatInfoObject.NumberGroupSeparator = Convert.ToString(value);
				if (!base.Initializing)
				{
					Mask = maskDisplay;
				}
			}
		}
	}

	[Browsable(true)]
	[Description("The character to use when a date separator position is specified.")]
	[Category("Appearance")]
	public char DateSeparator
	{
		get
		{
			string dateSeparator = DateTimeFormatInfoObject.DateSeparator;
			return Convert.ToChar(dateSeparator);
		}
		set
		{
			if (value != 0)
			{
				if (base.Initializing)
				{
					initDateSeparator = value;
					return;
				}
				DateTimeFormatInfoObject.DateSeparator = Convert.ToString(value);
				Mask = maskDisplay;
				initDateSeparator = value;
			}
		}
	}

	[Description("The character to use when a time separator position is specified.")]
	[Browsable(true)]
	[Category("Appearance")]
	public char TimeSeparator
	{
		get
		{
			string timeSeparator = DateTimeFormatInfoObject.TimeSeparator;
			return Convert.ToChar(timeSeparator);
		}
		set
		{
			if (value != 0)
			{
				DateTimeFormatInfoObject.TimeSeparator = Convert.ToString(value);
				if (!base.Initializing)
				{
					Mask = maskDisplay;
				}
			}
		}
	}

	[Browsable(true)]
	[Category("Appearance")]
	[DefaultValue(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Specify if the individual globalization property changes are to be ignored.")]
	public bool UseLocaleDefault
	{
		get
		{
			return useLocaleDefault;
		}
		set
		{
			useLocaleDefault = value;
			if (!base.Initializing)
			{
				Mask = maskDisplay;
			}
		}
	}

	[Description("The character to use when a decimal seprator position is specified.")]
	[Browsable(true)]
	[Category("Appearance")]
	public char DecimalSeparator
	{
		get
		{
			string numberDecimalSeparator = NumberFormatInfoObject.NumberDecimalSeparator;
			return Convert.ToChar(numberDecimalSeparator);
		}
		set
		{
			if (value != 0)
			{
				NumberFormatInfoObject.NumberDecimalSeparator = Convert.ToString(value);
				if (!base.Initializing)
				{
					Mask = maskDisplay;
				}
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Category("Appearance")]
	[Description("The NumberFormatInfo object that will be used for formatting the number related symbols.")]
	public NumberFormatInfo NumberFormatInfoObject
	{
		get
		{
			if (numberFormatInfoObject == null)
			{
				numberFormatInfoObject = new NumberFormatInfo();
				numberFormatInfoObject.NumberDecimalSeparator = Culture.NumberFormat.NumberDecimalSeparator;
				numberFormatInfoObject.NumberGroupSeparator = Culture.NumberFormat.NumberGroupSeparator;
				numberFormatInfoObject.NumberGroupSizes = Culture.NumberFormat.NumberGroupSizes;
			}
			return numberFormatInfoObject;
		}
		set
		{
			numberFormatInfoObject = new NumberFormatInfo();
			NumberFormatInfo numberFormatInfo = new NumberFormatInfo();
			numberFormatInfo = ((value == null) ? Culture.NumberFormat : value);
			numberFormatInfoObject.NumberDecimalSeparator = numberFormatInfo.NumberDecimalSeparator;
			numberFormatInfoObject.NumberGroupSeparator = numberFormatInfo.NumberGroupSeparator;
			numberFormatInfoObject.NumberGroupSizes = numberFormatInfo.NumberGroupSizes;
			if (!base.Initializing)
			{
				Mask = maskDisplay;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Description("The DateTimeFormatInfo object that will be used for formatting the date related symbols.")]
	[Category("Appearance")]
	public DateTimeFormatInfo DateTimeFormatInfoObject
	{
		get
		{
			if (dateTimeFormatInfoObject == null || dateTimeFormatInfoObject.IsReadOnly)
			{
				dateTimeFormatInfoObject = new DateTimeFormatInfo();
				dateTimeFormatInfoObject.DateSeparator = Culture.DateTimeFormat.DateSeparator;
				dateTimeFormatInfoObject.TimeSeparator = Culture.DateTimeFormat.TimeSeparator;
			}
			return dateTimeFormatInfoObject;
		}
		set
		{
			dateTimeFormatInfoObject = new DateTimeFormatInfo();
			DateTimeFormatInfo dateTimeFormatInfo = new DateTimeFormatInfo();
			dateTimeFormatInfo = ((value == null) ? Culture.DateTimeFormat : value);
			dateTimeFormatInfoObject.DateSeparator = dateTimeFormatInfo.DateSeparator;
			dateTimeFormatInfoObject.TimeSeparator = dateTimeFormatInfo.TimeSeparator;
			if (!base.Initializing)
			{
				Mask = maskDisplay;
			}
		}
	}

	[Browsable(true)]
	[Category("Behavior")]
	[Description("This property specifies if the prompt character can be allowed to be entered as a input character.")]
	[DefaultValue(false)]
	public bool AllowPrompt
	{
		get
		{
			return allowPrompt;
		}
		set
		{
			allowPrompt = value;
		}
	}

	[Browsable(false)]
	public new bool CanUndo
	{
		get
		{
			if (!IsMaskActive())
			{
				return base.CanUndo;
			}
			if (undoBufferText == DisplayString)
			{
				return false;
			}
			return true;
		}
	}

	[Description("Maximum Value that can be set through the MaskedEditBox.")]
	[Category("Behavior")]
	public decimal MaxValue
	{
		get
		{
			return maxValue;
		}
		set
		{
			maxValue = value;
		}
	}

	public new Color BackColor
	{
		get
		{
			return base.BackColor;
		}
		set
		{
			base.BackColor = value;
		}
	}

	[Category("Behavior")]
	[Description("Minimum Value that can be set through the MaskedEditBox.")]
	public decimal MinValue
	{
		get
		{
			return minValue;
		}
		set
		{
			if (value > 0m)
			{
				minValue = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	private int AdjustedSelectionStart
	{
		get
		{
			if (listDisplayToInternalString.Count == 0)
			{
				return base.SelectionStart;
			}
			return adjustedSelectionStart;
		}
		set
		{
			if (listDisplayToInternalString.Count > 0)
			{
				adjustedSelectionStart = value;
			}
			base.SelectionStart = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	private int AdjustedSelectionLength
	{
		get
		{
			if (listDisplayToInternalString.Count == 0)
			{
				return SelectionLength;
			}
			return adjustedSelectionLength;
		}
		set
		{
			if (listDisplayToInternalString.Count > 0)
			{
				adjustedSelectionLength = value;
			}
			SelectionLength = value;
		}
	}

	[Category("Behavior")]
	[DefaultValue(false)]
	[Description("Indicating whether the control use sequentially display mask's characters.")]
	public bool Sequentially
	{
		get
		{
			return m_bSequentially;
		}
		set
		{
			if (value != m_bSequentially)
			{
				m_bSequentially = value;
			}
		}
	}

	private char LastUsedPromptChar
	{
		get
		{
			if (lastUsedPromptChar != 0)
			{
				return lastUsedPromptChar;
			}
			return ' ';
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	[Description("Do not set the Text property for the MaskedEditBox through the designer.")]
	public override string Text
	{
		get
		{
			if (ClipMode == ClipModes.IncludeLiterals || returnActualText)
			{
				return FormattedText;
			}
			return ClipText;
		}
		set
		{
			if (value == null)
			{
				value = string.Empty;
			}
			if (base.Initializing)
			{
				initText = value;
				return;
			}
			string baseText = base.Text;
			try
			{
				Mask = maskDisplay;
				bool flag = internalTextChange;
				internalTextChange = true;
				SetMaskedEditState(MaskedEditState.EditState);
				customFilledPositions.Clear();
				SetExternalText(value, 0, insertMode: true, ignorePromptCharacters: true);
				SetMaskedEditState(MaskedEditState.NormalState);
				internalTextChange = false;
				if (!flag)
				{
					OnTextChanged(new EventArgs());
				}
				internalTextChange = flag;
				initText = value;
			}
			catch
			{
				SetBaseText(baseText);
			}
			OnPropertyChanged(new PropertyChangedEventArgs("Text"));
		}
	}

	[Browsable(true)]
	[Category("Culture")]
	[DefaultValue(true)]
	[Description("The UseUserOverride parameter for CultureInfo.")]
	public bool UseUserOverride
	{
		get
		{
			return useUserOverride;
		}
		set
		{
			useUserOverride = value;
		}
	}

	[Browsable(false)]
	public override bool Multiline
	{
		get
		{
			return false;
		}
		set
		{
			base.Multiline = false;
		}
	}

	[DefaultValue(false)]
	[Browsable(false)]
	public new bool WordWrap
	{
		get
		{
			return false;
		}
		set
		{
			base.WordWrap = false;
		}
	}

	[Browsable(false)]
	public new ScrollBars ScrollBars
	{
		get
		{
			return ScrollBars.None;
		}
		set
		{
			base.ScrollBars = ScrollBars.None;
		}
	}

	public new string[] Lines
	{
		get
		{
			ArrayList arrayList = new ArrayList();
			arrayList.Add(base.Text);
			return (string[])arrayList.ToArray(typeof(string));
		}
		set
		{
			Text = value[0];
		}
	}

	[Description("ValidationError event will be raised when an unacceptable character is encountered as input.")]
	public event ValidationErrorEventHandler ValidationError;

	[Description("MaskSatisfied event will be raised when the required fields in a mask have been satisfied after new text has been entered / the text changes")]
	public event EventHandler MaskSatisfied;

	[Description("Handle this event to provide custom behavior to any mask characters.")]
	public event MaskCustomValidateEventHandler MaskCustomValidate;

	[Browsable(false)]
	[DocumentationExclude]
	public event PropertyChangedEventHandler PropertyChanged;

	[DocumentationExclude]
	protected void RaiseValidationError(string invalidText, int startPosition)
	{
		ValidationErrorArgs args = new ValidationErrorArgs(invalidText, startPosition);
		OnValidationError(args);
	}

	[DocumentationExclude]
	protected void RaiseMaskSatisfied()
	{
		OnMaskSatisfied(EventArgs.Empty);
	}

	protected virtual void OnValidationError(ValidationErrorArgs args)
	{
		if (this.ValidationError != null)
		{
			this.ValidationError(this, args);
		}
	}

	protected virtual void OnMaskSatisfied(EventArgs args)
	{
		if (this.MaskSatisfied != null)
		{
			this.MaskSatisfied(this, args);
		}
	}

	public MaskedEditBox()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(MaskedEditBox));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		rightToLeftCultures.Add("ar");
		rightToLeftCultures.Add("fa");
		rightToLeftCultures.Add("he");
		rightToLeftCultures.Add("ur");
		rightToLeftCultures.Add("syr");
		rightToLeftCultures.Add("div");
		maskString = string.Empty;
		displayString = string.Empty;
		maskDisplay = string.Empty;
		promptCharacterInt = 32;
		passivePromptCharacterInt = 32;
		undoBufferText = string.Empty;
		redoBufferText = string.Empty;
		specialMasks = new Hashtable();
		customFilledPositions = new Hashtable();
		numberFormatInfoObject = null;
		dateTimeFormatInfoObject = null;
		casingNormalize = CasingNormalize.changeToBoth;
		usageMode = MaskedUsageMode.Normal;
		dataGroups = new MaskedEditDataGroupInfoCollection(this);
		internalDataGroups = new MaskedEditDataGroupInfoCollection(this);
		listDisplayToInternalString = new SortedList();
		InitializeComponent();
		InitializeContextMenu();
	}

	public override void EndInit()
	{
		base.EndInit();
		PassivePromptCharacterInt = PassivePromptCharacterInt;
	}

	static MaskedEditBox()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(MaskedEditBox));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		maskOffset = 256;
		if (maskList == null)
		{
			maskList = new ArrayList();
		}
		else
		{
			maskList.Clear();
		}
		maskList.Add('#');
		maskList.Add('.');
		maskList.Add(',');
		maskList.Add(':');
		maskList.Add('/');
		maskList.Add('\\');
		maskList.Add('&');
		maskList.Add('>');
		maskList.Add('<');
		maskList.Add('A');
		maskList.Add('a');
		maskList.Add('9');
		maskList.Add('C');
		maskList.Add('?');
		maskList.Add('y');
		maskList.Add('x');
		maskList.Add('X');
	}

	private void InitializeContextMenu()
	{
		editMenu = new ContextMenu();
		miUndo = new MenuItem(SR.GetString("Undo"));
		miUndo.Click += HandleMenuUndoClick;
		miUndo.Shortcut = Shortcut.CtrlZ;
		editMenu.MenuItems.Add(miUndo);
		editMenu.MenuItems.Add("-");
		miCut = new MenuItem(SR.GetString("Cut"));
		miCut.Click += HandleMenuCutClick;
		miCut.Shortcut = Shortcut.CtrlX;
		editMenu.MenuItems.Add(miCut);
		miCopy = new MenuItem(SR.GetString("Copy"));
		miCopy.Click += HandleMenuCopyClick;
		miCopy.Shortcut = Shortcut.CtrlC;
		editMenu.MenuItems.Add(miCopy);
		miPaste = new MenuItem(SR.GetString("Paste"));
		miPaste.Click += HandleMenuPasteClick;
		miPaste.Shortcut = Shortcut.CtrlV;
		editMenu.MenuItems.Add(miPaste);
		miDelete = new MenuItem(SR.GetString("Delete"));
		miDelete.Click += HandleMenuDeleteClick;
		miDelete.Shortcut = Shortcut.Del;
		editMenu.MenuItems.Add(miDelete);
		editMenu.MenuItems.Add("-");
		miSelectAll = new MenuItem(SR.GetString("SelectAll"));
		miSelectAll.Click += HandleMenuSelectAllClick;
		miSelectAll.Shortcut = Shortcut.CtrlA;
		editMenu.MenuItems.Add(miSelectAll);
	}

	private void SetMaskedEditState(MaskedEditState newState)
	{
		SetMaskedEditState(newState, updateDisplay: true);
	}

	private void SetMaskedEditState(MaskedEditState newState, bool updateDisplay)
	{
		if (internalState == newState)
		{
			return;
		}
		switch (newState)
		{
		case MaskedEditState.EditState:
			AdjustStringAndSelectionForNullPrompt();
			internalState = newState;
			break;
		case MaskedEditState.NormalState:
		{
			internalState = newState;
			char c = '\0';
			c = ((!hasFocus) ? ((char)passivePromptCharacterInt) : ((char)promptCharacterInt));
			internalDisplayString = DisplayString;
			if (c == '\0' || Sequentially)
			{
				int num = AdjustedSelectionStart;
				int num2 = AdjustedSelectionLength;
				int num3 = 0;
				DisplayString = GetDisplayStringForNullPrompt(displayString);
				if (updateDisplay)
				{
					returnActualText = true;
					internalTextChange = true;
					int validMappedPosition = GetValidMappedPosition(num);
					num3 = GetValidMappedPosition(num + num2) - validMappedPosition;
					RefreshDisplay();
					SetSelection(validMappedPosition, num3);
					internalTextChange = false;
					returnActualText = false;
				}
			}
			else
			{
				listDisplayToInternalString.Clear();
			}
			break;
		}
		}
	}

	private void HandleContextMenuPopup(object sender, EventArgs ea)
	{
		Focus();
		miUndo.Enabled = CanUndo;
		if (!base.Enabled || base.ReadOnly)
		{
			miCut.Enabled = false;
			miPaste.Enabled = false;
			miDelete.Enabled = false;
			if (SelectionLength > 0)
			{
				miCopy.Enabled = true;
			}
			else
			{
				miCopy.Enabled = false;
			}
		}
		else
		{
			if (SelectionLength > 0)
			{
				miCut.Enabled = true;
				miCopy.Enabled = true;
			}
			else
			{
				miCut.Enabled = false;
				miCopy.Enabled = false;
			}
			if (Text.Length > 0)
			{
				miDelete.Enabled = true;
			}
			else
			{
				miDelete.Enabled = false;
			}
			DataObject dataObject = (DataObject)Clipboard.GetDataObject();
			miPaste.Enabled = dataObject.GetDataPresent(typeof(string));
		}
		if (SelectionLength == Text.Length)
		{
			miSelectAll.Enabled = false;
		}
		else
		{
			miSelectAll.Enabled = true;
		}
	}

	private void HandleMenuUndoClick(object sender, EventArgs ea)
	{
		Undo();
		ClearUndo();
	}

	private void HandleMenuCutClick(object sender, EventArgs ea)
	{
		Cut();
	}

	private void HandleMenuCopyClick(object sender, EventArgs ea)
	{
		Copy();
	}

	private void HandleMenuPasteClick(object sender, EventArgs ea)
	{
		Paste();
	}

	private void HandleMenuDeleteClick(object sender, EventArgs ea)
	{
		if (IsMaskActive() && !base.ReadOnly)
		{
			internalTextChange = true;
			SetMaskedEditState(MaskedEditState.EditState);
			HandleDeleteKey();
			SetMaskedEditState(MaskedEditState.NormalState);
			internalTextChange = false;
			OnTextChanged(new EventArgs());
		}
	}

	private void HandleMenuSelectAllClick(object sender, EventArgs ea)
	{
		SelectAll();
	}

	private void InitializeMaskEdit()
	{
		SetMaskedEditState(MaskedEditState.EditState);
		internalTextChange = true;
		Mask = initMask;
		internalTextChange = false;
		casingNormalize = CasingNormalize.changeToBoth;
		if (SpecialCultureValue != SpecialCultureValues.CurrentCulture)
		{
			Culture = initCulture;
		}
		else
		{
			ApplyRightToLeft();
		}
		internalTextChange = true;
		if (maskString == null || maskString.Length == 0)
		{
			Text = initText;
		}
		internalTextChange = false;
		if (initMaxLength != 0)
		{
			MaxLength = initMaxLength;
		}
		if (UsageMode == MaskedUsageMode.Numeric)
		{
			int num = 0;
			internalDataGroups.Clear();
			num = maskDisplay.IndexOf(DecimalSeparator);
			if (num != -1)
			{
				if (maskDisplay.IndexOf(DecimalSeparator, num + 1) == -1)
				{
					if (num != 0)
					{
						internalDataGroups.Add(new MaskedEditDataGroupInfo("Number", num, MaskGroupAlignment.Right));
						internalDataGroups.Add(new MaskedEditDataGroupInfo("Decimal", maskDisplay.Length - num, MaskGroupAlignment.Left));
					}
					else
					{
						internalDataGroups.Add(new MaskedEditDataGroupInfo("Decimal", maskDisplay.Length, MaskGroupAlignment.Left));
					}
				}
			}
			else if (maskDisplay.Length > 0)
			{
				internalDataGroups.Add(new MaskedEditDataGroupInfo("Number", maskDisplay.Length, MaskGroupAlignment.Right));
			}
		}
		base.AccessibleName = "MaskedEditBox";
		base.AccessibleDescription = "MaskedEdit TextBox";
		base.AccessibleRole = AccessibleRole.Text;
		SetMaskedEditState(MaskedEditState.NormalState);
	}

	private char GetLocalizedValue(MaskCharTypes type)
	{
		char c = ' ';
		return type switch
		{
			MaskCharTypes.maskCharDecimal => DecimalSeparator, 
			MaskCharTypes.maskCharDateSep => DateSeparator, 
			MaskCharTypes.maskCharThousands => ThousandSeparator, 
			MaskCharTypes.maskCharTimeSep => TimeSeparator, 
			_ => (char)maskList[(int)type], 
		};
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
		if (disposing && IsMaskActive())
		{
			ContextMenu.Popup -= HandleContextMenuPopup;
		}
	}

	private void InitializeComponent()
	{
	}

	private char GetLastMaskCharacter()
	{
		char c = '\0';
		if (maskString.Length > 0)
		{
			c = maskString[maskString.Length - 1];
		}
		if (c > -maskOffset)
		{
			c = (char)(c - maskOffset);
		}
		return c;
	}

	private void SetMaxLength(int maskLength)
	{
		base.MaxLength = maskLength;
	}

	private void OnPropertyChanged(PropertyChangedEventArgs args)
	{
		if (this.PropertyChanged != null)
		{
			this.PropertyChanged(this, args);
		}
	}

	protected override void OnTextChanged(EventArgs arg)
	{
		m_bModified = m_bIsTextByInputChanged;
		m_bIsTextByInputChanged = false;
		if (!internalTextChange)
		{
			base.OnTextChanged(arg);
		}
	}

	private bool ShouldSerializeCulture()
	{
		if (SpecialCultureValue == SpecialCultureValues.None)
		{
			return true;
		}
		return false;
	}

	private void ResetCulture()
	{
		SpecialCultureValue = SpecialCultureValues.None;
		Culture = CultureInfo.CurrentCulture;
	}

	private bool ShouldSerializeSpecialCultureValue()
	{
		if (SpecialCultureValue != SpecialCultureValues.CurrentCulture)
		{
			return true;
		}
		return false;
	}

	private void ResetSpecialCultureValue()
	{
		SpecialCultureValue = SpecialCultureValues.CurrentCulture;
		Culture = CultureInfo.CurrentCulture;
	}

	private string GetClipText(string displayText, int startPosition, int endPosition)
	{
		int num = 0;
		string text = string.Empty;
		if (endPosition > maskString.Length)
		{
			endPosition = maskString.Length;
		}
		if (maskString != string.Empty)
		{
			for (num = startPosition; num < endPosition; num++)
			{
				if (!IsLiteralCharacter(maskString[num]))
				{
					text += displayText[num];
				}
			}
			StringBuilder stringBuilder = new StringBuilder();
			stringBuilder.Append(text);
			char c = '\0';
			c = ((!hasFocus) ? GetPassivePromptCharacter() : GetPromptCharacter());
			if (paddingCharacterInt == 0)
			{
				int num2 = 0;
				int length = stringBuilder.Length;
				for (int i = 0; i < length; i++)
				{
					if (stringBuilder[i - num2] == c)
					{
						stringBuilder.Remove(i - num2, 1);
						num2++;
					}
				}
			}
			else
			{
				stringBuilder.Replace(c, PaddingCharacter);
			}
			return stringBuilder.ToString();
		}
		return displayText;
	}

	[Browsable(false)]
	[Description("The data groups that can be used for splitting up the text.")]
	[Category("Behavior")]
	public string GetDataGroupValue(string formttedText, MaskedEditDataGroupInfoCollection currentDataGroups, int index)
	{
		return GetDataGroupValue(formttedText, currentDataGroups, index, ClipMode);
	}

	[Description("The data groups that can be used for splitting up the text.")]
	[Browsable(false)]
	[Category("Behavior")]
	public string GetDataGroupValue(MaskedEditDataGroupInfoCollection currentDataGroups, int index)
	{
		return GetDataGroupValue(FormattedText, currentDataGroups, index, ClipMode);
	}

	private string GetDataGroupValue(string formattedText, MaskedEditDataGroupInfoCollection currentDataGroups, int index, ClipModes clipMode)
	{
		ArrayList arrayList = new ArrayList();
		int num = 0;
		foreach (MaskedEditDataGroupInfo currentDataGroup in currentDataGroups)
		{
			int num2 = Math.Min(currentDataGroup.DataGroupSize, formattedText.Length - num);
			string value = ((clipMode != ClipModes.IncludeLiterals) ? GetClipText(DisplayString, num, num + num2) : formattedText.Substring(num, num2));
			arrayList.Add(value);
			num += num2;
		}
		string[] array = (string[])arrayList.ToArray(typeof(string));
		return array[index];
	}

	private string GetDataGroupText(MaskedEditDataGroupInfoCollection currentDataGroups, int index, string fullText)
	{
		ArrayList arrayList = new ArrayList();
		int num = 0;
		foreach (MaskedEditDataGroupInfo currentDataGroup in currentDataGroups)
		{
			int num2 = Math.Min(currentDataGroup.DataGroupSize, fullText.Length - num);
			string value = fullText.Substring(num, num2);
			arrayList.Add(value);
			num += num2;
		}
		string[] array = (string[])arrayList.ToArray(typeof(string));
		return array[index];
	}

	private int GetDataGroupOffset(MaskedEditDataGroupInfoCollection currentDataGroups, int groupIndex)
	{
		int num = 0;
		int num2 = 0;
		foreach (MaskedEditDataGroupInfo currentDataGroup in currentDataGroups)
		{
			if (num2 != groupIndex)
			{
				num += currentDataGroup.DataGroupSize;
				num2++;
				continue;
			}
			break;
		}
		return num;
	}

	private bool ShouldSerializeThousandSeparator()
	{
		if (Culture.NumberFormat.NumberGroupSeparator != Convert.ToString(ThousandSeparator))
		{
			return true;
		}
		return false;
	}

	private void ResetThousandSeparator()
	{
		ThousandSeparator = Convert.ToChar(Culture.NumberFormat.NumberGroupSeparator);
	}

	private bool ShouldSerializeDateSeparator()
	{
		if (Culture.DateTimeFormat.DateSeparator != Convert.ToString(DateSeparator))
		{
			return true;
		}
		return false;
	}

	private void ResetDateSeparator()
	{
		DateSeparator = Convert.ToChar(Culture.DateTimeFormat.DateSeparator);
	}

	private bool ShouldSerializeTimeSeparator()
	{
		if (Culture.DateTimeFormat.TimeSeparator != Convert.ToString(TimeSeparator))
		{
			return true;
		}
		return false;
	}

	private void ResetTimeSeparator()
	{
		TimeSeparator = Convert.ToChar(Culture.DateTimeFormat.TimeSeparator);
	}

	private bool ShouldSerializeDecimalSeparator()
	{
		if (Culture.NumberFormat.NumberDecimalSeparator != Convert.ToString(DecimalSeparator))
		{
			return true;
		}
		return false;
	}

	private void ResetDecimalSeparator()
	{
		DecimalSeparator = Convert.ToChar(Culture.NumberFormat.NumberDecimalSeparator);
	}

	protected bool IsMaskActive()
	{
		if (maskString == null || maskString.Length < 1)
		{
			return false;
		}
		return true;
	}

	private bool ShouldSerializeMaxValue()
	{
		if (maxValue != decimal.MaxValue)
		{
			return true;
		}
		return false;
	}

	private void ResetMaxValue()
	{
		MaxValue = decimal.MaxValue;
	}

	private bool ShouldSerializeBackColor()
	{
		if (BackColor == SystemColors.Window)
		{
			return false;
		}
		return true;
	}

	public override void ResetBackColor()
	{
		BackColor = SystemColors.Window;
	}

	private bool ShouldSerializeMinValue()
	{
		if (minValue != 0m)
		{
			return true;
		}
		return false;
	}

	private void ResetMinValue()
	{
		MinValue = 0m;
	}

	public void Reset()
	{
		string empty = string.Empty;
		ApplyMaskLogic(maskString, ref empty);
		DisplayString = empty;
		RefreshPromptCharacter();
		MoveCursorPosition(-1, 1, selected: false);
	}

	public void RefreshDisplay()
	{
		RefreshDisplay(DisplayString, updateUndo: true);
	}

	protected void RefreshDisplay(string dispString, bool updateUndo)
	{
		if (Mask != string.Empty)
		{
			SetBaseText(dispString);
			if (updateUndo)
			{
				undoBufferText = redoBufferText;
				redoBufferText = dispString;
			}
		}
	}

	private int GetValidMappedPosition(int positionInFullString)
	{
		int num = positionInFullString;
		int num2 = 0;
		bool flag = false;
		int num3 = 0;
		if (num != 0)
		{
			if (listDisplayToInternalString.Count > 0)
			{
				if (positionInFullString >= listDisplayToInternalString.Count)
				{
					positionInFullString = listDisplayToInternalString.Count - 1;
					num3++;
				}
				num2 = positionInFullString;
				while (num2 >= 0 && !flag)
				{
					int num4 = 0;
					num4 = (int)listDisplayToInternalString.GetByIndex(num2);
					if (num4 != -1)
					{
						num = num4;
						flag = true;
					}
					else
					{
						num2--;
						num3++;
					}
				}
				if (!flag)
				{
					num = 0;
				}
			}
			if (num3 > 0)
			{
				num++;
			}
		}
		return num;
	}

	private int GetAdjustedPositionForNullPrompt(int currentSelectionPos)
	{
		int num = -1;
		int num2 = 0;
		bool flag = false;
		if (currentSelectionPos == 0)
		{
			return 0;
		}
		if (listDisplayToInternalString.ContainsValue(currentSelectionPos))
		{
			num = listDisplayToInternalString.IndexOfValue(currentSelectionPos);
		}
		else
		{
			num = currentSelectionPos;
			while (num >= 0)
			{
				num--;
				num2++;
				if (listDisplayToInternalString.ContainsValue(num))
				{
					num = listDisplayToInternalString.IndexOfValue(num);
					flag = true;
					break;
				}
			}
			if (!flag)
			{
				num2 = 0;
				num = currentSelectionPos;
			}
		}
		return Math.Max(num + num2, 0);
	}

	protected bool IsLiteralCharacter(char charIn)
	{
		return charIn < maskOffset;
	}

	protected int GetMaskCharValue(char charIn)
	{
		int result = -1;
		if (maskList.Contains(charIn))
		{
			result = maskList.IndexOf(charIn);
		}
		return result;
	}

	[DocumentationExclude]
	protected override void OnEnter(EventArgs arg)
	{
		base.OnEnter(arg);
		if (maskString.Length > 0 && !base.DesignMode)
		{
			hasFocus = true;
			internalTextChange = true;
			SetMaskedEditState(MaskedEditState.EditState);
			RefreshPromptCharacter();
			switch (PositionAt)
			{
			case SpecialCursorPosition.Decimal:
				PositionNearDecimal();
				break;
			case SpecialCursorPosition.FirstMaskPosition:
				PositionAtFirstMaskPosition();
				break;
			}
			SetMaskedEditState(MaskedEditState.NormalState);
			internalTextChange = false;
		}
	}

	[DocumentationExclude]
	protected override void OnClick(EventArgs arg)
	{
		base.OnClick(arg);
		if (maskString.Length > 0 && !base.DesignMode && focusClick)
		{
			switch (PositionAt)
			{
			case SpecialCursorPosition.Decimal:
				PositionNearDecimal();
				break;
			case SpecialCursorPosition.FirstMaskPosition:
				PositionAtFirstMaskPosition();
				break;
			case SpecialCursorPosition.FirstPosition:
				PositionAtFirstPos();
				break;
			}
			focusClick = false;
		}
	}

	protected override void OnLeave(EventArgs arg)
	{
		base.OnLeave(arg);
		if (maskString.Length > 0 && !base.DesignMode)
		{
			internalTextChange = true;
			hasFocus = false;
			m_bIsTextByInputChanged = Modified;
			SetMaskedEditState(MaskedEditState.EditState);
			ApplyAlignmentToGroups();
			m_bIsTextByInputChanged = Modified;
			SetMaskedEditState(MaskedEditState.NormalState);
			RefreshPromptCharacter();
			focusClick = true;
			internalTextChange = false;
		}
	}

	protected void ApplyRightToLeft()
	{
		if (rightToLeftCultures.Contains(Culture.Parent.Name))
		{
			if (RightToLeft != RightToLeft.Yes)
			{
				RightToLeft = RightToLeft.Yes;
			}
		}
		else if (RightToLeft != RightToLeft.No)
		{
			RightToLeft = RightToLeft.No;
		}
	}

	protected string ExtractMaskValues(string maskIn)
	{
		string text = "";
		MaskCharTypes maskCharTypes = MaskCharTypes.maskCharDigitRequired;
		int num = 0;
		char c = ' ';
		bool flag = false;
		specialMasks.Clear();
		int num2 = 0;
		int num3 = 0;
		if (maskIn != null)
		{
			int length = maskIn.Length;
			int num4 = 0;
			for (num4 = 0; num4 < length; num4++)
			{
				c = maskIn[num4];
				num = GetMaskCharValue(c);
				if (num >= 0)
				{
					if (flag)
					{
						text += c;
						flag = false;
						num3++;
						continue;
					}
					maskCharTypes = (MaskCharTypes)num;
					switch (maskCharTypes)
					{
					case MaskCharTypes.maskCharEscape:
						flag = true;
						break;
					case MaskCharTypes.maskCharUppercase:
					case MaskCharTypes.maskCharLowercase:
					{
						int num5 = Math.Max(0, num4 - specialMasks.Count - num2 - num3);
						if (specialMasks.ContainsKey(num5))
						{
							specialMasks.Remove(num5);
							num2++;
						}
						specialMasks.Add(num5, c);
						break;
					}
					case MaskCharTypes.maskCharDecimal:
					case MaskCharTypes.maskCharThousands:
					case MaskCharTypes.maskCharTimeSep:
					case MaskCharTypes.maskCharDateSep:
					{
						char localizedValue = GetLocalizedValue(maskCharTypes);
						text += localizedValue;
						break;
					}
					default:
						text += (char)(c + maskOffset);
						break;
					}
				}
				else
				{
					text += c;
					flag = false;
				}
			}
		}
		return text;
	}

	protected void RefreshPromptCharacter()
	{
		string text = DisplayString;
		int num = 0;
		char currentPromptCharacter = GetCurrentPromptCharacter();
		try
		{
			if (maskString == null || !(maskString != string.Empty))
			{
				return;
			}
			if (lastUsedPromptChar != currentPromptCharacter)
			{
				int num2 = 0;
				for (num2 = 0; num2 < maskString.Length; num2++)
				{
					if (!IsLiteralCharacter(maskString[num2]))
					{
						if (!IsMaskPositionFilled(text, num2 - num))
						{
							StringBuilder stringBuilder = new StringBuilder();
							stringBuilder.Append(text);
							stringBuilder[num2] = currentPromptCharacter;
							text = stringBuilder.ToString();
						}
					}
					else
					{
						StringBuilder stringBuilder2 = new StringBuilder();
						stringBuilder2.Append(text);
						stringBuilder2[num2 - num] = maskString[num2];
						text = stringBuilder2.ToString();
					}
				}
			}
			lastUsedPromptChar = currentPromptCharacter;
			DisplayString = text;
			RefreshDisplay(DisplayString, updateUndo: false);
		}
		catch
		{
			throw;
		}
	}

	protected void ApplyMaskLogic(string maskStringIn, ref string displayString)
	{
		int num = 0;
		int num2 = 0;
		char c = '\0';
		char c2 = '\0';
		displayString = null;
		if (maskStringIn == null)
		{
			return;
		}
		num2 = maskStringIn.Length;
		for (num = 0; num < num2; num++)
		{
			c = maskStringIn[num];
			if (IsLiteralCharacter(c))
			{
				displayString += c;
				continue;
			}
			c2 = ((!hasFocus) ? GetPassivePromptCharacter() : GetPromptCharacter());
			if (c2 != 0)
			{
				displayString += c2;
			}
		}
	}

	protected int MoveCursorPosition(int currentPosition, int direction, bool selected)
	{
		int num = 0;
		int num2 = 0;
		int num3 = 0;
		if (selected)
		{
			num = 1;
		}
		if (!IsMaskActive())
		{
			SetSelection(currentPosition, 0);
			return currentPosition;
		}
		num3 = maskString.Length;
		num2 = currentPosition;
		switch (direction)
		{
		case 1:
			num2 = GetNextDataPos(currentPosition);
			if (num2 == -1)
			{
				if (currentPosition != -1)
				{
					if (IsLiteralCharacter(maskString[currentPosition]))
					{
						SetSelection(currentPosition, num);
					}
					else
					{
						SetSelection(currentPosition + 1, num);
					}
				}
				else
				{
					SetSelection(0, 0);
				}
			}
			else
			{
				SetSelection(num2, num);
			}
			break;
		case -1:
			num2 = GetPrevDataPos(currentPosition, bUnfilled: true);
			if (num2 >= 0)
			{
				SetSelection(num2, num);
			}
			break;
		}
		if (num2 < 0 || num2 >= num3)
		{
			return -1;
		}
		return num2;
	}

	protected int GetNextDataPos(int currentPosition)
	{
		int i = currentPosition;
		int length = maskString.Length;
		if (length < 1)
		{
			return currentPosition;
		}
		if (i < length)
		{
			for (i++; i < length && IsLiteralCharacter(maskString[i]); i++)
			{
			}
			if (i >= length)
			{
				i = -1;
			}
		}
		return i;
	}

	private int GetFirstPrevDataPos(string displayText, int currentPosition)
	{
		char c = '\0';
		int result = currentPosition;
		if (maskString == null)
		{
			return result;
		}
		int num = currentPosition;
		if (maskString.Length < 1)
		{
			return result;
		}
		c = GetCurrentPromptCharacter();
		num--;
		if (num >= maskString.Length)
		{
			num = maskString.Length - 1;
		}
		while (num >= 0)
		{
			if (IsLiteralCharacter(maskString[num]))
			{
				num++;
				result = num;
				break;
			}
			if (displayText[num] != c)
			{
				break;
			}
			result = num;
			num--;
		}
		return result;
	}

	protected int GetPrevDataPos(int currentPosition)
	{
		return GetPrevDataPos(currentPosition, bUnfilled: false);
	}

	protected int GetPrevDataPos(int currentPosition, bool bUnfilled)
	{
		int num = 0;
		if (maskString == null)
		{
			return currentPosition;
		}
		int num2 = currentPosition;
		if (maskString.Length < 1)
		{
			return currentPosition;
		}
		if (hasFocus)
		{
			GetPromptCharacter();
			num = promptCharacterInt;
		}
		else
		{
			GetPassivePromptCharacter();
			num = passivePromptCharacterInt;
		}
		num2--;
		while (num2 >= 0)
		{
			if (IsLiteralCharacter(maskString[num2]))
			{
				num2--;
				continue;
			}
			if (!bUnfilled || num == 0 || (DisplayString.Length > 0 && DisplayString[num2] == GetPromptCharacter()))
			{
				break;
			}
			num2--;
		}
		return num2;
	}

	protected void SetSelection(int startPosition, int selectionLength)
	{
		AdjustedSelectionStart = Math.Max(0, startPosition);
		AdjustedSelectionLength = Math.Max(0, selectionLength);
	}

	private char GetCurrentPromptCharacter()
	{
		if (hasFocus)
		{
			return GetPromptCharacter();
		}
		return GetPassivePromptCharacter();
	}

	protected string InsertChar(int startPosition, char newChar, bool updateDisplay)
	{
		return InsertChar(DisplayString, startPosition, newChar, updateDisplay);
	}

	protected string InsertChar(string currentDisplayText, int startPosition, char newChar, bool updateDisplay)
	{
		StringBuilder stringBuilder = null;
		char currentPromptCharacter = GetCurrentPromptCharacter();
		if (startPosition < 0 || startPosition > maskString.Length)
		{
			return currentDisplayText;
		}
		int prevDataPos = GetPrevDataPos(maskString.Length);
		int num = prevDataPos;
		while (num >= 0)
		{
			if (currentPromptCharacter != 0 && DisplayString[num] == currentPromptCharacter)
			{
				num = GetPrevDataPos(num);
				continue;
			}
			if (currentPromptCharacter != 0)
			{
			}
			break;
		}
		if (num == prevDataPos)
		{
			if (DisplayString[startPosition] == currentPromptCharacter)
			{
				stringBuilder = new StringBuilder();
				stringBuilder.Append(currentDisplayText);
				stringBuilder[startPosition] = newChar;
				currentDisplayText = stringBuilder.ToString();
			}
			return currentDisplayText;
		}
		while (num >= startPosition)
		{
			stringBuilder = new StringBuilder();
			stringBuilder.Append(currentDisplayText);
			stringBuilder[GetNextDataPos(num)] = currentDisplayText[num];
			currentDisplayText = stringBuilder.ToString();
			num = GetPrevDataPos(num);
		}
		stringBuilder = new StringBuilder();
		stringBuilder.Append(currentDisplayText);
		char c = maskString[startPosition];
		if (GetMaskCharValue((char)(c - maskOffset)) == 0 && newChar == ' ')
		{
			stringBuilder[startPosition] = GetPromptCharacter();
			char c2 = stringBuilder[startPosition];
			char c3 = stringBuilder[maskDisplay.Length - 1];
			if (c2 != GetCurrentPromptCharacter() && c3 == GetCurrentPromptCharacter())
			{
				stringBuilder.Insert(0, GetCurrentPromptCharacter());
				stringBuilder.Remove(stringBuilder.Length - 1, 1);
			}
		}
		else
		{
			stringBuilder[startPosition] = newChar;
		}
		currentDisplayText = stringBuilder.ToString();
		SetCustomFilledPosition(newChar, startPosition);
		if (updateDisplay)
		{
			DisplayString = currentDisplayText;
			RefreshDisplay(DisplayString, updateUndo: false);
			int nextDataPos = GetNextDataPos(startPosition);
			if (nextDataPos != -1)
			{
				SetSelection(nextDataPos, 0);
			}
			else
			{
				SetSelection(startPosition + 1, 0);
			}
		}
		return currentDisplayText;
	}

	protected void SetCustomFilledPosition(char newChar, int index)
	{
		if (customFilledPositions.ContainsKey(index))
		{
			customFilledPositions.Remove(index);
		}
		if (AllowPrompt && newChar <= maskOffset && (newChar == GetPromptCharacter() || newChar == GetPassivePromptCharacter()))
		{
			customFilledPositions.Add(index, newChar);
		}
	}

	protected char ApplySpecialMasks(int currentPosition, char currentChar)
	{
		for (int num = currentPosition; num >= 0; num--)
		{
			if (specialMasks.ContainsKey(num))
			{
				switch ((MaskCharTypes)GetMaskCharValue((char)specialMasks[num]))
				{
				case MaskCharTypes.maskCharLowercase:
					casingNormalize = CasingNormalize.changeToLowerOnly;
					break;
				case MaskCharTypes.maskCharUppercase:
					casingNormalize = CasingNormalize.changeToUpperOnly;
					break;
				}
				break;
			}
		}
		if (casingNormalize != CasingNormalize.changeToBoth)
		{
			currentChar = ApplyCasing(currentChar, casingNormalize);
		}
		return currentChar;
	}

	[DocumentationExclude]
	protected bool HandleDecimalKey()
	{
		int num = 0;
		int num2 = AdjustedSelectionStart;
		num = DisplayString.IndexOf(DecimalSeparator, num2, DisplayString.Length - num2);
		if (num != -1)
		{
			num = GetNextDataPos(num);
			SetSelection(num, 0);
		}
		return true;
	}

	private void ApplyAlignmentToGroups()
	{
		if (UsageMode == MaskedUsageMode.Numeric && DataGroups.Count == 0 && internalDataGroups.Count > 0)
		{
			for (int i = 0; i < internalDataGroups.Count; i++)
			{
				ApplyAlignmentToGroup(internalDataGroups, i);
			}
			return;
		}
		for (int j = 0; j < DataGroups.Count; j++)
		{
			ApplyAlignmentToGroup(DataGroups, j);
		}
		RefreshDisplay();
	}

	private void ApplyAlignmentToGroup(MaskedEditDataGroupInfoCollection currentDataGroups, int groupIndex)
	{
		string text = GetDataGroupText(currentDataGroups, groupIndex, DisplayString);
		int dataGroupOffset = GetDataGroupOffset(currentDataGroups, groupIndex);
		string text2 = DisplayString;
		int num = 0;
		bool flag = false;
		string text3 = string.Empty;
		string text4 = text;
		if (currentDataGroups[groupIndex].DataGroupAlignment == MaskGroupAlignment.Left)
		{
			for (num = 0; num < text.Length; num++)
			{
				if (IsLiteralCharacter(maskString[dataGroupOffset + num]) || IsMaskPositionFilled(text, num))
				{
					continue;
				}
				int num2 = num + 1;
				while (!flag && num2 < text.Length)
				{
					if (!IsLiteralCharacter(maskString[dataGroupOffset + num2]))
					{
						char c = text[num2];
						if (c != LastUsedPromptChar)
						{
							if (IsCharValid(dataGroupOffset + num, c))
							{
								StringBuilder stringBuilder = new StringBuilder();
								stringBuilder.Append(text);
								stringBuilder[num2] = LastUsedPromptChar;
								stringBuilder[num] = c;
								text = stringBuilder.ToString();
								SetCustomFilledPosition(c, num);
								RemoveFromCustomFilledList(num2);
							}
							break;
						}
					}
					num2++;
				}
			}
		}
		else if (currentDataGroups[groupIndex].DataGroupAlignment == MaskGroupAlignment.Right)
		{
			for (num = text.Length - 1; num >= 0; num--)
			{
				if (!IsLiteralCharacter(maskString[dataGroupOffset + num]) && !IsMaskPositionFilled(text, num))
				{
					int num3 = num - 1;
					while (!flag && num3 >= 0)
					{
						if (!IsLiteralCharacter(maskString[dataGroupOffset + num3]))
						{
							char c2 = text[num3];
							if (c2 != LastUsedPromptChar)
							{
								if (IsCharValid(dataGroupOffset + num, c2))
								{
									StringBuilder stringBuilder2 = new StringBuilder();
									stringBuilder2.Append(text);
									stringBuilder2[num3] = LastUsedPromptChar;
									stringBuilder2[num] = c2;
									text = stringBuilder2.ToString();
									SetCustomFilledPosition(c2, num);
									RemoveFromCustomFilledList(num3);
								}
								break;
							}
						}
						num3--;
					}
				}
			}
		}
		else if (currentDataGroups[groupIndex].DataGroupAlignment == MaskGroupAlignment.Center)
		{
			int num4 = 0;
			int num5 = 0;
			int num6 = 0;
			for (num = 0; num < text.Length; num++)
			{
				if (IsLiteralCharacter(maskString[dataGroupOffset + num]))
				{
					continue;
				}
				num4++;
				num5++;
				if (IsMaskPositionFilled(text, num))
				{
					continue;
				}
				num5--;
				int num7 = num + 1;
				while (!flag && num7 < text.Length)
				{
					if (!IsLiteralCharacter(maskString[dataGroupOffset + num7]))
					{
						char c3 = text[num7];
						if (c3 != LastUsedPromptChar)
						{
							if (IsCharValid(dataGroupOffset + num, c3))
							{
								StringBuilder stringBuilder3 = new StringBuilder();
								stringBuilder3.Append(text);
								stringBuilder3[num7] = LastUsedPromptChar;
								stringBuilder3[num] = c3;
								text = stringBuilder3.ToString();
								SetCustomFilledPosition(c3, num);
								RemoveFromCustomFilledList(num7);
							}
							break;
						}
					}
					num7++;
				}
			}
			num6 = num4 - num5;
			if (num6 > 1)
			{
				int num8 = num6 / 2;
				int num9 = 0;
				for (num = text.Length - 1; num > 0; num--)
				{
					if (!IsLiteralCharacter(maskString[dataGroupOffset + num]))
					{
						if (IsMaskPositionFilled(text, num))
						{
							break;
						}
						num9++;
					}
				}
				int num10 = num9 - num8;
				if (num10 > 0)
				{
					for (num = text.Length - 1; num >= 0; num--)
					{
						if (!IsLiteralCharacter(maskString[dataGroupOffset + num]) && IsMaskPositionFilled(text, num))
						{
							int num11 = num;
							while (num11 >= 0 && IsCharValid(dataGroupOffset + num11 + num10, text[num11]))
							{
								StringBuilder stringBuilder4 = new StringBuilder();
								stringBuilder4.Append(text);
								stringBuilder4[num11] = LastUsedPromptChar;
								stringBuilder4[num11 + num10] = text[num11];
								SetCustomFilledPosition(text[num11], num11 + num10);
								RemoveFromCustomFilledList(num11);
								text = stringBuilder4.ToString();
								num11--;
							}
						}
					}
				}
			}
		}
		if (text != text4)
		{
			if (dataGroupOffset != 0)
			{
				text3 = text2.Substring(0, dataGroupOffset);
			}
			text3 += text;
			if (dataGroupOffset + text.Length < text2.Length)
			{
				text3 += text2.Substring(dataGroupOffset + text.Length, text2.Length - dataGroupOffset - text.Length);
			}
			DisplayString = text3;
		}
	}

	private int GetFirstEmptyPosition(int startPosition)
	{
		string formattedText = FormattedText;
		int num = 0;
		num = startPosition;
		while (num >= 0 && (IsLiteralCharacter(maskString[num]) || formattedText[num] != GetPromptCharacter()))
		{
			num--;
		}
		return num;
	}

	[DocumentationExclude]
	protected override bool ProcessKeyMessage(ref Message m)
	{
		string text = Text;
		bool flag = false;
		if (base.ReadOnly || maskString == null || maskString.Length < 1)
		{
			return base.ProcessKeyMessage(ref m);
		}
		int num = (int)m.WParam | (int)Control.ModifierKeys;
		int modifierKeys = (int)Control.ModifierKeys;
		if (IsMaskActive())
		{
			if (m.Msg == 258)
			{
				supressKeyPress = true;
				if (num != 8 && num != 13)
				{
					SetMaskedEditState(MaskedEditState.EditState);
					if ((ushort)num == DecimalSeparator && UsageMode == MaskedUsageMode.Numeric)
					{
						HandleDecimalKey();
						SetMaskedEditState(MaskedEditState.NormalState);
						m_bIsTextByInputChanged = text != Text;
						return base.ProcessKeyMessage(ref m);
					}
					if (IsCharValid(base.SelectionStart, (char)num))
					{
						char charInput = ApplySpecialMasks(base.SelectionStart, (char)num);
						HandleCharacterInput(charInput);
						flag = true;
						m_bIsTextByInputChanged = text != Text;
					}
					else if ((ushort)num == DateSeparator || (ushort)num == TimeSeparator || (ushort)num == DecimalSeparator)
					{
						int num2 = 0;
						int num3 = AdjustedSelectionStart;
						num2 = DisplayString.IndexOf((char)num, num3, DisplayString.Length - num3);
						if (num2 != -1)
						{
							num2 = GetNextDataPos(num2);
							SetSelection(num2, 0);
						}
					}
					else if (base.CausesValidation)
					{
						StringBuilder stringBuilder = new StringBuilder();
						stringBuilder.Append(DisplayString);
						if (base.SelectionStart < DisplayString.Length)
						{
							stringBuilder[base.SelectionStart] = (char)num;
						}
						else
						{
							stringBuilder.Append((char)num);
						}
						string invalidText = stringBuilder.ToString();
						if (num != 8)
						{
							RaiseValidationError(invalidText, base.SelectionStart);
						}
					}
					SetMaskedEditState(MaskedEditState.NormalState);
					m_bIsTextByInputChanged = text != Text;
					if (flag)
					{
						OnTextChanged(new EventArgs());
					}
					if (InputMode == MaskInputMode.Normal)
					{
						if (!insertMode)
						{
							SelectionLength = 1;
						}
						else if (SelectionLength == 1)
						{
							SelectionLength = 0;
						}
					}
				}
				return base.ProcessKeyMessage(ref m);
			}
			if (m.Msg == 256 && modifierKeys != 65536)
			{
				switch (num & 0xFFFF)
				{
				case 8:
					internalTextChange = true;
					SetMaskedEditState(MaskedEditState.EditState);
					HandleBackspaceKey();
					SetMaskedEditState(MaskedEditState.NormalState);
					internalTextChange = false;
					m_bIsTextByInputChanged = text != Text;
					OnTextChanged(new EventArgs());
					supressKeyDown = true;
					return base.ProcessKeyMessage(ref m);
				case 46:
					internalTextChange = true;
					SetMaskedEditState(MaskedEditState.EditState);
					HandleDeleteKey();
					SetMaskedEditState(MaskedEditState.NormalState);
					internalTextChange = false;
					m_bIsTextByInputChanged = text != Text;
					OnTextChanged(new EventArgs());
					supressKeyDown = true;
					return base.ProcessKeyMessage(ref m);
				case 45:
					if (InputMode == MaskInputMode.Normal)
					{
						insertMode = !insertMode;
					}
					if (InputMode == MaskInputMode.Normal)
					{
						if (!insertMode)
						{
							SelectionLength = 1;
						}
						else if (SelectionLength == 1)
						{
							SelectionLength = 0;
						}
					}
					break;
				}
			}
		}
		return base.ProcessKeyMessage(ref m);
	}

	protected override bool ProcessKeyEventArgs(ref Message m)
	{
		if (supressKeyPress)
		{
			int num = (int)m.WParam | (int)Control.ModifierKeys;
			supressKeyPress = false;
			OnKeyPress(new KeyPressEventArgs((char)num));
			m.Result = (IntPtr)3;
			return true;
		}
		if (supressKeyDown)
		{
			int keyData = (int)m.WParam | (int)Control.ModifierKeys;
			supressKeyDown = false;
			OnKeyDown(new KeyEventArgs((Keys)keyData));
			m.Result = (IntPtr)3;
			return true;
		}
		return base.ProcessKeyEventArgs(ref m);
	}

	protected string RemoveText(string currentDisplayText, int startPosition, int endPosition)
	{
		StringBuilder stringBuilder = new StringBuilder();
		if (startPosition < 0 || startPosition > maskString.Length)
		{
			return currentDisplayText;
		}
		if (endPosition < maskString.Length && IsLiteralCharacter(maskString[endPosition]))
		{
			endPosition = GetNextDataPos(endPosition);
			if (endPosition > startPosition)
			{
				return currentDisplayText;
			}
		}
		if (startPosition == maskString.Length)
		{
			startPosition = -1;
		}
		else if (IsLiteralCharacter(maskString[startPosition]))
		{
			startPosition = GetNextDataPos(startPosition);
		}
		int num;
		if (endPosition >= 0 && endPosition < maskString.Length)
		{
			num = endPosition;
			while (startPosition >= 0)
			{
				char newChar = currentDisplayText[startPosition];
				stringBuilder = new StringBuilder();
				stringBuilder.Append(currentDisplayText);
				stringBuilder[num] = currentDisplayText[startPosition];
				currentDisplayText = stringBuilder.ToString();
				SetCustomFilledPosition(newChar, num);
				startPosition = GetNextDataPos(startPosition);
				num = GetNextDataPos(num);
			}
		}
		else
		{
			num = startPosition;
		}
		while (num >= 0)
		{
			stringBuilder = new StringBuilder();
			stringBuilder.Append(currentDisplayText);
			stringBuilder[num] = GetCurrentPromptCharacter();
			currentDisplayText = stringBuilder.ToString();
			RemoveFromCustomFilledList(num);
			num = GetNextDataPos(num);
		}
		return currentDisplayText;
	}

	protected string RemoveTextWithinGroup(string currentDisplayText, int startPosition, int endPosition)
	{
		char currentPromptCharacter = GetCurrentPromptCharacter();
		StringBuilder stringBuilder = new StringBuilder();
		if (startPosition < 0 || startPosition > maskString.Length)
		{
			return currentDisplayText;
		}
		if (endPosition >= 0 && IsLiteralCharacter(maskString[endPosition]))
		{
			endPosition = GetNextDataPos(endPosition);
			if (endPosition > startPosition)
			{
				return currentDisplayText;
			}
		}
		if (startPosition == maskString.Length)
		{
			startPosition = -1;
		}
		else if (IsLiteralCharacter(maskString[startPosition]))
		{
			startPosition = GetNextDataPos(startPosition);
		}
		int num = endPosition;
		while (startPosition >= 0 && startPosition < endPosition)
		{
			char newChar = currentDisplayText[startPosition];
			stringBuilder = new StringBuilder();
			stringBuilder.Append(currentDisplayText);
			stringBuilder[num] = currentDisplayText[startPosition];
			currentDisplayText = stringBuilder.ToString();
			SetCustomFilledPosition(newChar, num);
			startPosition = GetNextDataPos(startPosition);
			num = GetNextDataPos(num);
		}
		if (startPosition == -1)
		{
			while (num >= 0)
			{
				stringBuilder = new StringBuilder();
				stringBuilder.Append(currentDisplayText);
				stringBuilder[num] = currentPromptCharacter;
				currentDisplayText = stringBuilder.ToString();
				RemoveFromCustomFilledList(num);
				num = GetNextDataPos(num);
			}
		}
		else
		{
			while (num >= 0 && num < Math.Max(endPosition, startPosition))
			{
				stringBuilder = new StringBuilder();
				stringBuilder.Append(currentDisplayText);
				stringBuilder[num] = currentPromptCharacter;
				currentDisplayText = stringBuilder.ToString();
				RemoveFromCustomFilledList(num);
				num = GetNextDataPos(num);
			}
		}
		return currentDisplayText;
	}

	[DocumentationExclude]
	protected void RemoveFromCustomFilledList(int index)
	{
		if (customFilledPositions.ContainsKey(index))
		{
			customFilledPositions.Remove(index);
		}
	}

	protected string RemoveText(int startPosition, int endPosition)
	{
		return RemoveText(DisplayString, startPosition, endPosition);
	}

	[DocumentationExclude]
	protected bool HandleBackspaceKey()
	{
		int num = 0;
		int num2 = 0;
		num = AdjustedSelectionStart + AdjustedSelectionLength;
		num2 = AdjustedSelectionStart;
		if (AdjustedSelectionLength > 0)
		{
			DisplayString = RemoveTextWithinGroup(DisplayString, num, num2);
			if (promptCharacterInt == 0)
			{
				string dispString = DisplayString.Replace(GetPromptCharacter(), ' ');
				RefreshDisplay(dispString, updateUndo: false);
			}
			else
			{
				RefreshDisplay();
			}
			num2 = GetNextDataPos(num2 - 1);
			if (num2 == -1)
			{
				num2 = GetPrevDataPos(maskString.Length) + 1;
			}
			SetSelection(num2, 0);
		}
		else
		{
			int prevDataPos = GetPrevDataPos(num2);
			if (prevDataPos != -1)
			{
				DisplayString = RemoveTextWithinGroup(DisplayString, num2, prevDataPos);
				if (promptCharacterInt == 0)
				{
					string dispString2 = DisplayString.Replace(GetPromptCharacter(), ' ');
					RefreshDisplay(dispString2, updateUndo: false);
				}
				else
				{
					RefreshDisplay();
				}
				SetSelection(prevDataPos, 0);
			}
		}
		return true;
	}

	private void GetAdjustedValuesForNullPrompt(ref string adjDisplayString, ref int adjSelectionStart, ref int adjSelectionLength)
	{
		if (listDisplayToInternalString.Count > 0)
		{
			adjDisplayString = internalDisplayString;
			adjSelectionStart = GetAdjustedPositionForNullPrompt(base.SelectionStart);
			adjSelectionLength = Math.Max(0, GetAdjustedPositionForNullPrompt(base.SelectionStart + SelectionLength) - adjSelectionStart);
			if (adjSelectionStart <= listDisplayToInternalString.Count - 1)
			{
				adjSelectionStart = GetFirstPrevDataPos(adjDisplayString, adjSelectionStart);
			}
		}
		else
		{
			adjDisplayString = DisplayString;
			adjSelectionStart = Math.Max(base.SelectionStart, 0);
			adjSelectionLength = Math.Max(SelectionLength, 0);
		}
	}

	private void AdjustStringAndSelectionForNullPrompt()
	{
		returnActualText = true;
		if (listDisplayToInternalString.Count > 0)
		{
			int num = 0;
			int num2 = 0;
			num = GetAdjustedPositionForNullPrompt(base.SelectionStart);
			num2 = Math.Max(0, GetAdjustedPositionForNullPrompt(base.SelectionStart + SelectionLength) - num);
			DisplayString = internalDisplayString;
			if (num <= listDisplayToInternalString.Count - 1)
			{
				num = GetFirstPrevDataPos(DisplayString, num);
			}
			AdjustedSelectionStart = num;
			AdjustedSelectionLength = num2;
		}
		else
		{
			AdjustedSelectionStart = Math.Max(base.SelectionStart, 0);
			AdjustedSelectionLength = Math.Max(SelectionLength, 0);
		}
		returnActualText = false;
	}

	[DocumentationExclude]
	protected bool HandleDeleteKey()
	{
		if (!IsMaskActive())
		{
			return false;
		}
		char currentPromptCharacter = GetCurrentPromptCharacter();
		int num = AdjustedSelectionStart + AdjustedSelectionLength;
		int num2 = AdjustedSelectionStart;
		if (num2 >= maskString.Length)
		{
			return false;
		}
		if (AdjustedSelectionLength > 0)
		{
			DisplayString = RemoveTextWithinGroup(DisplayString, num, num2);
			RefreshDisplay();
			num2 = GetNextDataPos(num2 - 1);
			if (num2 == -1)
			{
				num2 = GetPrevDataPos(maskString.Length) + 1;
			}
			SetSelection(num2, 0);
		}
		else
		{
			if (IsLiteralCharacter(maskString[num2]))
			{
				num2 = GetNextDataPos(num2);
				num = num2 + AdjustedSelectionLength;
			}
			if (num2 >= 0 && DisplayString[num2] == currentPromptCharacter)
			{
				int num3 = 0;
				int num4 = num2;
				while (num2 != -1 && num2 < maskString.Length && DisplayString[num2] == currentPromptCharacter)
				{
					num3++;
					num4 = num2;
					num2 = GetNextDataPos(num2);
					if (num2 == -1)
					{
						num2 = num4;
						num3--;
						break;
					}
				}
				if (num3 > 0)
				{
					num += num3;
				}
			}
			int nextDataPos = GetNextDataPos(num2);
			if (nextDataPos != -1)
			{
				if (num2 < maskString.Length)
				{
					DisplayString = RemoveTextWithinGroup(DisplayString, nextDataPos, num2);
				}
			}
			else
			{
				DisplayString = RemoveText(num2, num2 + 1);
			}
			if (num2 < maskString.Length)
			{
				if (promptCharacterInt == 0)
				{
					string dispString = DisplayString.Replace(GetPromptCharacter(), ' ');
					RefreshDisplay(dispString, updateUndo: false);
				}
				else
				{
					RefreshDisplay();
				}
				SetSelection(num2, 0);
			}
		}
		return true;
	}

	[DocumentationExclude]
	protected bool HandleCharacterInput(char charInput)
	{
		bool result = true;
		int num = 0;
		int num2 = 0;
		int num3 = 0;
		bool flag = true;
		if ((Control.ModifierKeys & Keys.Control) != Keys.None)
		{
			return false;
		}
		if (base.ReadOnly)
		{
			return false;
		}
		num = AdjustedSelectionStart;
		num3 = num;
		num2 = AdjustedSelectionStart + AdjustedSelectionLength;
		if (SelectionLength > 0)
		{
			if (IsLiteralCharacter(maskString[num]))
			{
				num = MoveCursorPosition(num, 1, selected: false);
			}
			if (num >= num2 || num == -1)
			{
				return false;
			}
		}
		else
		{
			num = MoveCursorPosition(num - 1, 1, selected: false);
			if (num == -1)
			{
				return false;
			}
		}
		if (IsCharValid(num, charInput))
		{
			if (InputMode == MaskInputMode.Normal)
			{
				if (insertMode && num <= num2)
				{
					DisplayString = RemoveText(num2, num);
				}
				else if (num + 1 < num2)
				{
					DisplayString = RemoveText(num2, num + 1);
				}
			}
			else if (num + 1 < num2)
			{
				DisplayString = RemoveText(num2, num + 1);
			}
			if (InputMode == MaskInputMode.Normal)
			{
				char c = maskString[num];
				int maskCharValue = GetMaskCharValue((char)(c - maskOffset));
				MaskCharTypes maskCharTypes = (MaskCharTypes)maskCharValue;
				if (insertMode && IsMaskPositionFilled(DisplayString, num))
				{
					string text = DisplayString;
					DisplayString = InsertChar(num, charInput, updateDisplay: false);
					if ((maskCharTypes != MaskCharTypes.maskCharDigitRequired || charInput != ' ') && DisplayString == text)
					{
						num = num3;
						flag = false;
					}
					else
					{
						SetCustomFilledPosition(charInput, num);
					}
				}
				else
				{
					StringBuilder stringBuilder = new StringBuilder();
					stringBuilder.Append(DisplayString);
					if (maskCharTypes != MaskCharTypes.maskCharDigitRequired || charInput != ' ')
					{
						stringBuilder[num] = charInput;
					}
					DisplayString = stringBuilder.ToString();
					SetCustomFilledPosition(charInput, num);
				}
			}
			else
			{
				StringBuilder stringBuilder2 = new StringBuilder();
				stringBuilder2.Append(DisplayString);
				char c2 = maskString[num];
				if (GetMaskCharValue((char)(c2 - maskOffset)) == 0 && charInput == ' ')
				{
					char c3 = stringBuilder2[num];
					char c4 = stringBuilder2[maskDisplay.Length - 1];
					if (c3 != GetCurrentPromptCharacter() && c4 == GetCurrentPromptCharacter())
					{
						stringBuilder2.Insert(num, charInput);
						stringBuilder2.Remove(stringBuilder2.Length - 1, 1);
					}
					else
					{
						stringBuilder2[num] = charInput;
					}
				}
				else
				{
					stringBuilder2[num] = charInput;
				}
				DisplayString = stringBuilder2.ToString();
				SetCustomFilledPosition(charInput, num);
			}
			internalTextChange = true;
			if (promptCharacterInt == 0)
			{
				string dispString = DisplayString.Replace(GetPromptCharacter(), ' ');
				RefreshDisplay(dispString, updateUndo: false);
			}
			else
			{
				RefreshDisplay();
			}
			internalTextChange = false;
			if (flag)
			{
				num = MoveCursorPosition(num, 1, selected: false);
			}
		}
		else
		{
			if (charInput == DateSeparator || charInput == TimeSeparator || charInput == DecimalSeparator)
			{
				num = DisplayString.IndexOf(charInput, Math.Max(num - 1, 0));
				num = GetNextDataPos(num);
				num = MoveCursorPosition(num, 1, selected: false);
			}
			else if (base.CausesValidation)
			{
				StringBuilder stringBuilder3 = new StringBuilder();
				stringBuilder3.Append(DisplayString);
				if (num < DisplayString.Length)
				{
					stringBuilder3[num] = charInput;
				}
				else
				{
					stringBuilder3.Append(charInput);
				}
				string invalidText = stringBuilder3.ToString();
				RaiseValidationError(invalidText, num);
			}
			result = false;
		}
		Validate(bRaiseValidationError: false);
		return result;
	}

	[DocumentationExclude]
	protected char ApplyCasing(char currentChar, CasingNormalize casingType)
	{
		string text = null;
		switch (casingType)
		{
		case CasingNormalize.changeToLowerOnly:
			text = Convert.ToString(currentChar);
			text = text.ToLower();
			currentChar = Convert.ToChar(text);
			break;
		case CasingNormalize.changeToUpperOnly:
			text = Convert.ToString(currentChar);
			text = text.ToUpper();
			currentChar = Convert.ToChar(text);
			break;
		}
		return currentChar;
	}

	private void PositionNearDecimal()
	{
		SetMaskedEditState(MaskedEditState.EditState);
		int num = 0;
		int num2 = 0;
		num = DisplayString.IndexOf(DecimalSeparator, num2, DisplayString.Length - num2);
		if (num >= 0)
		{
			int nextDataPos = GetNextDataPos(num);
			if (nextDataPos >= 0)
			{
				SetSelection(nextDataPos, 0);
			}
		}
		SetMaskedEditState(MaskedEditState.NormalState);
	}

	private void PositionAtFirstMaskPosition()
	{
		SetMaskedEditState(MaskedEditState.EditState);
		int firstMaskPosition = GetFirstMaskPosition();
		base.SelectionStart = firstMaskPosition;
		SetMaskedEditState(MaskedEditState.NormalState);
	}

	private int GetFirstMaskPosition()
	{
		int result = 0;
		string text = maskString;
		for (int i = 0; i < text.Length; i++)
		{
			if (!IsLiteralCharacter(text[i]))
			{
				result = i;
				break;
			}
		}
		return result;
	}

	private void PositionAtFirstPos()
	{
		int num = 0;
		num = GetNextDataPos(0);
		if (num != -1)
		{
			MoveCursorPosition(num, -1, selected: false);
		}
	}

	[DocumentationExclude]
	protected char NormalizeCasing(char currentChar, CasingNormalize casingType)
	{
		string text = null;
		if (base.CharacterCasing == CharacterCasing.Upper && casingType != CasingNormalize.changeToLowerOnly)
		{
			text = Convert.ToString(currentChar);
			text = text.ToUpper();
			currentChar = Convert.ToChar(text);
		}
		else if (base.CharacterCasing == CharacterCasing.Lower && casingType != CasingNormalize.changeToUpperOnly)
		{
			text = Convert.ToString(currentChar);
			text = text.ToLower();
			currentChar = Convert.ToChar(text);
		}
		return currentChar;
	}

	protected void OnMaskCustomValidate(MaskCustomValidateArgs args)
	{
		if (this.MaskCustomValidate != null)
		{
			this.MaskCustomValidate(this, args);
		}
	}

	[DocumentationExclude]
	protected bool IsCharValid(int currentPosition, char currentChar)
	{
		if (!IsMaskActive())
		{
			return false;
		}
		if (currentChar == GetPromptCharacter() && !AllowPrompt)
		{
			return false;
		}
		if (currentPosition >= maskString.Length || currentPosition < 0)
		{
			return false;
		}
		bool flag = true;
		currentChar = NormalizeCasing(currentChar, CasingNormalize.changeToBoth);
		char c = maskString[currentPosition];
		if (IsLiteralCharacter(c))
		{
			if (currentPosition < maskString.Length)
			{
				currentPosition = GetNextDataPos(currentPosition);
			}
			else
			{
				flag = false;
			}
			if (currentPosition == -1)
			{
				flag = false;
			}
			else
			{
				c = maskString[currentPosition];
			}
		}
		if (flag)
		{
			MaskCustomValidateArgs maskCustomValidateArgs = new MaskCustomValidateArgs(currentPosition, currentChar, (char)(c - maskOffset));
			OnMaskCustomValidate(maskCustomValidateArgs);
			if (maskCustomValidateArgs.Handled)
			{
				flag = maskCustomValidateArgs.Accepted;
			}
			else
			{
				switch ((MaskCharTypes)GetMaskCharValue((char)(c - maskOffset)))
				{
				case MaskCharTypes.maskCharDigitRequired:
					if (char.IsWhiteSpace(currentChar))
					{
						char c2 = DisplayString[currentPosition];
						char c3 = DisplayString[DisplayString.Length - 1];
						flag = ((c2 == GetCurrentPromptCharacter() || c3 == GetCurrentPromptCharacter()) ? true : false);
						break;
					}
					goto case MaskCharTypes.maskCharDigitOptional;
				case MaskCharTypes.maskCharDigitOptional:
					flag = (char.IsDigit(currentChar) ? true : false);
					break;
				case MaskCharTypes.maskCharLetterRequired:
				case MaskCharTypes.maskCharLetterOptional:
					flag = (char.IsLetter(currentChar) ? true : false);
					break;
				case MaskCharTypes.maskCharAplhaNumericRequired:
				case MaskCharTypes.maskCharAlphaNumericOptional:
					flag = (char.IsLetterOrDigit(currentChar) ? true : false);
					break;
				case MaskCharTypes.maskCharCharacterRequired:
				case MaskCharTypes.maskCharCharacterOptional:
					flag = ((char.IsLetterOrDigit(currentChar) || char.IsSymbol(currentChar) || char.IsPunctuation(currentChar) || char.IsWhiteSpace(currentChar)) ? true : false);
					break;
				case MaskCharTypes.maskCharHexaDecimalOptional:
				case MaskCharTypes.maskCharHexaDecimalRequired:
					flag = (((currentChar >= 'a' && currentChar <= 'f') || (currentChar >= 'A' && currentChar <= 'F') || (currentChar >= '0' && currentChar <= '9')) ? true : false);
					break;
				default:
					flag = false;
					break;
				}
			}
		}
		if (UsageMode == MaskedUsageMode.Numeric && flag)
		{
			string text = internalDisplayString;
			int num = base.SelectionStart + SelectionLength;
			if (insertMode && currentPosition + 1 <= num)
			{
				text = RemoveText(num, currentPosition);
			}
			else if (currentPosition + 1 < num)
			{
				text = RemoveText(num, currentPosition + 1);
			}
			if (insertMode)
			{
				text = InsertChar(text, currentPosition, currentChar, updateDisplay: false);
			}
			else
			{
				StringBuilder stringBuilder = new StringBuilder();
				stringBuilder.Append(text);
				stringBuilder[currentPosition] = currentChar;
				text = stringBuilder.ToString();
			}
			flag = CheckMinMax(text, ignoreLength: false);
		}
		return flag;
	}

	protected bool CheckMinMax(string changedString, bool ignoreLength)
	{
		bool result = true;
		decimal num = 0.0m;
		int numberPartLength = GetNumberPartLength(changedString);
		int numberPartLength2 = GetNumberPartLength(MinValue);
		int numberPartLength3 = GetNumberPartLength(MaxValue);
		num = GetDecimalValue(changedString);
		if (!ignoreLength)
		{
			if (numberPartLength >= numberPartLength2 && num < MinValue)
			{
				result = false;
			}
			if (numberPartLength >= numberPartLength3)
			{
				if (num > MaxValue)
				{
					result = false;
				}
			}
			else
			{
				result = true;
			}
		}
		else if (num < MinValue || num > MaxValue)
		{
			result = false;
		}
		return result;
	}

	private int GetNumberPartLength(decimal numberValue)
	{
		return GetNumberPartLength(numberValue.ToString());
	}

	private int GetNumberPartLength(string numberText)
	{
		int num = 0;
		numberText = GetNumericText(numberText);
		int num2 = numberText.IndexOf(DecimalSeparator);
		if (num2 != -1)
		{
			return num2;
		}
		return numberText.Length;
	}

	protected decimal GetDecimalValue(string currentDisplayText)
	{
		decimal num = 0m;
		string numericText = GetNumericText(currentDisplayText);
		try
		{
			if (numericText == string.Empty)
			{
				return 0.0m;
			}
			return Convert.ToDecimal(numericText);
		}
		catch
		{
			return 0.0m;
		}
	}

	protected string GetNumericText(string currentText)
	{
		string text = string.Empty;
		int num = Math.Min(maskString.Length, currentText.Length);
		for (int i = 0; i < num; i++)
		{
			if (!IsLiteralCharacter(maskString[i]) || maskString[i] == DecimalSeparator)
			{
				if (maskString[i] == DecimalSeparator && currentText[i] == DecimalSeparator)
				{
					text += currentText[i];
				}
				else if (currentText[i] != GetPromptCharacter() && currentText[i] >= '0' && currentText[i] <= '9')
				{
					text += currentText[i];
				}
			}
		}
		return text;
	}

	[DocumentationExclude]
	protected bool SetExternalText(string externalText, int beginPos, bool insertMode, bool ignorePromptCharacters)
	{
		int num = 0;
		int num2 = beginPos;
		int length = maskString.Length;
		int length2 = externalText.Length;
		if (length == 0)
		{
			SetBaseText(externalText);
			return false;
		}
		if (beginPos < 0 || beginPos >= length)
		{
			return false;
		}
		if (beginPos == 0)
		{
			string empty = string.Empty;
			ApplyMaskLogic(maskString, ref empty);
			DisplayString = empty;
		}
		if (IsLiteralCharacter(maskString[num2]))
		{
			num2 = GetNextDataPos(num2);
		}
		if (num2 >= length || num2 == -1)
		{
			return false;
		}
		for (num = 0; num < length2; num++)
		{
			if (num2 >= length)
			{
				break;
			}
			if (num2 == -1)
			{
				break;
			}
			if (IsLiteralCharacter(maskString[num2]))
			{
				continue;
			}
			char c = externalText[num];
			if (IsCharValid(num2, c))
			{
				char c2 = ApplySpecialMasks(num2, c);
				if (insertMode)
				{
					if (char.IsWhiteSpace(c2) && maskString[num] == ' ')
					{
						num2--;
					}
					DisplayString = InsertChar(num2, c2, updateDisplay: false);
				}
				else
				{
					StringBuilder stringBuilder = new StringBuilder();
					stringBuilder.Append(DisplayString);
					stringBuilder[num2] = c2;
					DisplayString = stringBuilder.ToString();
				}
				num2 = GetNextDataPos(num2);
			}
			else if (c == DateSeparator || c == TimeSeparator || c == DecimalSeparator)
			{
				int num3 = DisplayString.IndexOf(c, Math.Max(num2 - 1, 0));
				if (num3 != -1)
				{
					num2 = num3;
					num2 = GetNextDataPos(num2);
				}
			}
			else if (!ignorePromptCharacters && c == GetPromptCharacter())
			{
				num2 = GetNextDataPos(num2);
			}
		}
		ApplyAlignmentToGroups();
		RefreshDisplay();
		SetSelection(num2, 0);
		return true;
	}

	private char GetPromptCharacter()
	{
		if (promptCharacterInt == 0)
		{
			return (char)(32 + maskOffset);
		}
		return (char)promptCharacterInt;
	}

	private char GetPassivePromptCharacter()
	{
		if (passivePromptCharacterInt == 0)
		{
			return (char)(32 + maskOffset);
		}
		return (char)passivePromptCharacterInt;
	}

	public new void Undo()
	{
		if (!IsMaskActive())
		{
			base.Undo();
		}
		else if (CanUndo)
		{
			DisplayString = undoBufferText;
			RefreshDisplay();
		}
	}

	public new void Copy()
	{
		if (ClipMode == ClipModes.IncludeLiterals || !IsMaskActive())
		{
			base.Copy();
			return;
		}
		string clipText = GetClipText(DisplayString, base.SelectionStart, base.SelectionStart + SelectionLength);
		Clipboard.SetDataObject(clipText);
	}

	public new void Paste()
	{
		if (!IsMaskActive() || base.ReadOnly)
		{
			base.Paste();
			return;
		}
		SetMaskedEditState(MaskedEditState.EditState);
		int num = 0;
		string text = null;
		int num2 = AdjustedSelectionStart;
		int startPosition = AdjustedSelectionStart + AdjustedSelectionLength;
		if (SelectionLength > 0)
		{
			DisplayString = RemoveText(startPosition, num2);
		}
		IDataObject dataObject = Clipboard.GetDataObject();
		if (dataObject.GetDataPresent(DataFormats.Text))
		{
			text = dataObject.GetData(DataFormats.Text).ToString();
			if (text != null)
			{
				SetExternalText(text, num2, insertMode: true, ignorePromptCharacters: true);
			}
		}
		else if (IsLiteralCharacter(maskString[num2]))
		{
			num = GetNextDataPos(base.SelectionStart);
			if (num != -1)
			{
				num2 = num;
			}
			SetSelection(num2, 0);
		}
		SetMaskedEditState(MaskedEditState.NormalState);
	}

	public new void Cut()
	{
		if (!IsMaskActive() || base.ReadOnly)
		{
			base.Cut();
			return;
		}
		Copy();
		SetMaskedEditState(MaskedEditState.EditState);
		int num = AdjustedSelectionStart;
		int num2 = AdjustedSelectionStart + AdjustedSelectionLength;
		if (num2 != num)
		{
			DisplayString = RemoveText(num2, num);
			if (promptCharacterInt == 0)
			{
				string dispString = DisplayString.Replace(GetPromptCharacter(), ' ');
				RefreshDisplay(dispString, updateUndo: false);
			}
			else
			{
				RefreshDisplay();
			}
		}
		SetMaskedEditState(MaskedEditState.NormalState);
		SetSelection(num, 0);
	}

	public new void Clear()
	{
		base.Clear();
		RefreshDisplay();
	}

	public void SetInitialText(string newText)
	{
		internalTextChange = true;
		Text = newText;
		internalTextChange = false;
	}

	private void SetBaseText(string val)
	{
		bool flag = false;
		bool flag2 = false;
		int num = PaddingCharacterInt;
		if (ClipMode == ClipModes.ExcludeLiterals)
		{
			ClipMode = ClipModes.IncludeLiterals;
			flag = true;
		}
		if (PaddingCharacterInt == PromptCharacterInt || PaddingCharacterInt == PassivePromptCharacterInt || Text == val)
		{
			PaddingCharacterInt = Math.Min(PromptCharacterInt, PassivePromptCharacterInt) + 1;
			flag2 = true;
		}
		SetTextBoxText(val);
		if (flag)
		{
			ClipMode = ClipModes.ExcludeLiterals;
		}
		if (flag2)
		{
			PaddingCharacterInt = num;
		}
	}

	[DocumentationExclude]
	protected void SetTextBoxText(string text)
	{
		IntPtr intPtr = Marshal.StringToHGlobalAuto(text);
		NativeMethods.SendMessage(base.Handle, 12, IntPtr.Zero, intPtr);
		Marshal.FreeHGlobal(intPtr);
	}

	protected override void OnValidating(CancelEventArgs args)
	{
		base.OnValidating(args);
		Validate(bRaiseValidationError: true);
	}

	public void Validate(bool bRaiseValidationError)
	{
		bool flag = false;
		char c = '\0';
		c = ((!hasFocus) ? GetPassivePromptCharacter() : GetPromptCharacter());
		if (maskString == null || !(maskString != string.Empty))
		{
			return;
		}
		int length = maskString.Length;
		char c2 = '\0';
		MaskCharTypes maskCharTypes = MaskCharTypes.maskCharDigitRequired;
		char c3 = '\0';
		if (!flag)
		{
			for (int i = 0; i < length; i++)
			{
				c2 = maskString[i];
				c3 = ((i >= DisplayString.Length) ? c : DisplayString[i]);
				if (IsLiteralCharacter(c2))
				{
					continue;
				}
				switch ((MaskCharTypes)GetMaskCharValue((char)(c2 - maskOffset)))
				{
				case MaskCharTypes.maskCharDigitRequired:
				case MaskCharTypes.maskCharCharacterRequired:
				case MaskCharTypes.maskCharAplhaNumericRequired:
				case MaskCharTypes.maskCharLetterRequired:
					if (c3 == c && !AllowPrompt)
					{
						if (bRaiseValidationError)
						{
							ValidationErrorArgs args = new ValidationErrorArgs(DisplayString, i, "A required mask character is empty.");
							OnValidationError(args);
						}
						i = length;
						flag = true;
					}
					break;
				}
			}
		}
		if (!flag)
		{
			RaiseMaskSatisfied();
		}
		if (UsageMode == MaskedUsageMode.Numeric && bRaiseValidationError && !CheckMinMax(DisplayString, ignoreLength: true))
		{
			ValidationErrorArgs args2 = new ValidationErrorArgs(DisplayString, 0, "The entered value does not meet the MinValue and MaxValue constraints.");
			OnValidationError(args2);
		}
	}

	private string GetDisplayStringForNullPrompt(string internalText)
	{
		int num = 0;
		string text = string.Empty;
		GetCurrentPromptCharacter();
		int num2 = 0;
		listDisplayToInternalString.Clear();
		string text2 = string.Empty;
		bool flag = false;
		for (num = 0; num < maskString.Length; num++)
		{
			if (!IsLiteralCharacter(maskString[num]))
			{
				if (IsMaskPositionFilled(internalText, num))
				{
					text += internalText[num];
					text2 += internalText[num];
					listDisplayToInternalString.Add(num, num - num2);
					if (text2.Length == GetClipLenght(ClipText))
					{
						flag = true;
					}
				}
				else
				{
					listDisplayToInternalString.Add(num, -1);
					num2++;
				}
			}
			else
			{
				if (!Sequentially || !flag || (num2 == 0 && num <= maskString.Length - 1))
				{
					text += internalText[num];
				}
				listDisplayToInternalString.Add(num, num - num2);
			}
		}
		if (Sequentially && text2.Length == 0)
		{
			text = string.Empty;
		}
		return text;
	}

	private int GetClipLenght(string clip)
	{
		int num = 0;
		if (clip != null && clip.Length > 0)
		{
			for (int i = 0; i < clip.Length; i++)
			{
				if (clip[i] != PaddingCharacter && clip[i] != PassivePromptCharacter && clip[i] != PromptCharacter)
				{
					num++;
				}
			}
		}
		return num;
	}

	[DocumentationExclude]
	protected bool IsMaskPositionFilled(string currentString, int index)
	{
		bool result = false;
		if (customFilledPositions.ContainsKey(index) && currentString[index] == (char)customFilledPositions[index])
		{
			result = true;
		}
		if (lastUsedPromptChar != currentString[index])
		{
			result = true;
		}
		return result;
	}
}
