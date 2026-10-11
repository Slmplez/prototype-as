using System;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class DataColumnInfoConverter : TypeConverter
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
			AutoCompleteDataColumnInfo autoCompleteDataColumnInfo = value as AutoCompleteDataColumnInfo;
			return new InstanceDescriptor(typeof(AutoCompleteDataColumnInfo).GetConstructor(new Type[3]
			{
				typeof(string),
				typeof(int),
				typeof(bool)
			}), new object[3] { autoCompleteDataColumnInfo.ColumnHeaderText, autoCompleteDataColumnInfo.MinColumnWidth, true });
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
