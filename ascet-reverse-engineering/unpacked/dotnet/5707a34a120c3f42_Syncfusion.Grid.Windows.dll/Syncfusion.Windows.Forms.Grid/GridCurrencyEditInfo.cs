using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Globalization;
using Syncfusion.Styles;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCurrencyEditInfo : StyleInfoSubObjectBase
{
	private static GridCurrencyEditInfo defaultCurrencyEditInfo;

	public static GridCurrencyEditInfo Default
	{
		[DebuggerStepThrough]
		get
		{
			if (defaultCurrencyEditInfo == null)
			{
				defaultCurrencyEditInfo = new GridCurrencyEditInfo();
				defaultCurrencyEditInfo.NumberFormatInfoObject = CultureInfo.CurrentCulture.NumberFormat;
				defaultCurrencyEditInfo.CurrencyNumberDigits = 27;
				defaultCurrencyEditInfo.UseCultureInfo = false;
				defaultCurrencyEditInfo.NegativeColor = Color.Red;
				defaultCurrencyEditInfo.PositiveColor = SystemColors.ControlText;
				defaultCurrencyEditInfo.ClipMode = CurrencyClipModes.ExcludeFormatting;
				defaultCurrencyEditInfo.NullString = "0";
				defaultCurrencyEditInfo.NullValue = DBNull.Value;
			}
			return defaultCurrencyEditInfo;
		}
	}

	[NotifyParentProperty(true)]
	[Browsable(false)]
	[Category("Appearance")]
	[Description("The NumberFormaInfo object that will be used for formatting the currency string.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public NumberFormatInfo NumberFormatInfoObject
	{
		[DebuggerStepThrough]
		get
		{
			CultureInfo cultureInfo = ((((StyleInfoSubObjectIdentity)base.Identity).Owner is GridStyleInfo gridStyleInfo) ? gridStyleInfo.GetCulture(useCurrentCultureIfNull: true) : CultureInfo.CurrentCulture);
			if (UseCultureInfo)
			{
				return cultureInfo.NumberFormat;
			}
			NumberFormatInfo numberFormatInfo = (NumberFormatInfo)cultureInfo.NumberFormat.Clone();
			numberFormatInfo.CurrencyDecimalDigits = CurrencyDecimalDigits;
			numberFormatInfo.NegativeSign = NegativeSign;
			numberFormatInfo.CurrencyDecimalSeparator = CurrencyDecimalSeparator;
			numberFormatInfo.CurrencyGroupSeparator = CurrencyGroupSeparator;
			numberFormatInfo.CurrencyGroupSizes = CurrencyGroupSizes;
			numberFormatInfo.CurrencyNegativePattern = CurrencyNegativePattern;
			numberFormatInfo.CurrencyPositivePattern = CurrencyPositivePattern;
			numberFormatInfo.CurrencySymbol = CurrencySymbol;
			numberFormatInfo.NumberDecimalDigits = CurrencyDecimalDigits;
			numberFormatInfo.NumberDecimalSeparator = CurrencyDecimalSeparator;
			numberFormatInfo.NumberGroupSeparator = CurrencyGroupSeparator;
			numberFormatInfo.NumberGroupSizes = CurrencyGroupSizes;
			return numberFormatInfo;
		}
		[DebuggerStepThrough]
		set
		{
			CurrencyDecimalDigits = value.CurrencyDecimalDigits;
			NegativeSign = value.NegativeSign;
			CurrencyDecimalSeparator = value.CurrencyDecimalSeparator;
			CurrencyGroupSeparator = value.CurrencyGroupSeparator;
			CurrencyGroupSizes = value.CurrencyGroupSizes;
			CurrencyNegativePattern = value.CurrencyNegativePattern;
			CurrencyPositivePattern = value.CurrencyPositivePattern;
			CurrencySymbol = value.CurrencySymbol;
		}
	}

	[Localizable(true)]
	[NotifyParentProperty(true)]
	[Browsable(true)]
	[Description("Gets or sets the maximum number of digits for the decimal portion of the currency.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Appearance")]
	public int CurrencyDecimalDigits
	{
		[DebuggerStepThrough]
		get
		{
			return (int)GetValue(GridCurrencyEditInfoStore.CurrencyDecimalDigitsProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCurrencyEditInfoStore.CurrencyDecimalDigitsProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasCurrencyDecimalDigits
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCurrencyEditInfoStore.CurrencyDecimalDigitsProperty);
		}
	}

	[Browsable(true)]
	[Category("Appearance")]
	[Localizable(true)]
	[Description("Specifies the sign that is to be used to indicate a negative value.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[NotifyParentProperty(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public string NegativeSign
	{
		[DebuggerStepThrough]
		get
		{
			return (string)GetValue(GridCurrencyEditInfoStore.NegativeSignProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCurrencyEditInfoStore.NegativeSignProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasNegativeSign
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCurrencyEditInfoStore.NegativeSignProperty);
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[NotifyParentProperty(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	[Category("Appearance")]
	[Description("Gets or sets the decimal separator character that will be used for the display.")]
	[Localizable(true)]
	public string CurrencyDecimalSeparator
	{
		[DebuggerStepThrough]
		get
		{
			return (string)GetValue(GridCurrencyEditInfoStore.CurrencyDecimalSeparatorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCurrencyEditInfoStore.CurrencyDecimalSeparatorProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasCurrencyDecimalSeparator
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCurrencyEditInfoStore.CurrencyDecimalSeparatorProperty);
		}
	}

	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[NotifyParentProperty(true)]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Gets or sets the separator to be used for grouping digits.")]
	[Localizable(true)]
	public string CurrencyGroupSeparator
	{
		[DebuggerStepThrough]
		get
		{
			return (string)GetValue(GridCurrencyEditInfoStore.CurrencyGroupSeparatorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCurrencyEditInfoStore.CurrencyGroupSeparatorProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasCurrencyGroupSeparator
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCurrencyEditInfoStore.CurrencyGroupSeparatorProperty);
		}
	}

	[Localizable(true)]
	[Category("Appearance")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[NotifyParentProperty(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("Gets or sets the grouping of CurrencyDigits in the CurrencyTextBox.")]
	[Browsable(true)]
	public int[] CurrencyGroupSizes
	{
		[DebuggerStepThrough]
		get
		{
			return (int[])GetValue(GridCurrencyEditInfoStore.CurrencyGroupSizesProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCurrencyEditInfoStore.CurrencyGroupSizesProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasCurrencyGroupSizes
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCurrencyEditInfoStore.CurrencyGroupSizesProperty);
		}
	}

	[NotifyParentProperty(true)]
	[Category("Appearance")]
	[Browsable(true)]
	[Localizable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("Gets or sets the pattern to use when the value is negative.")]
	public int CurrencyNegativePattern
	{
		[DebuggerStepThrough]
		get
		{
			return (int)GetValue(GridCurrencyEditInfoStore.CurrencyNegativePatternProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCurrencyEditInfoStore.CurrencyNegativePatternProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasCurrencyNegativePattern
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCurrencyEditInfoStore.CurrencyNegativePatternProperty);
		}
	}

	[Localizable(true)]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[NotifyParentProperty(true)]
	[Browsable(true)]
	[Description("Gets or Sets the pattern to use when the value is positive.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public int CurrencyPositivePattern
	{
		[DebuggerStepThrough]
		get
		{
			return (int)GetValue(GridCurrencyEditInfoStore.CurrencyPositivePatternProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCurrencyEditInfoStore.CurrencyPositivePatternProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasCurrencyPositivePattern
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCurrencyEditInfoStore.CurrencyPositivePatternProperty);
		}
	}

	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Description("Gets or sets the currency symbol to be used in the CurrencyTextBox.")]
	[Category("Appearance")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[NotifyParentProperty(true)]
	[Localizable(true)]
	public string CurrencySymbol
	{
		[DebuggerStepThrough]
		get
		{
			return (string)GetValue(GridCurrencyEditInfoStore.CurrencySymbolProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCurrencyEditInfoStore.CurrencySymbolProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasCurrencySymbol
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCurrencyEditInfoStore.CurrencySymbolProperty);
		}
	}

	[Category("Appearance")]
	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Localizable(true)]
	[NotifyParentProperty(true)]
	[Description("Gets/Sets the number of digits for the number part.This value is initially set based on the maximum value of the Currency data type.")]
	public int CurrencyNumberDigits
	{
		[DebuggerStepThrough]
		get
		{
			return (int)GetValue(GridCurrencyEditInfoStore.CurrencyNumberDigitsProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCurrencyEditInfoStore.CurrencyNumberDigitsProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasCurrencyNumberDigits
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCurrencyEditInfoStore.CurrencyNumberDigitsProperty);
		}
	}

	[Category("Culture")]
	[NotifyParentProperty(true)]
	[Description("Specifies whether the NumberFormat should be based on Grid's Style or individual properties of this object.")]
	[Browsable(true)]
	public bool UseCultureInfo
	{
		[DebuggerStepThrough]
		get
		{
			return (bool)GetValue(GridCurrencyEditInfoStore.UseCultureInfoProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCurrencyEditInfoStore.UseCultureInfoProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasUseCultureInfo
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCurrencyEditInfoStore.UseCultureInfoProperty);
		}
	}

	[NotifyParentProperty(true)]
	[Browsable(true)]
	[Description("Gets/Sets the forecolor when the current value is negative.")]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public Color NegativeColor
	{
		[DebuggerStepThrough]
		get
		{
			return (Color)GetValue(GridCurrencyEditInfoStore.NegativeColorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCurrencyEditInfoStore.NegativeColorProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasNegativeColor
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCurrencyEditInfoStore.NegativeColorProperty);
		}
	}

	[Category("Appearance")]
	[Description("Gets/Sets the forecolor when the current value is positive.")]
	[NotifyParentProperty(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	public Color PositiveColor
	{
		[DebuggerStepThrough]
		get
		{
			return (Color)GetValue(GridCurrencyEditInfoStore.PositiveColorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCurrencyEditInfoStore.PositiveColorProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasPositiveColor
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCurrencyEditInfoStore.PositiveColorProperty);
		}
	}

	[Browsable(true)]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[NotifyParentProperty(true)]
	[Description("Determines whether to include or exclude the literal characters in the input mask when doing a  or copy command.")]
	public CurrencyClipModes ClipMode
	{
		[DebuggerStepThrough]
		get
		{
			return (CurrencyClipModes)GetValue(GridCurrencyEditInfoStore.ClipModeProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCurrencyEditInfoStore.ClipModeProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasClipMode
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCurrencyEditInfoStore.ClipModeProperty);
		}
	}

	[Description("Specify the string to be displayed when the DecimalValue is 0.")]
	[NotifyParentProperty(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Appearance")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public string NullString
	{
		[DebuggerStepThrough]
		get
		{
			return (string)GetValue(GridCurrencyEditInfoStore.NullStringProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCurrencyEditInfoStore.NullStringProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasNullString
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCurrencyEditInfoStore.NullStringProperty);
		}
	}

	[Description("Specify the value to be saved when the modified display text matches the null string.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[NotifyParentProperty(true)]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public object NullValue
	{
		[DebuggerStepThrough]
		get
		{
			return GetValue(GridCurrencyEditInfoStore.NullValueProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridCurrencyEditInfoStore.NullValueProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasNullValue
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridCurrencyEditInfoStore.NullValueProperty);
		}
	}

	internal static object CreateObject(StyleInfoSubObjectIdentity identity, object store)
	{
		if (store != null)
		{
			return new GridCurrencyEditInfo(identity, store as GridCurrencyEditInfoStore);
		}
		return new GridCurrencyEditInfo(identity);
	}

	[DebuggerStepThrough]
	public GridCurrencyEditInfo()
		: base(new GridCurrencyEditInfoStore())
	{
	}

	[DebuggerStepThrough]
	public GridCurrencyEditInfo(StyleInfoSubObjectIdentity identity)
		: base(identity, new GridCurrencyEditInfoStore())
	{
	}

	[DebuggerStepThrough]
	public GridCurrencyEditInfo(StyleInfoSubObjectIdentity identity, GridCurrencyEditInfoStore store)
		: base(identity, store)
	{
	}

	[DebuggerStepThrough]
	public override IStyleInfoSubObject MakeCopy(StyleInfoBase newOwner, StyleInfoProperty sip)
	{
		return new GridCurrencyEditInfo(newOwner.CreateSubObjectIdentity(sip), (GridCurrencyEditInfoStore)base.Store.Clone());
	}

	protected override StyleInfoBase GetDefaultStyle()
	{
		return Default;
	}

	[DebuggerStepThrough]
	public void ResetCurrencyDecimalDigits()
	{
		ResetValue(GridCurrencyEditInfoStore.CurrencyDecimalDigitsProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeCurrencyDecimalDigits()
	{
		return HasValue(GridCurrencyEditInfoStore.CurrencyDecimalDigitsProperty);
	}

	[DebuggerStepThrough]
	public void ResetNegativeSign()
	{
		ResetValue(GridCurrencyEditInfoStore.NegativeSignProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeNegativeSign()
	{
		return HasValue(GridCurrencyEditInfoStore.NegativeSignProperty);
	}

	[DebuggerStepThrough]
	public void ResetCurrencyDecimalSeparator()
	{
		ResetValue(GridCurrencyEditInfoStore.CurrencyDecimalSeparatorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeCurrencyDecimalSeparator()
	{
		return HasValue(GridCurrencyEditInfoStore.CurrencyDecimalSeparatorProperty);
	}

	[DebuggerStepThrough]
	public void ResetCurrencyGroupSeparator()
	{
		ResetValue(GridCurrencyEditInfoStore.CurrencyGroupSeparatorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeCurrencyGroupSeparator()
	{
		return HasValue(GridCurrencyEditInfoStore.CurrencyGroupSeparatorProperty);
	}

	[DebuggerStepThrough]
	public void ResetCurrencyGroupSizes()
	{
		ResetValue(GridCurrencyEditInfoStore.CurrencyGroupSizesProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeCurrencyGroupSizes()
	{
		return HasValue(GridCurrencyEditInfoStore.CurrencyGroupSizesProperty);
	}

	[DebuggerStepThrough]
	public void ResetCurrencyNegativePattern()
	{
		ResetValue(GridCurrencyEditInfoStore.CurrencyNegativePatternProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeCurrencyNegativePattern()
	{
		return HasValue(GridCurrencyEditInfoStore.CurrencyNegativePatternProperty);
	}

	[DebuggerStepThrough]
	public void ResetCurrencyPositivePattern()
	{
		ResetValue(GridCurrencyEditInfoStore.CurrencyPositivePatternProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeCurrencyPositivePattern()
	{
		return HasValue(GridCurrencyEditInfoStore.CurrencyPositivePatternProperty);
	}

	[DebuggerStepThrough]
	public void ResetCurrencySymbol()
	{
		ResetValue(GridCurrencyEditInfoStore.CurrencySymbolProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeCurrencySymbol()
	{
		return HasValue(GridCurrencyEditInfoStore.CurrencySymbolProperty);
	}

	[DebuggerStepThrough]
	public void ResetCurrencyNumberDigits()
	{
		ResetValue(GridCurrencyEditInfoStore.CurrencyNumberDigitsProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeCurrencyNumberDigits()
	{
		return HasValue(GridCurrencyEditInfoStore.CurrencyNumberDigitsProperty);
	}

	[DebuggerStepThrough]
	public void ResetUseCultureInfo()
	{
		ResetValue(GridCurrencyEditInfoStore.UseCultureInfoProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeUseCultureInfo()
	{
		return HasValue(GridCurrencyEditInfoStore.UseCultureInfoProperty);
	}

	[DebuggerStepThrough]
	public void ResetNegativeColor()
	{
		ResetValue(GridCurrencyEditInfoStore.NegativeColorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeNegativeColor()
	{
		return HasValue(GridCurrencyEditInfoStore.NegativeColorProperty);
	}

	[DebuggerStepThrough]
	public void ResetPositiveColor()
	{
		ResetValue(GridCurrencyEditInfoStore.PositiveColorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializePositiveColor()
	{
		return HasValue(GridCurrencyEditInfoStore.PositiveColorProperty);
	}

	[DebuggerStepThrough]
	public void ResetClipMode()
	{
		ResetValue(GridCurrencyEditInfoStore.ClipModeProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeClipMode()
	{
		return HasValue(GridCurrencyEditInfoStore.ClipModeProperty);
	}

	[DebuggerStepThrough]
	public void ResetNullString()
	{
		ResetValue(GridCurrencyEditInfoStore.NullStringProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeNullString()
	{
		return HasValue(GridCurrencyEditInfoStore.NullStringProperty);
	}

	[DebuggerStepThrough]
	public void ResetNullValue()
	{
		ResetValue(GridCurrencyEditInfoStore.NullValueProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeNullValue()
	{
		return HasValue(GridCurrencyEditInfoStore.NullValueProperty);
	}
}
