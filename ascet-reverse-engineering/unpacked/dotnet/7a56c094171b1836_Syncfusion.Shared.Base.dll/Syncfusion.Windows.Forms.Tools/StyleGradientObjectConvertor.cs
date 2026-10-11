using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Globalization;
using System.Reflection;

namespace Syncfusion.Windows.Forms.Tools;

public class StyleGradientObjectConvertor : ExpandableObjectConverter
{
	public override bool CanConvertTo(ITypeDescriptorContext context, Type destType)
	{
		if (destType == typeof(InstanceDescriptor))
		{
			return true;
		}
		return base.CanConvertTo(context, destType);
	}

	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destType)
	{
		if (destType == typeof(InstanceDescriptor))
		{
			Type[] types = new Type[3]
			{
				typeof(Color),
				typeof(Color),
				typeof(LinearGradientMode)
			};
			ConstructorInfo constructor = typeof(StyleGradientObject).GetConstructor(types);
			StyleGradientObject styleGradientObject = (StyleGradientObject)value;
			return new InstanceDescriptor(constructor, new object[3] { styleGradientObject.StartColor, styleGradientObject.EndColor, styleGradientObject.GradientMode }, isComplete: true);
		}
		return base.ConvertTo(context, culture, value, destType);
	}
}
