using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Globalization;
using System.Reflection;

namespace Syncfusion.Windows.Forms.Tools;

public class XPUserEntryButtonTypeConverter : TypeConverter
{
	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		XPUserEntryButton xPUserEntryButton = (XPUserEntryButton)value;
		if (destinationType == typeof(InstanceDescriptor) && xPUserEntryButton != null)
		{
			if (xPUserEntryButton.Image != null)
			{
				ConstructorInfo constructor = typeof(XPUserEntryButton).GetConstructor(new Type[6]
				{
					typeof(string),
					typeof(Image),
					typeof(XPUserEntryButtonType),
					typeof(int),
					typeof(bool),
					typeof(bool)
				});
				return new InstanceDescriptor(constructor, new object[6] { xPUserEntryButton.Name, xPUserEntryButton.Image, xPUserEntryButton.PredefinedType, xPUserEntryButton.Index, xPUserEntryButton.Enable, xPUserEntryButton.Visible });
			}
			if (xPUserEntryButton.Index != -1)
			{
				ConstructorInfo constructor2 = typeof(XPUserEntryButton).GetConstructor(new Type[2]
				{
					typeof(string),
					typeof(int)
				});
				return new InstanceDescriptor(constructor2, new object[2] { xPUserEntryButton.Name, xPUserEntryButton.Index });
			}
			ConstructorInfo constructor3 = typeof(XPUserEntryButton).GetConstructor(new Type[1] { typeof(string) });
			return new InstanceDescriptor(constructor3, new object[1] { xPUserEntryButton.Name });
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
