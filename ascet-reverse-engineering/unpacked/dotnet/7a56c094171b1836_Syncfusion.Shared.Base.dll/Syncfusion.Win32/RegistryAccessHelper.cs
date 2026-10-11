using System;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using Microsoft.Win32;
using Syncfusion.Documentation;

namespace Syncfusion.Win32;

[DocumentationExclude]
public class RegistryAccessHelper
{
	public static void PersistValueAt(RegistryKey key, string subkey, string valueName, string source, bool bThrowException)
	{
		PersistValueAtCommon(key, subkey, valueName, source, bThrowException);
	}

	[CLSCompliant(false)]
	public static void PersistValueAt(RegistryKey key, string subkey, string valueName, ulong source, bool bThrowException)
	{
		PersistValueAtCommon(key, subkey, valueName, source, bThrowException);
	}

	private static void PersistValueAtCommon(RegistryKey key, string subkey, string valueName, object source, bool bThrowException)
	{
		if ((key == null || subkey == null) && bThrowException)
		{
			ArgumentNullException ex = new ArgumentNullException();
			throw ex;
		}
		try
		{
			RegistryKey registryKey = key;
			registryKey.CreateSubKey(subkey)?.SetValue(valueName, source);
		}
		catch
		{
			if (bThrowException)
			{
				throw;
			}
		}
	}

	public static void PersistValueAt(RegistryKey key, string subkey, string valueName, object source, bool bThrowException)
	{
		BinaryFormatter binaryFormatter = new BinaryFormatter();
		MemoryStream memoryStream = new MemoryStream();
		binaryFormatter.Serialize(memoryStream, source);
		PersistValueAtCommon(key, subkey, valueName, memoryStream.ToArray(), bThrowException);
	}

	public static void PersistValueAt(RegistryKey key, string subkey, string valueName, bool source, bool bThrowException)
	{
		PersistValueAtCommon(key, subkey, valueName, source.ToString(), bThrowException);
	}

	private static void GetValueFromCommon(RegistryKey key, string subkey, string valueName, out object destination, object defaultValue, bool bThrowException)
	{
		destination = defaultValue;
		if ((key == null || subkey == null) && bThrowException)
		{
			ArgumentNullException ex = new ArgumentNullException();
			throw ex;
		}
		try
		{
			RegistryKey registryKey = key;
			registryKey = registryKey.OpenSubKey(subkey);
			if (registryKey != null)
			{
				destination = registryKey.GetValue(valueName, defaultValue);
			}
		}
		catch
		{
			if (bThrowException)
			{
				throw;
			}
		}
	}

	public static void GetValueFrom(RegistryKey key, string subkey, string valueName, out string destination, string defaultValue, bool bThrowException)
	{
		destination = defaultValue;
		GetValueFromCommon(key, subkey, valueName, out var destination2, defaultValue, bThrowException);
		if (destination2 != null)
		{
			destination = (string)destination2;
		}
	}

	[CLSCompliant(false)]
	public static void GetValueFrom(RegistryKey key, string subkey, string valueName, out ulong destination, ulong defaultValue, bool bThrowException)
	{
		destination = defaultValue;
		GetValueFromCommon(key, subkey, valueName, out var destination2, defaultValue, bThrowException);
		if (destination2 != null)
		{
			destination = (ulong)destination2;
		}
	}

	public static void GetValueFrom(RegistryKey key, string subkey, string valueName, out bool destination, bool defaultValue, bool bThrowException)
	{
		destination = defaultValue;
		GetValueFromCommon(key, subkey, valueName, out var destination2, defaultValue.ToString(), bThrowException);
		if (destination2 != null)
		{
			destination = bool.TrueString == (string)destination2;
		}
	}

	public static void GetValueFrom(RegistryKey key, string subkey, string valueName, out object destination, object defaultValue, bool bThrowException)
	{
		destination = defaultValue;
		GetValueFromCommon(key, subkey, valueName, out var destination2, null, bThrowException);
		if (destination2 != null)
		{
			byte[] array = (byte[])destination2;
			BinaryFormatter binaryFormatter = new BinaryFormatter();
			MemoryStream memoryStream = new MemoryStream();
			memoryStream.Write(array, 0, array.Length);
			memoryStream.Position = 0L;
			try
			{
				destination = binaryFormatter.Deserialize(memoryStream);
			}
			catch
			{
				if (bThrowException)
				{
					throw;
				}
			}
		}
		if (destination == null)
		{
			destination = defaultValue;
		}
	}
}
