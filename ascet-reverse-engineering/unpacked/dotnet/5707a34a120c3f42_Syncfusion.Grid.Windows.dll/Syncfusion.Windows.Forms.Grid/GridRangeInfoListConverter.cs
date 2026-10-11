using System;
using System.ComponentModel;
using System.Globalization;

namespace Syncfusion.Windows.Forms.Grid;

public class GridRangeInfoListConverter : TypeConverter
{
	public override bool CanConvertFrom(ITypeDescriptorContext context, Type sourceType)
	{
		return sourceType == typeof(string);
	}

	public override object ConvertFrom(ITypeDescriptorContext context, CultureInfo culture, object value)
	{
		if (value is string)
		{
			string text = (string)value;
			return GridRangeInfoList.FromString(text.Trim());
		}
		return base.ConvertFrom(context, culture, value);
	}
}
