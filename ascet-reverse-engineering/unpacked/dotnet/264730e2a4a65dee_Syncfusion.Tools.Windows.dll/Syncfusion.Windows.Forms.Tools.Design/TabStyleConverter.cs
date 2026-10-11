using System;
using System.Collections;
using System.ComponentModel;
using System.Globalization;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.Design;

[DocumentationExclude]
public class TabStyleConverter : StringConverter
{
	public override bool GetStandardValuesSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	public override StandardValuesCollection GetStandardValues(ITypeDescriptorContext context)
	{
		ArrayList registeredRenderers = TabRendererFactory.GetRegisteredRenderers(forDesignTime: true);
		return new StandardValuesCollection(registeredRenderers);
	}

	public override bool GetStandardValuesExclusive(ITypeDescriptorContext context)
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

	public override bool CanConvertTo(ITypeDescriptorContext context, Type destinationType)
	{
		if (destinationType == typeof(string))
		{
			return true;
		}
		return base.CanConvertTo(context, destinationType);
	}

	public override object ConvertFrom(ITypeDescriptorContext context, CultureInfo culture, object value)
	{
		if (value is string)
		{
			return ReflectionHelper.GetTabTypeFromName((string)value);
		}
		return base.ConvertFrom(context, culture, value);
	}

	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (destinationType == typeof(string) && value is Type)
		{
			return ReflectionHelper.GetTabNameFromType((Type)value);
		}
		return base.ConvertTo(context, culture, value, destinationType);
	}
}
