using System;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Drawing;
using System.Reflection;
using System.Xml;
using Syncfusion.Drawing;

namespace Syncfusion.Styles;

public class StyleInfoProperty
{
	public Type ComponentType;

	public Type PropertyType;

	public string PropertyName;

	public CreateSubObjectHandler CreateObject;

	public bool IsExpandable;

	public bool IsSerializable;

	public bool IsCloneable;

	public bool IsDisposable;

	public bool IsBrowsable = true;

	public bool IsAnyObject;

	public bool IsConvertibleToBase64;

	public SerializeXmlBehavior SerializeXmlBehavior;

	private PropertyInfo propertyInfo;

	public int DataVectorIndex = -1;

	public BitVector32.Section DataVectorSection;

	public short MaxValue;

	public int ObjectStoreKey = -1;

	public int ExpandableObjectStoreKey = -1;

	public int PropertyKey = -1;

	public int BitVectorMask = -1;

	public int BitVectorIndex;

	public int Index = -1;

	private static int currentKey;

	public event StyleInfoPropertyConvertEventHandler Parse;

	public event StyleInfoPropertyConvertEventHandler Format;

	public event StyleInfoPropertyWriteXmlEventHandler WriteXml;

	public event StyleInfoPropertyReadXmlEventHandler ReadXml;

	public PropertyInfo GetPropertyInfo()
	{
		if (propertyInfo == null && ComponentType != null)
		{
			propertyInfo = ComponentType.GetProperty(PropertyName);
		}
		return propertyInfo;
	}

	internal StyleInfoProperty(Type type, string name, short maxValue, Type componentType)
	{
		PropertyType = type;
		PropertyName = name;
		MaxValue = maxValue;
		IsExpandable = !type.IsPrimitive && typeof(IStyleInfo).IsAssignableFrom(type);
		ComponentType = componentType;
		PropertyKey = CreatePropertyKey();
	}

	private int CreatePropertyKey()
	{
		return currentKey++;
	}

	public override string ToString()
	{
		if (PropertyName != null && PropertyType != null)
		{
			return GetType().Name + " { " + PropertyName + " (" + PropertyType.Name + ") }";
		}
		return base.ToString();
	}

	public string FormatValue(object value)
	{
		if (this.Format != null)
		{
			StyleInfoPropertyConvertEventArgs e = new StyleInfoPropertyConvertEventArgs(value, typeof(string));
			this.Format(this, e);
			if (e.Handled)
			{
				return e.Value.ToString();
			}
		}
		if (IsAnyObject)
		{
			return ValueConvert.FormatValueWithTypeInformation(value, IsConvertibleToBase64);
		}
		if (value == null)
		{
			return "";
		}
		if (PropertyType.IsEnum)
		{
			if (value is int)
			{
				return Enum.Format(PropertyType, (int)value, "G");
			}
			if (value is Enum)
			{
				return Enum.Format(PropertyType, (Enum)value, "G");
			}
			return Enum.Format(PropertyType, (int)(short)value, "G");
		}
		if (PropertyType == typeof(bool))
		{
			return Convert.ToString(Convert.ToBoolean(value));
		}
		if (PropertyType == typeof(string))
		{
			return "\"" + value.ToString() + "\"";
		}
		if (PropertyType == typeof(Color))
		{
			return ColorConvert.ColorToString((Color)value, writeName: true);
		}
		return value.ToString();
	}

	public object ParseValue(string s)
	{
		if (this.Parse != null)
		{
			StyleInfoPropertyConvertEventArgs e = new StyleInfoPropertyConvertEventArgs(s, PropertyType);
			this.Parse(this, e);
			if (e.Handled)
			{
				return e.Value;
			}
		}
		if (IsAnyObject)
		{
			string valueAsString = ((s != null) ? s.Trim() : "");
			if (ValueConvert.ParseValueWithTypeInformation(valueAsString, out var retVal, IsConvertibleToBase64))
			{
				return retVal;
			}
		}
		return ParseValue(s, PropertyType, null);
	}

	public static object ParseValue(string s, Type resultType, IFormatProvider provider)
	{
		if (s == null || s.Length == 0)
		{
			return Convert.DBNull;
		}
		if (resultType == typeof(string))
		{
			if (s.Length >= 2 && s.StartsWith("\"") && s.EndsWith("\""))
			{
				if (s.Length <= 2)
				{
					return "";
				}
				return s.Substring(1, s.Length - 2);
			}
			return s;
		}
		if (resultType == typeof(Type))
		{
			return Type.GetType(s);
		}
		MethodInfo method = resultType.GetMethod("Parse", new Type[2]
		{
			typeof(string),
			typeof(IFormatProvider)
		});
		if (method != null)
		{
			if (resultType.FullName == "System.Double" && s == "NaN")
			{
				return double.NaN;
			}
			return method.Invoke(null, new object[2] { s, provider });
		}
		TypeConverter converter = TypeDescriptor.GetConverter(resultType);
		if (converter != null && converter.CanConvertFrom(typeof(string)))
		{
			return converter.ConvertFrom(s);
		}
		return Convert.DBNull;
	}

	internal bool ProcessWriteXml(XmlWriter writer, StyleInfoStore store)
	{
		if (this.WriteXml != null)
		{
			StyleInfoPropertyWriteXmlEventArgs e = new StyleInfoPropertyWriteXmlEventArgs(writer, store, this);
			this.WriteXml(this, e);
			return e.Handled;
		}
		return false;
	}

	internal bool ProcessReadXml(XmlReader reader, StyleInfoStore store)
	{
		if (this.ReadXml != null)
		{
			StyleInfoPropertyReadXmlEventArgs e = new StyleInfoPropertyReadXmlEventArgs(reader, store, this);
			this.ReadXml(this, e);
			return e.Handled;
		}
		return false;
	}
}
