using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Localization;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class NumberTextBoxBase : TextBoxExt
{
	private NumberFormatInfo numberFormatInfoObject;

	private Color negativeColor;

	private MinMaxValidation m_MinMaxValidation;

	private OnValidationFailed m_OnValidationFailed = OnValidationFailed.SetMinOrMax;

	private Color positiveColor;

	private Color zeroColor;

	private bool isNegative;

	private CurrencyClipModes clipMode;

	private ContextMenu editMenu;

	private MenuItem miUndo;

	private MenuItem miCut;

	private MenuItem miCopy;

	private MenuItem miPaste;

	private MenuItem miDelete;

	private MenuItem miSelectAll;

	private string undoBufferText;

	private string redoBufferText;

	protected bool ignoreTextChange;

	private CultureInfo selectedCulture;

	private SpecialCultureValues specialCultureValue = SpecialCultureValues.CurrentCulture;

	private ArrayList rightToLeftCultures = new ArrayList();

	private bool useUserOverride = true;

	private string nullString;

	private bool nullState;

	private NumberFormatInfo nullFormat;

	private bool returnBaseText;

	private bool useNullString;

	protected bool rollBackOperation;

	private CultureInfo initCulture = new CultureInfo(CultureInfo.CurrentCulture.LCID, useUserOverride: false);

	protected NumberFormatInfo initNumberFormatInfoObject;

	protected bool supressKeyPress;

	private bool supressKeyDown;

	private bool preserveData;

	private bool zeroNegative;

	private bool currentCultureRefresh;

	private object defaultValue = 0;

	private bool allowNull;

	private bool negativeInputPending;

	private Color readOnlyBackColor = SystemColors.Control;

	private bool enforceMinMaxDuringValidating;

	private bool negativeInputPendingOnSelectAll;

	protected bool m_bDecimalMode;

	private int m_iDecimalDigitsPosition;

	private bool m_bNeedAllSelectOnMouseDown;

	private bool selectAllOnFocus = true;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Obsolete("This property will be removed, use OnValidationFailed.KeepFocus Property instead.")]
	[DefaultValue(false)]
	[Browsable(false)]
	[Description("If the Min Max values are not met, the Validating event will be handled and cancelled if this property is set to true.")]
	public bool EnforceMinMaxDuringValidating
	{
		get
		{
			return enforceMinMaxDuringValidating;
		}
		set
		{
			enforceMinMaxDuringValidating = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Appearance")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Editor(typeof(CurrencyCultureEditor), typeof(UITypeEditor))]
	[Description("Gets or sets the culture that is to be used for formatting the numeric display.")]
	[Localizable(false)]
	[Browsable(true)]
	public CultureInfo Culture
	{
		get
		{
			if (SpecialCultureValue == SpecialCultureValues.CurrentCulture)
			{
				return CultureInfo.CurrentCulture;
			}
			if (SpecialCultureValue == SpecialCultureValues.UICulture)
			{
				return CultureInfo.CurrentUICulture;
			}
			if (SpecialCultureValue == SpecialCultureValues.InstalledCulture)
			{
				return CultureInfo.InstalledUICulture;
			}
			if (selectedCulture == null)
			{
				return CultureInfo.CurrentCulture;
			}
			return selectedCulture;
		}
		set
		{
			CultureInfo cultureInfo = selectedCulture;
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
			if (!base.Initializing)
			{
				NumberFormatInfoObject = Culture.NumberFormat;
				if (cultureInfo != selectedCulture)
				{
					ApplyRightToLeft();
				}
			}
			else
			{
				initCulture = value;
			}
		}
	}

	[Description("Gets or sets the mode for the cultures.")]
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

	[DefaultValue(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Indicates whether the Culture property is to be refreshed when the culture changes.")]
	[Browsable(true)]
	[Category("Behavior")]
	public bool CurrentCultureRefresh
	{
		get
		{
			return currentCultureRefresh;
		}
		set
		{
			currentCultureRefresh = value;
		}
	}

	[Description("Specifies if the NumberFormatInfo used for formatting will use the User Overrides for the culture.")]
	[DefaultValue(true)]
	[Browsable(true)]
	[Category("Culture")]
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

	[Category("Behavior")]
	[DefaultValue(false)]
	[Description("Specifies if the NULLString will be used when the value is NULL.")]
	[Obsolete("This property will not be used in future.Use AllowNull instead")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool UseNullString
	{
		get
		{
			return useNullString;
		}
		set
		{
			useNullString = value;
		}
	}

	public new RightToLeft RightToLeft
	{
		get
		{
			return base.RightToLeft;
		}
		set
		{
			if (value == RightToLeft.Yes && rightToLeftCultures.Contains(Culture.Parent.Name))
			{
				base.RightToLeft = RightToLeft.Yes;
			}
			else
			{
				base.RightToLeft = RightToLeft.No;
			}
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

	[Category("Appearance")]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Description("The NumberFormatInfo object that will be used for formatting the number value.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public NumberFormatInfo NumberFormatInfoObject
	{
		get
		{
			if (numberFormatInfoObject == null)
			{
				CreateAndInitNumberFormatInfo();
			}
			return numberFormatInfoObject;
		}
		set
		{
			NumberFormatInfo numberFormatInfo = new NumberFormatInfo();
			numberFormatInfo = ((value == null) ? Culture.NumberFormat : value);
			if (!base.Initializing)
			{
				string textBoxText = GetTextBoxText();
				NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
				if (numberFormatInfoObject == null)
				{
					numberFormatInfoObject = new NumberFormatInfo();
				}
				numberFormatInfoObject.CurrencyDecimalDigits = numberFormatInfo.CurrencyDecimalDigits;
				numberFormatInfoObject.CurrencyDecimalSeparator = numberFormatInfo.CurrencyDecimalSeparator;
				numberFormatInfoObject.NumberDecimalSeparator = numberFormatInfo.NumberDecimalSeparator;
				numberFormatInfoObject.PercentDecimalSeparator = numberFormatInfo.PercentDecimalSeparator;
				numberFormatInfoObject.CurrencyGroupSeparator = numberFormatInfo.CurrencyGroupSeparator;
				numberFormatInfoObject.NumberGroupSeparator = numberFormatInfo.NumberGroupSeparator;
				numberFormatInfoObject.PercentGroupSeparator = numberFormatInfo.PercentGroupSeparator;
				numberFormatInfoObject.CurrencyGroupSizes = numberFormatInfo.CurrencyGroupSizes;
				numberFormatInfoObject.CurrencyNegativePattern = numberFormatInfo.CurrencyNegativePattern;
				numberFormatInfoObject.CurrencyPositivePattern = numberFormatInfo.CurrencyPositivePattern;
				numberFormatInfoObject.CurrencySymbol = numberFormatInfo.CurrencySymbol;
				numberFormatInfoObject.NegativeSign = numberFormatInfo.NegativeSign;
				FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
			}
			else
			{
				initNumberFormatInfoObject = numberFormatInfo;
			}
		}
	}

	[Localizable(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Gets or sets the sign that is to be used to indicate a negative value.")]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	public string NegativeSign
	{
		get
		{
			return numberFormatInfoObject.NegativeSign;
		}
		set
		{
			if (!base.Initializing)
			{
				string textBoxText = GetTextBoxText();
				NumberFormatInfo copyOfCurrentNumberFormatInfo = GetCopyOfCurrentNumberFormatInfo();
				numberFormatInfoObject.NegativeSign = value;
				FormatChanged(textBoxText, copyOfCurrentNumberFormatInfo);
			}
			else
			{
				numberFormatInfoObject.NegativeSign = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("Gets or sets the forecolor when the current value is negative.")]
	[Browsable(true)]
	[Category("Appearance")]
	public Color NegativeColor
	{
		get
		{
			return negativeColor;
		}
		set
		{
			negativeColor = value;
			if (!base.Initializing)
			{
				SetControlColor();
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the forecolor when the current value is zero.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	public Color ZeroColor
	{
		get
		{
			return zeroColor;
		}
		set
		{
			zeroColor = value;
			SetControlColor();
		}
	}

	[Description("Gets or sets the forecolor when the current value is positive.")]
	[Browsable(true)]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public Color PositiveColor
	{
		get
		{
			return positiveColor;
		}
		set
		{
			positiveColor = value;
			if (!base.Initializing)
			{
				SetControlColor();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public NumberFormatInfo NullFormat
	{
		get
		{
			if (nullFormat == null)
			{
				nullFormat = new NumberFormatInfo();
				nullFormat.CurrencyDecimalDigits = 0;
				nullFormat.CurrencySymbol = string.Empty;
			}
			return nullFormat;
		}
	}

	[Description("Specify the string to be displayed when the DecimalValue is 0.")]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public string NullString
	{
		get
		{
			return nullString;
		}
		set
		{
			bool isNull = IsNull;
			string text = nullString;
			nullString = value;
			if (CheckNullStringIsInRange(value))
			{
				OnNullStringChanged(isNull);
				return;
			}
			nullString = text;
			throw new ArgumentOutOfRangeException("NullString", value, "NullString breaks the Min Max Values");
		}
	}

	[Category("Appearance")]
	[DefaultValue(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("Specify whether the TextBox can be empty ")]
	public virtual bool AllowNull
	{
		get
		{
			return allowNull;
		}
		set
		{
			if (allowNull != value)
			{
				allowNull = value;
				OnAllowNullChanged();
			}
		}
	}

	[Bindable(true)]
	[Category("Behavior")]
	[Description("Wrapper property that indicates the value. Can be set to NULL.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public object BindableValue
	{
		get
		{
			if (IsNull && Text == NullString)
			{
				return null;
			}
			return GetValue();
		}
		set
		{
			bool flag = false;
			string message = string.Empty;
			if (value == DBNull.Value || value == null)
			{
				if (!AllowNull)
				{
					message = "Null value can't be set when AllowNull is false";
				}
				else if (!RaiseSetNull(value))
				{
					SetNullNumberValue();
					SetTextBoxText(NullString);
					flag = true;
				}
			}
			if (!flag)
			{
				if (!IsAssignable(value))
				{
					throw new ArgumentException(message);
				}
				SetValue(value);
			}
			OnBindableValueChanged(EventArgs.Empty);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Category("Behavior")]
	[Description("Can be set to NULL.")]
	public object DefaultValue
	{
		get
		{
			return defaultValue;
		}
		set
		{
			bool flag = false;
			if (value == DBNull.Value || value == null)
			{
				defaultValue = value;
				flag = true;
			}
			if (!flag)
			{
				if (!IsAssignable(value))
				{
					throw new ArgumentException();
				}
				defaultValue = value;
			}
		}
	}

	[DefaultValue(typeof(MinMaxValidation), "OnKeyPress")]
	[Description("Specifies when the MinMax Validation Need to be performed.")]
	public MinMaxValidation MinMaxValidation
	{
		get
		{
			return m_MinMaxValidation;
		}
		set
		{
			if (m_MinMaxValidation != value)
			{
				m_MinMaxValidation = value;
			}
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new int MaxLength
	{
		get
		{
			return base.MaxLength;
		}
		set
		{
		}
	}

	[DefaultValue(typeof(OnValidationFailed), "SetMinOrMax")]
	[Description("Specifies the action to be performed when validation fails, Effective only if MinMaxValidation is set to OnLostFocus")]
	public OnValidationFailed OnValidationFailed
	{
		get
		{
			return m_OnValidationFailed;
		}
		set
		{
			if (m_OnValidationFailed != value)
			{
				m_OnValidationFailed = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(true)]
	public bool IsNull
	{
		get
		{
			if (!(base.Text == NullString) && !(base.Text == string.Empty))
			{
				return base.Text == null;
			}
			return true;
		}
	}

	[Browsable(false)]
	[Obsolete("This property will not be used in the future versions. Use IsNull instead to check if the value is null.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool NullState
	{
		get
		{
			return nullState;
		}
		set
		{
			if (nullState != value)
			{
				nullState = value;
			}
		}
	}

	[Description("Color to be used for the Backcolor when the control is Read-only.")]
	[Category("Appearance")]
	public Color ReadOnlyBackColor
	{
		get
		{
			return readOnlyBackColor;
		}
		set
		{
			if (readOnlyBackColor != value)
			{
				readOnlyBackColor = value;
				if (base.ReadOnly)
				{
					BackColor = ReadOnlyBackColor;
				}
			}
		}
	}

	[Description("Determines whether to include or exclude the literal characters in the input mask when doing a copy command.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[DefaultValue(CurrencyClipModes.IncludeFormatting)]
	[Browsable(true)]
	[Category("Appearance")]
	public CurrencyClipModes ClipMode
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
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual string ClipText
	{
		get
		{
			return GetClipText();
		}
		set
		{
			SetTextProperty(value);
		}
	}

	[DocumentationExclude]
	protected bool ReturnBaseText
	{
		get
		{
			return returnBaseText;
		}
		set
		{
			returnBaseText = value;
		}
	}

	[Category("Appearance")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual string FormattedText
	{
		get
		{
			return GetTextBoxText();
		}
		set
		{
			Text = value;
		}
	}

	public new bool CanUndo
	{
		get
		{
			if (undoBufferText != GetTextBoxText())
			{
				return !base.ReadOnly;
			}
			return false;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[DocumentationExclude]
	protected bool IsNegative
	{
		get
		{
			return isNegative;
		}
		set
		{
			isNegative = value;
		}
	}

	[DefaultValue(false)]
	[Description("This property defines the behavior when the contents of the TextBox is fully selected and the negative key is pressed by the user.")]
	public bool NegativeInputPendingOnSelectAll
	{
		get
		{
			return negativeInputPendingOnSelectAll;
		}
		set
		{
			negativeInputPendingOnSelectAll = value;
		}
	}

	[Description("Specifies if the text should be selected when the control gets the focus.")]
	[DefaultValue(true)]
	public bool SelectAllOnFocus
	{
		get
		{
			return selectAllOnFocus;
		}
		set
		{
			selectAllOnFocus = value;
		}
	}

	public override string SelectedText
	{
		get
		{
			return base.SelectedText;
		}
		set
		{
			if (SelectionLength > 0)
			{
				base.SelectedText = value;
				Text = GetTextBoxText();
			}
			else
			{
				Text = value;
				SelectAll();
			}
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new Color ForeColor
	{
		get
		{
			return base.ForeColor;
		}
		set
		{
			base.ForeColor = value;
		}
	}

	[Description("Event raised when NULL State is to be set based on a value.")]
	public event SetNullEventHandler SetNull;

	[Description("Event raised when a Key is to be validated. This validation is performed before any of the NumberTextBox's own validation of the input character.")]
	public event KeyValidateEventHandler KeyValidate;

	[Category("Validation")]
	[Description("Occurs when the input text is invalid for the current state of the control.")]
	public event ValidationErrorEventHandler ValidationError;

	[Description("Occurs when the BindableValue property is changed.")]
	[Category("Property Changed")]
	public event EventHandler BindableValueChanged;

	[Description("Occurs when control is validated.")]
	[Category("Validation")]
	public event ControlValidatedEventHandler ControlValidated;

	[Category("PropertyChanged")]
	[Description("Occurs when the ClipText property is changed.")]
	public event EventHandler ClipTextChanged;

	[Category("PropertyChanged")]
	[Description("Occurs when the FormattedText property is changed.")]
	public event EventHandler FormattedTextChanged;

	public NumberTextBoxBase()
	{
		rightToLeftCultures.Add("ar");
		rightToLeftCultures.Add("fa");
		rightToLeftCultures.Add("he");
		rightToLeftCultures.Add("ur");
		rightToLeftCultures.Add("syr");
		rightToLeftCultures.Add("div");
		isNegative = false;
		negativeColor = Color.Red;
		positiveColor = Control.DefaultForeColor;
		zeroColor = Control.DefaultForeColor;
		nullString = string.Empty;
		clipMode = CurrencyClipModes.IncludeFormatting;
		CreateAndInitNumberFormatInfo();
		InitializeComponent();
		InitializeContextMenu();
		WireEvents();
	}

	private void WireEvents()
	{
		ThreadCulture.CultureChanged += HandleCultureChanged;
	}

	private void UnWireEvents()
	{
		ThreadCulture.CultureChanged -= HandleCultureChanged;
	}

	public override void EndInit()
	{
		base.EndInit();
		InitializeNumberTextBox();
	}

	[DocumentationExclude]
	protected virtual void InitializeNumberTextBox()
	{
		if (SpecialCultureValue != SpecialCultureValues.CurrentCulture)
		{
			Culture = initCulture;
		}
		else if (UseUserOverride)
		{
			if (CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalSeparator != CultureInfo.CurrentCulture.NumberFormat.CurrencyGroupSeparator && CultureInfo.CurrentCulture.NumberFormat.NumberDecimalSeparator != CultureInfo.CurrentCulture.NumberFormat.NumberGroupSeparator && CultureInfo.CurrentCulture.NumberFormat.PercentDecimalSeparator != CultureInfo.CurrentCulture.NumberFormat.PercentGroupSeparator)
			{
				string negativeSign = NegativeSign;
				Culture = new CultureInfo(CultureInfo.CurrentCulture.LCID, UseUserOverride);
				NumberFormatInfoObject.NegativeSign = negativeSign;
			}
			else
			{
				Console.WriteLine("Unable to use UseUserOverride as true because of incompatible values.");
			}
		}
		else
		{
			ApplyRightToLeft();
		}
	}

	private void HandleCultureChanged(object sender, CultureChangedEventArgs e)
	{
		if (e.NewLCID != e.CurrentLCID && SpecialCultureValue == SpecialCultureValues.CurrentCulture && CurrentCultureRefresh)
		{
			Culture = new CultureInfo(e.NewLCID, UseUserOverride);
		}
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
		ContextMenu = editMenu;
		ContextMenu.Popup += HandleContextMenuPopup;
	}

	private void InitializeComponent()
	{
		this.Multiline = false;
	}

	[DocumentationExclude]
	protected void RaiseValidationError(string invalidText, int startPosition)
	{
		RaiseValidationError(invalidText, startPosition, string.Empty);
	}

	[DocumentationExclude]
	protected void RaiseValidationError(string invalidText, int startPosition, string errorMessage)
	{
		ValidationErrorArgs args = new ValidationErrorArgs(invalidText, startPosition, errorMessage);
		OnValidationError(args);
	}

	protected virtual void OnValidationError(ValidationErrorArgs args)
	{
		if (this.ValidationError != null)
		{
			this.ValidationError(this, args);
		}
	}

	protected override void OnValidating(CancelEventArgs args)
	{
		base.OnValidating(args);
		if (!Validate(bRaiseValidationError: true) && OnValidationFailed == OnValidationFailed.KeepFocus)
		{
			args.Cancel = true;
		}
	}

	public virtual bool Validate(bool bRaiseValidationError)
	{
		bool flag = true;
		string formattedText = FormattedText;
		if (formattedText == NullString && AllowNull)
		{
			return true;
		}
		if (BindableValue == null || Convert.IsDBNull(BindableValue))
		{
			flag = false;
		}
		else if (formattedText != null && formattedText != string.Empty)
		{
			string numberValue = GetNumberValue(FormattedText, 0);
			flag = CheckForMinMax(numberValue, ignoreLength: true);
		}
		else
		{
			flag = false;
		}
		if (!flag && bRaiseValidationError)
		{
			RaiseValidationError(FormattedText, 0, "Current value does not meet MinValue and MaxValue requirements.");
		}
		return flag;
	}

	public void RefreshCulture()
	{
		if (SpecialCultureValue == SpecialCultureValues.CurrentCulture)
		{
			Culture = CultureInfo.CurrentCulture;
		}
		else if (SpecialCultureValue == SpecialCultureValues.UICulture)
		{
			Culture = CultureInfo.CurrentUICulture;
		}
		else if (SpecialCultureValue == SpecialCultureValues.InstalledCulture)
		{
			Culture = CultureInfo.InstalledUICulture;
		}
		NumberFormatInfoObject = Culture.NumberFormat;
		ApplyRightToLeft();
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
	}

	protected void ApplyRightToLeft()
	{
		if (rightToLeftCultures.Contains(Culture.Parent.Name) && RightToLeft == RightToLeft.No)
		{
			RightToLeft = RightToLeft.Yes;
		}
		else if (RightToLeft == RightToLeft.Yes)
		{
			RightToLeft = RightToLeft.No;
		}
	}

	private bool ShouldSerializeRightToLeft()
	{
		if (RightToLeft == RightToLeft.No)
		{
			return false;
		}
		return true;
	}

	public override void ResetRightToLeft()
	{
		RightToLeft = RightToLeft.No;
	}

	private bool ShouldSerializeForeColor()
	{
		if (ForeColor == SystemColors.ControlText)
		{
			return false;
		}
		return true;
	}

	public override void ResetForeColor()
	{
		ForeColor = SystemColors.ControlText;
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

	private void CreateAndInitNumberFormatInfo()
	{
		numberFormatInfoObject = new NumberFormatInfo();
		numberFormatInfoObject.CurrencyDecimalDigits = Culture.NumberFormat.CurrencyDecimalDigits;
		numberFormatInfoObject.CurrencyDecimalSeparator = Culture.NumberFormat.CurrencyDecimalSeparator;
		numberFormatInfoObject.NumberDecimalSeparator = Culture.NumberFormat.NumberDecimalSeparator;
		numberFormatInfoObject.PercentDecimalSeparator = Culture.NumberFormat.PercentDecimalSeparator;
		numberFormatInfoObject.CurrencyGroupSeparator = Culture.NumberFormat.CurrencyGroupSeparator;
		numberFormatInfoObject.NumberGroupSeparator = Culture.NumberFormat.NumberGroupSeparator;
		numberFormatInfoObject.PercentGroupSeparator = Culture.NumberFormat.PercentGroupSeparator;
		numberFormatInfoObject.CurrencyGroupSizes = Culture.NumberFormat.CurrencyGroupSizes;
		numberFormatInfoObject.CurrencyNegativePattern = Culture.NumberFormat.CurrencyNegativePattern;
		numberFormatInfoObject.CurrencyPositivePattern = Culture.NumberFormat.CurrencyPositivePattern;
		numberFormatInfoObject.CurrencySymbol = Culture.NumberFormat.CurrencySymbol;
		numberFormatInfoObject.PercentGroupSizes = Culture.NumberFormat.PercentGroupSizes;
		numberFormatInfoObject.PercentNegativePattern = Culture.NumberFormat.PercentNegativePattern;
		numberFormatInfoObject.PercentPositivePattern = Culture.NumberFormat.PercentPositivePattern;
		numberFormatInfoObject.PercentSymbol = Culture.NumberFormat.PercentSymbol;
		numberFormatInfoObject.NumberNegativePattern = Culture.NumberFormat.NumberNegativePattern;
	}

	protected bool ShouldSerializeNegativeSign()
	{
		return Culture.NumberFormat.NegativeSign != NegativeSign;
	}

	private void ResetNegativeSign()
	{
		NegativeSign = Culture.NumberFormat.NegativeSign;
	}

	protected NumberFormatInfo GetCopyOfCurrentNumberFormatInfo()
	{
		NumberFormatInfo numberFormatInfo = new NumberFormatInfo();
		if (NumberFormatInfoObject != null)
		{
			numberFormatInfo.CurrencyDecimalDigits = NumberFormatInfoObject.CurrencyDecimalDigits;
			numberFormatInfo.CurrencyDecimalSeparator = NumberFormatInfoObject.CurrencyDecimalSeparator;
			numberFormatInfo.NumberDecimalSeparator = NumberFormatInfoObject.NumberDecimalSeparator;
			numberFormatInfo.PercentDecimalSeparator = NumberFormatInfoObject.PercentDecimalSeparator;
			numberFormatInfo.CurrencyGroupSeparator = NumberFormatInfoObject.CurrencyGroupSeparator;
			numberFormatInfo.NumberGroupSeparator = NumberFormatInfoObject.NumberGroupSeparator;
			numberFormatInfo.PercentGroupSeparator = NumberFormatInfoObject.PercentGroupSeparator;
			numberFormatInfo.CurrencyGroupSizes = NumberFormatInfoObject.CurrencyGroupSizes;
			numberFormatInfo.CurrencyNegativePattern = NumberFormatInfoObject.CurrencyNegativePattern;
			numberFormatInfo.CurrencyPositivePattern = NumberFormatInfoObject.CurrencyPositivePattern;
			numberFormatInfo.CurrencySymbol = NumberFormatInfoObject.CurrencySymbol;
			numberFormatInfo.PercentGroupSizes = NumberFormatInfoObject.PercentGroupSizes;
			numberFormatInfo.PercentNegativePattern = NumberFormatInfoObject.PercentNegativePattern;
			numberFormatInfo.PercentPositivePattern = NumberFormatInfoObject.PercentPositivePattern;
			numberFormatInfo.PercentSymbol = NumberFormatInfoObject.PercentSymbol;
		}
		return numberFormatInfo;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public bool ShouldSerializeNegativeColor()
	{
		if (NegativeColor == Color.Red)
		{
			return false;
		}
		return true;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public void ResetNegativeColor()
	{
		NegativeColor = Color.Red;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public bool ShouldSerializeZeroColor()
	{
		if (ZeroColor == Control.DefaultForeColor)
		{
			return false;
		}
		return true;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public void ResetZeroColor()
	{
		ZeroColor = Control.DefaultForeColor;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public bool ShouldSerializePositiveColor()
	{
		if (PositiveColor == Control.DefaultForeColor)
		{
			return false;
		}
		return true;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public void ResetPositiveColor()
	{
		PositiveColor = Control.DefaultForeColor;
	}

	protected virtual void OnBindableValueChanged(EventArgs e)
	{
		if (this.BindableValueChanged != null)
		{
			this.BindableValueChanged(this, e);
		}
	}

	protected virtual void OnControlValidated(string newValue, string oldValue)
	{
		ControlValidatedEventArgs args = new ControlValidatedEventArgs(newValue, oldValue);
		if (this.ControlValidated != null)
		{
			this.ControlValidated(this, args);
		}
	}

	[DocumentationExclude]
	protected virtual bool IsAssignable(object val)
	{
		return true;
	}

	[DocumentationExclude]
	protected virtual void SetValue(object val)
	{
	}

	[DocumentationExclude]
	protected virtual object GetValue()
	{
		return null;
	}

	[DocumentationExclude]
	protected void SetDefaultValue(object defaultValue)
	{
		this.defaultValue = defaultValue;
	}

	public void SetControlColor()
	{
		if (IsNegative)
		{
			if (ForeColor != NegativeColor)
			{
				ForeColor = NegativeColor;
			}
		}
		else if (CheckIsZero())
		{
			if (GetZeroNegative() && ForeColor != NegativeColor)
			{
				ForeColor = NegativeColor;
			}
			else if (ForeColor != ZeroColor)
			{
				ForeColor = ZeroColor;
			}
		}
		else if (ForeColor != PositiveColor)
		{
			ForeColor = PositiveColor;
		}
	}

	protected string ApplyFormattingAndSetText(string rawValue)
	{
		bool flag = ignoreTextChange;
		IsNegative = CheckIfNegative(rawValue);
		undoBufferText = GetTextBoxText();
		string text = ApplyFormatting(rawValue);
		ignoreTextChange = flag;
		ReturnBaseText = true;
		SetTextBoxText(text);
		ReturnBaseText = false;
		SetControlColor();
		return text;
	}

	protected string SetModifiedText(string formattedText, string rawValue)
	{
		bool flag = ignoreTextChange;
		IsNegative = CheckIfNegative(rawValue);
		undoBufferText = GetTextBoxText();
		ignoreTextChange = flag;
		ReturnBaseText = true;
		SetTextBoxText(formattedText);
		ReturnBaseText = false;
		SetControlColor();
		return formattedText;
	}

	[DocumentationExclude]
	protected void SetTextBoxText(string text)
	{
		base.Text = text;
	}

	[DocumentationExclude]
	protected string GetTextBoxText()
	{
		return base.Text;
	}

	[DocumentationExclude]
	protected int GetTextBoxTextLength()
	{
		return base.Text.Length;
	}

	[DocumentationExclude]
	protected virtual string ApplyFormatting(string rawValue)
	{
		return rawValue;
	}

	[DocumentationExclude]
	protected virtual string RemoveFormatting(string formattedText)
	{
		return RemoveFormatting(formattedText, padIfEmpty: true);
	}

	[DocumentationExclude]
	protected virtual string RemoveFormatting(string formattedText, bool padIfEmpty)
	{
		return RemoveFormatting(formattedText, NumberFormatInfoObject, padIfEmpty);
	}

	[DocumentationExclude]
	protected virtual string RemoveFormatting(string formattedText, NumberFormatInfo info)
	{
		return RemoveFormatting(formattedText, info, padIfEmpty: true);
	}

	[DocumentationExclude]
	protected virtual string RemoveFormatting(string formattedText, NumberFormatInfo info, bool padIfEmpty)
	{
		int num = 0;
		string text = string.Empty;
		string text2 = string.Empty;
		string text3 = string.Empty;
		num = GetDecimalSeparatorPosition(formattedText, info);
		formattedText = formattedText.Trim();
		if (formattedText != string.Empty)
		{
			bool flag = ReturnBaseText;
			ReturnBaseText = true;
			int num2 = base.SelectionStart;
			int num3 = SelectionLength;
			ReturnBaseText = flag;
			if (num2 == 0 && num3 == GetTextBoxTextLength() && ParseForNegativeFormat(formattedText))
			{
				text3 = NegativeSign;
			}
		}
		if (num < 0)
		{
			num = formattedText.Length;
		}
		for (int i = 0; i < num; i++)
		{
			if (char.IsDigit(formattedText[i]))
			{
				text += formattedText[i];
			}
		}
		if (num >= 0 && num < formattedText.Length)
		{
			for (int j = num; j < formattedText.Length; j++)
			{
				if (char.IsDigit(formattedText[j]))
				{
					text2 += formattedText[j];
				}
			}
			text2 = text2.Trim();
			if (text2 == string.Empty)
			{
				text2 = "0";
			}
			return text3 + text + GetDecimalSeparator(info) + text2;
		}
		if ((text == null || text == string.Empty) && padIfEmpty)
		{
			text = "0";
		}
		return text3 + text;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual void ResetReadOnlyBackColor()
	{
		readOnlyBackColor = SystemColors.Control;
	}

	private bool ShouldSerializeReadOnlyBackColor()
	{
		return readOnlyBackColor != SystemColors.Control;
	}

	[DocumentationExclude]
	protected override void OnReadOnlyChanged(EventArgs e)
	{
		if (base.ReadOnly && ReadOnlyBackColor != SystemColors.Control)
		{
			BackColor = ReadOnlyBackColor;
		}
		else
		{
			base.ResetBackColor();
		}
		base.OnReadOnlyChanged(e);
	}

	[DocumentationExclude]
	protected virtual void SetTextProperty(string newText)
	{
		bool flag = false;
		if (newText == null || newText == string.Empty)
		{
			if (AllowNull && !RaiseSetNull(newText))
			{
				SetNullNumberValue();
				SetTextBoxText(NullString);
				flag = true;
			}
			else
			{
				newText = string.Empty;
			}
		}
		if (!flag)
		{
			SelectAll();
			string textBoxText = GetTextBoxText();
			int num = base.SelectionStart;
			int num2 = SelectionLength;
			if (num > textBoxText.Length || num2 > textBoxText.Length)
			{
				SetTextBoxText(FormattedText);
				textBoxText = GetTextBoxText();
			}
			InsertString(textBoxText, num, num2, newText, pasteOperation: true);
		}
	}

	[DocumentationExclude]
	protected virtual void SetNullNumberValue()
	{
	}

	[DocumentationExclude]
	protected virtual string GetClipText()
	{
		return GetClipText(padIfEmpty: true);
	}

	[DocumentationExclude]
	public string GetClipText(bool padIfEmpty)
	{
		string text = RemoveFormatting(GetTextBoxText(), padIfEmpty);
		if (isNegative && text != null && text.Length > 0 && NegativeSign.Length > 0 && text[0] != NegativeSign[0])
		{
			text = NegativeSign + text;
		}
		return text;
	}

	protected virtual void OnClipTextChanged(EventArgs e)
	{
		if (this.ClipTextChanged != null)
		{
			this.ClipTextChanged(this, e);
		}
	}

	protected virtual void OnFormattedTextChanged(EventArgs e)
	{
		if (this.FormattedTextChanged != null)
		{
			this.FormattedTextChanged(this, e);
		}
	}

	private void HandleContextMenuPopup(object sender, EventArgs ea)
	{
		Focus();
		miUndo.Enabled = CanUndo;
		bool enabled = SelectionLength > 0;
		if (!base.Enabled || base.ReadOnly)
		{
			miCut.Enabled = false;
			miPaste.Enabled = false;
			miDelete.Enabled = false;
			miCopy.Enabled = enabled;
		}
		else
		{
			miCut.Enabled = enabled;
			miCopy.Enabled = enabled;
			miDelete.Enabled = Text.Length > 0;
			DataObject dataObject = (DataObject)Clipboard.GetDataObject();
			miPaste.Enabled = dataObject.GetDataPresent(typeof(string));
		}
		miSelectAll.Enabled = SelectionLength != Text.Length;
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

	private void HandleMenuDeleteClick(object sender, EventArgs ea)
	{
		Delete();
	}

	private void HandleMenuSelectAllClick(object sender, EventArgs ea)
	{
		SelectAll();
	}

	private void HandleMenuPasteClick(object sender, EventArgs ea)
	{
		Paste();
	}

	public new virtual void Undo()
	{
		if (CanUndo)
		{
			redoBufferText = GetTextBoxText();
			Text = undoBufferText;
			base.SelectionStart = GetFirstDataPos();
		}
	}

	public new virtual void SelectAll()
	{
		base.SelectAll();
	}

	public new virtual void Paste()
	{
		if (base.ReadOnly)
		{
			return;
		}
		try
		{
			string empty = string.Empty;
			IDataObject dataObject = Clipboard.GetDataObject();
			if (dataObject.GetDataPresent(DataFormats.Text))
			{
				empty = dataObject.GetData(DataFormats.Text).ToString();
				if (empty != null && InsertString(GetTextBoxText(), base.SelectionStart, SelectionLength, empty, pasteOperation: true))
				{
					SetPreserveData(preserveData: false);
				}
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			ExceptionManager.RaiseExceptionCatched(this, ex);
		}
	}

	public new virtual void Copy()
	{
		if (ClipMode == CurrencyClipModes.IncludeFormatting)
		{
			base.Copy();
			return;
		}
		string clipText = ClipText;
		Clipboard.SetDataObject(clipText);
	}

	public new virtual void Cut()
	{
		if (!base.ReadOnly)
		{
			Copy();
			if (HandleDeleteKey())
			{
				SetPreserveData(preserveData: false);
			}
		}
	}

	public virtual void Delete()
	{
		if (HandleDeleteKey())
		{
			SetPreserveData(preserveData: false);
		}
	}

	[DocumentationExclude]
	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			editMenu = null;
			numberFormatInfoObject = null;
			nullFormat = null;
			UnWireEvents();
		}
		base.Dispose(disposing);
	}

	[DocumentationExclude]
	protected virtual void FormatChanged(string currentText, NumberFormatInfo previousFormat)
	{
	}

	[DocumentationExclude]
	protected virtual string ToggleNegative(string currentText)
	{
		return currentText;
	}

	[DocumentationExclude]
	protected bool GetZeroNegative()
	{
		return zeroNegative;
	}

	[DocumentationExclude]
	protected virtual bool CheckIsZero()
	{
		return false;
	}

	[DocumentationExclude]
	protected void SetNegativeInputPending(bool negativeInputPending)
	{
		this.negativeInputPending = negativeInputPending;
	}

	[DocumentationExclude]
	protected bool GetNegativeInputPending()
	{
		return negativeInputPending;
	}

	[DocumentationExclude]
	protected void SetZeroNegative(bool zeroNegative)
	{
		this.zeroNegative = zeroNegative;
	}

	[DocumentationExclude]
	protected virtual string GetNumberValue(string formattedText, int startPosition)
	{
		return formattedText;
	}

	[DocumentationExclude]
	protected virtual int GetStartPositionJustNumbers(string currentText, int startPosition)
	{
		int num = 0;
		for (int i = 0; i < startPosition; i++)
		{
			if (char.IsDigit(currentText[i]))
			{
				num++;
			}
		}
		return num;
	}

	[DocumentationExclude]
	protected bool IsValidCharacter(char inputCharacter)
	{
		bool flag = false;
		if (inputCharacter >= '0' && inputCharacter <= '9')
		{
			return true;
		}
		return false;
	}

	protected virtual bool ParseForNegativeFormat(string currentText)
	{
		return ParseForNegativeFormat(currentText, NumberFormatInfoObject);
	}

	protected virtual bool ParseForNegativeFormat(string currentText, NumberFormatInfo info)
	{
		return false;
	}

	[DocumentationExclude]
	protected virtual bool CheckIfNegative(string rawValue)
	{
		return false;
	}

	public void SetEmptySelection(int selectionStart)
	{
		if (selectionStart != -1)
		{
			base.SelectionStart = selectionStart;
		}
		SelectionLength = 0;
	}

	protected int GetFirstDataPos()
	{
		string textBoxText = GetTextBoxText();
		if (textBoxText == null || textBoxText.Length == 0)
		{
			return 0;
		}
		int i;
		for (i = 0; i < textBoxText.Length && !char.IsDigit(textBoxText[i]); i++)
		{
		}
		return i;
	}

	protected int GetNextDataPos(int startPosition, bool inDecimalPosition, bool back, bool delete)
	{
		string textBoxText = GetTextBoxText();
		if (textBoxText == null || textBoxText.Length == 0)
		{
			return 0;
		}
		int i = Math.Max(startPosition, 0);
		int decimalSeparatorPosition = GetDecimalSeparatorPosition(textBoxText);
		if (startPosition == decimalSeparatorPosition)
		{
			if (!inDecimalPosition)
			{
				return startPosition;
			}
			if (back)
			{
				return startPosition;
			}
		}
		for (; i < textBoxText.Length && !char.IsDigit(textBoxText[i]); i++)
		{
		}
		if (inDecimalPosition && !back && !delete)
		{
			i++;
		}
		return Math.Min(textBoxText.Length, i);
	}

	protected virtual int GetDecimalSeparatorPosition(string currentText)
	{
		return GetDecimalSeparatorPosition(currentText, NumberFormatInfoObject);
	}

	protected virtual int GetDecimalSeparatorPosition(string currentText, NumberFormatInfo info)
	{
		int num = 0;
		return currentText.IndexOf(GetDecimalSeparator(info));
	}

	public int GetPrevDataPos(int startPosition)
	{
		string textBoxText = GetTextBoxText();
		if (textBoxText == null || textBoxText.Length == 0)
		{
			return 0;
		}
		if (startPosition >= textBoxText.Length)
		{
			return textBoxText.Length;
		}
		int decimalSeparatorPosition = GetDecimalSeparatorPosition(textBoxText);
		int num = Math.Min(startPosition, textBoxText.Length - 1);
		while (num > 0 && !char.IsDigit(textBoxText[num]))
		{
			num--;
		}
		if (num == decimalSeparatorPosition)
		{
			num--;
		}
		return Math.Max(0, num);
	}

	[DocumentationExclude]
	protected virtual string GetDecimalSeparator()
	{
		return GetDecimalSeparator(NumberFormatInfoObject);
	}

	[DocumentationExclude]
	protected virtual string GetDecimalSeparator(NumberFormatInfo info)
	{
		return info.NumberDecimalSeparator;
	}

	[DocumentationExclude]
	protected virtual string GetGroupSeparator()
	{
		return GetGroupSeparator(NumberFormatInfoObject);
	}

	[DocumentationExclude]
	protected virtual string GetGroupSeparator(NumberFormatInfo info)
	{
		return info.NumberGroupSeparator;
	}

	[DocumentationExclude]
	protected string DeleteSelectedText(string formattedText, int startPosition, int endPosition)
	{
		if (endPosition > startPosition)
		{
			int decimalSeparatorPosition = GetDecimalSeparatorPosition(formattedText);
			formattedText = ((endPosition <= decimalSeparatorPosition || decimalSeparatorPosition < startPosition) ? (formattedText.Substring(0, startPosition) + formattedText.Substring(endPosition)) : ((startPosition != 0 || formattedText.Length != endPosition) ? (formattedText.Substring(0, startPosition) + GetDecimalSeparator() + formattedText.Substring(endPosition)) : ""));
		}
		return formattedText;
	}

	protected string DeleteSelectedText()
	{
		return DeleteSelectedText(GetTextBoxText(), base.SelectionStart, base.SelectionStart + SelectionLength);
	}

	private int GetFirstFillPos(int startPosition)
	{
		return Math.Max(GetFirstDataPos(), GetPrevDataPos(startPosition));
	}

	[DocumentationExclude]
	protected virtual int GetDecimalDigits()
	{
		return NumberFormatInfoObject.NumberDecimalDigits;
	}

	protected virtual int CanInsert(string currentText, string inputText, int initialZeroCount)
	{
		return inputText.Length;
	}

	protected virtual bool CheckForMinMax(string newText)
	{
		return CheckForMinMax(newText, ignoreLength: false);
	}

	protected virtual bool CheckForMinMax(string newText, bool ignoreLength)
	{
		return true;
	}

	protected virtual bool CheckNullStringIsInRange(string nullString)
	{
		return true;
	}

	[DocumentationExclude]
	protected int GetNumberPartLength(string numberText)
	{
		int num = 0;
		int num2 = numberText.IndexOf(GetDecimalSeparator());
		if (num2 != -1)
		{
			return num2;
		}
		return numberText.Length;
	}

	[DocumentationExclude]
	protected virtual bool InsertString(string currentText, int startPosition, int selectionLength, string textToBeInserted)
	{
		return InsertString(currentText, startPosition, selectionLength, textToBeInserted, pasteOperation: false);
	}

	[DocumentationExclude]
	protected virtual bool InsertString(string currentText, int startPosition, int selectionLength, string textToBeInserted, bool pasteOperation)
	{
		NumberModifyState numberModifyState = PrepareInsertString(currentText, startPosition, selectionLength, textToBeInserted, pasteOperation);
		return CompleteInsertString(numberModifyState);
	}

	[DocumentationExclude]
	protected virtual NumberModifyState PrepareInsertString(string currentText, int startPosition, int selectionLength, string textToBeInserted, bool pasteOperation)
	{
		NumberModifyState numberModifyState = new NumberModifyState();
		_ = string.Empty;
		string empty = string.Empty;
		string empty2 = string.Empty;
		int num = 0;
		numberModifyState.moveBack = false;
		numberModifyState.initialNegativeState = IsNegative;
		if (!NegativeSign.Equals(string.Empty) && textToBeInserted.IndexOf(NegativeSign) == 0)
		{
			numberModifyState.isNegative = true;
			IsNegative = true;
		}
		else if (startPosition == 0 && selectionLength == currentText.Length)
		{
			numberModifyState.isNegative = false;
			IsNegative = false;
		}
		empty2 = RemoveFormatting(textToBeInserted);
		numberModifyState.startPositionJustNumbers = GetStartPositionJustNumbers(currentText, startPosition);
		num = GetInitialZeroCount(currentText, startPosition);
		numberModifyState.inDecimalPosition = IsInDecimalPosition(currentText, startPosition);
		currentText = DeleteSelectedText(currentText, startPosition, startPosition + selectionLength);
		int num2 = CanInsert(currentText, empty2, num);
		string text = currentText.Substring(0, startPosition) + empty2 + currentText.Substring(startPosition);
		bool flag = true;
		if (GetZeroNegative() || GetNegativeInputPending())
		{
			text = "-" + text;
			IsNegative = true;
			flag = CheckForMinMax(text, ignoreLength: true);
		}
		else
		{
			flag = CheckForMinMax(text, pasteOperation);
		}
		if (rollBackOperation)
		{
			rollBackOperation = false;
			numberModifyState.success = false;
			IsNegative = numberModifyState.initialNegativeState;
		}
		else
		{
			if (GetNegativeInputPending())
			{
				IsNegative = true;
				SetNegativeInputPending(negativeInputPending: false);
			}
			if (GetZeroNegative() && int.Parse(empty2) != 0)
			{
				IsNegative = true;
				SetZeroNegative(zeroNegative: false);
			}
			if (!flag)
			{
				if (base.CausesValidation)
				{
					RaiseValidationError(text, startPosition, "Cannot change value as minimum / maximum conditions will not be met.");
				}
				numberModifyState.success = false;
				return numberModifyState;
			}
			if (num2 == 0)
			{
				if (base.CausesValidation)
				{
					string invalidText = currentText.Substring(0, startPosition) + empty2 + currentText.Substring(startPosition);
					RaiseValidationError(invalidText, startPosition);
				}
				numberModifyState.success = false;
				return numberModifyState;
			}
			if (num2 < GetNumberLengthWithoutMinus(empty2))
			{
				if (base.CausesValidation)
				{
					string invalidText2 = currentText.Substring(0, startPosition) + empty2 + currentText.Substring(startPosition);
					RaiseValidationError(invalidText2, startPosition);
				}
				empty2 = empty2.Substring(0, num2);
			}
			empty = ConcatModifiedText(currentText.Substring(0, startPosition), empty2, currentText.Substring(startPosition));
			empty = RemoveFormatting(empty);
			if (numberModifyState.inDecimalPosition)
			{
				empty = CheckDecimalPartLength(empty);
			}
			if (IsValidNumberValue(empty))
			{
				numberModifyState.changedValue = GetNumberValue(empty, numberModifyState.startPositionJustNumbers);
				numberModifyState.changedString = ApplyFormatting(numberModifyState.changedValue);
				if (!numberModifyState.inDecimalPosition)
				{
					numberModifyState.startPositionJustNumbers = numberModifyState.startPositionJustNumbers + empty2.Length - num;
				}
			}
		}
		return numberModifyState;
	}

	protected virtual string ConcatModifiedText(string startCurrentText, string inputRawText, string endCurrentText)
	{
		return startCurrentText + inputRawText + endCurrentText;
	}

	[DocumentationExclude]
	protected virtual bool CompleteInsertString(NumberModifyState state)
	{
		if (state.success)
		{
			if (IsNull)
			{
				state.changedString = ApplyFormatting(state.changedValue);
			}
			SetModifiedText(state.changedString, state.changedValue);
			PositionCursorAfterEdit(state.startPositionJustNumbers, state.inDecimalPosition, state.moveBack, delete: false);
		}
		else
		{
			IsNegative = state.initialNegativeState;
		}
		return state.success;
	}

	[DocumentationExclude]
	private int GetNumberLengthWithoutMinus(string incomingText)
	{
		if (incomingText.IndexOf('-') != -1)
		{
			return incomingText.Length - 1;
		}
		return incomingText.Length;
	}

	protected override void OnTextChanged(EventArgs e)
	{
		UpdateNullState();
		if (!ignoreTextChange)
		{
			base.OnTextChanged(e);
			OnClipTextChanged(e);
			OnFormattedTextChanged(e);
		}
		SetNegativeInputPending(negativeInputPending: false);
	}

	protected string CheckDecimalPartLength(string rawText)
	{
		int num = 0;
		string empty = string.Empty;
		string result = rawText;
		num = GetDecimalSeparatorPosition(rawText);
		if (num > 0)
		{
			empty = rawText.Substring(num + 1, rawText.Length - num - GetDecimalSeparator().Length);
			if (empty.Length > GetDecimalDigits())
			{
				int num2 = empty.Length - GetDecimalDigits();
				result = rawText.Remove(rawText.Length - num2, num2);
			}
		}
		return result;
	}

	protected virtual int GetInitialZeroCount(string currentText, int startPosition)
	{
		bool flag = false;
		int num = 0;
		for (int i = 0; i < currentText.Length; i++)
		{
			if (char.IsDigit(currentText[i]) || flag)
			{
				if (currentText[i] != '0')
				{
					break;
				}
				num++;
				flag = true;
			}
		}
		return num;
	}

	protected virtual bool IsInDecimalPosition(string currentText, int startPosition)
	{
		bool result = false;
		int decimalSeparatorPosition = GetDecimalSeparatorPosition(currentText);
		if (decimalSeparatorPosition != -1 && startPosition > decimalSeparatorPosition)
		{
			result = true;
		}
		return result;
	}

	[DocumentationExclude]
	protected virtual bool IsValidNumberValue(string doubleString)
	{
		return true;
	}

	[DocumentationExclude]
	protected virtual void OnSetNull(SetNullEventArgs e)
	{
		try
		{
			if (this.SetNull != null)
			{
				this.SetNull(this, e);
			}
		}
		catch
		{
		}
	}

	[DocumentationExclude]
	protected virtual void OnKeyValidate(KeyValidateEventArgs e)
	{
		try
		{
			if (this.KeyValidate != null)
			{
				this.KeyValidate(this, e);
			}
		}
		catch
		{
		}
	}

	[DocumentationExclude]
	protected virtual bool RaiseSetNull(object nullValue)
	{
		SetNullEventArgs e = new SetNullEventArgs(nullValue);
		OnSetNull(e);
		return e.Cancel;
	}

	[DocumentationExclude]
	protected virtual bool RaiseKeyValidate(char key, string changedString, string changedValueString)
	{
		KeyValidateEventArgs e = new KeyValidateEventArgs(key, changedString, changedValueString);
		OnKeyValidate(e);
		return !e.Cancel;
	}

	[DocumentationExclude]
	internal virtual void OnNullStringChanged(bool isNull)
	{
		if (isNull && AllowNull)
		{
			SetNullNumberValue();
			SetTextBoxText(NullString);
		}
	}

	[DocumentationExclude]
	internal virtual void OnAllowNullChanged()
	{
		if (IsNull)
		{
			if (AllowNull)
			{
				SetNullNumberValue();
				SetTextBoxText(NullString);
			}
			else
			{
				ApplyFormattingAndSetText(DefaultValue.ToString());
			}
		}
	}

	private void UpdateNullState()
	{
	}

	private bool IsNullOrEmpty(string text)
	{
		if (text != null && text.Length != 0)
		{
			return text.Equals(NullString);
		}
		return true;
	}

	[DocumentationExclude]
	protected override bool ProcessKeyMessage(ref Message m)
	{
		if (base.ReadOnly)
		{
			return base.ProcessKeyMessage(ref m);
		}
		NumberModifyState numberModifyState = null;
		int num = (int)m.WParam | (int)Control.ModifierKeys;
		bool flag = true;
		if (m.Msg == 258)
		{
			supressKeyPress = true;
			if (m.WParam == (IntPtr)3)
			{
				Copy();
				return base.ProcessKeyMessage(ref m);
			}
			if (m.WParam == (IntPtr)22)
			{
				Paste();
				return base.ProcessKeyMessage(ref m);
			}
			if (m.WParam == (IntPtr)26)
			{
				Undo();
				return base.ProcessKeyMessage(ref m);
			}
			if (m.WParam == (IntPtr)24)
			{
				Cut();
				return base.ProcessKeyMessage(ref m);
			}
			if (m.WParam == (IntPtr)1)
			{
				if (m.LParam == (IntPtr)1966081)
				{
					SelectAll();
				}
				else
				{
					Paste();
				}
				return base.ProcessKeyMessage(ref m);
			}
			if (GetDecimalSeparator().Length > 0 && (ushort)num == GetDecimalSeparator()[0])
			{
				flag = HandleDecimalKey();
				if (!flag)
				{
					supressKeyPress = false;
				}
			}
			else if ((NegativeSign.Length == 1 && (ushort)num == NegativeSign[0]) || (NegativeSign.Length != 1 && (ushort)num == 45))
			{
				numberModifyState = HandleSubtractKey();
				if (!RaiseKeyValidate((char)num, numberModifyState.changedString, numberModifyState.changedValue))
				{
					numberModifyState.success = false;
				}
				flag = CompleteSubtractKey(numberModifyState);
				if (!numberModifyState.success)
				{
					return base.ProcessKeyMessage(ref m);
				}
			}
			else if (IsValidCharacter((char)num))
			{
				flag = HandleCharacterKey((char)num);
				if (!flag)
				{
					return base.ProcessKeyMessage(ref m);
				}
			}
			else if (num == 8)
			{
				flag = HandleBackspaceKeyChar();
				if (!flag)
				{
					supressKeyPress = false;
				}
			}
			if (GetGroupSeparator().Length > 0 && (ushort)num == GetGroupSeparator()[0])
			{
				flag = HandleDecimalKey();
				if (!flag)
				{
					supressKeyPress = false;
				}
			}
			if (base.CausesValidation && !flag)
			{
				try
				{
					string invalidText = GetTextBoxText().Substring(0, base.SelectionStart) + (char)num + GetTextBoxText().Substring(base.SelectionStart);
					if (num != 8)
					{
						RaiseValidationError(invalidText, base.SelectionStart, $"Invalid key entered {num}");
					}
				}
				catch
				{
				}
			}
			if (flag)
			{
				m.Result = (IntPtr)3;
				SetPreserveData(preserveData: false);
			}
			return base.ProcessKeyMessage(ref m);
		}
		if (m.Msg == 256)
		{
			int modifierKeys = (int)Control.ModifierKeys;
			if (modifierKeys != 65536)
			{
				switch (num & 0xFFFF)
				{
				case 8:
					if (HandleBackspaceKey())
					{
						supressKeyDown = true;
						SetPreserveData(preserveData: false);
					}
					return base.ProcessKeyMessage(ref m);
				case 46:
					if (HandleDeleteKey())
					{
						supressKeyDown = true;
						SetPreserveData(preserveData: false);
					}
					return base.ProcessKeyMessage(ref m);
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

	[DocumentationExclude]
	protected virtual bool HandleBackspaceKeyChar()
	{
		return true;
	}

	[DocumentationExclude]
	protected void SetPreserveData(bool preserveData)
	{
		this.preserveData = preserveData;
	}

	[DocumentationExclude]
	protected bool GetPreserveData()
	{
		return preserveData;
	}

	[DocumentationExclude]
	protected virtual bool HandleBackspaceKey()
	{
		if (base.ReadOnly)
		{
			return false;
		}
		if (base.SelectionStart == 0 && SelectionLength == 0)
		{
			return true;
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
		if (CheckForMinMax(textBoxText))
		{
			if (IsNullOrEmpty(textBoxText))
			{
				if (AllowNull && !RaiseSetNull(textBoxText))
				{
					SetNullNumberValue();
					SetTextBoxText(NullString);
				}
				else
				{
					string text = DefaultValue.ToString();
					if (IsValidNumberValue(text))
					{
						ApplyFormattingAndSetText(GetNumberValue(text, num));
						PositionCursorAfterEdit(num2, flag, back: true, delete: false);
					}
				}
			}
			else if (Text != NullString && IsValidNumberValue(RemoveFormatting(textBoxText)))
			{
				string text2 = RemoveFormatting(textBoxText.Substring(0, num) + textBoxText.Substring(num));
				if (IsValidNumberValue(text2))
				{
					ApplyFormattingAndSetText(GetNumberValue(text2, num));
					PositionCursorAfterEdit(num2, flag, back: true, delete: false);
				}
			}
		}
		SetControlColor();
		return true;
	}

	[DocumentationExclude]
	protected virtual bool HandleCharacterKey(char charToBeInserted)
	{
		NumberModifyState numberModifyState = PrepareInsertString(GetTextBoxText(), base.SelectionStart, SelectionLength, Convert.ToString(charToBeInserted), pasteOperation: false);
		if (!RaiseKeyValidate(charToBeInserted, numberModifyState.changedString, numberModifyState.changedValue))
		{
			numberModifyState.success = false;
		}
		if (m_bDecimalMode)
		{
			if (charToBeInserted == '0')
			{
				if (NumberFormatInfoObject.CurrencyDecimalDigits - 1 > m_iDecimalDigitsPosition)
				{
					m_iDecimalDigitsPosition++;
				}
			}
			else
			{
				string text = "0" + CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalSeparator;
				for (int i = 0; i < m_iDecimalDigitsPosition; i++)
				{
					text += "0";
				}
				text += charToBeInserted;
				numberModifyState.startPositionJustNumbers += m_iDecimalDigitsPosition;
				if (isNegative)
				{
					text = CultureInfo.CurrentCulture.NumberFormat.NegativeSign + text;
				}
				numberModifyState.changedValue = text;
				numberModifyState.inDecimalPosition = true;
				if (CheckForMinMax(numberModifyState.changedValue))
				{
					numberModifyState.success = true;
				}
				else
				{
					numberModifyState.success = false;
				}
				m_iDecimalDigitsPosition = 0;
				m_bDecimalMode = false;
			}
		}
		CompleteInsertString(numberModifyState);
		if (!numberModifyState.handled)
		{
			supressKeyPress = false;
		}
		return numberModifyState.success;
	}

	[DocumentationExclude]
	protected virtual bool IsDataPosition(string formattedText, int position)
	{
		if (position >= formattedText.Length)
		{
			return false;
		}
		return char.IsDigit(formattedText[position]);
	}

	protected virtual int CursorShouldBeMoved(int startPosition, bool inDecimalPosition)
	{
		return GetNextDataPos(startPosition + 1, inDecimalPosition, back: false, delete: false);
	}

	[DocumentationExclude]
	protected virtual bool HandleDeleteKey()
	{
		if (base.ReadOnly)
		{
			return false;
		}
		int i = base.SelectionStart;
		string textBoxText = GetTextBoxText();
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
		textBoxText = DeleteSelectedText();
		if (CheckForMinMax(textBoxText))
		{
			if (IsNullOrEmpty(textBoxText))
			{
				if (AllowNull && !RaiseSetNull(textBoxText))
				{
					SetNullNumberValue();
					SetTextBoxText(NullString);
				}
				else
				{
					string text = DefaultValue.ToString();
					if (IsValidNumberValue(text))
					{
						ApplyFormattingAndSetText(GetNumberValue(text, i));
						PositionCursorAfterEdit(num, flag, back: false, delete: true);
					}
				}
			}
			else if (Text != NullString && IsValidNumberValue(RemoveFormatting(textBoxText)))
			{
				string text2 = RemoveFormatting(textBoxText.Substring(0, i) + textBoxText.Substring(i));
				if (IsValidNumberValue(text2))
				{
					ApplyFormattingAndSetText(GetNumberValue(text2, i));
					PositionCursorAfterEdit(num, flag, back: false, delete: true);
				}
			}
		}
		SetControlColor();
		return true;
	}

	[DocumentationExclude]
	protected virtual NumberModifyState HandleSubtractKey()
	{
		NumberModifyState numberModifyState = new NumberModifyState();
		bool flag = false;
		if (base.SelectionStart == 0 && SelectionLength == TextLength && NegativeInputPendingOnSelectAll)
		{
			SetNegativeInputPending(negativeInputPending: true);
			numberModifyState.handled = false;
			return numberModifyState;
		}
		flag = true;
		if (base.ReadOnly)
		{
			numberModifyState.handled = false;
			return numberModifyState;
		}
		numberModifyState.initialNegativeState = IsNegative;
		int startPosition = base.SelectionStart;
		string empty = string.Empty;
		string textBoxText = GetTextBoxText();
		IsInDecimalPosition(textBoxText, startPosition);
		GetStartPositionJustNumbers(textBoxText, startPosition);
		isNegative = !isNegative;
		empty = GetNumberValue(GetTextBoxText(), 0);
		if (IsNegative && !CheckIfNegative(empty))
		{
			empty = ToggleNegative(empty);
		}
		numberModifyState.initialString = textBoxText;
		if (CheckForMinMax(empty, ignoreLength: true))
		{
			string changedString = ApplyFormatting(empty);
			numberModifyState.changedString = changedString;
			numberModifyState.changedValue = empty;
			numberModifyState.success = true;
		}
		else
		{
			numberModifyState.success = false;
			numberModifyState.changedString = empty;
			numberModifyState.changedValue = empty;
			numberModifyState.message = "Cannot change value as minimum / maximum conditions will not be met.";
		}
		if (flag)
		{
			SelectAll();
		}
		return numberModifyState;
	}

	[DocumentationExclude]
	protected virtual bool CompleteSubtractKey(NumberModifyState state)
	{
		if (!state.handled)
		{
			return false;
		}
		if (state.success)
		{
			SetModifiedText(state.changedString, state.changedValue);
			PositionCursorAfterEdit(state.startPositionJustNumbers, state.inDecimalPosition, state.moveBack, delete: false);
		}
		else
		{
			IsNegative = state.initialNegativeState;
			SetZeroNegative(zeroNegative: false);
			RaiseValidationError(state.changedValue.ToString(), 0, state.message);
		}
		return true;
	}

	[DocumentationExclude]
	protected virtual bool HandleDecimalKey()
	{
		_ = base.SelectionStart;
		string textBoxText = GetTextBoxText();
		int decimalSeparatorPosition = GetDecimalSeparatorPosition(textBoxText);
		if (decimalSeparatorPosition > 0)
		{
			decimalSeparatorPosition++;
			SetEmptySelection(decimalSeparatorPosition);
			m_bDecimalMode = false;
		}
		else if (IsNull && NumberFormatInfoObject.CurrencyDecimalDigits > 0)
		{
			m_bDecimalMode = true;
		}
		return true;
	}

	[DocumentationExclude]
	protected virtual void PositionCursorAfterEdit(int startPositionJustNumbers, bool inDecimalPosition, bool back, bool delete)
	{
		string textBoxText = GetTextBoxText();
		int num = 0;
		bool flag = false;
		for (int i = 0; i < textBoxText.Length; i++)
		{
			if (!char.IsDigit(textBoxText[i]))
			{
				continue;
			}
			num++;
			if (startPositionJustNumbers != 0 && num < startPositionJustNumbers)
			{
				continue;
			}
			if (delete && !inDecimalPosition)
			{
				num = ((startPositionJustNumbers <= 0) ? i : (i + 1));
			}
			else
			{
				num = i + 1;
				if (back && inDecimalPosition)
				{
					int decimalSeparatorPosition = GetDecimalSeparatorPosition(textBoxText);
					if (num <= decimalSeparatorPosition)
					{
						num = decimalSeparatorPosition + GetDecimalSeparator().Length;
					}
				}
			}
			flag = true;
			break;
		}
		if (!flag)
		{
			num = textBoxText.Length;
		}
		if (num < 0)
		{
			num = GetDecimalSeparatorPosition(textBoxText);
		}
		else if (num > textBoxText.Length)
		{
			num = textBoxText.Length;
		}
		num = GetNextDataPos(num, inDecimalPosition, back, delete);
		SetEmptySelection(num);
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		((Control)this).OnMouseDown(e);
		if (m_bNeedAllSelectOnMouseDown)
		{
			m_bNeedAllSelectOnMouseDown = false;
			SelectAll();
		}
	}

	protected override void WndProc(ref Message m)
	{
		bool flag = false;
		if (m.Msg == 123)
		{
			if (ContextMenu == null)
			{
				m.Result = IntPtr.Zero;
				flag = true;
			}
		}
		else if (m.Msg == 33)
		{
			if (SelectAllOnFocus && !Focused)
			{
				m_bNeedAllSelectOnMouseDown = true;
			}
		}
		else if (m.Msg == 768)
		{
			Cut();
			flag = true;
		}
		else if (m.Msg == 770)
		{
			Paste();
			flag = true;
		}
		if (!flag)
		{
			base.WndProc(ref m);
		}
	}

	[DocumentationExclude]
	protected override void OnEnter(EventArgs args)
	{
		if (SelectAllOnFocus)
		{
			SelectAll();
		}
		base.OnEnter(args);
	}
}
