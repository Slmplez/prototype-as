using System;
using System.Collections;
using System.ComponentModel;
using System.Diagnostics;

namespace Syncfusion.Windows.Forms.Tools;

public abstract class CustomPropertiesTypeConverter : ReferenceConverter
{
	private sealed class CustomPropertyDescriptor : SimplePropertyDescriptor
	{
		private readonly PropertyDescriptor inner;

		private PropertyDescriptor InnerPropertyDescriptor
		{
			[DebuggerStepThrough]
			get
			{
				return inner;
			}
		}

		public CustomPropertyDescriptor(PropertyDescriptor inner, Attribute[] attributes)
			: base(inner?.ComponentType, inner?.Name, inner?.PropertyType, attributes)
		{
			if (inner == null)
			{
				throw new ArgumentNullException("inner");
			}
			this.inner = inner;
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

	protected static readonly Attribute[] EmptyAttributes = new Attribute[0];

	protected CustomPropertiesTypeConverter()
		: base(typeof(TextBoxExt))
	{
	}

	protected abstract Attribute[] GetPropertyAttributes(TextBoxExt component, PropertyDescriptor property);

	public AttributeCollection GetExistingCollection(AttributeCollection existing, params Attribute[] newAttributes)
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

	public override bool GetPropertiesSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	public override PropertyDescriptorCollection GetProperties(ITypeDescriptorContext context, object value, Attribute[] filter)
	{
		if (value != null)
		{
			TextBoxExt component = value as TextBoxExt;
			PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(value, noCustomTypeDesc: true);
			ArrayList arrayList = new ArrayList(properties.Count);
			foreach (PropertyDescriptor item in properties)
			{
				Attribute[] propertyAttributes = GetPropertyAttributes(component, item);
				AttributeCollection existingCollection = GetExistingCollection(item.Attributes, propertyAttributes);
				if (existingCollection.Contains(filter))
				{
					Attribute[] array = new Attribute[existingCollection.Count];
					existingCollection.CopyTo(array, 0);
					arrayList.Add(new CustomPropertyDescriptor(item, array));
				}
			}
			PropertyDescriptor[] array2 = new PropertyDescriptor[arrayList.Count];
			arrayList.CopyTo(array2);
			return new PropertyDescriptorCollection(array2);
		}
		return TypeDescriptor.GetProperties(typeof(TextBoxExt), filter, noCustomTypeDesc: true);
	}
}
