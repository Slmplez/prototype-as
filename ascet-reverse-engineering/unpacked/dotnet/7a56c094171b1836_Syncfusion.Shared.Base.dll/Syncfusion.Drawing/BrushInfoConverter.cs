using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Globalization;

namespace Syncfusion.Drawing;

public sealed class BrushInfoConverter : TypeConverter
{
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
			string s = (string)value;
			return BrushInfo.Parse(s);
		}
		return base.ConvertFrom(context, culture, value);
	}

	public override object CreateInstance(ITypeDescriptorContext context, IDictionary propertyValues)
	{
		Color color = Color.Empty;
		Color color2 = Color.Empty;
		PatternStyle patternStyle = PatternStyle.None;
		GradientStyle gradientStyle = GradientStyle.None;
		BrushStyle brushStyle = BrushStyle.None;
		BrushInfoColorArrayList brushInfoColorArrayList = null;
		if (propertyValues.Contains("Style"))
		{
			brushStyle = (BrushStyle)propertyValues["Style"];
		}
		if (propertyValues.Contains("PatternStyle"))
		{
			patternStyle = (PatternStyle)propertyValues["PatternStyle"];
		}
		if (propertyValues.Contains("GradientStyle"))
		{
			gradientStyle = (GradientStyle)propertyValues["GradientStyle"];
		}
		if (propertyValues.Contains("BackColor"))
		{
			color2 = (Color)propertyValues["BackColor"];
		}
		if (propertyValues.Contains("ForeColor"))
		{
			color = (Color)propertyValues["ForeColor"];
		}
		if (propertyValues.Contains("GradientColors"))
		{
			BrushInfoColorArrayList brushInfoColorArrayList2 = (BrushInfoColorArrayList)propertyValues["GradientColors"];
			brushInfoColorArrayList = new BrushInfoColorArrayList();
			foreach (Color item in brushInfoColorArrayList2)
			{
				brushInfoColorArrayList.Add(item);
			}
			while (brushInfoColorArrayList.Count < 2)
			{
				brushInfoColorArrayList.Add(Color.Empty);
			}
			Color empty = Color.Empty;
			Color empty2 = Color.Empty;
			BrushInfo brushInfo = context.PropertyDescriptor.GetValue(context.Instance) as BrushInfo;
			if (brushInfo != null)
			{
				empty2 = brushInfo.BackColor;
				empty = brushInfo.ForeColor;
				if (color2 != empty2)
				{
					brushInfoColorArrayList[0] = color2;
				}
				if (color != empty)
				{
					brushInfoColorArrayList[brushInfoColorArrayList.Count - 1] = color;
				}
			}
		}
		else
		{
			brushInfoColorArrayList = new BrushInfoColorArrayList();
			brushInfoColorArrayList.Add(color2);
			brushInfoColorArrayList.Add(color);
		}
		if (context != null && (brushStyle == BrushStyle.Solid || brushStyle == BrushStyle.None))
		{
			object value = context.PropertyDescriptor.GetValue(context.Instance);
			if (value is BrushInfo)
			{
				BrushInfo brushInfo2 = (BrushInfo)value;
				if (brushInfo2.Style == brushStyle)
				{
					if (patternStyle != PatternStyle.None)
					{
						brushStyle = BrushStyle.Pattern;
					}
					else if (gradientStyle != GradientStyle.None)
					{
						brushStyle = BrushStyle.Gradient;
					}
					else if (!color2.IsEmpty && color != brushInfo2.BackColor)
					{
						brushStyle = BrushStyle.Solid;
					}
				}
			}
		}
		BrushInfo result = null;
		switch (brushStyle)
		{
		case BrushStyle.None:
			result = new BrushInfo();
			break;
		case BrushStyle.Solid:
			result = new BrushInfo(color2);
			break;
		case BrushStyle.Pattern:
			result = new BrushInfo(patternStyle, brushInfoColorArrayList);
			break;
		case BrushStyle.Gradient:
			result = new BrushInfo(gradientStyle, brushInfoColorArrayList);
			break;
		}
		return result;
	}

	public override bool GetCreateInstanceSupported(ITypeDescriptorContext context)
	{
		return true;
	}

	public override PropertyDescriptorCollection GetProperties(ITypeDescriptorContext context, object value, Attribute[] attributes)
	{
		PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(typeof(BrushInfo), attributes);
		string[] names = new string[6] { "Style", "BackColor", "ForeColor", "PatternStyle", "GradientStyle", "GradientColors" };
		if (context != null)
		{
			PropertyDescriptor[] properties2 = null;
			BrushStyle brushStyle = BrushStyle.None;
			if (value is BrushInfo)
			{
				brushStyle = ((BrushInfo)value).Style;
			}
			switch (brushStyle)
			{
			case BrushStyle.None:
				properties2 = new PropertyDescriptor[5]
				{
					properties.Find("Style", ignoreCase: false),
					properties.Find("BackColor", ignoreCase: false),
					properties.Find("ForeColor", ignoreCase: false),
					properties.Find("PatternStyle", ignoreCase: false),
					properties.Find("GradientColors", ignoreCase: false)
				};
				break;
			case BrushStyle.Solid:
				properties2 = new PropertyDescriptor[5]
				{
					properties.Find("Style", ignoreCase: false),
					properties.Find("BackColor", ignoreCase: false),
					properties.Find("ForeColor", ignoreCase: false),
					properties.Find("PatternStyle", ignoreCase: false),
					properties.Find("GradientColors", ignoreCase: false)
				};
				break;
			case BrushStyle.Pattern:
				properties2 = new PropertyDescriptor[5]
				{
					properties.Find("Style", ignoreCase: false),
					properties.Find("BackColor", ignoreCase: false),
					properties.Find("ForeColor", ignoreCase: false),
					properties.Find("PatternStyle", ignoreCase: false),
					properties.Find("GradientColors", ignoreCase: false)
				};
				break;
			case BrushStyle.Gradient:
				properties2 = new PropertyDescriptor[5]
				{
					properties.Find("Style", ignoreCase: false),
					properties.Find("BackColor", ignoreCase: false),
					properties.Find("ForeColor", ignoreCase: false),
					properties.Find("GradientStyle", ignoreCase: false),
					properties.Find("GradientColors", ignoreCase: false)
				};
				break;
			}
			return new PropertyDescriptorCollection(properties2).Sort(names);
		}
		return properties.Sort(names);
	}

	public override bool GetPropertiesSupported(ITypeDescriptorContext context)
	{
		return true;
	}
}
