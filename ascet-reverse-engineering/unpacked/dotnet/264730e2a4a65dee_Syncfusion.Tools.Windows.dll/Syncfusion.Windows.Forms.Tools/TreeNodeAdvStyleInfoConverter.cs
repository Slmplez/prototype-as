using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class TreeNodeAdvStyleInfoConverter : ExpandableObjectConverter
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
		if (destinationType == typeof(InstanceDescriptor) && value is TreeNodeAdvStyleInfo)
		{
			_ = (TreeNodeAdvStyleInfo)value;
			MemberInfo memberInfo = null;
			object[] array = null;
			Type[] types = new Type[0];
			memberInfo = typeof(TreeNodeAdvStyleInfo).GetConstructor(types);
			object[] array2 = new object[0];
			array = array2;
			if (memberInfo != null)
			{
				return new InstanceDescriptor(memberInfo, array, isComplete: false);
			}
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
