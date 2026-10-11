using System;
using System.Collections;
using System.ComponentModel;
using System.Globalization;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCellTypeNameConverter : TypeConverter
{
	private string[] cellTypes = new string[20]
	{
		"Header", "Static", "TextBox", "CheckBox", "PushButton", "NumericUpDown", "DropDownGrid", "GridListControl", "ComboBox", "ColorEdit",
		"MonthCalendar", "FormulaCell", "MaskEdit", "Currency", "Image", "RichText", "Control", "OriginalTextBox", "ProgressBar", "RadioButton"
	};

	public override bool CanConvertFrom(ITypeDescriptorContext context, Type sourceType)
	{
		if (sourceType == typeof(string))
		{
			return true;
		}
		return base.CanConvertFrom(context, sourceType);
	}

	public override object ConvertFrom(ITypeDescriptorContext context, CultureInfo culture, object value)
	{
		if (value is string)
		{
			return (string)value;
		}
		return base.ConvertFrom(context, culture, value);
	}

	public override StandardValuesCollection GetStandardValues(ITypeDescriptorContext context)
	{
		if (context != null && context.Instance is GridStyleInfo gridStyleInfo)
		{
			GridBaseStylesMap stylesMap = GetStylesMap(gridStyleInfo.Identity);
			ArrayList arrayList = new ArrayList();
			if (stylesMap != null)
			{
				arrayList.AddRange(stylesMap.CellTypes);
			}
			else
			{
				arrayList.AddRange(cellTypes);
			}
			arrayList.Sort();
			return new StandardValuesCollection(arrayList);
		}
		return base.GetStandardValues(context);
	}

	protected virtual GridBaseStylesMap GetStylesMap(StyleInfoIdentityBase identity)
	{
		GridBaseStylesMap result = null;
		if (identity is GridStyleInfoIdentity gridStyleInfoIdentity)
		{
			result = gridStyleInfoIdentity.Data.BaseStylesMap;
		}
		if (identity is GridBaseStyleIdentity gridBaseStyleIdentity)
		{
			result = gridBaseStyleIdentity.BaseStylesMap;
		}
		return result;
	}

	public override bool GetStandardValuesExclusive(ITypeDescriptorContext context)
	{
		return false;
	}

	public override bool GetStandardValuesSupported(ITypeDescriptorContext context)
	{
		return true;
	}
}
