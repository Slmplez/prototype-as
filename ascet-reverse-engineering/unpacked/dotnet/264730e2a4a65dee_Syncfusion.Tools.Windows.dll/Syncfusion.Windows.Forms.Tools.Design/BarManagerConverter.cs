using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.ComponentModel;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools.Design;

public sealed class BarManagerConverter : Syncfusion.Windows.Forms.ComponentModel.CustomPropertiesTypeConverter
{
	private const string c_sOffice2007ThemeName = "Office2007Theme";

	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (destinationType == typeof(InstanceDescriptor) && value is BarManager)
		{
			BarManager barManager = (BarManager)value;
			Type[] types = new Type[1] { typeof(Form) };
			ConstructorInfo constructor = value.GetType().GetConstructor(types);
			if (constructor != null)
			{
				object[] arguments = new object[1] { barManager.Form };
				ConstructorInfo constructor2 = value.GetType().GetConstructor(new Type[2]
				{
					typeof(IContainer),
					typeof(Form)
				});
				if (constructor2 == null)
				{
					FieldInfo field = value.GetType().GetField("insertContainerWhileSerializing", BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.GetField);
					if (field != null)
					{
						field.SetValue(value, false);
					}
				}
				return new InstanceDescriptor(constructor, arguments);
			}
			constructor = value.GetType().GetConstructor(new Type[0]);
			if (constructor != null)
			{
				FieldInfo field2 = value.GetType().GetField("insertContainerWhileSerializing", BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.GetField);
				if (field2 != null)
				{
					field2.SetValue(value, false);
				}
				return new InstanceDescriptor(constructor, new object[0]);
			}
			if (constructor == null)
			{
				throw new ApplicationException("Required constructor not found in the BarManager type. Make sure to provide atlest a default constructor for the BarManager.");
			}
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

	protected override Attribute[] GetPropertyAttributes(Component component, PropertyDescriptor property)
	{
		if (component is BarManager barManager && property.Name == "Office2007Theme")
		{
			switch (barManager.Style)
			{
			case VisualStyle.Office2007:
			case VisualStyle.Office2007Outlook:
				return new Attribute[1] { BrowsableAttribute.Yes };
			default:
				return new Attribute[1] { BrowsableAttribute.No };
			}
		}
		return Syncfusion.Windows.Forms.ComponentModel.CustomPropertiesTypeConverter.EmptyAttributes;
	}
}
