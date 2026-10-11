using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools.Design;

public sealed class BarTypeConverter : ExpandableObjectConverter
{
	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (destinationType == typeof(InstanceDescriptor) && value is Bar)
		{
			Bar bar = (Bar)value;
			if (bar.Manager != null)
			{
				return ConvertInBarManagerContext(context, culture, value, destinationType);
			}
			return ConvertInXPToolBarContext(context, culture, value, destinationType);
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

	private object ConvertInXPToolBarContext(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		Bar bar = (Bar)value;
		Type[] types = new Type[5]
		{
			typeof(BarManager),
			typeof(string),
			typeof(BarStyle),
			typeof(BarItemsDesignTime),
			typeof(int[])
		};
		ConstructorInfo constructor = typeof(Bar).GetConstructor(types);
		if (constructor != null)
		{
			return new InstanceDescriptor(constructor, new object[5] { bar.Manager, bar.BarName, bar.BarStyle, null, null }, isComplete: false);
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}

	private object ConvertInBarManagerContext(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		Bar bar = (Bar)value;
		Type[] types = new Type[2]
		{
			typeof(BarManager),
			typeof(string)
		};
		ConstructorInfo constructor = typeof(Bar).GetConstructor(types);
		if (constructor != null)
		{
			return new InstanceDescriptor(constructor, new object[2] { bar.Manager, bar.BarName });
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
