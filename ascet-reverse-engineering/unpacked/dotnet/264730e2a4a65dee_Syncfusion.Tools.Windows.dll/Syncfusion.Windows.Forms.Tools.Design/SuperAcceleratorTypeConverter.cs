using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class SuperAcceleratorTypeConverter : TypeConverter
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
		if (destinationType == typeof(InstanceDescriptor))
		{
			ConstructorInfo constructor = typeof(SuperAccelerator).GetConstructor(new Type[1] { typeof(Form) });
			Form form = null;
			if (value is Component { Site: not null } component && component.Site.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
			{
				form = designerHost.RootComponent as Form;
			}
			return new InstanceDescriptor(constructor, new object[1] { form });
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
