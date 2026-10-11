using System;
using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Design;

internal class DesignBindingPropertyDescriptor : PropertyDescriptor
{
	private PropertyDescriptor property;

	private static TypeConverter designBindingConverter;

	private string displayName;

	public override Type PropertyType => typeof(DesignBinding);

	public override string DisplayName => displayName;

	public override bool IsReadOnly => false;

	public override TypeConverter Converter => designBindingConverter;

	public override Type ComponentType => typeof(ControlBindingsCollection);

	internal DesignBindingPropertyDescriptor(string name, string displayName, PropertyDescriptor property, Attribute[] attrs)
		: base(name, attrs)
	{
		this.displayName = displayName;
		this.property = property;
	}

	static DesignBindingPropertyDescriptor()
	{
		designBindingConverter = new DesignBindingConverter();
	}

	public override bool ShouldSerializeValue(object component)
	{
		return false;
	}

	public override void SetValue(object component, object value)
	{
		SetBinding((ControlBindingsCollection)component, this, (DesignBinding)value);
		OnValueChanged(component, EventArgs.Empty);
	}

	public override void ResetValue(object component)
	{
		SetBinding((ControlBindingsCollection)component, this, DesignBinding.Null);
	}

	public override object GetValue(object component)
	{
		return GetBinding((ControlBindingsCollection)component, this);
	}

	public override bool CanResetValue(object component)
	{
		return !GetBinding((ControlBindingsCollection)component, this).IsNull;
	}

	private static void SetBinding(ControlBindingsCollection bindings, PropertyDescriptor property, DesignBinding designBinding)
	{
		if (designBinding != null)
		{
			Binding binding = bindings[property.Name];
			if (binding != null)
			{
				bindings.Remove(binding);
			}
			if (!designBinding.IsNull)
			{
				bindings.Add(property.Name, designBinding.DataSource, designBinding.DataMember);
			}
		}
	}

	private static DesignBinding GetBinding(ControlBindingsCollection bindings, PropertyDescriptor property)
	{
		Binding binding = bindings[property.Name];
		if (binding == null)
		{
			return DesignBinding.Null;
		}
		BindingMemberInfo bindingMemberInfo = binding.BindingMemberInfo;
		return new DesignBinding(binding.DataSource, bindingMemberInfo.BindingMember);
	}
}
