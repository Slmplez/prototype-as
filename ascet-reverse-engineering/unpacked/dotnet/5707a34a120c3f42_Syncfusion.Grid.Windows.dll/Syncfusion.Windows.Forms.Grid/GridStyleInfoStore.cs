using System;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Text;
using System.Globalization;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.Drawing;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[StaticDataField("sd")]
[DebuggerStepThrough]
public class GridStyleInfoStore : StyleInfoStore
{
	private static StaticData sd;

	public static readonly StyleInfoProperty CellTypeProperty;

	public static readonly StyleInfoProperty CellValueProperty;

	public static readonly StyleInfoProperty InteriorProperty;

	public static readonly StyleInfoProperty TextColorProperty;

	public static readonly StyleInfoProperty FontProperty;

	public static readonly StyleInfoProperty CellValueTypeProperty;

	public static readonly StyleInfoProperty FormatProperty;

	public static readonly StyleInfoProperty BaseStyleProperty;

	public static readonly StyleInfoProperty DescriptionProperty;

	public static readonly StyleInfoProperty ValueMemberProperty;

	public static readonly StyleInfoProperty DisplayMemberProperty;

	public static readonly StyleInfoProperty DataSourceProperty;

	public static readonly StyleInfoProperty PropertyDescriptorProperty;

	public static readonly StyleInfoProperty FormulaTagProperty;

	public static readonly StyleInfoProperty TagProperty;

	public static readonly StyleInfoProperty BordersProperty;

	public static readonly StyleInfoProperty TextMarginsProperty;

	public static readonly StyleInfoProperty ImageListProperty;

	public static readonly StyleInfoProperty ImageIndexProperty;

	public static readonly StyleInfoProperty ErrorProperty;

	public static readonly StyleInfoProperty MaxLengthProperty;

	public static readonly StyleInfoProperty CultureInfoProperty;

	public static readonly StyleInfoProperty CheckBoxOptionsProperty;

	public static readonly StyleInfoProperty ValidateValueProperty;

	public static readonly StyleInfoProperty NumericUpDownProperty;

	public static readonly StyleInfoProperty ChoiceListProperty;

	public static readonly StyleInfoProperty MaskEditProperty;

	public static readonly StyleInfoProperty ProgressBarProperty;

	public static readonly StyleInfoProperty CurrencyEditProperty;

	public static readonly StyleInfoProperty PasswordCharProperty;

	public static readonly StyleInfoProperty CellTipTextProperty;

	public static readonly StyleInfoProperty ControlProperty;

	public static readonly StyleInfoProperty BackgroundImageIDProperty;

	public static readonly StyleInfoProperty BackgroundImageProperty;

	public static readonly StyleInfoProperty BorderMarginsProperty;

	public static readonly StyleInfoProperty HorizontalAlignmentProperty;

	public static readonly StyleInfoProperty VerticalAlignmentProperty;

	public static readonly StyleInfoProperty ReadOnlyProperty;

	public static readonly StyleInfoProperty RightToLeftProperty;

	public static readonly StyleInfoProperty WrapTextProperty;

	public static readonly StyleInfoProperty TrimmingProperty;

	public static readonly StyleInfoProperty EnabledProperty;

	public static readonly StyleInfoProperty TriStateProperty;

	public static readonly StyleInfoProperty ClickableProperty;

	public static readonly StyleInfoProperty HotkeyPrefixProperty;

	public static readonly StyleInfoProperty VerticalScrollbarProperty;

	public static readonly StyleInfoProperty AutoSizeProperty;

	public static readonly StyleInfoProperty AllowEnterProperty;

	public static readonly StyleInfoProperty StrictValueTypeProperty;

	public static readonly StyleInfoProperty ShowButtonsProperty;

	public static readonly StyleInfoProperty CellAppearanceProperty;

	public static readonly StyleInfoProperty FloatCellProperty;

	public static readonly StyleInfoProperty FloodCellProperty;

	public static readonly StyleInfoProperty MergeCellProperty;

	public static readonly StyleInfoProperty ExclusiveChoiceListProperty;

	public static readonly StyleInfoProperty AutoCompleteProperty;

	public static readonly StyleInfoProperty TextAlignProperty;

	public static readonly StyleInfoProperty ThemedProperty;

	public static readonly StyleInfoProperty CharacterCasingProperty;

	public static readonly StyleInfoProperty BackgroundImageModeProperty;

	public static readonly StyleInfoProperty ImageSizeModeProperty;

	public static readonly StyleInfoProperty ImageFromByteArrayProperty;

	public static readonly StyleInfoProperty ParseFormatsProperty;

	internal static StaticData StaticData => sd;

	protected override StaticData StaticDataStore => sd;

	static GridStyleInfoStore()
	{
		sd = new StaticData(typeof(GridStyleInfoStore), typeof(GridStyleInfo), sortProperties: false);
		CellTypeProperty = sd.CreateStyleInfoProperty(typeof(string), "CellType");
		CellValueProperty = sd.CreateStyleInfoProperty(typeof(object), "CellValue");
		InteriorProperty = sd.CreateStyleInfoProperty(typeof(BrushInfo), "Interior");
		TextColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "TextColor");
		FontProperty = sd.CreateStyleInfoProperty(typeof(GridFontInfo), "Font");
		CellValueTypeProperty = sd.CreateStyleInfoProperty(typeof(Type), "CellValueType");
		FormatProperty = sd.CreateStyleInfoProperty(typeof(string), "Format");
		BaseStyleProperty = sd.CreateStyleInfoProperty(typeof(string), "BaseStyle");
		DescriptionProperty = sd.CreateStyleInfoProperty(typeof(string), "Description");
		ValueMemberProperty = sd.CreateStyleInfoProperty(typeof(string), "ValueMember");
		DisplayMemberProperty = sd.CreateStyleInfoProperty(typeof(string), "DisplayMember");
		DataSourceProperty = sd.CreateStyleInfoProperty(typeof(object), "DataSource", StyleInfoPropertyOptions.Serializable);
		PropertyDescriptorProperty = sd.CreateStyleInfoProperty(typeof(PropertyDescriptor), "PropertyDescriptor", StyleInfoPropertyOptions.None);
		FormulaTagProperty = sd.CreateStyleInfoProperty(typeof(GridFormulaTag), "FormulaTag");
		TagProperty = sd.CreateStyleInfoProperty(typeof(object), "Tag");
		BordersProperty = sd.CreateStyleInfoProperty(typeof(GridBordersInfo), "Borders");
		TextMarginsProperty = sd.CreateStyleInfoProperty(typeof(GridMarginsInfo), "TextMargins");
		ImageListProperty = sd.CreateStyleInfoProperty(typeof(ImageList), "ImageList", StyleInfoPropertyOptions.Serializable);
		ImageIndexProperty = sd.CreateStyleInfoProperty(typeof(int), "ImageIndex");
		ErrorProperty = sd.CreateStyleInfoProperty(typeof(string), "Error");
		MaxLengthProperty = sd.CreateStyleInfoProperty(typeof(int), "MaxLength");
		CultureInfoProperty = sd.CreateStyleInfoProperty(typeof(CultureInfo), "CultureInfo", StyleInfoPropertyOptions.Serializable);
		CheckBoxOptionsProperty = sd.CreateStyleInfoProperty(typeof(GridCheckBoxCellInfo), "CheckBoxOptions");
		ValidateValueProperty = sd.CreateStyleInfoProperty(typeof(GridCellValidateValueInfo), "ValidateValue");
		NumericUpDownProperty = sd.CreateStyleInfoProperty(typeof(GridNumericUpDownCellInfo), "NumericUpDown");
		ChoiceListProperty = sd.CreateStyleInfoProperty(typeof(StringCollection), "ChoiceList");
		MaskEditProperty = sd.CreateStyleInfoProperty(typeof(GridMaskEditInfo), "MaskEdit");
		ProgressBarProperty = sd.CreateStyleInfoProperty(typeof(GridProgressBarInfo), "ProgressBar");
		CurrencyEditProperty = sd.CreateStyleInfoProperty(typeof(GridCurrencyEditInfo), "CurrencyEdit");
		PasswordCharProperty = sd.CreateStyleInfoProperty(typeof(char), "PasswordChar");
		CellTipTextProperty = sd.CreateStyleInfoProperty(typeof(string), "CellTipText");
		ControlProperty = sd.CreateStyleInfoProperty(typeof(Control), "Control", StyleInfoPropertyOptions.Serializable);
		BackgroundImageIDProperty = sd.CreateStyleInfoProperty(typeof(string), "BackgroundImageID");
		BackgroundImageProperty = sd.CreateStyleInfoProperty(typeof(Image), "BackgroundImage");
		BorderMarginsProperty = sd.CreateStyleInfoProperty(typeof(GridMarginsInfo), "BorderMargins");
		HorizontalAlignmentProperty = sd.CreateStyleInfoProperty(typeof(GridHorizontalAlignment), "HorizontalAlignment", 3, makeBitValue: true);
		VerticalAlignmentProperty = sd.CreateStyleInfoProperty(typeof(GridVerticalAlignment), "VerticalAlignment", 3, makeBitValue: true);
		ReadOnlyProperty = sd.CreateStyleInfoProperty(typeof(bool), "ReadOnly", 1, makeBitValue: true);
		RightToLeftProperty = sd.CreateStyleInfoProperty(typeof(RightToLeft), "RightToLeft", 2, makeBitValue: true);
		WrapTextProperty = sd.CreateStyleInfoProperty(typeof(bool), "WrapText", 1, makeBitValue: true);
		TrimmingProperty = sd.CreateStyleInfoProperty(typeof(StringTrimming), "Trimming", 5, makeBitValue: true);
		EnabledProperty = sd.CreateStyleInfoProperty(typeof(bool), "Enabled", 1, makeBitValue: true);
		TriStateProperty = sd.CreateStyleInfoProperty(typeof(bool), "TriState", 1, makeBitValue: true);
		ClickableProperty = sd.CreateStyleInfoProperty(typeof(bool), "Clickable", 1, makeBitValue: true);
		HotkeyPrefixProperty = sd.CreateStyleInfoProperty(typeof(HotkeyPrefix), "HotkeyPrefix", 2, makeBitValue: true);
		VerticalScrollbarProperty = sd.CreateStyleInfoProperty(typeof(bool), "VerticalScrollbar", 1, makeBitValue: true);
		AutoSizeProperty = sd.CreateStyleInfoProperty(typeof(bool), "AutoSize", 1, makeBitValue: true);
		AllowEnterProperty = sd.CreateStyleInfoProperty(typeof(bool), "AllowEnter", 1, makeBitValue: true);
		StrictValueTypeProperty = sd.CreateStyleInfoProperty(typeof(bool), "StrictValueType", 1, makeBitValue: true);
		ShowButtonsProperty = sd.CreateStyleInfoProperty(typeof(GridShowButtons), "ShowButtons", 5, makeBitValue: true);
		CellAppearanceProperty = sd.CreateStyleInfoProperty(typeof(GridCellAppearance), "CellAppearance", 3, makeBitValue: true);
		FloatCellProperty = sd.CreateStyleInfoProperty(typeof(bool), "FloatCell", 1, makeBitValue: true);
		FloodCellProperty = sd.CreateStyleInfoProperty(typeof(bool), "FloodCell", 1, makeBitValue: true);
		MergeCellProperty = sd.CreateStyleInfoProperty(typeof(GridMergeCellDirection), "MergeCell", 2, makeBitValue: true);
		ExclusiveChoiceListProperty = sd.CreateStyleInfoProperty(typeof(bool), "ExclusiveChoiceList", 1, makeBitValue: true);
		AutoCompleteProperty = sd.CreateStyleInfoProperty(typeof(bool), "AutoComplete", 1, makeBitValue: true);
		TextAlignProperty = sd.CreateStyleInfoProperty(typeof(GridTextAlign), "TextAlign", 2, makeBitValue: true);
		ThemedProperty = sd.CreateStyleInfoProperty(typeof(bool), "Themed", 1, makeBitValue: true);
		CharacterCasingProperty = sd.CreateStyleInfoProperty(typeof(CharacterCasing), "CharacterCasing", 2, makeBitValue: true);
		BackgroundImageModeProperty = sd.CreateStyleInfoProperty(typeof(GridBackgroundImageMode), "BackgroundImageMode", 2, makeBitValue: true);
		ImageSizeModeProperty = sd.CreateStyleInfoProperty(typeof(GridImageSizeMode), "ImageSizeMode", 5, makeBitValue: true);
		ImageFromByteArrayProperty = sd.CreateStyleInfoProperty(typeof(bool), "ImageFromByteArray", 1, makeBitValue: true);
		ParseFormatsProperty = sd.CreateStyleInfoProperty(typeof(string[]), "ParseFormats");
		BordersProperty.CreateObject = GridBordersInfo.CreateObject;
		FontProperty.CreateObject = GridFontInfo.CreateObject;
		CheckBoxOptionsProperty.CreateObject = GridCheckBoxCellInfo.CreateObject;
		ValidateValueProperty.CreateObject = GridCellValidateValueInfo.CreateObject;
		NumericUpDownProperty.CreateObject = GridNumericUpDownCellInfo.CreateObject;
		TextMarginsProperty.CreateObject = GridMarginsInfo.CreateObject;
		BorderMarginsProperty.CreateObject = GridMarginsInfo.CreateObject;
		MaskEditProperty.CreateObject = GridMaskEditInfo.CreateObject;
		ProgressBarProperty.CreateObject = GridProgressBarInfo.CreateObject;
		CurrencyEditProperty.CreateObject = GridCurrencyEditInfo.CreateObject;
		CultureInfoProperty.SerializeXmlBehavior = SerializeXmlBehavior.SerializeAsString;
		ImageListProperty.SerializeXmlBehavior = SerializeXmlBehavior.Skip;
		InteriorProperty.SerializeXmlBehavior = SerializeXmlBehavior.SerializeAsString;
		CellValueProperty.IsAnyObject = true;
	}

	public GridStyleInfoStore()
	{
		if (sd.IsEmpty)
		{
			new GridStyleInfo();
		}
	}

	protected GridStyleInfoStore(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		if (sd.IsEmpty)
		{
			new GridStyleInfo();
		}
	}

	public override object Clone()
	{
		StyleInfoStore styleInfoStore = new GridStyleInfoStore();
		CopyTo(styleInfoStore);
		return styleInfoStore;
	}
}
