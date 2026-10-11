using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms;

internal class PropertyDescriptorWrapper : PropertyDescriptor
{
	private PropertyDescriptor baseProp;

	private object baseObj;

	public override Type ComponentType => baseProp.ComponentType;

	public override string DisplayName => baseProp.DisplayName;

	public override bool IsReadOnly => baseProp.IsReadOnly;

	public override Type PropertyType => baseProp.PropertyType;

	internal PropertyDescriptorWrapper(string propertyName, PropertyDescriptor baseProp, Attribute[] attrArray, object baseObj)
		: base(propertyName, attrArray)
	{
		this.baseProp = baseProp;
		this.baseObj = baseObj;
	}

	public override bool CanResetValue(object comp)
	{
		return baseProp.CanResetValue(baseObj);
	}

	public override bool ShouldSerializeValue(object component)
	{
		return baseProp.ShouldSerializeValue(baseObj);
	}

	public override object GetValue(object comp)
	{
		return baseProp.GetValue(baseObj);
	}

	public override void ResetValue(object comp)
	{
		baseProp.ResetValue(baseObj);
	}

	public override void SetValue(object comp, object value)
	{
		baseProp.SetValue(baseObj, value);
	}
}
