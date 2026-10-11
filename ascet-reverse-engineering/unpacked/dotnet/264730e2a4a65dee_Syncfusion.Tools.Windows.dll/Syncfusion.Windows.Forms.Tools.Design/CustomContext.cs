using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal abstract class CustomContext : ITypeDescriptorContext, IServiceProvider
{
	private ITypeDescriptorContext m_baseContext;

	IContainer ITypeDescriptorContext.Container
	{
		get
		{
			if (m_baseContext != null)
			{
				return m_baseContext.Container;
			}
			return null;
		}
	}

	object ITypeDescriptorContext.Instance => Instance;

	PropertyDescriptor ITypeDescriptorContext.PropertyDescriptor
	{
		get
		{
			if (m_baseContext != null)
			{
				return m_baseContext.PropertyDescriptor;
			}
			return null;
		}
	}

	protected abstract object Instance { get; }

	protected ITypeDescriptorContext BaseContext => m_baseContext;

	public CustomContext(ITypeDescriptorContext baseContext)
	{
		m_baseContext = baseContext;
	}

	void ITypeDescriptorContext.OnComponentChanged()
	{
		if (m_baseContext != null)
		{
			m_baseContext.OnComponentChanged();
		}
	}

	bool ITypeDescriptorContext.OnComponentChanging()
	{
		if (m_baseContext != null)
		{
			return m_baseContext.OnComponentChanging();
		}
		return false;
	}

	object IServiceProvider.GetService(Type serviceType)
	{
		if (m_baseContext != null)
		{
			return m_baseContext.GetService(serviceType);
		}
		return null;
	}
}
