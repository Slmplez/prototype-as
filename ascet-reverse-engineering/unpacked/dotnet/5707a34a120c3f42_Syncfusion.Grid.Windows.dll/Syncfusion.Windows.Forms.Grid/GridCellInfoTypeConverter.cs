using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCellInfoTypeConverter : ExpandableObjectConverter
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
			_ = (GridCellInfo)value;
			Type typeFromHandle = typeof(GridCellInfo);
			ConstructorInfo constructor = typeFromHandle.GetConstructor(new Type[0]);
			if (constructor != null)
			{
				return new InstanceDescriptor(constructor, null, isComplete: false);
			}
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}

	public override PropertyDescriptorCollection GetProperties(ITypeDescriptorContext context, object value, Attribute[] attributes)
	{
		PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(value, attributes, noCustomTypeDesc: false);
		string[] names = new string[3] { "Row", "Col", "StyleInfo" };
		return properties.Sort(names);
	}
}
