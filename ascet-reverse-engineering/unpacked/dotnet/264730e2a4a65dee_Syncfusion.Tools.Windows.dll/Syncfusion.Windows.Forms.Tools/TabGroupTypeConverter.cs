using System;
using System.Collections;
using System.ComponentModel;
using System.Globalization;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class TabGroupTypeConverter : TypeConverter
{
	private const string STR_NONE = "(none)";

	public override bool CanConvertFrom(ITypeDescriptorContext context, Type sourceType)
	{
		bool flag = sourceType == typeof(string);
		return flag | base.CanConvertFrom(context, sourceType);
	}

	public override object ConvertFrom(ITypeDescriptorContext context, CultureInfo culture, object value)
	{
		object result = null;
		if (value is string)
		{
			string text = ((string)value).Trim();
			if (text != "(none)" && context.Instance is ToolStripTabItem { Owner: RibbonControlAdvHeader owner })
			{
				foreach (ToolStripTabGroup group in owner.Groups)
				{
					if (group.Name == text)
					{
						result = group;
					}
				}
			}
		}
		else
		{
			result = base.ConvertFrom(context, culture, value);
		}
		return result;
	}

	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		object obj = null;
		if (destinationType == typeof(string))
		{
			if (value == null)
			{
				obj = "(none)";
			}
			else if (value is ToolStripTabGroup)
			{
				obj = ((ToolStripTabGroup)value).Name;
			}
		}
		if (obj == null)
		{
			obj = base.ConvertTo(context, culture, value, destinationType);
		}
		return obj;
	}

	public override StandardValuesCollection GetStandardValues(ITypeDescriptorContext context)
	{
		ArrayList arrayList = new ArrayList();
		arrayList.Add(null);
		if (context.Instance is ToolStripItem { Owner: RibbonControlAdvHeader owner })
		{
			foreach (ToolStripTabGroup group in owner.Groups)
			{
				arrayList.Add(group.Name);
			}
		}
		return new StandardValuesCollection(arrayList);
	}

	public override bool GetStandardValuesSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	public override bool GetStandardValuesExclusive(ITypeDescriptorContext context)
	{
		return true;
	}
}
