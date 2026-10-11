using System;
using System.Diagnostics;
using System.IO;
using System.Runtime.InteropServices;
using Microsoft.Win32;
using de.etas.cebra;

namespace de.etas.util;

[ComVisible(false)]
public class EtasGeneralDll
{
	[DllImport("EtasGeneral100.dll", EntryPoint = "RegisterApp")]
	public static extern void registerApplication(string applicationName, string applicationPath);

	[DllImport("EtasGeneral100.dll", EntryPoint = "getAppDataPath")]
	public static extern IntPtr apiGetApplicationDataPath();

	public static string GetApplicationDataPath()
	{
		return Marshal.PtrToStringAnsi(apiGetApplicationDataPath());
	}

	[DllImport("EtasGeneral100.dll", EntryPoint = "GetAppPathFromRegistry")]
	public static extern IntPtr apiGetApplicationProgramPath();

	public static string GetApplicationProgramPath()
	{
		return Marshal.PtrToStringAnsi(apiGetApplicationProgramPath());
	}

	[DllImport("EtasGeneral100.dll", EntryPoint = "getETASLogFilePath")]
	public static extern IntPtr apiGetEtasLogFilePath();

	public static string GetEtasLogFilePath()
	{
		return Marshal.PtrToStringAnsi(apiGetEtasLogFilePath());
	}

	[DllImport("EtasGeneral100.dll", EntryPoint = "getETASTempFilePath")]
	public static extern IntPtr apiGetEtasTempFilePath();

	public static string GetEtasTempFilePath()
	{
		return Marshal.PtrToStringAnsi(apiGetEtasTempFilePath());
	}

	[DllImport("EtasGeneral100.dll", EntryPoint = "GetSharedDllPathFromRegistry")]
	public static extern IntPtr apiGetEtasSharedFilePath(string sharedName);

	public static string GetEtasSharedFilePath(string sharedName)
	{
		return Marshal.PtrToStringAnsi(apiGetEtasSharedFilePath(sharedName));
	}

	public static string getCOMDLLPath(string programId)
	{
		Type typeFromProgID = Type.GetTypeFromProgID(programId);
		Guid gUID = typeFromProgID.GUID;
		RegistryKey classesRoot = Registry.ClassesRoot;
		if (classesRoot != null)
		{
			RegistryKey registryKey = classesRoot.OpenSubKey("CLSID");
			if (registryKey != null)
			{
				string name = "{" + gUID.ToString() + "}";
				RegistryKey registryKey2 = registryKey.OpenSubKey(name);
				if (registryKey2 != null)
				{
					RegistryKey registryKey3 = registryKey2.OpenSubKey("InprocServer32");
					if (registryKey3 != null)
					{
						name = (string)registryKey3.GetValue("");
						if (name.CompareTo("mscoree.dll") == 0)
						{
							string text = "file:///";
							int length = text.Length;
							name = (string)registryKey3.GetValue("CodeBase");
							if (name.IndexOf(text) == 0)
							{
								name = name.Substring(length);
								return name.Replace("/", "\\");
							}
							return name;
						}
						return name;
					}
				}
			}
		}
		return null;
	}

	public static string GetApplicationPathForVersion(string baseToolName, string desiredVersion)
	{
		RegistryKey localMachine = Registry.LocalMachine;
		RegistryKey registryKey = null;
		string name = "Software\\ETAS\\" + baseToolName + "\\" + desiredVersion;
		string text = "";
		if (localMachine != null)
		{
			registryKey = localMachine.OpenSubKey(name);
			if (registryKey != null)
			{
				text = registryKey.GetValue("Path", text).ToString();
			}
		}
		return text;
	}

	public static uint GetCommunicationPortNumberForVersion(string toolName, string desiredVersion)
	{
		RegistryKey currentUser = Registry.CurrentUser;
		RegistryKey registryKey = null;
		string name = "Software\\ETAS\\" + toolName + "\\" + desiredVersion;
		string text = Cebra.getDefaultPort(toolName).ToString();
		string text2 = text;
		if (currentUser != null)
		{
			registryKey = currentUser.OpenSubKey(name);
			if (registryKey != null)
			{
				text2 = (string)registryKey.GetValue("ToolApiPort", text);
				if (text2 == "")
				{
					text2 = text;
				}
			}
		}
		return uint.Parse(text2);
	}

	public static string GetLastUsedVersion(string toolName, string baseToolName)
	{
		RegistryKey currentUser = Registry.CurrentUser;
		RegistryKey localMachine = Registry.LocalMachine;
		RegistryKey registryKey = null;
		string name = "Software\\ETAS\\" + toolName;
		string text = "";
		if (currentUser != null)
		{
			registryKey = currentUser.OpenSubKey(name);
			if (registryKey != null)
			{
				text = (string)registryKey.GetValue("LastUsedVersion", "");
			}
		}
		if (text == "" && localMachine != null)
		{
			name = "Software\\ETAS\\" + baseToolName;
			registryKey = localMachine.OpenSubKey(name);
			if (registryKey != null)
			{
				text = (string)registryKey.GetValue("LastUsedVersion", "");
			}
		}
		return text;
	}

	public static string GetApplicationState(string toolName, string baseToolName, string toolVersion)
	{
		RegistryKey currentUser = Registry.CurrentUser;
		RegistryKey registryKey = null;
		string name = "Software\\ETAS\\" + toolName + "\\" + toolVersion;
		string result = "";
		if (currentUser != null)
		{
			registryKey = currentUser.OpenSubKey(name);
			if (registryKey != null)
			{
				result = (string)registryKey.GetValue("Application State", "");
			}
		}
		return result;
	}

	public static bool IsToolRunning(string toolName, string baseToolName, string toolVersion)
	{
		RegistryKey currentUser = Registry.CurrentUser;
		RegistryKey registryKey = null;
		string name = "Software\\ETAS\\" + toolName + "\\" + toolVersion;
		string text = "";
		string text2 = "";
		if (currentUser != null)
		{
			registryKey = currentUser.OpenSubKey(name);
		}
		text = GetApplicationState(toolName, baseToolName, toolVersion);
		if (text == "running")
		{
			text2 = GetApplicationPathForVersion(baseToolName, toolVersion);
		}
		if (text2 != "")
		{
			text2 = Path.GetFullPath(text2);
			Process[] processes = Process.GetProcesses();
			Process[] array = processes;
			foreach (Process process in array)
			{
				try
				{
					string path = process.MainModule.FileName.ToString();
					string directoryName = Path.GetDirectoryName(path);
					if (string.Compare(text2, directoryName, ignoreCase: true) == 0)
					{
						string fileNameWithoutExtension = Path.GetFileNameWithoutExtension(path);
						if (string.Compare(toolName, fileNameWithoutExtension, ignoreCase: true) == 0)
						{
							return true;
						}
					}
				}
				catch (Exception)
				{
				}
			}
		}
		if (text == "running" || text == "starting")
		{
			string text3 = (string)registryKey.GetValue("Process Name", "");
			string text4 = (string)registryKey.GetValue("Process Path", "");
			if (text3 != "" && text4 != "")
			{
				Process[] processesByName = Process.GetProcessesByName(text3);
				foreach (Process process2 in processesByName)
				{
					try
					{
						string directoryName2 = Path.GetDirectoryName(process2.MainModule.FileName.ToString());
						if (string.Compare(text4, directoryName2, ignoreCase: true) == 0)
						{
							return true;
						}
					}
					catch (Exception)
					{
					}
				}
			}
			currentUser.OpenSubKey(name, writable: true)?.SetValue("Application State", "", RegistryValueKind.String);
		}
		return false;
	}
}
