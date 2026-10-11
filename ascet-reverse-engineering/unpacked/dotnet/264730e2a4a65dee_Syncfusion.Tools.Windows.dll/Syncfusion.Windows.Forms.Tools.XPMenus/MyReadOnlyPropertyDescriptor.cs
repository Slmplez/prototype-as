using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal class MyReadOnlyPropertyDescriptor : PropertyDescriptor
{
	private PropertyDescriptor baseProp;

	public override Type ComponentType => baseProp.ComponentType;

	public override string DisplayName => baseProp.DisplayName;

	public override bool IsReadOnly => true;

	public override Type PropertyType => baseProp.PropertyType;

	internal MyReadOnlyPropertyDescriptor(PropertyDescriptor baseProp, Attribute[] attrArray)
		: base(baseProp.Name, attrArray)
	{
		this.baseProp = baseProp;
	}

	public override bool CanResetValue(object comp)
	{
		return baseProp.CanResetValue(comp);
	}

	public override bool ShouldSerializeValue(object component)
	{
		return baseProp.ShouldSerializeValue(component);
	}

	public override object GetValue(object comp)
	{
		return baseProp.GetValue(comp);
	}

	public override void ResetValue(object comp)
	{
		baseProp.ResetValue(comp);
	}

	public override void SetValue(object comp, object value)
	{
		baseProp.SetValue(comp, value);
	}
}
