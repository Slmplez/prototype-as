using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design.Serialization;
using System.Drawing;
using System.Globalization;
using System.Reflection;

namespace Syncfusion.Windows.Forms.Grid;

public class GridBorderConverter : TypeConverter
{
	public override bool CanConvertTo(ITypeDescriptorContext context, Type destinationType)
	{
		if (destinationType == typeof(InstanceDescriptor))
		{
			return true;
		}
		return base.CanConvertTo(context, destinationType);
	}

	public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
	{
		if (destinationType == typeof(InstanceDescriptor) && value is GridBorder)
		{
			GridBorder gridBorder = value as GridBorder;
			ConstructorInfo constructor = typeof(GridBorder).GetConstructor(new Type[3]
			{
				typeof(GridBorderStyle),
				typeof(Color),
				typeof(GridBorderWeight)
			});
			return new InstanceDescriptor(constructor, new object[3] { gridBorder.Style, gridBorder.Color, gridBorder.Weight }, isComplete: false);
		}
		return base.ConvertTo(context, culture, value, destinationType);
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
			string parseStr = (string)value;
			return GridBorder.Parse(parseStr);
		}
		return base.ConvertFrom(context, culture, value);
	}

	public override object CreateInstance(ITypeDescriptorContext context, IDictionary propertyValues)
	{
		Color color = Color.Black;
		GridBorderStyle gridBorderStyle = GridBorderStyle.NotSet;
		GridBorderWeight weight = GridBorderWeight.Thin;
		if (propertyValues.Contains("Style"))
		{
			gridBorderStyle = (GridBorderStyle)propertyValues["Style"];
		}
		if (propertyValues.Contains("Weight"))
		{
			weight = (GridBorderWeight)propertyValues["Weight"];
		}
		if (propertyValues.Contains("Color"))
		{
			color = (Color)propertyValues["Color"];
		}
		if (context != null && (gridBorderStyle == GridBorderStyle.NotSet || gridBorderStyle == GridBorderStyle.None || gridBorderStyle == GridBorderStyle.Standard))
		{
			object value = context.PropertyDescriptor.GetValue(context.Instance);
			if (value is GridBorder)
			{
				GridBorder gridBorder = (GridBorder)value;
				if (gridBorder.Style == gridBorderStyle)
				{
					gridBorderStyle = GridBorderStyle.Solid;
				}
			}
		}
		if (gridBorderStyle != GridBorderStyle.NotSet && gridBorderStyle != GridBorderStyle.None && gridBorderStyle != GridBorderStyle.Standard && color == Color.Empty)
		{
			color = SystemColors.WindowFrame;
		}
		return new GridBorder(gridBorderStyle, color, weight);
	}

	public override bool GetCreateInstanceSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	public override PropertyDescriptorCollection GetProperties(ITypeDescriptorContext context, object value, Attribute[] attributes)
	{
		PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(typeof(GridBorder), attributes);
		string[] names = new string[3] { "Style", "Color", "Weight" };
		return properties.Sort(names);
	}

	public override bool GetPropertiesSupported(ITypeDescriptorContext context)
	{
		return true;
	}
}
