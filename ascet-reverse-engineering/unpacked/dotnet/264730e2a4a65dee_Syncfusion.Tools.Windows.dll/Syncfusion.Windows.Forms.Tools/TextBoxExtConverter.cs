using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

internal class TextBoxExtConverter : CustomPropertiesTypeConverter
{
	private const string PROPERTY_DOCK = "Dock";

	private const string PROPERTY_BORDER_STYLE = "BorderStyle";

	protected override Attribute[] GetPropertyAttributes(TextBoxExt component, PropertyDescriptor property)
	{
		if (property.Name == "Dock" || property.Name == "BorderStyle")
		{
			return new Attribute[1] { BrowsableAttribute.No };
		}
		return CustomPropertiesTypeConverter.EmptyAttributes;
	}
}
