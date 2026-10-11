using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Globalization;
using System.Reflection;

namespace Syncfusion.Windows.Forms.Tools;

public class TabPrimitiveTypeConverter : TypeConverter
{
	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		TabPrimitive tabPrimitive = value as TabPrimitive;
		if (destinationType == typeof(string) && tabPrimitive != null)
		{
			return tabPrimitive.TabPrimitiveType.ToString() + "Primitive";
		}
		if (destinationType == typeof(InstanceDescriptor) && tabPrimitive != null)
		{
			ConstructorInfo constructor = typeof(TabPrimitive).GetConstructor(new Type[7]
			{
				typeof(TabPrimitiveType),
				typeof(Image),
				typeof(Color),
				typeof(bool),
				typeof(int),
				typeof(string),
				typeof(string)
			});
			return new InstanceDescriptor(constructor, new object[7] { tabPrimitive.TabPrimitiveType, tabPrimitive.Image, tabPrimitive.TransparentImageColor, tabPrimitive.Visible, tabPrimitive.Indent, tabPrimitive.Name, tabPrimitive.ToolTip });
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}

	public override bool CanConvertTo(ITypeDescriptorContext context, Type destinationType)
	{
		if (destinationType == typeof(InstanceDescriptor))
		{
			return true;
		}
		return base.CanConvertTo(context, destinationType);
	}
}
