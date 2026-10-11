using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Globalization;
using System.Reflection;

namespace Syncfusion.Windows.Forms.Tools;

public class GroupColorItemTypeConverter : TypeConverter
{
	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		GroupColorItem groupColorItem = (GroupColorItem)value;
		if (destinationType == typeof(InstanceDescriptor) && groupColorItem != null && groupColorItem.Group != null)
		{
			ConstructorInfo constructor = typeof(GroupColorItem).GetConstructor(new Type[2]
			{
				typeof(ColorUIAdvGroup),
				typeof(Color)
			});
			return new InstanceDescriptor(constructor, new object[2] { groupColorItem.Group, groupColorItem.Color }, isComplete: false);
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
