using System;
using System.ComponentModel;
using System.Globalization;

namespace Syncfusion.Windows.Forms.Grid;

public class GridBaseStyleNameConverter : TypeConverter
{
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
			GridBaseStylesMap gridBaseStylesMap = null;
			if (gridStyleInfo.Identity is GridStyleInfoIdentity gridStyleInfoIdentity)
			{
				gridBaseStylesMap = gridStyleInfoIdentity.Data.BaseStylesMap;
			}
			if (gridStyleInfo.Identity is GridBaseStyleIdentity gridBaseStyleIdentity)
			{
				gridBaseStylesMap = gridBaseStyleIdentity.BaseStylesMap;
			}
			if (gridBaseStylesMap != null)
			{
				return new StandardValuesCollection(gridBaseStylesMap.baseStyles.Keys);
			}
		}
		return base.GetStandardValues(context);
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
