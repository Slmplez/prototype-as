using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class StyleNamePairConverter : ExpandableObjectConverter
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
		if (destinationType == null)
		{
			throw new ArgumentNullException("destinationType");
		}
		if (destinationType == typeof(InstanceDescriptor) && value is StyleNamePair)
		{
			StyleNamePair styleNamePair = (StyleNamePair)value;
			MemberInfo memberInfo = null;
			object[] array = null;
			Type[] types = new Type[2]
			{
				typeof(string),
				typeof(TreeNodeAdvStyleInfo)
			};
			memberInfo = typeof(StyleNamePair).GetConstructor(types);
			array = new object[2] { styleNamePair.name, styleNamePair.style };
			if (memberInfo != null)
			{
				return new InstanceDescriptor(memberInfo, array);
			}
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
