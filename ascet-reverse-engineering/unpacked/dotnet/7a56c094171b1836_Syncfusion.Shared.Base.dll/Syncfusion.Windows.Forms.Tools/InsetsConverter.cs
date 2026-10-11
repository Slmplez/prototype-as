using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class InsetsConverter : ExpandableObjectConverter
{
	public override object CreateInstance(ITypeDescriptorContext context, IDictionary propertyValues)
	{
		int top = (int)propertyValues["Top"];
		int left = (int)propertyValues["Left"];
		int right = (int)propertyValues["Right"];
		int bottom = (int)propertyValues["Bottom"];
		Insets insets = new Insets(left, top, right, bottom);
		return insets;
	}

	public override bool GetCreateInstanceSupported(ITypeDescriptorContext context)
	{
		return true;
	}

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
		if (destinationType == typeof(InstanceDescriptor) && value is Insets insets)
		{
			Type[] types = new Type[4]
			{
				typeof(int),
				typeof(int),
				typeof(int),
				typeof(int)
			};
			ConstructorInfo constructor = typeof(Insets).GetConstructor(types);
			if (constructor != null)
			{
				return new InstanceDescriptor(constructor, new object[4] { insets.Left, insets.Top, insets.Right, insets.Bottom });
			}
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
