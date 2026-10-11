using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class ToolStripItemAdvInfoTypeConverter : TypeConverter
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
		if (destinationType == typeof(InstanceDescriptor))
		{
			Type type = value.GetType();
			FieldInfo field = type.GetField("Item");
			if (field != null)
			{
				ToolStripItem toolStripItem = field.GetValue(value) as ToolStripItem;
				ConstructorInfo constructor = type.GetConstructor(new Type[1] { typeof(ToolStripItem) });
				return new InstanceDescriptor(constructor, new object[1] { toolStripItem }, isComplete: true);
			}
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
