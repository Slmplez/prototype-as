using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using Syncfusion.Styles;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.Grid;

public class GridMaskEditInfo : StyleInfoSubObjectBase
{
	private static GridMaskEditInfo defaultMaskEditInfo;

	public static GridMaskEditInfo Default
	{
		[DebuggerStepThrough]
		get
		{
			if (defaultMaskEditInfo == null)
			{
				defaultMaskEditInfo = new GridMaskEditInfo();
				defaultMaskEditInfo.AllowPrompt = false;
				defaultMaskEditInfo.ClipMode = ClipModes.IncludeLiterals;
				defaultMaskEditInfo.DateSeparator = '/';
				defaultMaskEditInfo.DecimalSeparator = '.';
				defaultMaskEditInfo.Mask = string.Empty;
				defaultMaskEditInfo.MaxValue = decimal.MaxValue;
				defaultMaskEditInfo.MinValue = 0m;
				defaultMaskEditInfo.PaddingCharacter = ' ';
				defaultMaskEditInfo.PassivePromptCharacter = ' ';
				defaultMaskEditInfo.PromptCharacter = ' ';
				defaultMaskEditInfo.SpecialCultureValue = SpecialCultureValues.CurrentCulture;
				defaultMaskEditInfo.ThousandSeparator = ',';
				defaultMaskEditInfo.TimeSeparator = ':';
				defaultMaskEditInfo.UsageMode = MaskedUsageMode.Normal;
				defaultMaskEditInfo.UseLocaleDefault = false;
				defaultMaskEditInfo.UseUserOverride = true;
				defaultMaskEditInfo.DateTimeFormatInfoObject = CultureInfo.CurrentCulture.DateTimeFormat;
				defaultMaskEditInfo.NumberFormatInfoObject = CultureInfo.CurrentCulture.NumberFormat;
			}
			return defaultMaskEditInfo;
		}
	}

	[Browsable(true)]
	[Description("specifies if the prompt character can be allowed to be entered as an input character.")]
	[Category("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	public bool AllowPrompt
	{
		[DebuggerStepThrough]
		get
		{
			return (bool)GetValue(GridMaskEditInfoStore.AllowPromptProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridMaskEditInfoStore.AllowPromptProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasAllowPrompt
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridMaskEditInfoStore.AllowPromptProperty);
		}
	}

	[Browsable(true)]
	[Description("Specifies the format of the text that will be returned by the MaskedEditBox control.")]
	[Category("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	public ClipModes ClipMode
	{
		[DebuggerStepThrough]
		get
		{
			return (ClipModes)GetValue(GridMaskEditInfoStore.ClipModeProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridMaskEditInfoStore.ClipModeProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasClipMode
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridMaskEditInfoStore.ClipModeProperty);
		}
	}

	[Category("StyleCategoryAppearance")]
	[Description("Gets or sets the character to use when a date separator position is specified.")]
	[NotifyParentProperty(true)]
	[Browsable(true)]
	public char DateSeparator
	{
		[DebuggerStepThrough]
		get
		{
			return (char)GetValue(GridMaskEditInfoStore.DateSeparatorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridMaskEditInfoStore.DateSeparatorProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasDateSeparator
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridMaskEditInfoStore.DateSeparatorProperty);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Category("StyleCategoryAppearance")]
	[Browsable(false)]
	[Description("Provides the necessary globalization information for the properties that rely on the datetime settings.")]
	public DateTimeFormatInfo DateTimeFormatInfoObject
	{
		[DebuggerStepThrough]
		get
		{
			return (DateTimeFormatInfo)GetValue(GridMaskEditInfoStore.DateTimeFormatInfoObjectProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridMaskEditInfoStore.DateTimeFormatInfoObjectProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasDateTimeFormatInfoObject
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridMaskEditInfoStore.DateTimeFormatInfoObjectProperty);
		}
	}

	[Category("StyleCategoryAppearance")]
	[Description("Gets or sets the character to use when a decimal separator position is specified.")]
	[NotifyParentProperty(true)]
	[Browsable(true)]
	public char DecimalSeparator
	{
		[DebuggerStepThrough]
		get
		{
			return (char)GetValue(GridMaskEditInfoStore.DecimalSeparatorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridMaskEditInfoStore.DecimalSeparatorProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasDecimalSeparator
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridMaskEditInfoStore.DecimalSeparatorProperty);
		}
	}

	[Category("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	[Description("Gets or sets the property to define mask string for the MaskedEditBox control.")]
	[Browsable(true)]
	public string Mask
	{
		[DebuggerStepThrough]
		get
		{
			return (string)GetValue(GridMaskEditInfoStore.MaskProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridMaskEditInfoStore.MaskProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasMask
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridMaskEditInfoStore.MaskProperty);
		}
	}

	[Description("Specifies the maximum value that can be set through the MaskedEditBox.")]
	[Browsable(true)]
	[NotifyParentProperty(true)]
	[Category("StyleCategoryAppearance")]
	public decimal MaxValue
	{
		[DebuggerStepThrough]
		get
		{
			return (decimal)GetValue(GridMaskEditInfoStore.MaxValueProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridMaskEditInfoStore.MaxValueProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasMaxValue
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridMaskEditInfoStore.MaxValueProperty);
		}
	}

	[Description("Specifies the minimum value that can be set through the MaskedEditBox.")]
	[Browsable(true)]
	[NotifyParentProperty(true)]
	[Category("StyleCategoryAppearance")]
	public decimal MinValue
	{
		[DebuggerStepThrough]
		get
		{
			return (decimal)GetValue(GridMaskEditInfoStore.MinValueProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridMaskEditInfoStore.MinValueProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasMinValue
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridMaskEditInfoStore.MinValueProperty);
		}
	}

	[Category("StyleCategoryAppearance")]
	[Description("provides the necessary globalization information for the properties that rely on these settings.")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public NumberFormatInfo NumberFormatInfoObject
	{
		[DebuggerStepThrough]
		get
		{
			return (NumberFormatInfo)GetValue(GridMaskEditInfoStore.NumberFormatInfoObjectProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridMaskEditInfoStore.NumberFormatInfoObjectProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasNumberFormatInfoObject
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridMaskEditInfoStore.NumberFormatInfoObjectProperty);
		}
	}

	[NotifyParentProperty(true)]
	[Description("Specifies the character that will be used instead of mask characters when the mask position has not been filled.")]
	[Browsable(true)]
	[Category("StyleCategoryAppearance")]
	public char PaddingCharacter
	{
		[DebuggerStepThrough]
		get
		{
			return (char)GetValue(GridMaskEditInfoStore.PaddingCharacterProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridMaskEditInfoStore.PaddingCharacterProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasPaddingCharacter
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridMaskEditInfoStore.PaddingCharacterProperty);
		}
	}

	[Category("StyleCategoryAppearance")]
	[Description("Specifies the character that will be used instead of mask characters when the mask position has not been filled (when the control does not have the focus).")]
	[NotifyParentProperty(true)]
	[Browsable(true)]
	public char PassivePromptCharacter
	{
		[DebuggerStepThrough]
		get
		{
			return (char)GetValue(GridMaskEditInfoStore.PassivePromptCharacterProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridMaskEditInfoStore.PassivePromptCharacterProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasPassivePromptCharacter
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridMaskEditInfoStore.PassivePromptCharacterProperty);
		}
	}

	[NotifyParentProperty(true)]
	[Category("StyleCategoryAppearance")]
	[Description("Specifies the character that will be used instead of mask characters when the mask position has not been filled.")]
	[Browsable(true)]
	public char PromptCharacter
	{
		[DebuggerStepThrough]
		get
		{
			return (char)GetValue(GridMaskEditInfoStore.PromptCharacterProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridMaskEditInfoStore.PromptCharacterProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasPromptCharacter
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridMaskEditInfoStore.PromptCharacterProperty);
		}
	}

	[Category("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	[Description("Specifies the mode for the cultures.")]
	[Browsable(true)]
	public SpecialCultureValues SpecialCultureValue
	{
		[DebuggerStepThrough]
		get
		{
			return (SpecialCultureValues)GetValue(GridMaskEditInfoStore.SpecialCultureValueProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridMaskEditInfoStore.SpecialCultureValueProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasSpecialCultureValue
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridMaskEditInfoStore.SpecialCultureValueProperty);
		}
	}

	[Category("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	[Browsable(true)]
	[Description("Specifies the character to use when a thousands separator position is specified.")]
	public char ThousandSeparator
	{
		[DebuggerStepThrough]
		get
		{
			return (char)GetValue(GridMaskEditInfoStore.ThousandSeparatorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridMaskEditInfoStore.ThousandSeparatorProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasThousandSeparator
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridMaskEditInfoStore.ThousandSeparatorProperty);
		}
	}

	[Browsable(true)]
	[Category("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	[Description("Specifies the  character to use when a time separator position is specified.")]
	public char TimeSeparator
	{
		[DebuggerStepThrough]
		get
		{
			return (char)GetValue(GridMaskEditInfoStore.TimeSeparatorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridMaskEditInfoStore.TimeSeparatorProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasTimeSeparator
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridMaskEditInfoStore.TimeSeparatorProperty);
		}
	}

	[Description("Specifies the usage mode for the MaskedEditBox.")]
	[Browsable(true)]
	[NotifyParentProperty(true)]
	[Category("StyleCategoryAppearance")]
	public MaskedUsageMode UsageMode
	{
		[DebuggerStepThrough]
		get
		{
			return (MaskedUsageMode)GetValue(GridMaskEditInfoStore.UsageModeProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridMaskEditInfoStore.UsageModeProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasUsageMode
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridMaskEditInfoStore.UsageModeProperty);
		}
	}

	[NotifyParentProperty(true)]
	[Description("Specify if the individual globalization property changes are to be ignored.")]
	[Category("StyleCategoryAppearance")]
	[Browsable(true)]
	public bool UseLocaleDefault
	{
		[DebuggerStepThrough]
		get
		{
			return (bool)GetValue(GridMaskEditInfoStore.UseLocaleDefaultProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridMaskEditInfoStore.UseLocaleDefaultProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasUseLocaleDefault
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridMaskEditInfoStore.UseLocaleDefaultProperty);
		}
	}

	[Category("StyleCategoryAppearance")]
	[NotifyParentProperty(true)]
	[Description("Specifies the UseUserOverride parameter for CultureInfo.")]
	[Browsable(true)]
	public bool UseUserOverride
	{
		[DebuggerStepThrough]
		get
		{
			return (bool)GetValue(GridMaskEditInfoStore.UseUserOverrideProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridMaskEditInfoStore.UseUserOverrideProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasUseUserOverride
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridMaskEditInfoStore.UseUserOverrideProperty);
		}
	}

	internal static object CreateObject(StyleInfoSubObjectIdentity identity, object store)
	{
		if (store != null)
		{
			return new GridMaskEditInfo(identity, store as GridMaskEditInfoStore);
		}
		return new GridMaskEditInfo(identity);
	}

	[DebuggerStepThrough]
	public GridMaskEditInfo()
		: base(new GridMaskEditInfoStore())
	{
	}

	[DebuggerStepThrough]
	public GridMaskEditInfo(StyleInfoSubObjectIdentity identity)
		: base(identity, new GridMaskEditInfoStore())
	{
	}

	[DebuggerStepThrough]
	public GridMaskEditInfo(StyleInfoSubObjectIdentity identity, GridMaskEditInfoStore store)
		: base(identity, store)
	{
	}

	[DebuggerStepThrough]
	public override IStyleInfoSubObject MakeCopy(StyleInfoBase newOwner, StyleInfoProperty sip)
	{
		return new GridMaskEditInfo(newOwner.CreateSubObjectIdentity(sip), (GridMaskEditInfoStore)base.Store.Clone());
	}

	protected override StyleInfoBase GetDefaultStyle()
	{
		return Default;
	}

	[DebuggerStepThrough]
	public void ResetAllowPrompt()
	{
		ResetValue(GridMaskEditInfoStore.AllowPromptProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeAllowPrompt()
	{
		return HasValue(GridMaskEditInfoStore.AllowPromptProperty);
	}

	[DebuggerStepThrough]
	public void ResetClipMode()
	{
		ResetValue(GridMaskEditInfoStore.ClipModeProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeClipMode()
	{
		return HasValue(GridMaskEditInfoStore.ClipModeProperty);
	}

	[DebuggerStepThrough]
	public void ResetDateSeparator()
	{
		ResetValue(GridMaskEditInfoStore.DateSeparatorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeDateSeparator()
	{
		return HasValue(GridMaskEditInfoStore.DateSeparatorProperty);
	}

	[DebuggerStepThrough]
	public void ResetDateTimeFormatInfoObject()
	{
		ResetValue(GridMaskEditInfoStore.DateTimeFormatInfoObjectProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeDateTimeFormatInfoObject()
	{
		return HasValue(GridMaskEditInfoStore.DateTimeFormatInfoObjectProperty);
	}

	[DebuggerStepThrough]
	public void ResetDecimalSeparator()
	{
		ResetValue(GridMaskEditInfoStore.DecimalSeparatorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeDecimalSeparator()
	{
		return HasValue(GridMaskEditInfoStore.DecimalSeparatorProperty);
	}

	[DebuggerStepThrough]
	public void ResetMask()
	{
		ResetValue(GridMaskEditInfoStore.MaskProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeMask()
	{
		return HasValue(GridMaskEditInfoStore.MaskProperty);
	}

	[DebuggerStepThrough]
	public void ResetMaxValue()
	{
		ResetValue(GridMaskEditInfoStore.MaxValueProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeMaxValue()
	{
		return HasValue(GridMaskEditInfoStore.MaxValueProperty);
	}

	[DebuggerStepThrough]
	public void ResetMinValue()
	{
		ResetValue(GridMaskEditInfoStore.MinValueProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeMinValue()
	{
		return HasValue(GridMaskEditInfoStore.MinValueProperty);
	}

	[DebuggerStepThrough]
	public void ResetNumberFormatInfoObject()
	{
		ResetValue(GridMaskEditInfoStore.NumberFormatInfoObjectProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeNumberFormatInfoObject()
	{
		return HasValue(GridMaskEditInfoStore.NumberFormatInfoObjectProperty);
	}

	[DebuggerStepThrough]
	public void ResetPaddingCharacter()
	{
		ResetValue(GridMaskEditInfoStore.PaddingCharacterProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializePaddingCharacter()
	{
		return HasValue(GridMaskEditInfoStore.PaddingCharacterProperty);
	}

	[DebuggerStepThrough]
	public void ResetPassivePromptCharacter()
	{
		ResetValue(GridMaskEditInfoStore.PassivePromptCharacterProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializePassivePromptCharacter()
	{
		return HasValue(GridMaskEditInfoStore.PassivePromptCharacterProperty);
	}

	[DebuggerStepThrough]
	public void ResetPromptCharacter()
	{
		ResetValue(GridMaskEditInfoStore.PromptCharacterProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializePromptCharacter()
	{
		return HasValue(GridMaskEditInfoStore.PromptCharacterProperty);
	}

	[DebuggerStepThrough]
	public void ResetSpecialCultureValue()
	{
		ResetValue(GridMaskEditInfoStore.SpecialCultureValueProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeSpecialCultureValue()
	{
		return HasValue(GridMaskEditInfoStore.SpecialCultureValueProperty);
	}

	[DebuggerStepThrough]
	public void ResetThousandSeparator()
	{
		ResetValue(GridMaskEditInfoStore.ThousandSeparatorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeThousandSeparator()
	{
		return HasValue(GridMaskEditInfoStore.ThousandSeparatorProperty);
	}

	[DebuggerStepThrough]
	public void ResetTimeSeparator()
	{
		ResetValue(GridMaskEditInfoStore.TimeSeparatorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeTimeSeparator()
	{
		return HasValue(GridMaskEditInfoStore.TimeSeparatorProperty);
	}

	[DebuggerStepThrough]
	public void ResetUsageMode()
	{
		ResetValue(GridMaskEditInfoStore.UsageModeProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeUsageMode()
	{
		return HasValue(GridMaskEditInfoStore.UsageModeProperty);
	}

	[DebuggerStepThrough]
	public void ResetUseLocaleDefault()
	{
		ResetValue(GridMaskEditInfoStore.UseLocaleDefaultProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeUseLocaleDefault()
	{
		return HasValue(GridMaskEditInfoStore.UseLocaleDefaultProperty);
	}

	[DebuggerStepThrough]
	public void ResetUseUserOverride()
	{
		ResetValue(GridMaskEditInfoStore.UseUserOverrideProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeUseUserOverride()
	{
		return HasValue(GridMaskEditInfoStore.UseUserOverrideProperty);
	}
}
