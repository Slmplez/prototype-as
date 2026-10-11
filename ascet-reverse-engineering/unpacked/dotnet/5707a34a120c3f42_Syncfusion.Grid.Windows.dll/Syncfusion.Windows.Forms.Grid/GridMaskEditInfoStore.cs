using System;
using System.Globalization;
using System.Runtime.Serialization;
using Syncfusion.Styles;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[StaticDataField("sd")]
public class GridMaskEditInfoStore : StyleInfoStore
{
	private static StaticData sd;

	public static readonly StyleInfoProperty AllowPromptProperty;

	public static readonly StyleInfoProperty ClipModeProperty;

	public static readonly StyleInfoProperty DateSeparatorProperty;

	public static readonly StyleInfoProperty DateTimeFormatInfoObjectProperty;

	public static readonly StyleInfoProperty DecimalSeparatorProperty;

	public static readonly StyleInfoProperty MaskProperty;

	public static readonly StyleInfoProperty MaxValueProperty;

	public static readonly StyleInfoProperty MinValueProperty;

	public static readonly StyleInfoProperty NumberFormatInfoObjectProperty;

	public static readonly StyleInfoProperty PaddingCharacterProperty;

	public static readonly StyleInfoProperty PassivePromptCharacterProperty;

	public static readonly StyleInfoProperty PromptCharacterProperty;

	public static readonly StyleInfoProperty SpecialCultureValueProperty;

	public static readonly StyleInfoProperty ThousandSeparatorProperty;

	public static readonly StyleInfoProperty TimeSeparatorProperty;

	public static readonly StyleInfoProperty UsageModeProperty;

	public static readonly StyleInfoProperty UseLocaleDefaultProperty;

	public static readonly StyleInfoProperty UseUserOverrideProperty;

	protected override StaticData StaticDataStore => sd;

	public GridMaskEditInfoStore()
	{
	}

	static GridMaskEditInfoStore()
	{
		sd = new StaticData(typeof(GridMaskEditInfoStore), typeof(GridMaskEditInfo), sortProperties: true);
		AllowPromptProperty = sd.CreateStyleInfoProperty(typeof(bool), "AllowPrompt");
		ClipModeProperty = sd.CreateStyleInfoProperty(typeof(ClipModes), "ClipMode");
		DateSeparatorProperty = sd.CreateStyleInfoProperty(typeof(char), "DateSeparator");
		DateTimeFormatInfoObjectProperty = sd.CreateStyleInfoProperty(typeof(DateTimeFormatInfo), "DateTimeFormatInfoObject");
		DecimalSeparatorProperty = sd.CreateStyleInfoProperty(typeof(char), "DecimalSeparator");
		MaskProperty = sd.CreateStyleInfoProperty(typeof(string), "Mask");
		MaxValueProperty = sd.CreateStyleInfoProperty(typeof(decimal), "MaxValue");
		MinValueProperty = sd.CreateStyleInfoProperty(typeof(decimal), "MinValue");
		NumberFormatInfoObjectProperty = sd.CreateStyleInfoProperty(typeof(NumberFormatInfo), "NumberFormatInfoObject");
		PaddingCharacterProperty = sd.CreateStyleInfoProperty(typeof(char), "PaddingCharacter");
		PassivePromptCharacterProperty = sd.CreateStyleInfoProperty(typeof(char), "PassivePromptCharacter");
		PromptCharacterProperty = sd.CreateStyleInfoProperty(typeof(char), "PromptCharacter");
		SpecialCultureValueProperty = sd.CreateStyleInfoProperty(typeof(SpecialCultureValues), "SpecialCultureValue");
		ThousandSeparatorProperty = sd.CreateStyleInfoProperty(typeof(char), "ThousandSeparator");
		TimeSeparatorProperty = sd.CreateStyleInfoProperty(typeof(char), "TimeSeparator");
		UsageModeProperty = sd.CreateStyleInfoProperty(typeof(MaskedUsageMode), "UsageMode");
		UseLocaleDefaultProperty = sd.CreateStyleInfoProperty(typeof(bool), "UseLocaleDefault");
		UseUserOverrideProperty = sd.CreateStyleInfoProperty(typeof(bool), "UseUserOverride");
		NumberFormatInfoObjectProperty.SerializeXmlBehavior = SerializeXmlBehavior.Skip;
		DateTimeFormatInfoObjectProperty.SerializeXmlBehavior = SerializeXmlBehavior.Skip;
	}

	private GridMaskEditInfoStore(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override object Clone()
	{
		StyleInfoStore styleInfoStore = new GridMaskEditInfoStore();
		CopyTo(styleInfoStore);
		return styleInfoStore;
	}
}
