using System;
using System.Collections;
using System.ComponentModel;
using System.Globalization;

namespace Syncfusion.Windows.Forms.Grid;

public class GridRangeInfoConverter : TypeConverter
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
			string text = (string)value;
			text = text.Trim();
			if (text.Length == 0)
			{
				return GridRangeInfo.Empty;
			}
			GridRangeInfo gridRangeInfo = GridRangeInfo.Parse(text);
			if (gridRangeInfo.IsEmpty)
			{
				throw new ArgumentException(SR.GetString("TextParseFailedFormat", text, "TopLeftBottomRight"));
			}
			return gridRangeInfo;
		}
		return base.ConvertFrom(context, culture, value);
	}

	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (destinationType == null)
		{
			throw new ArgumentNullException("destinationType");
		}
		if (destinationType == typeof(string))
		{
			if (value == null)
			{
				return string.Empty;
			}
			GridRangeInfo gridRangeInfo = (GridRangeInfo)value;
			return gridRangeInfo.ToString("G", null);
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}

	public override object CreateInstance(ITypeDescriptorContext context, IDictionary propertyValues)
	{
		GridRangeInfoType gridRangeInfoType = (GridRangeInfoType)propertyValues["RangeType"];
		int num = (int)propertyValues["Top"];
		int num2 = (int)propertyValues["Left"];
		int num3 = (int)propertyValues["Bottom"];
		int num4 = (int)propertyValues["Right"];
		if (context != null)
		{
			object obj = ((context.Instance is GridRangeInfo) ? context.Instance : context.PropertyDescriptor.GetValue(context.Instance));
			if (obj is GridRangeInfo)
			{
				GridRangeInfo gridRangeInfo = (GridRangeInfo)obj;
				if (gridRangeInfoType == gridRangeInfo.RangeType || gridRangeInfo.IsEmpty)
				{
					if (num != gridRangeInfo.Top)
					{
						if (num > num3)
						{
							num3 = num;
						}
						if (gridRangeInfo.IsEmpty)
						{
							gridRangeInfoType = GridRangeInfoType.Cells;
						}
					}
					if (num3 != gridRangeInfo.Bottom)
					{
						if (num > num3)
						{
							num = num3;
						}
						if (gridRangeInfo.IsEmpty)
						{
							gridRangeInfoType = GridRangeInfoType.Cells;
						}
					}
					if (num2 != gridRangeInfo.Left)
					{
						if (num2 > num4)
						{
							num4 = num2;
						}
						if (gridRangeInfo.IsEmpty)
						{
							gridRangeInfoType = GridRangeInfoType.Cells;
						}
					}
					if (num4 != gridRangeInfo.Right)
					{
						if (num2 > num4)
						{
							num2 = num4;
						}
						if (gridRangeInfo.IsEmpty)
						{
							gridRangeInfoType = GridRangeInfoType.Cells;
						}
					}
				}
			}
		}
		return new GridRangeInfo(gridRangeInfoType, num, num2, num3, num4);
	}

	public override bool GetCreateInstanceSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	public override PropertyDescriptorCollection GetProperties(ITypeDescriptorContext context, object value, Attribute[] attributes)
	{
		PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(typeof(GridRangeInfo), attributes);
		string[] names = new string[5] { "RangeType", "Top", "Left", "Bottom", "Right" };
		return properties.Sort(names);
	}

	public override bool GetPropertiesSupported(ITypeDescriptorContext context)
	{
		return true;
	}
}
