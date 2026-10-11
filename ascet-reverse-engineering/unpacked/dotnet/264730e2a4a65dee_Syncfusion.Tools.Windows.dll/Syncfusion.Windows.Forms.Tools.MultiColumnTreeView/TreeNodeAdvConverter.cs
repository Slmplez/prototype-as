using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[DocumentationExclude]
public class TreeNodeAdvConverter : ExpandableObjectConverter
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
		if (destinationType == typeof(InstanceDescriptor) && value is TreeNodeAdv)
		{
			TreeNodeAdv treeNodeAdv = (TreeNodeAdv)value;
			Type[] types;
			object[] arguments;
			if (treeNodeAdv.HasSubItems)
			{
				types = new Type[1] { typeof(TreeNodeAdvSubItem[]) };
				arguments = new object[1] { treeNodeAdv.SubItems.ToArray() };
			}
			else
			{
				types = new Type[0];
				arguments = new object[0];
			}
			MemberInfo constructor = typeof(TreeNodeAdv).GetConstructor(types);
			if (constructor != null)
			{
				return new InstanceDescriptor(constructor, arguments, isComplete: false);
			}
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
