using System;
using System.ComponentModel;
using System.Xml.Serialization;
using Syncfusion.Documentation;

namespace Syncfusion.Design;

[DocumentationExclude]
public abstract class ShouldSerializeBasedPersisterType : ICustomTypeDescriptor
{
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DocumentationExclude]
	[XmlIgnore]
	[Browsable(false)]
	public virtual bool CheckAllProperties => false;

	public ShouldSerializeBasedPersisterType()
	{
	}

	protected virtual int GetNewAttributesCount(PropertyDescriptor curPD)
	{
		return 0;
	}

	protected virtual void AddNewAttributes(PropertyDescriptor curPD, ref Attribute[] atts, int startIndex)
	{
	}

	protected virtual PropertyDescriptorCollection GetCustomPDC(PropertyDescriptorCollection baseprops)
	{
		PropertyDescriptor[] array = new PropertyDescriptor[baseprops.Count];
		int num = -1;
		foreach (PropertyDescriptor baseprop in baseprops)
		{
			num++;
			if (CheckAllProperties || baseprop.Attributes[typeof(UseShouldSerializeAttribute)] != null)
			{
				Attribute[] atts = new Attribute[baseprop.Attributes.Count + GetNewAttributesCount(baseprop)];
				baseprop.Attributes.CopyTo(atts, 0);
				AddNewAttributes(baseprop, ref atts, baseprop.Attributes.Count);
				ShouldSerializeCheckingPropertyDescriptor shouldSerializeCheckingPropertyDescriptor = new ShouldSerializeCheckingPropertyDescriptor(baseprop, atts);
				array[num] = shouldSerializeCheckingPropertyDescriptor;
			}
			else
			{
				array[num] = baseprop;
			}
		}
		return new PropertyDescriptorCollection(array);
	}

	PropertyDescriptorCollection ICustomTypeDescriptor.GetProperties()
	{
		if (!DesignerPersistance.IsPersisting)
		{
			return TypeDescriptor.GetProperties(this, noCustomTypeDesc: true);
		}
		PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(this, noCustomTypeDesc: true);
		return GetCustomPDC(properties);
	}

	PropertyDescriptorCollection ICustomTypeDescriptor.GetProperties(Attribute[] attributes)
	{
		if (!DesignerPersistance.IsPersisting)
		{
			return TypeDescriptor.GetProperties(this, attributes, noCustomTypeDesc: true);
		}
		PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(this, attributes, noCustomTypeDesc: true);
		return GetCustomPDC(properties);
	}

	AttributeCollection ICustomTypeDescriptor.GetAttributes()
	{
		return TypeDescriptor.GetAttributes(this, noCustomTypeDesc: true);
	}

	string ICustomTypeDescriptor.GetClassName()
	{
		return TypeDescriptor.GetClassName(this, noCustomTypeDesc: true);
	}

	string ICustomTypeDescriptor.GetComponentName()
	{
		return TypeDescriptor.GetComponentName(this, noCustomTypeDesc: true);
	}

	TypeConverter ICustomTypeDescriptor.GetConverter()
	{
		return TypeDescriptor.GetConverter(this, noCustomTypeDesc: true);
	}

	EventDescriptor ICustomTypeDescriptor.GetDefaultEvent()
	{
		return TypeDescriptor.GetDefaultEvent(this, noCustomTypeDesc: true);
	}

	EventDescriptorCollection ICustomTypeDescriptor.GetEvents(Attribute[] attributes)
	{
		return TypeDescriptor.GetEvents(this, attributes, noCustomTypeDesc: true);
	}

	EventDescriptorCollection ICustomTypeDescriptor.GetEvents()
	{
		return TypeDescriptor.GetEvents(this, noCustomTypeDesc: true);
	}

	PropertyDescriptor ICustomTypeDescriptor.GetDefaultProperty()
	{
		return TypeDescriptor.GetDefaultProperty(this, noCustomTypeDesc: true);
	}

	object ICustomTypeDescriptor.GetEditor(Type editorBaseType)
	{
		return TypeDescriptor.GetEditor(this, editorBaseType, noCustomTypeDesc: true);
	}

	object ICustomTypeDescriptor.GetPropertyOwner(PropertyDescriptor pd)
	{
		return this;
	}
}
