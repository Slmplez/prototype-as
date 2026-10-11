using System;
using System.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Design;

[DocumentationExclude]
public class ShouldSerializeCheckingPropertyDescriptor : PropertyDescriptor
{
	private PropertyDescriptor originalDescriptor;

	public override Type ComponentType => originalDescriptor.ComponentType;

	public override bool IsReadOnly => originalDescriptor.IsReadOnly;

	public override Type PropertyType => originalDescriptor.PropertyType;

	public ShouldSerializeCheckingPropertyDescriptor(PropertyDescriptor originalDescriptor, Attribute[] atts)
		: base(originalDescriptor.Name, atts)
	{
		this.originalDescriptor = originalDescriptor;
	}

	public override bool CanResetValue(object component)
	{
		return originalDescriptor.CanResetValue(component);
	}

	public override object GetValue(object component)
	{
		if (!ShouldSerializeValue(component))
		{
			return null;
		}
		return originalDescriptor.GetValue(component);
	}

	public override void ResetValue(object component)
	{
		originalDescriptor.ResetValue(component);
	}

	public override void SetValue(object component, object value)
	{
		originalDescriptor.SetValue(component, value);
	}

	public override bool ShouldSerializeValue(object component)
	{
		return originalDescriptor.ShouldSerializeValue(component);
	}
}
