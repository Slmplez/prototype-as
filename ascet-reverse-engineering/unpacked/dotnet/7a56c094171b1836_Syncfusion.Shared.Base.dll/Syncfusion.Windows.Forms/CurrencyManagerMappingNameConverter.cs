using System;
using System.Collections;
using System.ComponentModel;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class CurrencyManagerMappingNameConverter : TypeConverter
{
	private bool PropertyDescriptorIsARelation(PropertyDescriptor prop)
	{
		if (typeof(IList).IsAssignableFrom(prop.PropertyType))
		{
			return !typeof(Array).IsAssignableFrom(prop.PropertyType);
		}
		return false;
	}

	public override StandardValuesCollection GetStandardValues(ITypeDescriptorContext context)
	{
		if (context != null)
		{
			PropertyDescriptorCollection propertyDescriptorCollection = PropertyDescriptorCollection.Empty;
			CurrencyManager currencyManager = context.Instance as CurrencyManager;
			if (currencyManager == null)
			{
				if (context.Instance is ICurrencyManagerSource currencyManagerSource)
				{
					currencyManager = currencyManagerSource.GetCurrencyManager();
				}
				if (currencyManager != null)
				{
					propertyDescriptorCollection = currencyManager.GetItemProperties();
				}
				else if (context.Instance is IItemPropertiesSource itemPropertiesSource)
				{
					propertyDescriptorCollection = itemPropertiesSource.GetItemProperties();
				}
				else if (context.Instance is ITypedList)
				{
					propertyDescriptorCollection = ((ITypedList)context.Instance).GetItemProperties(null);
				}
			}
			if (propertyDescriptorCollection.Count > 0)
			{
				ArrayList arrayList = new ArrayList();
				int count = propertyDescriptorCollection.Count;
				for (int i = 0; i < count; i++)
				{
					PropertyDescriptor propertyDescriptor = propertyDescriptorCollection[i];
					if (propertyDescriptor.IsBrowsable && !PropertyDescriptorIsARelation(propertyDescriptor))
					{
						arrayList.Add(propertyDescriptor.Name);
					}
				}
				return new StandardValuesCollection(arrayList);
			}
		}
		return new StandardValuesCollection(new string[1] { "" });
	}

	public override bool GetStandardValuesExclusive(ITypeDescriptorContext context)
	{
		return false;
	}

	public override bool GetStandardValuesSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	public override bool CanConvertFrom(ITypeDescriptorContext context, Type sourceType)
	{
		if (sourceType == typeof(string))
		{
			return true;
		}
		return base.CanConvertFrom(context, sourceType);
	}

	public override object ConvertFrom(ITypeDescriptorContext context, CultureInfo culture, object value)
	{
		if (value is string)
		{
			return (string)value;
		}
		return base.ConvertFrom(context, culture, value);
	}
}
