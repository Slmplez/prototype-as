using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class AssociatedControlTypeConverter : ReferenceConverter
{
	public AssociatedControlTypeConverter(Type type)
		: base(type)
	{
	}

	protected override bool IsValueAllowed(ITypeDescriptorContext context, object value)
	{
		if (context != null && value != null)
		{
			object instance = context.Instance;
			if (instance != null && instance.GetType() != value.GetType())
			{
				IContainer container = context.Container;
				if (container != null)
				{
					ComponentCollection components = container.Components;
					if (components != null)
					{
						foreach (object item in components)
						{
							if (item == value)
							{
								return true;
							}
						}
					}
				}
			}
		}
		return false;
	}
}
