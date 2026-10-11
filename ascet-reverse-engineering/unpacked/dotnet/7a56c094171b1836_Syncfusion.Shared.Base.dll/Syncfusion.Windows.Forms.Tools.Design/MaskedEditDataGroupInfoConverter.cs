using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class MaskedEditDataGroupInfoConverter : TypeConverter
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
			MaskedEditDataGroupInfo maskedEditDataGroupInfo = value as MaskedEditDataGroupInfo;
			return new InstanceDescriptor(typeof(MaskedEditDataGroupInfo).GetConstructor(new Type[3]
			{
				typeof(string),
				typeof(int),
				typeof(MaskGroupAlignment)
			}), new object[3] { maskedEditDataGroupInfo.DataGroupName, maskedEditDataGroupInfo.DataGroupSize, maskedEditDataGroupInfo.DataGroupAlignment });
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
