using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Globalization;
using System.Reflection;
using Syncfusion.Documentation;

namespace Syncfusion.Drawing;

[DocumentationExclude]
internal class ColorListConverter : TypeConverter
{
	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (destinationType == typeof(InstanceDescriptor) && value is BrushInfoColorArrayList)
		{
			BrushInfoColorArrayList brushInfoColorArrayList = (BrushInfoColorArrayList)value;
			Type[] types = new Type[1] { typeof(Color[]) };
			ConstructorInfo constructor = typeof(BrushInfoColorArrayList).GetConstructor(types);
			if (constructor != null)
			{
				object[] array = new object[1];
				Color[] array2 = new Color[brushInfoColorArrayList.Count];
				for (int i = 0; i < brushInfoColorArrayList.Count; i++)
				{
					ref Color reference = ref array2[i];
					reference = brushInfoColorArrayList[i];
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
