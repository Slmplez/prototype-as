using System;
using System.ComponentModel;

namespace Syncfusion.ComponentModel;

public class TypeDescriptorContext : ITypeDescriptorContext, IServiceProvider
{
	private object instance;

	private PropertyDescriptor propertyDescriptor;

	private IServiceProvider serviceProvider;

	object ITypeDescriptorContext.Instance => instance;

	PropertyDescriptor ITypeDescriptorContext.PropertyDescriptor => propertyDescriptor;

	IContainer ITypeDescriptorContext.Container => null;

	public IServiceProvider ServiceProvider
	{
		get
		{
			return serviceProvider;
		}
		set
		{
			if (value != serviceProvider)
			{
				serviceProvider = value;
			}
		}
	}

	public TypeDescriptorContext(object instance, PropertyDescriptor propertyDescriptor)
	{
		this.instance = instance;
		this.propertyDescriptor = propertyDescriptor;
	}

	void ITypeDescriptorContext.OnComponentChanged()
	{
	}

	bool ITypeDescriptorContext.OnComponentChanging()
	{
		return true;
	}

	object IServiceProvider.GetService(Type classService)
	{
		if (ServiceProvider != null)
		{
			return serviceProvider.GetService(classService);
		}
		return null;
	}
}
