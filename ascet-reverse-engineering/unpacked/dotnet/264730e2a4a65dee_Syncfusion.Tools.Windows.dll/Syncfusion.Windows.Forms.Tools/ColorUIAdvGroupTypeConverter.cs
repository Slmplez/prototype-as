using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;

namespace Syncfusion.Windows.Forms.Tools;

public class ColorUIAdvGroupTypeConverter : ExpandableObjectConverter
{
	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (destinationType == typeof(InstanceDescriptor) && value is ColorUIAdvGroup { ParentControl: not null } colorUIAdvGroup)
		{
			if (colorUIAdvGroup.IsDefaultGroup)
			{
				ConstructorInfo constructor = typeof(ColorUIAdvGroup).GetConstructor(new Type[4]
				{
					typeof(ColorPickerUIAdv),
					typeof(ColorUIAdvGroups),
					typeof(bool),
					typeof(bool)
				});
				if (colorUIAdvGroup.ShouldSerialize)
				{
					return new InstanceDescriptor(constructor, new object[4] { colorUIAdvGroup.ParentControl, colorUIAdvGroup.GroupType, true, true }, isComplete: false);
				}
				return new InstanceDescriptor(constructor, new object[4] { colorUIAdvGroup.ParentControl, colorUIAdvGroup.GroupType, true, true });
			}
			ConstructorInfo constructor2 = typeof(ColorUIAdvGroup).GetConstructor(new Type[3]
			{
				typeof(ColorPickerUIAdv),
				typeof(ColorUIAdvGroups),
				typeof(bool)
			});
			if (colorUIAdvGroup.ShouldSerialize)
			{
				return new InstanceDescriptor(constructor2, new object[3] { colorUIAdvGroup.ParentControl, colorUIAdvGroup.GroupType, true }, isComplete: false);
			}
			return new InstanceDescriptor(constructor2, new object[3] { colorUIAdvGroup.ParentControl, colorUIAdvGroup.GroupType, true });
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
