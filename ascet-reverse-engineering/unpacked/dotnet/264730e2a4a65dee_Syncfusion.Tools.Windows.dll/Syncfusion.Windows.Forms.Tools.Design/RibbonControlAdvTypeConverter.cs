using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Globalization;
using System.Reflection;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class RibbonControlAdvTypeConverter : TypeConverter
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
		if (destinationType == typeof(InstanceDescriptor) && value != null)
		{
			Type typeFromHandle = typeof(RibbonControlAdv);
			FieldInfo field = typeFromHandle.GetField("m_szRestore", BindingFlags.Instance | BindingFlags.NonPublic);
			if (field != null)
			{
				Type type = value.GetType();
				ConstructorInfo constructor = type.GetConstructor(new Type[1] { typeof(Size) });
				return new InstanceDescriptor(constructor, new object[1] { field.GetValue(value) });
			}
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
