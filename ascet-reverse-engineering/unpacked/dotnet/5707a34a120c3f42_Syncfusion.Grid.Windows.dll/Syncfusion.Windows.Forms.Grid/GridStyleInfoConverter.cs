using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[TypeConverter(typeof(GridStyleInfoConverter))]
public class GridStyleInfoConverter : StyleInfoBaseConverter
{
	public override bool CanConvertTo(ITypeDescriptorContext context, Type destinationType)
	{
		if (destinationType == typeof(InstanceDescriptor))
		{
			return true;
		}
		return base.CanConvertTo(context, destinationType);
	}

	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (value != null && destinationType == typeof(InstanceDescriptor))
		{
			ConstructorInfo constructor = value.GetType().GetConstructor(new Type[0]);
			if (constructor != null)
			{
				return new InstanceDescriptor(constructor, null, isComplete: false);
			}
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
