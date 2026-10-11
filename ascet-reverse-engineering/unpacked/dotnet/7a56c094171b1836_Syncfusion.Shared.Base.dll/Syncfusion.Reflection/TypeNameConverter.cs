using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;

namespace Syncfusion.Reflection;

internal class TypeNameConverter : TypeConverter
{
	public override bool CanConvertTo(ITypeDescriptorContext context, Type destinationType)
	{
		if (destinationType == typeof(string) || destinationType == typeof(InstanceDescriptor))
		{
			return true;
		}
		return base.CanConvertTo(context, destinationType);
	}

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
			TypeName typeName = new TypeName();
			typeName.TypeFullName = (string)value;
			return typeName;
		}
		return base.ConvertFrom(context, culture, value);
	}

	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (destinationType == typeof(string) && value is TypeName)
		{
			TypeName typeName = (TypeName)value;
			return typeName.TypeFullName;
		}
		if (destinationType == typeof(InstanceDescriptor) && value is TypeName)
		{
			TypeName typeName2 = (TypeName)value;
			Type[] types = new Type[1] { typeof(string) };
			ConstructorInfo constructor = typeof(TypeName).GetConstructor(types);
			if (constructor != null)
			{
				return new InstanceDescriptor(constructor, new object[1] { typeName2.TypeFullName });
			}
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
