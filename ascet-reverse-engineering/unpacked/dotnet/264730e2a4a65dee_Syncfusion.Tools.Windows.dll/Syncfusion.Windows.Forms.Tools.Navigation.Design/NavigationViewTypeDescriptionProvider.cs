using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools.Navigation.Design;

internal class NavigationViewTypeDescriptionProvider : TypeDescriptionProvider
{
	public NavigationViewTypeDescriptionProvider(Type type)
		: base(TypeDescriptor.GetProvider(type.BaseType))
	{
	}

	public NavigationViewTypeDescriptionProvider()
		: base(TypeDescriptor.GetProvider(typeof(NavigationView)))
	{
	}

	public override ICustomTypeDescriptor GetTypeDescriptor(Type objectType, object instance)
	{
		ICustomTypeDescriptor customTypeDescriptor = base.GetTypeDescriptor(objectType, instance);
		if (customTypeDescriptor != null)
		{
			customTypeDescriptor = new NavigationViewTypeDescriptor(customTypeDescriptor, (NavigationView)instance);
		}
		return customTypeDescriptor;
	}
}
