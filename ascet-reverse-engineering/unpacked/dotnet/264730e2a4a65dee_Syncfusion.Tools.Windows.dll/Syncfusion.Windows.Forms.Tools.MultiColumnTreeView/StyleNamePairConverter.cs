using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

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
		if (destinationType == typeof(InstanceDescriptor) && value != null && value.GetType().FullName == "Syncfusion.Windows.Forms.Tools.MultiColumnTreeView.StyleNamePair")
		{
			StyleNamePair styleNamePair = (StyleNamePair)value;
			Type[] types = new Type[2]
			{
				typeof(string),
				typeof(TreeNodeAdvStyleInfo)
			};
			MemberInfo constructor = typeof(StyleNamePair).GetConstructor(types);
			object[] arguments = new object[2] { styleNamePair.Name, styleNamePair.StyleGeneral };
			if (constructor != null)
			{
				return new InstanceDescriptor(constructor, arguments);
			}
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
