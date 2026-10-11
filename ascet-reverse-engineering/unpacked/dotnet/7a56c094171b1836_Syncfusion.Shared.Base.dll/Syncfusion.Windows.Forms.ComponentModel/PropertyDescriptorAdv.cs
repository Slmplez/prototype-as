using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.ComponentModel;

public abstract class PropertyDescriptorAdv : PropertyDescriptor
{
	private Type m_componentType;

	private Type m_propertyType;

	public override Type ComponentType => m_componentType;

	public override bool IsReadOnly => Attributes.Contains(ReadOnlyAttribute.Yes);

	public override Type PropertyType => m_propertyType;

	protected PropertyDescriptorAdv(Type componentType, string name, Type propertyType)
		: base(name, null)
	{
	}

	protected PropertyDescriptorAdv(Type componentType, string name, Type propertyType, Attribute[] attributes)
		: base(name, attributes)
	{
		m_componentType = componentType;
		m_propertyType = propertyType;
	}

	public override bool CanResetValue(object component)
	{
		return ((DefaultValueAttribute)Attributes[typeof(DefaultValueAttribute)])?.Value.Equals(GetValue(component)) ?? false;
	}

	public override void ResetValue(object component)
	{
		DefaultValueAttribute defaultValueAttribute = (DefaultValueAttribute)Attributes[typeof(DefaultValueAttribute)];
		if (defaultValueAttribute != null)
		{
			SetValue(component, defaultValueAttribute.Value);
		}
	}

	public override bool ShouldSerializeValue(object component)
	{
		return false;
	}
}
