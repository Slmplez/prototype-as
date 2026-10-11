using System;
using System.Collections;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.ComponentModel;

public abstract class CustomPropertiesTypeConverter : TypeConverter
{
	protected static readonly Attribute[] EmptyAttributes = new Attribute[0];

	protected abstract Attribute[] GetPropertyAttributes(Component component, PropertyDescriptor property);

	public override bool GetPropertiesSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	public override PropertyDescriptorCollection GetProperties(ITypeDescriptorContext context, object value, Attribute[] filter)
	{
		if (value != null)
		{
			Component component = (Component)value;
			PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(value, noCustomTypeDesc: true);
			ArrayList arrayList = new ArrayList(properties.Count);
			foreach (PropertyDescriptor item in properties)
			{
				Attribute[] propertyAttributes = GetPropertyAttributes(component, item);
				AttributeCollection attributeCollection = FromExisting(item.Attributes, propertyAttributes);
				if (attributeCollection.Contains(filter))
				{
					Attribute[] array = new Attribute[attributeCollection.Count];
					attributeCollection.CopyTo(array, 0);
					arrayList.Add(new CustomPropertyDescriptor(item, array));
				}
			}
			PropertyDescriptor[] properties2 = (PropertyDescriptor[])arrayList.ToArray(typeof(PropertyDescriptor));
			return new PropertyDescriptorCollection(properties2);
		}
		return TypeDescriptor.GetProperties(typeof(Component), filter, noCustomTypeDesc: true);
	}

	private AttributeCollection FromExisting(AttributeCollection existing, params Attribute[] newAttributes)
	{
		if (existing == null)
		{
			throw new ArgumentNullException("existing");
		}
		if (newAttributes == null)
		{
			newAttributes = new Attribute[0];
		}
		Attribute[] array = new Attribute[existing.Count + newAttributes.Length];
		int count = existing.Count;
		existing.CopyTo(array, 0);
		for (int i = 0; i < newAttributes.Length; i++)
		{
			if (newAttributes[i] == null)
			{
				throw new ArgumentNullException("newAttributes");
			}
			bool flag = false;
			for (int j = 0; j < existing.Count; j++)
			{
				if (array[j].TypeId.Equals(newAttributes[i].TypeId))
				{
					flag = true;
					array[j] = newAttributes[i];
					break;
				}
			}
			if (!flag)
			{
				array[count++] = newAttributes[i];
			}
		}
		Attribute[] array2 = null;
		if (count < array.Length)
		{
			array2 = new Attribute[count];
			Array.Copy(array, 0, array2, 0, count);
		}
		else
		{
			array2 = array;
		}
		return new AttributeCollection(array2);
	}
}
