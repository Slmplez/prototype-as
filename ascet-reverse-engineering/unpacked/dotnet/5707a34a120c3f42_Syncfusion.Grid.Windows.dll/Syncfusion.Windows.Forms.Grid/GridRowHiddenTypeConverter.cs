using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;

namespace Syncfusion.Windows.Forms.Grid;

public class GridRowHiddenTypeConverter : ExpandableObjectConverter
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
			GridRowHidden gridRowHidden = (GridRowHidden)value;
			Type typeFromHandle = typeof(GridRowHidden);
			ConstructorInfo constructor = typeFromHandle.GetConstructor(new Type[1] { typeof(int) });
			if (constructor != null)
			{
				return new InstanceDescriptor(constructor, new object[1] { gridRowHidden.RowIndex }, isComplete: true);
			}
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
