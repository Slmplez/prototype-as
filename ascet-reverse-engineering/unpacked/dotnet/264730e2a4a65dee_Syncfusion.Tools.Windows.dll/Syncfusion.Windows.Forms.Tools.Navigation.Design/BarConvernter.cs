using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;

namespace Syncfusion.Windows.Forms.Tools.Navigation.Design;

internal class BarConvernter : ExpandableObjectConverter
{
	public override bool CanConvertTo(ITypeDescriptorContext context, Type destinationType)
	{
		if (!(destinationType == typeof(InstanceDescriptor)))
		{
			return base.CanConvertTo(context, destinationType);
		}
		return true;
	}

	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (value is Bar && destinationType == typeof(InstanceDescriptor))
		{
			MemberInfo constructor = typeof(Bar).GetConstructor(new Type[0]);
			return new InstanceDescriptor(constructor, new object[0], isComplete: false);
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
