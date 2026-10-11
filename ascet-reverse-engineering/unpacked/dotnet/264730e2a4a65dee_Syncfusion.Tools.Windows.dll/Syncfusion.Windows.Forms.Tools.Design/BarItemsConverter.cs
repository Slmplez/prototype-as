using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools.Design;

public sealed class BarItemsConverter : ArrayConverter
{
	public override bool CanConvertFrom(ITypeDescriptorContext context, Type sourceType)
	{
		if (sourceType == typeof(string))
		{
			return true;
		}
		return base.CanConvertFrom(context, sourceType);
	}

	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (destinationType == typeof(InstanceDescriptor) && value is BarItemsDesignTime)
		{
			BarItemsDesignTime barItemsDesignTime = (BarItemsDesignTime)value;
			Type[] types = new Type[1] { typeof(BarItem[]) };
			ConstructorInfo constructor = typeof(BarItemsDesignTime).GetConstructor(types);
			if (constructor != null)
			{
				object[] array = new object[1];
				BarItem[] array2 = new BarItem[barItemsDesignTime.Count];
				for (int i = 0; i < barItemsDesignTime.Count; i++)
				{
					array2[i] = barItemsDesignTime[i];
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
