using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class AutoCompleteTargetConverter : TypeConverter
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
			AutoCompleteTarget autoCompleteTarget = value as AutoCompleteTarget;
			return new InstanceDescriptor(typeof(AutoCompleteDataColumnInfo).GetConstructor(new Type[2]
			{
				typeof(Control),
				typeof(AutoCompleteModes)
			}), new object[2] { autoCompleteTarget.EditControl, autoCompleteTarget.AutoCompleteMode });
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
