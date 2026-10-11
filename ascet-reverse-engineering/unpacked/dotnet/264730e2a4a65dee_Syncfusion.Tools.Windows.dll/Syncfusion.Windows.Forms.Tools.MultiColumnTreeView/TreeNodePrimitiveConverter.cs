using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[DocumentationExclude]
public class TreeNodePrimitiveConverter : ExpandableObjectConverter
{
	public override bool CanConvertTo(ITypeDescriptorContext context, Type destinationType)
	{
		return destinationType == typeof(InstanceDescriptor) || base.CanConvertTo(context, destinationType);
	}

	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (destinationType == null)
		{
			throw new ArgumentNullException("destinationType");
		}
		TreeNodePrimitive treeNodePrimitive = value as TreeNodePrimitive;
		if (destinationType == typeof(InstanceDescriptor) && treeNodePrimitive != null)
		{
			Type[] types = new Type[0];
			MemberInfo constructor = typeof(TreeNodePrimitive).GetConstructor(types);
			object[] array = new object[0];
			object[] arguments = array;
			if (constructor != null)
			{
				return new InstanceDescriptor(constructor, arguments, isComplete: false);
			}
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
