using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Globalization;
using System.Reflection;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class FlowLayoutConstraintsConverter : ByteStreamTypeConverter
{
	public override object CreateInstance(ITypeDescriptorContext context, IDictionary propertyValues)
	{
		FlowLayoutConstraints flowLayoutConstraints = new FlowLayoutConstraints();
		flowLayoutConstraints.Active = (bool)propertyValues["Active"];
		flowLayoutConstraints.HAlign = (HorzFlowAlign)propertyValues["HAlign"];
		flowLayoutConstraints.VAlign = (VertFlowAlign)propertyValues["VAlign"];
		flowLayoutConstraints.NewLine = (bool)propertyValues["NewLine"];
		flowLayoutConstraints.ProportionalColWidth = (bool)propertyValues["ProportionalColWidth"];
		flowLayoutConstraints.ProportionalRowHeight = (bool)propertyValues["ProportionalRowHeight"];
		return flowLayoutConstraints;
	}

	public override void OnBeforeDeserialize()
	{
		AppStateSerializer.SetBindingInfo("Syncfusion.Shared.Base", typeof(FlowLayoutConstraints).Assembly);
		AppStateSerializer.SetTypeBindingInfo("Syncfusion.Shared.Base", typeof(FlowLayoutConstraints).FullName, typeof(FlowLayoutConstraints).Assembly);
	}

	public override void OnAfterDeserialize()
	{
		AppStateSerializer.SetTypeBindingInfo("Syncfusion.Shared.Base", typeof(FlowLayoutConstraints).FullName, null);
	}

	public override bool GetCreateInstanceSupported(ITypeDescriptorContext context)
	{
		return true;
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
		if (destinationType == typeof(InstanceDescriptor) && value is FlowLayoutConstraints)
		{
			FlowLayoutConstraints flowLayoutConstraints = (FlowLayoutConstraints)value;
			Type[] types = new Type[6]
			{
				typeof(bool),
				typeof(HorzFlowAlign),
				typeof(VertFlowAlign),
				typeof(bool),
				typeof(bool),
				typeof(bool)
			};
			ConstructorInfo constructor = typeof(FlowLayoutConstraints).GetConstructor(types);
			if (constructor != null)
			{
				return new InstanceDescriptor(constructor, new object[6] { flowLayoutConstraints.Active, flowLayoutConstraints.HAlign, flowLayoutConstraints.VAlign, flowLayoutConstraints.NewLine, flowLayoutConstraints.ProportionalColWidth, flowLayoutConstraints.ProportionalRowHeight });
			}
		}
		else if (destinationType == typeof(string) && value is FlowLayoutConstraints)
		{
			FlowLayoutConstraints flowLayoutConstraints2 = (FlowLayoutConstraints)value;
			PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(flowLayoutConstraints2);
			string text = string.Empty;
			PropertyDescriptor propertyDescriptor = properties.Find("Active", ignoreCase: false);
			if (propertyDescriptor.ShouldSerializeValue(flowLayoutConstraints2))
			{
				text = text + "Active " + flowLayoutConstraints2.Active + "; ";
			}
			propertyDescriptor = properties.Find("HAlign", ignoreCase: false);
			if (propertyDescriptor.ShouldSerializeValue(flowLayoutConstraints2))
			{
				text = text + "HAlign " + flowLayoutConstraints2.HAlign.ToString() + "; ";
			}
			propertyDescriptor = properties.Find("VAlign", ignoreCase: false);
			if (propertyDescriptor.ShouldSerializeValue(flowLayoutConstraints2))
			{
				text = text + "VAlign " + flowLayoutConstraints2.VAlign.ToString() + "; ";
			}
			propertyDescriptor = properties.Find("NewLine", ignoreCase: false);
			if (propertyDescriptor.ShouldSerializeValue(flowLayoutConstraints2))
			{
				text = text + "NewLine " + flowLayoutConstraints2.NewLine + "; ";
			}
			propertyDescriptor = properties.Find("ProportionalColWidth", ignoreCase: false);
			if (propertyDescriptor.ShouldSerializeValue(flowLayoutConstraints2))
			{
				text = text + "ProportionalColWidth " + flowLayoutConstraints2.ProportionalColWidth + "; ";
			}
			propertyDescriptor = properties.Find("ProportionalRowHeight", ignoreCase: false);
			if (propertyDescriptor.ShouldSerializeValue(flowLayoutConstraints2))
			{
				text = text + "ProportionalRowHeight " + flowLayoutConstraints2.ProportionalRowHeight + "; ";
			}
			return text;
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
