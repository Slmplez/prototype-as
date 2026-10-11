using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;

namespace Syncfusion.Windows.Forms.Grid;

public class GridColWidthTypeConverter : ExpandableObjectConverter
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
			GridColWidth gridColWidth = (GridColWidth)value;
			Type typeFromHandle = typeof(GridColWidth);
			ConstructorInfo constructor = typeFromHandle.GetConstructor(new Type[2]
			{
				typeof(int),
				typeof(int)
			});
			if (constructor != null)
			{
				return new InstanceDescriptor(constructor, new object[2] { gridColWidth.ColIndex, gridColWidth.Width }, isComplete: true);
			}
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}

	public override PropertyDescriptorCollection GetProperties(ITypeDescriptorContext context, object value, Attribute[] attributes)
	{
		PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(value, attributes, noCustomTypeDesc: false);
		string[] names = new string[2] { "ColIndex", "Width" };
		return properties.Sort(names);
	}
}
