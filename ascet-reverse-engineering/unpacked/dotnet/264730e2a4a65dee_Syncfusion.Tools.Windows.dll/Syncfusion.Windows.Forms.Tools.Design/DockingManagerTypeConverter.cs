using System;
using System.Collections;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class DockingManagerTypeConverter : TypeConverter
{
	public override PropertyDescriptorCollection GetProperties(ITypeDescriptorContext context, object value, Attribute[] attributes)
	{
		PropertyDescriptorCollection propertyDescriptorCollection = TypeDescriptor.GetProperties(typeof(DockingManager), attributes);
		if (context != null && context.Instance is DockingManager)
		{
			try
			{
				ArrayList arrayList = new ArrayList();
				for (int i = 0; i < propertyDescriptorCollection.Count; i++)
				{
					if (propertyDescriptorCollection[i].DisplayName != "PersistState")
					{
						arrayList.Add(propertyDescriptorCollection[i]);
					}
				}
				propertyDescriptorCollection = new PropertyDescriptorCollection(arrayList.ToArray(typeof(PropertyDescriptor)) as PropertyDescriptor[]);
			}
			catch
			{
			}
		}
		return propertyDescriptorCollection;
	}
}
