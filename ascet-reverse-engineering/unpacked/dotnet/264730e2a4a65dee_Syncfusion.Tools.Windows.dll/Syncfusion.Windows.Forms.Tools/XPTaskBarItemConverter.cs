using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Globalization;
using System.Reflection;
using Syncfusion.ComponentModel;
using Syncfusion.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

internal class XPTaskBarItemConverter : ByteStreamTypeConverter
{
	public override void OnBeforeDeserialize()
	{
		AppStateSerializer.SetBindingInfo("Syncfusion.Tools.Windows", typeof(XPTaskBarItem).Assembly);
		AppStateSerializer.SetTypeBindingInfo("Syncfusion.Tools.Windows", typeof(XPTaskBarItem).FullName, typeof(XPTaskBarItem).Assembly);
	}

	public override void OnAfterDeserialize()
	{
		AppStateSerializer.SetTypeBindingInfo("Syncfusion.Tools.Windows", typeof(XPTaskBarItem).FullName, null);
	}

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
		if (destinationType == typeof(InstanceDescriptor) && value is XPTaskBarItem)
		{
			XPTaskBarItem xPTaskBarItem = (XPTaskBarItem)value;
			Type[] types = new Type[10]
			{
				typeof(string),
				typeof(Color),
				typeof(int),
				typeof(object),
				typeof(string),
				typeof(bool),
				typeof(bool),
				typeof(string),
				typeof(Font),
				typeof(int)
			};
			ConstructorInfo constructor = typeof(XPTaskBarItem).GetConstructor(types);
			if (constructor != null)
			{
				return new InstanceDescriptor(constructor, new object[10] { xPTaskBarItem.Text, xPTaskBarItem.ForeColor, xPTaskBarItem.ImageIndex, xPTaskBarItem.Tag, xPTaskBarItem.ToolTip, xPTaskBarItem.Visible, xPTaskBarItem.Enabled, xPTaskBarItem.Name, xPTaskBarItem.ItemFont, xPTaskBarItem.LeftSpacing });
			}
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
