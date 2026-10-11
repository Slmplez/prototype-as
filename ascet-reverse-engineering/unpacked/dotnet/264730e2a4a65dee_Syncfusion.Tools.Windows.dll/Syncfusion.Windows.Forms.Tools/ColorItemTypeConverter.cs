using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Globalization;
using System.Reflection;

namespace Syncfusion.Windows.Forms.Tools;

public class ColorItemTypeConverter : TypeConverter
{
	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (destinationType == typeof(InstanceDescriptor) && value is ColorItem colorItem)
		{
			if (colorItem.BaseItem != null)
			{
				ConstructorInfo constructor = typeof(ColorItem).GetConstructor(new Type[2]
				{
					typeof(GroupColorItem),
					typeof(Color)
				});
				return new InstanceDescriptor(constructor, new object[2] { colorItem.BaseItem, colorItem.Color });
			}
			ConstructorInfo constructor2 = typeof(ColorItem).GetConstructor(new Type[1] { typeof(Color) });
			return new InstanceDescriptor(constructor2, new object[1] { colorItem.Color });
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
