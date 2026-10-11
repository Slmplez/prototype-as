using System;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Design;

public class ControlBindingsConverter : TypeConverter
{
	public override bool GetPropertiesSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	public override PropertyDescriptorCollection GetProperties(ITypeDescriptorContext context, object value, Attribute[] attributes)
	{
		if (value is ControlBindingsCollection)
		{
			if (!(context.Instance is IDataBindingSupport))
			{
				throw new ArgumentException("The ControlBindingsConverter attribute can only be applied to properties in classes that implement IDataBindingSupport.");
			}
			ControlBindingsCollection component = value as ControlBindingsCollection;
			if (context != null && context.Instance != null)
			{
				PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(context.Instance, null);
				ArrayList arrayList = new ArrayList();
				for (int i = 0; i < properties.Count; i++)
				{
					IDataBindingSupport dataBindingSupport = context.Instance as IDataBindingSupport;
					DesignBindingPropertyDescriptor designBindingPropertyDescriptor = new DesignBindingPropertyDescriptor(attrs: new Attribute[2]
					{
						new BrowsableAttribute(browsable: false),
						new DesignerSerializationVisibilityAttribute(DesignerSerializationVisibility.Hidden)
					}, name: dataBindingSupport.PropertyNamePrefix + "." + properties[i].Name, displayName: properties[i].Name, property: properties[i]);
					if (((BindableAttribute)properties[i].Attributes[typeof(BindableAttribute)]).Bindable || !((DesignBinding)designBindingPropertyDescriptor.GetValue(component)).IsNull)
					{
						arrayList.Add(designBindingPropertyDescriptor);
					}
				}
				PropertyDescriptor[] array = new PropertyDescriptor[arrayList.Count];
				arrayList.CopyTo(array, 0);
				return new PropertyDescriptorCollection(array);
			}
		}
		return new PropertyDescriptorCollection(new PropertyDescriptor[0]);
	}
}
