using System;
using System.Collections;
using System.Collections.Specialized;
using Microsoft.Win32;

namespace Syncfusion.Core.Licensing;

public class LicManager
{
	private static string SyncfusionRegKey = "HKEY_CURRENT_USER\\Software\\syncfusion\\Essential Suite\\InstalledVersions\\keys";

	private static string ErrorNoStudioEntries = "Unable to locate Essential Studio Registry entries.";

	private static string ErrorNoRegistryAccess = "Unable to access Essential Studio Registry entries.";

	private static string ErrorNoParseKey = "Unable to decipher key.";

	private static string ErrorUnableToAddKey = "Unable to add additional key information to the registry";

	private static string ErrorUnableToRemoveKey = "Unable to remove key information from the registry";

	public string[] GetAllKeys()
	{
		StringCollection stringCollection = new StringCollection();
		RegistryKey registryKey = TryGetCurrentUserKey(writable: false);
		if (registryKey != null)
		{
			string[] valueNames = registryKey.GetValueNames();
			registryKey.Close();
			string[] array = valueNames;
			foreach (string text in array)
			{
				if (text != "")
				{
					stringCollection.Add(text);
				}
			}
		}
		registryKey = TryGetLocalMachineKey(writable: false);
		if (registryKey != null)
		{
			string[] valueNames2 = registryKey.GetValueNames();
			registryKey.Close();
			string[] array2 = valueNames2;
			foreach (string text2 in array2)
			{
				if (text2 != "")
				{
					stringCollection.Add(text2);
				}
			}
		}
		if (stringCollection.Count > 0)
		{
			ArrayList arrayList = new ArrayList();
			StringEnumerator enumerator = stringCollection.GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					string current = enumerator.Current;
					if (!arrayList.Contains(current) && current != "")
					{
						arrayList.Add(current);
					}
				}
			}
			finally
			{
				if (enumerator is IDisposable disposable)
				{
					disposable.Dispose();
				}
			}
			return (string[])arrayList.ToArray(typeof(string));
		}
		return new string[1] { "Unable to locate any keys." };
	}

	private RegistryKey GetStudioKey()
	{
		return GetStudioKey(writeable: false);
	}

	private RegistryKey GetStudioKey(bool writeable)
	{
		RegistryKey registryKey = null;
		registryKey = TryGetLocalMachineKey(writeable);
		if (registryKey == null)
		{
			registryKey = TryGetCurrentUserKey(writeable);
		}
		if (registryKey == null)
		{
			throw new ApplicationException(ErrorNoStudioEntries);
		}
		return registryKey;
	}

	public string GetKeyDiagnosticInformation(string key)
	{
		try
		{
			UnlockKeyInfo unlockKeyInfo = new UnlockKeyInfo(key);
			return unlockKeyInfo.ToString();
		}
		catch (Exception innerException)
		{
			throw new ApplicationException(ErrorNoParseKey, innerException);
		}
	}

	public void AddKey(string valName)
	{
		RegistryKey[] array = new RegistryKey[2]
		{
			TryGetCurrentUserKey(writable: true),
			TryGetLocalMachineKey(writable: true)
		};
		RegistryKey[] array2 = array;
		foreach (RegistryKey registryKey in array2)
		{
			try
			{
				if (registryKey != null)
				{
					registryKey.SetValue(valName, "");
					registryKey.Close();
				}
			}
			catch (Exception innerException)
			{
				throw new ApplicationException(ErrorUnableToAddKey, innerException);
			}
		}
	}

	public void AddKey(RegistryKey key, string valName)
	{
		try
		{
			if (key != null)
			{
				key.SetValue(valName, "");
				key.Close();
			}
		}
		catch (Exception innerException)
		{
			throw new ApplicationException(ErrorUnableToAddKey, innerException);
		}
	}

	public void RemoveKey(string val)
	{
		RegistryKey registryKey = TryGetCurrentUserKey(writable: true);
		try
		{
			if (registryKey != null)
			{
				string[] valueNames = registryKey.GetValueNames();
				string[] array = valueNames;
				foreach (string text in array)
				{
					if (val == text)
					{
						registryKey.DeleteValue(val.ToLower());
						registryKey.Close();
					}
				}
			}
		}
		catch (Exception innerException)
		{
			throw new ApplicationException(ErrorUnableToRemoveKey, innerException);
		}
		registryKey = TryGetLocalMachineKey(writable: true);
		try
		{
			if (registryKey == null)
			{
				return;
			}
			string[] valueNames2 = registryKey.GetValueNames();
			string[] array2 = valueNames2;
			foreach (string text2 in array2)
			{
				if (val == text2)
				{
					registryKey.DeleteValue(val.ToLower());
					registryKey.Close();
				}
			}
		}
		catch (Exception innerException2)
		{
			throw new ApplicationException(ErrorUnableToRemoveKey, innerException2);
		}
	}

	private static RegistryKey TryGetCurrentUserKey(bool writable)
	{
		RegistryKey result = null;
		try
		{
			result = Registry.CurrentUser.OpenSubKey("Software\\Syncfusion\\Essential Suite\\InstalledVersions\\keys", writable);
		}
		catch (Exception)
		{
		}
		return result;
	}

	private static RegistryKey TryGetLocalMachineKey(bool writable)
	{
		RegistryKey result = null;
		try
		{
			result = Registry.LocalMachine.OpenSubKey("Software\\Syncfusion\\Essential Suite\\InstalledVersions\\keys", writable);
		}
		catch (Exception)
		{
		}
		return result;
	}
}
