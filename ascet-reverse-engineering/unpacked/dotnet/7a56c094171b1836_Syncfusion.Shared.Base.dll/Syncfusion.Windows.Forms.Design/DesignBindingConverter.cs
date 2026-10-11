using System;
using System.ComponentModel;
using System.Globalization;

namespace Syncfusion.Windows.Forms.Design;

internal class DesignBindingConverter : TypeConverter
{
	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type sourceType)
	{
		DesignBinding designBinding = (DesignBinding)value;
		if (designBinding.IsNull)
		{
			return "Null";
		}
		string text = "";
		if (designBinding.DataSource is IComponent)
		{
			IComponent component = (IComponent)designBinding.DataSource;
			if (component.Site != null)
			{
				text = component.Site.Name;
			}
		}
		if (text.Length == 0)
		{
			text = "(List)";
		}
		return text + " - " + designBinding.DataMember;
	}

	public override object ConvertFrom(ITypeDescriptorContext context, CultureInfo culture, object value)
	{
		string text = (string)value;
		if (text == null || text.Length == 0 || string.Compare(text, "Null", ignoreCase: true) == 0)
		{
			return DesignBinding.Null;
		}
		int num = text.IndexOf("-");
		if (num == -1)
		{
			throw new ArgumentException("Couldn't parse binding string " + value);
		}
		string text2 = text.Substring(0, num - 1).Trim();
		string dataMember = text.Substring(num + 1).Trim();
		if (context == null || context.Container == null)
		{
			throw new ArgumentException("Context required to parse string " + text);
		}
		IComponent component = context.Container.Components[text2];
		if (component == null)
		{
			if (string.Compare(text2, "(List)", ignoreCase: true) == 0)
			{
				return null;
			}
			throw new ArgumentException("Can't find component " + text2);
		}
		return new DesignBinding(component, dataMember);
	}

	public override bool CanConvertTo(ITypeDescriptorContext context, Type sourceType)
	{
		return typeof(string) == sourceType;
	}

	public override bool CanConvertFrom(ITypeDescriptorContext context, Type destType)
	{
		return typeof(string) == destType;
	}
}
