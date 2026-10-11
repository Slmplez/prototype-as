using System;
using System.ComponentModel;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class OfficeButtonTypeDescriptionProvider : TypeDescriptionProvider
{
	private class OfficeButtonTypeDescriptor : ICustomTypeDescriptor
	{
		private ICustomTypeDescriptor m_baseDescriptor;

		public OfficeButtonTypeDescriptor(ICustomTypeDescriptor baseDescriptor)
		{
			m_baseDescriptor = baseDescriptor;
		}

		AttributeCollection ICustomTypeDescriptor.GetAttributes()
		{
			AttributeCollection attributes = m_baseDescriptor.GetAttributes();
			Attribute[] array = new Attribute[attributes.Count];
			attributes.CopyTo(array, 0);
			for (int i = 0; i < array.Length; i++)
			{
				if (array[i] is ToolStripItemDesignerAvailabilityAttribute)
				{
					array[i] = new ToolStripItemDesignerAvailabilityAttribute(ToolStripItemDesignerAvailability.ToolStrip);
				}
			}
			return new AttributeCollection(array);
		}

		string ICustomTypeDescriptor.GetClassName()
		{
			return m_baseDescriptor.GetClassName();
		}

		string ICustomTypeDescriptor.GetComponentName()
		{
			return m_baseDescriptor.GetComponentName();
		}

		TypeConverter ICustomTypeDescriptor.GetConverter()
		{
			return m_baseDescriptor.GetConverter();
		}

		EventDescriptor ICustomTypeDescriptor.GetDefaultEvent()
		{
			return m_baseDescriptor.GetDefaultEvent();
		}

		PropertyDescriptor ICustomTypeDescriptor.GetDefaultProperty()
		{
			return m_baseDescriptor.GetDefaultProperty();
		}

		object ICustomTypeDescriptor.GetEditor(Type editorBaseType)
		{
			return m_baseDescriptor.GetEditor(editorBaseType);
		}

		EventDescriptorCollection ICustomTypeDescriptor.GetEvents(Attribute[] attributes)
		{
			return m_baseDescriptor.GetEvents(attributes);
		}

		EventDescriptorCollection ICustomTypeDescriptor.GetEvents()
		{
			return m_baseDescriptor.GetEvents();
		}

		PropertyDescriptorCollection ICustomTypeDescriptor.GetProperties(Attribute[] attributes)
		{
			return m_baseDescriptor.GetProperties(attributes);
		}

		PropertyDescriptorCollection ICustomTypeDescriptor.GetProperties()
		{
			return m_baseDescriptor.GetProperties();
		}

		object ICustomTypeDescriptor.GetPropertyOwner(PropertyDescriptor pd)
		{
			return m_baseDescriptor.GetPropertyOwner(pd);
		}
	}

	public OfficeButtonTypeDescriptionProvider(Type type)
		: base(TypeDescriptor.GetProvider(type.BaseType))
	{
	}

	public override ICustomTypeDescriptor GetTypeDescriptor(Type objectType, object instance)
	{
		ICustomTypeDescriptor customTypeDescriptor = base.GetTypeDescriptor(objectType, instance);
		if (customTypeDescriptor != null)
		{
			customTypeDescriptor = new OfficeButtonTypeDescriptor(customTypeDescriptor);
		}
		return customTypeDescriptor;
	}
}
