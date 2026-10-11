using System;
using Microsoft.Win32;

namespace Syncfusion.Windows.Forms.Tools;

public class RegistryUtil
{
	private RegistryUtil()
	{
	}

	public static void WriteToRegistry(RegistryKey RegHive, string RegPath, string KeyName, string KeyValue)
	{
		string[] array = RegPath.Split('\\');
		RegistryKey[] array2 = new RegistryKey[array.Length + 1];
		array2[0] = RegHive;
		for (int i = 0; i < array.Length; i++)
		{
			array2[i + 1] = array2[i].OpenSubKey(array[i], writable: true);
			if (array2[i + 1] == null)
			{
				array2[i + 1] = array2[i].CreateSubKey(array[i]);
			}
		}
		try
		{
			array2[array.Length].SetValue(KeyName, KeyValue);
		}
		catch (NullReferenceException)
		{
			throw new Exception("Null Reference");
		}
		catch (UnauthorizedAccessException)
		{
			throw new Exception("Unauthorized Access");
		}
	}

	public static string ReadFromRegistry(RegistryKey RegHive, string RegPath, string KeyName, string DefaultValue)
	{
		string result = "";
		string[] array = RegPath.Split('\\');
		RegistryKey[] array2 = new RegistryKey[array.Length + 1];
		array2[0] = RegHive;
		for (int i = 0; i < array.Length; i++)
		{
			array2[i + 1] = array2[i].OpenSubKey(array[i]);
			if (i == array.Length - 1)
			{
				result = (string)array2[i + 1].GetValue(KeyName, DefaultValue);
			}
		}
		return result;
	}
}
