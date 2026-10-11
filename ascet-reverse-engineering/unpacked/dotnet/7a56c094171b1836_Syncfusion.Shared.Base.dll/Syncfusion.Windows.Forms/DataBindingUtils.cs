using System;
using System.Collections;
using System.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class DataBindingUtils
{
	public static PropertyDescriptorCollection AppendBindableProperties(PropertyDescriptorCollection originalList, IList lookupObjects)
	{
		ArrayList arrayList = new ArrayList();
		for (int i = 0; i < lookupObjects.Count; i++)
		{
			RetrieveBindableProperties(lookupObjects[i], arrayList);
		}
		PropertyDescriptor[] array = new PropertyDescriptor[originalList.Count + arrayList.Count];
		originalList.CopyTo(array, 0);
		arrayList.CopyTo(array, originalList.Count);
		return new PropertyDescriptorCollection(array);
	}

	public static PropertyDescriptorCollection AppendBindableProperties(PropertyDescriptorCollection originalList, object lookupObject)
	{
		ArrayList arrayList = new ArrayList();
		RetrieveBindableProperties(lookupObject, arrayList);
		PropertyDescriptor[] array = new PropertyDescriptor[originalList.Count + arrayList.Count];
		originalList.CopyTo(array, 0);
		arrayList.CopyTo(array, originalList.Count);
		return new PropertyDescriptorCollection(array);
	}

	public static void RetrieveBindableProperties(object lookupObject, ArrayList resultantList)
	{
		PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(lookupObject, null, noCustomTypeDesc: false);
		if (!(lookupObject is IDataBindingSupport))
		{
			throw new ArgumentException("Argument lookupObject should implement interface IDataBindingSupport.");
		}
		string propertyNamePrefix = ((IDataBindingSupport)lookupObject).PropertyNamePrefix;
		foreach (PropertyDescriptor item in properties)
		{
			if (!(item.Attributes[typeof(BindableAttribute)] is BindableAttribute { Bindable: not false }))
			{
				continue;
			}
			Attribute[] array = new Attribute[item.Attributes.Count + 2];
			int num = 0;
			bool flag = false;
			bool flag2 = false;
			foreach (Attribute attribute in item.Attributes)
			{
				if (attribute is BrowsableAttribute)
				{
					flag = true;
					array[num++] = new BrowsableAttribute(browsable: false);
				}
				else if (attribute is DesignerSerializationVisibilityAttribute)
				{
					flag2 = true;
					array[num++] = new DesignerSerializationVisibilityAttribute(DesignerSerializationVisibility.Hidden);
				}
				else
				{
					array[num++] = attribute;
				}
			}
			int num2 = array.Length;
			if (!flag)
			{
				array[num++] = new BrowsableAttribute(browsable: false);
			}
			else
			{
				num2--;
			}
			if (!flag2)
			{
				array[num++] = new DesignerSerializationVisibilityAttribute(DesignerSerializationVisibility.Hidden);
			}
			else
			{
				num2--;
			}
			Attribute[] array2 = new Attribute[num2];
			for (int i = 0; i < num2; i++)
			{
				array2[i] = array[i];
			}
			resultantList.Add(new PropertyDescriptorWrapper(propertyNamePrefix + "." + item.Name, item, array2, lookupObject));
		}
	}
}
