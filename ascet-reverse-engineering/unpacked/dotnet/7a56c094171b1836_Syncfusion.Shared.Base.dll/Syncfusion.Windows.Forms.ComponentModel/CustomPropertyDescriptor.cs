using System;
using System.ComponentModel;
using System.Diagnostics;

namespace Syncfusion.Windows.Forms.ComponentModel;

public sealed class CustomPropertyDescriptor : PropertyDescriptorAdv
{
	private readonly PropertyDescriptor m_inner;

	private PropertyDescriptor InnerPropertyDescriptor
	{
		[DebuggerStepThrough]
		get
		{
			return m_inner;
		}
	}

	public CustomPropertyDescriptor(PropertyDescriptor inner, Attribute[] attributes)
		: base(inner?.ComponentType, inner?.Name, inner?.PropertyType, attributes)
	{
		if (inner == null)
		{
			throw new ArgumentNullException("inner");
		}
		m_inner = inner;
	}

	public override object GetValue(object component)
	{
		return InnerPropertyDescriptor.GetValue(component);
	}

	public override void SetValue(object component, object value)
	{
		InnerPropertyDescriptor.SetValue(component, value);
	}
}
