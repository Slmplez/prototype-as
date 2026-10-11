using System;
using System.ComponentModel;
using System.Reflection;

namespace Syncfusion.Collections;

internal class FieldInfoWrapperPropertyDescriptor : PropertyDescriptor
{
	private FieldInfo field;

	private Type componentType;

	public override Type ComponentType => componentType;

	public override string DisplayName => field.Name;

	public override bool IsReadOnly => false;

	public override Type PropertyType => field.FieldType;

	internal FieldInfoWrapperPropertyDescriptor(string propertyName, FieldInfo field, Attribute[] attrArray, Type componentType)
		: base(propertyName, attrArray)
	{
		this.field = field;
		this.componentType = componentType;
	}

	public override bool CanResetValue(object comp)
	{
		return false;
	}

	public override bool ShouldSerializeValue(object component)
	{
		return true;
	}

	public override object GetValue(object comp)
	{
		return field.GetValue(comp);
	}

	public override void ResetValue(object comp)
	{
	}

	public override void SetValue(object comp, object value)
	{
		field.SetValue(comp, value);
	}
}
