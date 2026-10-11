using System;
using System.ComponentModel;
using System.Globalization;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCellValueTypeConverter : TypeConverter
{
	private static string[] values;

	private static StandardValuesCollection svc;

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
			if (((string)value).Length > 0)
			{
				return Type.GetType((string)value);
			}
			return null;
		}
		return base.ConvertFrom(context, culture, value);
	}

	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (destinationType == typeof(string))
		{
			Type type = (Type)value;
			if (type == null)
			{
				return string.Empty;
			}
			if (type.Namespace == "System")
			{
				return type.ToString();
			}
			return type.FullName + "," + type.AssemblyQualifiedName.Split(',')[1];
		}
		return base.ConvertFrom(context, culture, value);
	}

	public override StandardValuesCollection GetStandardValues(ITypeDescriptorContext context)
	{
		return svc;
	}

	public override bool GetStandardValuesExclusive(ITypeDescriptorContext context)
	{
		return false;
	}

	public override bool GetStandardValuesSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	static GridCellValueTypeConverter()
	{
		values = new string[14]
		{
			"System.String", "System.Double", "System.Int32", "System.Boolean", "System.DateTime", "System.Int16", "System.Int64", "System.Single", "System.Byte", "System.Char",
			"System.Decimal", "System.UInt16", "System.UInt32", "System.UInt64"
		};
		Array.Sort(values);
		Type[] array = new Type[values.Length];
		for (int i = 0; i < values.Length; i++)
		{
			array[i] = Type.GetType(values[i]);
		}
		svc = new StandardValuesCollection(array);
	}
}
