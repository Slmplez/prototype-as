using System;
using System.Collections;
using Microsoft.Win32;

namespace ETASToolStarter;

public sealed class EtasToolStarter : IEtasToolStarter
{
	private string[] products;

	public EtasToolStarter()
	{
		products = GetListOfEtasApplications();
	}

	public string[] ListOfEtasApplications()
	{
		return products;
	}

	public string[] ListOfVersionsForEtasApplication(string toolName)
	{
		return EtasProduct.ListOfVersionsOfApplication(toolName);
	}

	private EtasProduct createProduct(string toolName)
	{
		EtasProduct result = null;
		bool flag = false;
		string[] listOfEtasApplications = GetListOfEtasApplications();
		foreach (string text in listOfEtasApplications)
		{
			if (text.ToUpper().Contains(toolName.ToUpper()))
			{
				flag = true;
				break;
			}
		}
		if (!flag)
		{
			Console.WriteLine("ERROR: Tool <" + toolName + "> not found");
			return null;
		}
		switch (toolName.ToUpper())
		{
		case "ASCET":
			result = new ASCET();
			break;
		case "INCA":
			result = new INCA();
			break;
		default:
			Console.WriteLine("ERROR: Tool Starter cannot launch the ETAS tool <" + toolName + ">.");
			break;
		}
		return result;
	}

	public bool Start(string toolName)
	{
		return createProduct(toolName)?.Start(60000L) ?? false;
	}

	public bool Start(string toolName, string version)
	{
		return createProduct(toolName)?.Start(version, 60000L) ?? false;
	}

	public bool Start(string toolName, int timeOut)
	{
		if (timeOut <= 0)
		{
			Console.WriteLine("ERROR: Invalid timeout value. Tool starter aborted.");
			return false;
		}
		return createProduct(toolName)?.Start(timeOut * 1000) ?? false;
	}

	public bool Start(string toolName, string version, int timeOut)
	{
		if (timeOut <= 0)
		{
			Console.WriteLine("ERROR: Invalid timeout value. Tool starter aborted.");
			return false;
		}
		return createProduct(toolName)?.Start(version, timeOut * 1000) ?? false;
	}

	public bool isRunning(string toolName)
	{
		return EtasProduct.isRunning(toolName);
	}

	public bool isRunning(string toolName, string version)
	{
		return EtasProduct.isRunning(toolName, version);
	}

	private static string[] GetListOfEtasApplications()
	{
		try
		{
			RegistryKey localMachine = Registry.LocalMachine;
			RegistryKey registryKey = null;
			string name = "Software\\ETAS\\";
			ArrayList arrayList = new ArrayList();
			if (localMachine != null)
			{
				registryKey = localMachine.OpenSubKey(name);
				if (registryKey != null)
				{
					string[] subKeyNames = registryKey.GetSubKeyNames();
					string[] array = subKeyNames;
					foreach (string name2 in array)
					{
						string[] subKeyNames2 = registryKey.OpenSubKey(name2).GetSubKeyNames();
						string[] array2 = subKeyNames2;
						foreach (string text in array2)
						{
							RegistryKey registryKey2 = registryKey.OpenSubKey(name2).OpenSubKey(text);
							if ((string)registryKey2.GetValue("", "") == "Product")
							{
								arrayList.Add((string)registryKey2.GetValue("ProductDisplayName") + " " + text);
							}
						}
					}
				}
				string[] array3 = new string[arrayList.Count];
				int num = 0;
				foreach (object item in arrayList)
				{
					array3.SetValue(item.ToString(), num);
					num++;
				}
				return array3;
			}
		}
		catch (Exception ex)
		{
			Console.WriteLine("An Exception occured. " + ex.Message);
			return null;
		}
		return null;
	}
}
