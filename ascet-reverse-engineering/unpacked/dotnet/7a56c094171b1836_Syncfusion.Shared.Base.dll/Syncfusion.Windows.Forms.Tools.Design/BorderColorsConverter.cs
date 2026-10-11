using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Globalization;
using System.Reflection;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class BorderColorsConverter : TypeConverter
{
	public override bool GetPropertiesSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	public override PropertyDescriptorCollection GetProperties(ITypeDescriptorContext context, object value, Attribute[] attributes)
	{
		PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(typeof(BorderColors), attributes);
		return properties.Sort(new string[4] { "Left", "Top", "Right", "Bottom" });
	}

	public override bool GetCreateInstanceSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	public override object CreateInstance(ITypeDescriptorContext context, IDictionary propertyValues)
	{
		return new BorderColors((Color)propertyValues["Left"], (Color)propertyValues["Top"], (Color)propertyValues["Right"], (Color)propertyValues["Bottom"]);
	}

	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (destinationType == null)
		{
			throw new ArgumentNullException("destinationType");
		}
		if (destinationType == typeof(string) && value is BorderColors)
		{
			if (culture == null)
			{
				culture = CultureInfo.CurrentCulture;
			}
			TypeConverter converter = TypeDescriptor.GetConverter(typeof(Color));
			string[] array = new string[4];
			BorderColors borderColors = (BorderColors)value;
			array[0] = converter.ConvertToString(context, culture, borderColors.Left);
			array[1] = converter.ConvertToString(context, culture, borderColors.Top);
			array[2] = converter.ConvertToString(context, culture, borderColors.Right);
			array[3] = converter.ConvertToString(context, culture, borderColors.Bottom);
			return string.Join(culture.TextInfo.ListSeparator + " ", array);
		}
		if (destinationType == typeof(InstanceDescriptor) && value is BorderColors)
		{
			Type[] types = new Type[4]
			{
				typeof(Color),
				typeof(Color),
				typeof(Color),
				typeof(Color)
			};
			ConstructorInfo constructor = typeof(BorderColors).GetConstructor(types);
			if (constructor != null)
			{
				object[] array2 = new object[4];
				BorderColors borderColors2 = (BorderColors)value;
				array2[0] = borderColors2.Left;
				array2[1] = borderColors2.Top;
				array2[2] = borderColors2.Right;
				array2[3] = borderColors2.Bottom;
				return new InstanceDescriptor(constructor, array2);
			}
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}

	public override object ConvertFrom(ITypeDescriptorContext context, CultureInfo culture, object value)
	{
		if (value is string)
		{
			string text = ((string)value).Trim();
			if (text.Length == 0)
			{
				return null;
			}
			if (culture == null)
			{
				culture = CultureInfo.CurrentCulture;
			}
			string[] array = text.Split(culture.TextInfo.ListSeparator[0]);
			Color[] array2 = new Color[array.Length];
			TypeConverter converter = TypeDescriptor.GetConverter(typeof(Color));
			for (int i = 0; i < array2.Length; i++)
			{
				ref Color reference = ref array2[i];
				reference = (Color)converter.ConvertFromString(context, culture, array[i]);
			}
			if (array2.Length != 4)
			{
				throw new ArgumentException("TextParseFailedFormat");
			}
			return new BorderColors(array2[0], array2[1], array2[2], array2[3]);
		}
		return base.ConvertFrom(context, culture, value);
	}

	public override bool CanConvertTo(ITypeDescriptorContext context, Type destinationType)
	{
		if (destinationType != typeof(InstanceDescriptor))
		{
			return base.CanConvertTo(context, destinationType);
		}
		return true;
	}

	public override bool CanConvertFrom(ITypeDescriptorContext context, Type sourceType)
	{
		if (sourceType != typeof(string))
		{
			return base.CanConvertFrom(context, sourceType);
		}
		return true;
	}
}
