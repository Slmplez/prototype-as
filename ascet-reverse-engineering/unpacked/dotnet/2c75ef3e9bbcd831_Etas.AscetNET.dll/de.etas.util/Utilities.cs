using System;
using System.Collections;
using System.Net;
using System.Runtime.InteropServices;
using System.Text;
using de.etas.cebra;
using de.etas.types;

namespace de.etas.util;

[ComVisible(false)]
public class Utilities
{
	private static string notInName = " \n\t\r^°!\"§$%&/()=?`\u00b4\\}][{<>|;,:.-#'+*~";

	private static Hashtable allPackages_Renamed_Field = null;

	public static void addToClassPath(string newPath)
	{
	}

	public static string catPath(Set set_Renamed)
	{
		StringBuilder stringBuilder = new StringBuilder();
		for (int i = 0; i < set_Renamed.Count; i++)
		{
			stringBuilder.Append((string)set_Renamed[i]);
			stringBuilder.Append(Cebra.PS);
		}
		return stringBuilder.ToString();
	}

	public static string checkHostName(string name)
	{
		try
		{
			if (name.Equals(IPAddress.Loopback.ToString()))
			{
				return name;
			}
			return Dns.GetHostEntry(name).HostName;
		}
		catch (Exception)
		{
			return null;
		}
	}

	public static bool checkNameString(string name)
	{
		if (name == null)
		{
			return false;
		}
		SupportClass.Tokenizer tokenizer = new SupportClass.Tokenizer(name, notInName, includeDelims: true);
		return tokenizer.Count == 1;
	}

	public static bool contains(string[] strArray, string str)
	{
		for (int i = 0; i < strArray.Length; i++)
		{
			if (strArray[i].Equals(str))
			{
				return true;
			}
		}
		return false;
	}

	public static int distClass(Type c1, Type c2)
	{
		if (c1 == c2)
		{
			return 0;
		}
		if (c1 == null || c2 == null)
		{
			return -1;
		}
		if (c2.IsInterface && !c1.IsInterface)
		{
			int num = 0;
			for (Type type = c1; type != null; type = type.BaseType)
			{
				Type[] interfaces = type.GetInterfaces();
				foreach (Type c3 in interfaces)
				{
					int num2 = distClass(c3, c2);
					if (num2 >= 0)
					{
						return num2 + num;
					}
				}
				num++;
			}
		}
		else
		{
			int num3 = 0;
			for (Type type2 = c1; type2 != null; type2 = type2.BaseType)
			{
				if (type2 == c2)
				{
					return num3;
				}
				num3++;
			}
		}
		return -1;
	}

	public static string[] getStrings(string str, int token)
	{
		ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
		int startIndex = 0;
		arrayList.Add(0);
		int num;
		do
		{
			num = str.IndexOf((char)token, startIndex);
			if (num > 0)
			{
				startIndex = num + 1;
				arrayList.Add(num);
			}
		}
		while (num > 0);
		arrayList.Add(str.Length);
		string[] array = new string[arrayList.Count - 1];
		startIndex = (int)arrayList[0];
		for (int i = 1; i < arrayList.Count; i++)
		{
			num = (int)arrayList[i];
			string text = str.Substring(startIndex, num - startIndex);
			startIndex = num + 1;
			array[i - 1] = text;
		}
		return array;
	}

	public static bool isLocalHost(string hostName)
	{
		try
		{
			string hostName2 = Dns.GetHostEntry(hostName).HostName;
			string hostName3 = Dns.GetHostEntry(IPAddress.Loopback.ToString()).HostName;
			return hostName2.Equals(hostName3);
		}
		catch (Exception)
		{
		}
		return true;
	}

	public static string[] sepPath(string path, bool toLowerCase)
	{
		SupportClass.Tokenizer tokenizer = new SupportClass.Tokenizer(path, Cebra.PS);
		int count = tokenizer.Count;
		string[] array = new string[count];
		for (int i = 0; i < count; i++)
		{
			string text = tokenizer.NextToken();
			if (text.EndsWith(Cebra.FS))
			{
				text = text.Substring(0, text.Length - 1);
			}
			if (toLowerCase)
			{
				array[i] = text.ToLower();
			}
			else
			{
				array[i] = text;
			}
		}
		return array;
	}

	public static string[] sortStrings(IEnumerator enumerator)
	{
		ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
		while (enumerator.MoveNext())
		{
			string text = (string)enumerator.Current;
			bool flag = true;
			int num = 0;
			while (flag)
			{
				if (num == arrayList.Count)
				{
					flag = false;
					arrayList.Add(text);
				}
				else if (string.CompareOrdinal(text, (string)arrayList[num]) < 0)
				{
					arrayList.Insert(num, text);
					flag = false;
				}
				else
				{
					num++;
				}
			}
		}
		string[] array = new string[arrayList.Count];
		for (int i = 0; i < array.Length; i++)
		{
			array[i] = (string)arrayList[i];
		}
		return array;
	}

	public static string trimPath(string path, bool toLowerCase)
	{
		string[] array = sepPath(path, toLowerCase);
		Set set = new Set();
		for (int i = 0; i < array.Length; i++)
		{
			set.add(array[i]);
		}
		return catPath(set);
	}

	public static string trimString(string name)
	{
		if (name == null)
		{
			return "";
		}
		SupportClass.Tokenizer tokenizer = new SupportClass.Tokenizer(name, notInName);
		StringBuilder stringBuilder = new StringBuilder();
		int count = tokenizer.Count;
		for (int i = 0; i < count; i++)
		{
			stringBuilder.Append(tokenizer.NextToken());
		}
		return stringBuilder.ToString();
	}
}
