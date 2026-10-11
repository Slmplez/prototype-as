using System;
using System.ComponentModel;
using Syncfusion.Styles;

namespace Syncfusion.ComponentModel;

public class NullableHelper
{
	private class TypeConverterHelper
	{
		public static object ChangeType(object value, Type type)
		{
			return ChangeType(value, type, null);
		}

		public static object ChangeType(object value, Type type, IFormatProvider provider)
		{
			if (value == null)
			{
				return null;
			}
			TypeConverter converter = TypeDescriptor.GetConverter(value.GetType());
			if (converter != null && converter.CanConvertTo(type))
			{
				return converter.ConvertTo(value, type);
			}
			if (value is DBNull)
			{
				return DBNull.Value;
			}
			return Convert.ChangeType(value, type, provider);
		}
	}

	public static object ChangeType(object value, Type type)
	{
		Type underlyingType = Nullable.GetUnderlyingType(type);
		if (underlyingType != null)
		{
			if (value is string && underlyingType != typeof(string) && ValueConvert.IsEmpty((string)value))
			{
				return null;
			}
			value = ChangeType(value, underlyingType);
			if (value is DBNull)
			{
				return null;
			}
			return value;
		}
		return TypeConverterHelper.ChangeType(value, type);
	}

	public static object ChangeType(object value, Type type, IFormatProvider provider)
	{
		Type underlyingType = Nullable.GetUnderlyingType(type);
		if (underlyingType != null)
		{
			if (value is string && underlyingType != typeof(string) && ValueConvert.IsEmpty((string)value))
			{
				return null;
			}
			value = ChangeType(value, underlyingType, provider);
			if (value is DBNull)
			{
				return null;
			}
			return value;
		}
		return TypeConverterHelper.ChangeType(value, type, provider);
	}

	public static object FixDbNUllasNull(object value, Type type)
	{
		if (type == null)
		{
			return value;
		}
		Type underlyingType = Nullable.GetUnderlyingType(type);
		if (underlyingType != null && value is DBNull)
		{
			return null;
		}
		if (!type.IsValueType && value is DBNull)
		{
			return null;
		}
		return value;
	}

	public static Type GetUnderlyingType(Type type)
	{
		if (!(type == null))
		{
			return Nullable.GetUnderlyingType(type);
		}
		return null;
	}
}
