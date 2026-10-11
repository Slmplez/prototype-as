using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

internal class CustomDescriptor : PropertyDescriptor
{
	private PropertyDescriptor m_baseDescriptor;

	public override Type ComponentType => m_baseDescriptor.ComponentType;

	public override Type PropertyType => m_baseDescriptor.PropertyType;

	public override bool IsReadOnly => m_baseDescriptor.IsReadOnly;

	public override bool IsBrowsable => m_baseDescriptor.IsBrowsable;

	public CustomDescriptor(PropertyDescriptor baseDescriptor)
		: this(baseDescriptor, new Attribute[0])
	{
	}

	public CustomDescriptor(PropertyDescriptor baseDescriptor, Attribute[] attributes)
		: base(baseDescriptor, attributes)
	{
		m_baseDescriptor = baseDescriptor;
	}

	public override object GetValue(object component)
	{
		return m_baseDescriptor.GetValue(component);
	}

	public override void SetValue(object component, object value)
	{
		m_baseDescriptor.SetValue(component, value);
	}

	public override bool CanResetValue(object component)
	{
		return m_baseDescriptor.CanResetValue(component);
	}

	public override void ResetValue(object component)
	{
		m_baseDescriptor.ResetValue(component);
	}

	public override bool ShouldSerializeValue(object component)
	{
		return m_baseDescriptor.ShouldSerializeValue(component);
	}
}
