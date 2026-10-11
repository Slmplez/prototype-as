using System;
using System.Drawing;
using System.Runtime.Serialization;
using Syncfusion.Styles;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[StaticDataField("sd")]
public class GridCurrencyEditInfoStore : StyleInfoStore
{
	private static StaticData sd;

	public static readonly StyleInfoProperty CurrencyDecimalDigitsProperty;

	public static readonly StyleInfoProperty NegativeSignProperty;

	public static readonly StyleInfoProperty CurrencyDecimalSeparatorProperty;

	public static readonly StyleInfoProperty CurrencyGroupSeparatorProperty;

	public static readonly StyleInfoProperty CurrencyGroupSizesProperty;

	public static readonly StyleInfoProperty CurrencyNegativePatternProperty;

	public static readonly StyleInfoProperty CurrencyPositivePatternProperty;

	public static readonly StyleInfoProperty CurrencySymbolProperty;

	public static readonly StyleInfoProperty CurrencyNumberDigitsProperty;

	public static readonly StyleInfoProperty UseCultureInfoProperty;

	public static readonly StyleInfoProperty NegativeColorProperty;

	public static readonly StyleInfoProperty PositiveColorProperty;

	public static readonly StyleInfoProperty ClipModeProperty;

	public static readonly StyleInfoProperty NullStringProperty;

	public static readonly StyleInfoProperty NullValueProperty;

	protected override StaticData StaticDataStore => sd;

	public GridCurrencyEditInfoStore()
	{
	}

	static GridCurrencyEditInfoStore()
	{
		sd = new StaticData(typeof(GridCurrencyEditInfoStore), typeof(GridCurrencyEditInfo), sortProperties: true);
		CurrencyDecimalDigitsProperty = sd.CreateStyleInfoProperty(typeof(int), "CurrencyDecimalDigits");
		NegativeSignProperty = sd.CreateStyleInfoProperty(typeof(string), "NegativeSign");
		CurrencyDecimalSeparatorProperty = sd.CreateStyleInfoProperty(typeof(string), "CurrencyDecimalSeparator");
		CurrencyGroupSeparatorProperty = sd.CreateStyleInfoProperty(typeof(string), "CurrencyGroupSeparator");
		CurrencyGroupSizesProperty = sd.CreateStyleInfoProperty(typeof(int[]), "CurrencyGroupSizes");
		CurrencyNegativePatternProperty = sd.CreateStyleInfoProperty(typeof(int), "CurrencyNegativePattern");
		CurrencyPositivePatternProperty = sd.CreateStyleInfoProperty(typeof(int), "CurrencyPositivePattern");
		CurrencySymbolProperty = sd.CreateStyleInfoProperty(typeof(string), "CurrencySymbol");
		CurrencyNumberDigitsProperty = sd.CreateStyleInfoProperty(typeof(int), "CurrencyNumberDigits");
		UseCultureInfoProperty = sd.CreateStyleInfoProperty(typeof(bool), "UseCultureInfo");
		NegativeColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "NegativeColor");
		PositiveColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "PositiveColor");
		ClipModeProperty = sd.CreateStyleInfoProperty(typeof(CurrencyClipModes), "ClipMode");
		NullStringProperty = sd.CreateStyleInfoProperty(typeof(string), "NullString");
		NullValueProperty = sd.CreateStyleInfoProperty(typeof(object), "NullValue");
	}

	private GridCurrencyEditInfoStore(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override object Clone()
	{
		StyleInfoStore styleInfoStore = new GridCurrencyEditInfoStore();
		CopyTo(styleInfoStore);
		return styleInfoStore;
	}
}
