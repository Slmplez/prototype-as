using System;
using System.Reflection;
using System.Xml.Serialization;

namespace Syncfusion.XmlSerializersCreator;

public class SerializersManager
{
	public static XmlSerializer GetSerializer(Type type)
	{
		string text = type.Name;
		if (type.IsArray)
		{
			text = text.Remove(text.Length - 2, 2).Insert(0, "ArrayOf");
		}
		string value = text + "SerializationWriter";
		string value2 = text + "SerializationReader";
		Assembly callingAssembly = Assembly.GetCallingAssembly();
		Type[] types = callingAssembly.GetTypes();
		string empty = string.Empty;
		Type type2 = null;
		Type type3 = null;
		bool flag = false;
		Type[] array = types;
		foreach (Type type4 in array)
		{
			empty = type4.FullName;
			if (type4.IsArray)
			{
				empty = empty.Remove(text.Length - 2, 2).Insert(0, "ArrayOf");
			}
			if (empty.EndsWith(value2))
			{
				type2 = type4;
			}
			if (empty.EndsWith(value))
			{
				type3 = type4;
			}
			if (null != type2 && null != type3)
			{
				flag = true;
				break;
			}
		}
		if (flag)
		{
			return new SerialiserWrapper((XmlSerializationReader)Activator.CreateInstance(type2), (XmlSerializationWriter)Activator.CreateInstance(type3));
		}
		return new XmlSerializer(type);
	}
}
