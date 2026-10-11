using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class TrackBarExConverter : TypeConverter
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
		if (destinationType == typeof(InstanceDescriptor) && value is TrackBarEx trackBarEx)
		{
			ConstructorInfo constructor = trackBarEx.GetType().GetConstructor(new Type[2]
			{
				typeof(int),
				typeof(int)
			});
			if (constructor != null)
			{
				return new InstanceDescriptor(constructor, new object[2] { trackBarEx.Minimum, trackBarEx.Maximum });
			}
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
