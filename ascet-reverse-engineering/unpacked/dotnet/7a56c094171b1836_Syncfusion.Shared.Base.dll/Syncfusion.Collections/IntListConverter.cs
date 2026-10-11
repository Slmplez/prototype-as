using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;
using Syncfusion.Documentation;

namespace Syncfusion.Collections;

[DocumentationExclude]
public class IntListConverter : TypeConverter
{
	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (destinationType == typeof(InstanceDescriptor) && value is IntListDesignTime)
		{
			IntListDesignTime intListDesignTime = (IntListDesignTime)value;
			Type[] types = new Type[1] { typeof(int[]) };
			ConstructorInfo constructor = typeof(IntListDesignTime).GetConstructor(types);
			if (constructor != null)
			{
				object[] array = new object[1];
				int[] array2 = new int[intListDesignTime.Count];
				for (int i = 0; i < intListDesignTime.Count; i++)
				{
					array2[i] = intListDesignTime[i];
				}
				array[0] = array2;
				return new InstanceDescriptor(constructor, array);
			}
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
}
