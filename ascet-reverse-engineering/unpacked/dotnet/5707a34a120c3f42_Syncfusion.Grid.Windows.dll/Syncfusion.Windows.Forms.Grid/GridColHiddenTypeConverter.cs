using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;

namespace Syncfusion.Windows.Forms.Grid;

public class GridColHiddenTypeConverter : ExpandableObjectConverter
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
			GridColHidden gridColHidden = (GridColHidden)value;
			Type typeFromHandle = typeof(GridColHidden);
			ConstructorInfo constructor = typeFromHandle.GetConstructor(new Type[1] { typeof(int) });
			if (constructor != null)
			{
				return new InstanceDescriptor(constructor, new object[1] { gridColHidden.ColIndex }, isComplete: true);
			}
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
