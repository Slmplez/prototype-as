using System;
using System.Collections;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

public class MonthCalendarAdvConverter : ExpandableObjectConverter
{
	public override PropertyDescriptorCollection GetProperties(ITypeDescriptorContext context, object value, Attribute[] attributes)
	{
		if (context != null && context.Instance is DateTimePickerAdv)
		{
			PropertyDescriptorCollection propertyDescriptorCollection = TypeDescriptor.GetProperties(typeof(MonthCalendarAdv), attributes);
			if (((DateTimePickerAdv)context.Instance).Calendar.DateTimePickerCalendar)
			{
				try
				{
					ArrayList arrayList = new ArrayList();
					for (int i = 0; i < propertyDescriptorCollection.Count; i++)
					{
						if (propertyDescriptorCollection[i].DisplayName != "AllowSelection" && propertyDescriptorCollection[i].DisplayName != "Culture" && propertyDescriptorCollection[i].DisplayName != "SizeToFit")
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
		return base.GetProperties(context, value, attributes);
	}

	public override bool GetPropertiesSupported(ITypeDescriptorContext context)
	{
		return true;
	}
}
