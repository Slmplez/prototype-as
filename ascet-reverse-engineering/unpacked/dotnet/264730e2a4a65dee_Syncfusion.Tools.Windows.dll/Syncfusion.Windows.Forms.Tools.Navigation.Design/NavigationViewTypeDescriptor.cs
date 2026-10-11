using System;
using System.Collections.Generic;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools.Navigation.Design;

internal class NavigationViewTypeDescriptor : CustomTypeDescriptor
{
	private NavigationView _instance;

	public NavigationViewTypeDescriptor(ICustomTypeDescriptor parent, NavigationView instance)
		: base(parent)
	{
		_instance = instance;
	}

	public NavigationViewTypeDescriptor(ICustomTypeDescriptor parent)
		: base(parent)
	{
	}

	public NavigationViewTypeDescriptor()
	{
	}

	public override PropertyDescriptorCollection GetProperties(Attribute[] attributes)
	{
		PropertyDescriptorCollection properties = base.GetProperties(attributes);
		return FilterProperties(properties);
	}

	public override PropertyDescriptorCollection GetProperties()
	{
		PropertyDescriptorCollection properties = base.GetProperties();
		return FilterProperties(properties);
	}

	private PropertyDescriptorCollection FilterProperties(PropertyDescriptorCollection baseProps)
	{
		PropertyDescriptorCollection result = baseProps;
		if (_instance != null && _instance.VisualStyle == VisualStyles.Vista)
		{
			List<PropertyDescriptor> list = new List<PropertyDescriptor>(baseProps.Count);
			foreach (PropertyDescriptor baseProp in baseProps)
			{
				if (baseProp.Name != "BorderColor" && baseProp.Name != "Office2007ColorTheme")
				{
					list.Add(baseProp);
				}
			}
			result = new PropertyDescriptorCollection(list.ToArray());
		}
		return result;
	}
}
