using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Threading;
using Microsoft.Win32;

namespace ETASToolStarter;

internal abstract class EtasProduct
{
	public string toolName;

	private static string defaultLabel;

	private static Dictionary<string, Dictionary<string, string>> startUpParams;

	static EtasProduct()
	{
		defaultLabel = "Default";
		startUpParams = new Dictionary<string, Dictionary<string, string>>();
		Dictionary<string, string> value = new Dictionary<string, string>
		{
			{ "Ascet.Ascet.4", "-ietas" },
			{ "Ascet.Ascet.5", "" },
			{ "Ascet.Ascet.6", "" },
			{ defaultLabel, "" }
		};
		Dictionary<string, string> value2 = new Dictionary<string, string>
		{
			{ "Inca.Inca.4", "-ietas.icx -no_break -singleinstance -mcd -ml5000000 -r" },
			{ "Inca.Inca.5", "-ietas.icx -r" },
			{ "Inca.Inca.6", "-ietas.icx -r" },
			{ "Inca.Inca.7", "-ietas.icx" },
			{ defaultLabel, "-ietas.icx" }
		};
		startUpParams.Add("Ascet", value);
		startUpParams.Add("Inca", value2);
	}

	public static bool isRunning(string toolName, string desiredVersion)
	{
		try
		{
			Process[] processesByName = Process.GetProcessesByName(toolName);
			Process[] array = processesByName;
			foreach (Process process in array)
			{
				string directoryName = Path.GetDirectoryName(process.MainModule.FileName.ToString());
				RegistryKey localMachine = Registry.LocalMachine;
				RegistryKey registryKey = null;
				string name = "Software\\ETAS\\";
				if (localMachine == null)
				{
					continue;
				}
				registryKey = localMachine.OpenSubKey(name);
				if (registryKey == null)
				{
					continue;
				}
				string[] subKeyNames = registryKey.GetSubKeyNames();
				string[] array2 = subKeyNames;
				foreach (string name2 in array2)
				{
					string[] subKeyNames2 = registryKey.OpenSubKey(name2).GetSubKeyNames();
					string[] array3 = subKeyNames2;
					foreach (string text in array3)
					{
						RegistryKey registryKey2 = registryKey.OpenSubKey(name2).OpenSubKey(text);
						if ((string)registryKey2.GetValue("ProductDisplayName", "") == toolName.ToUpper())
						{
							string path = registryKey2.GetValue("Path").ToString();
							path = Path.GetFullPath(path);
							if (string.Compare(path, directoryName, ignoreCase: true) == 0 && text.Contains(desiredVersion))
							{
								return true;
							}
						}
					}
				}
			}
			return false;
		}
		catch (InvalidOperationException ex)
		{
			Console.WriteLine("An Exception occured. " + ex.Message);
			return false;
		}
		catch (Exception ex2)
		{
			Console.WriteLine("An Exception occured. " + ex2.Message);
			return false;
		}
	}

	public static bool isRunning(string toolName)
	{
		try
		{
			Process[] processesByName = Process.GetProcessesByName(toolName);
			bool result = false;
			if (processesByName.Length != 0)
			{
				result = true;
			}
			return result;
		}
		catch (InvalidOperationException ex)
		{
			Console.WriteLine("An Exception occured. " + ex.Message);
			return false;
		}
		catch (Exception ex2)
		{
			Console.WriteLine("An Exception occured. " + ex2.Message);
			return false;
		}
	}

	public static string[] ListOfVersionsOfApplication(string toolName)
	{
		try
		{
			_ = Registry.CurrentUser;
			RegistryKey localMachine = Registry.LocalMachine;
			RegistryKey registryKey = null;
			string name = "Software\\ETAS\\" + toolName;
			ArrayList arrayList = new ArrayList();
			if (localMachine != null)
			{
				registryKey = localMachine.OpenSubKey(name);
				if (registryKey != null)
				{
					string[] subKeyNames = registryKey.GetSubKeyNames();
					string[] array = subKeyNames;
					foreach (string text in array)
					{
						RegistryKey registryKey2 = registryKey.OpenSubKey(text);
						if ((string)registryKey2.GetValue("", "") == "Product")
						{
							arrayList.Add(text);
						}
					}
				}
				string[] array2 = new string[arrayList.Count];
				int num = 0;
				foreach (object item in arrayList)
				{
					array2.SetValue(item.ToString(), num);
					num++;
				}
				return array2;
			}
		}
		catch (Exception ex)
		{
			Console.WriteLine("An Exception occured. " + ex.Message);
			return null;
		}
		return null;
	}

	protected static bool isOSVista()
	{
		bool result = false;
		OperatingSystem oSVersion = Environment.OSVersion;
		if (oSVersion.Platform == PlatformID.Win32NT && oSVersion.Version.Major == 6)
		{
			result = true;
		}
		return result;
	}

	protected bool StartProcess(string workingDir, string startUpArgument, long timeOut)
	{
		Process process = new Process();
		process.StartInfo.FileName = workingDir + "\\" + toolName + ".exe";
		process.StartInfo.WorkingDirectory = workingDir;
		process.StartInfo.Arguments = startUpArgument;
		string versionForApplicationPath = GetVersionForApplicationPath(workingDir);
		if (versionForApplicationPath == null)
		{
			Console.WriteLine("\n");
			Console.WriteLine("ERROR: No tool version found for directory " + workingDir);
			return false;
		}
		try
		{
			if (MajorVersionFrom(versionForApplicationPath) >= 6 && isToolReadyOnVista(versionForApplicationPath))
			{
				RegistryKey currentUser = Registry.CurrentUser;
				if (currentUser != null)
				{
					string name = "Software\\ETAS\\" + toolName.ToUpper() + "\\" + versionForApplicationPath;
					RegistryKey registryKey = currentUser.OpenSubKey(name, writable: true);
					registryKey.SetValue("Application State", "", RegistryValueKind.String);
				}
			}
			process.Start();
			int num = 0;
			int num2 = 250;
			Console.Write("Waiting for tool to start ");
			while (num < timeOut)
			{
				if (MajorVersionFrom(versionForApplicationPath) >= 6)
				{
					if (isToolReadyOnVista(versionForApplicationPath))
					{
						Console.WriteLine("");
						Console.WriteLine("Tool started successfully.");
						return true;
					}
				}
				else if (isToolReady(toolName.ToUpper() + " Mutex"))
				{
					Console.WriteLine("");
					Console.WriteLine("Tool started successfully.");
					return true;
				}
				num += num2;
				Thread.Sleep(num2);
			}
			Console.WriteLine("\n");
			Console.WriteLine("ERROR: Tool cannot be started within the specified time.");
			return false;
		}
		catch (Win32Exception ex)
		{
			Console.WriteLine("An exception occured. " + ex.Message);
			return false;
		}
		catch (FileNotFoundException ex2)
		{
			Console.WriteLine("An exception occured. " + ex2.Message);
			return false;
		}
		catch (ObjectDisposedException ex3)
		{
			Console.WriteLine("An exception occured. " + ex3.Message);
			return false;
		}
	}

	protected bool isToolReady(string mutexName)
	{
		try
		{
			Mutex mutex = null;
			mutex = Mutex.OpenExisting(mutexName);
			mutex.Close();
		}
		catch
		{
			return false;
		}
		return true;
	}

	protected uint MajorVersionFrom(string version)
	{
		try
		{
			return uint.Parse(version.Split(new char[1] { '.' }, 2)[0]);
		}
		catch
		{
		}
		return 0u;
	}

	protected bool isToolReadyOnVista(string version)
	{
		bool result = false;
		try
		{
			RegistryKey currentUser = Registry.CurrentUser;
			if (currentUser != null)
			{
				string name = "Software\\ETAS\\" + toolName.ToUpper() + "\\" + version;
				RegistryKey registryKey = currentUser.OpenSubKey(name);
				string strA = registryKey.GetValue("Application State").ToString();
				if (string.Compare(strA, "running", ignoreCase: true) == 0)
				{
					result = true;
				}
			}
		}
		catch (Exception ex)
		{
			Console.WriteLine("An Exception occured" + ex.Message);
		}
		return result;
	}

	protected string GetLastUsedVersion()
	{
		string result = null;
		try
		{
			RegistryKey currentUser = Registry.CurrentUser;
			if (currentUser != null)
			{
				string name = "Software\\ETAS\\" + toolName.ToUpper();
				RegistryKey registryKey = currentUser.OpenSubKey(name);
				if (registryKey == null)
				{
					return null;
				}
				result = registryKey.GetValue("LastUsedVersion").ToString();
			}
		}
		catch (Exception ex)
		{
			Console.WriteLine("An exception occured. " + ex.Message);
		}
		return result;
	}

	protected string GetCOMDLLPath(string programId)
	{
		Type typeFromProgID = Type.GetTypeFromProgID(programId);
		if (typeFromProgID == null)
		{
			return null;
		}
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

	protected string GetApplicationPathForVersion(string desiredVersion)
	{
		try
		{
			RegistryKey localMachine = Registry.LocalMachine;
			RegistryKey registryKey = null;
			string text = null;
			bool flag = false;
			string[] array = ListOfVersionsOfApplication(toolName);
			if ((array != null) & (array.Length != 0))
			{
				string[] array2 = array;
				foreach (string strA in array2)
				{
					if (string.Compare(strA, desiredVersion, ignoreCase: true) == 0)
					{
						flag = true;
						break;
					}
				}
			}
			if (flag)
			{
				string name = "Software\\ETAS\\" + toolName + "\\" + desiredVersion;
				if (localMachine != null)
				{
					registryKey = localMachine.OpenSubKey(name);
					if (registryKey != null)
					{
						text = (string)registryKey.GetValue("Path", text);
					}
				}
				return text;
			}
			string text2 = toolName + "." + toolName + "." + desiredVersion;
			if (startUpParams.ContainsKey(toolName) && startUpParams[toolName].ContainsKey(text2) && (text = getApplicationPathUsingProgID(text2)) != null)
			{
				return text;
			}
			Console.WriteLine("ERROR: The version <" + desiredVersion + "> of the tool <" + toolName + "> was not found");
			return null;
		}
		catch (Exception ex)
		{
			Console.WriteLine("An exception occured. " + ex.Message);
			return null;
		}
	}

	protected string GetVersionForApplicationPath(string installationPath)
	{
		try
		{
			RegistryKey localMachine = Registry.LocalMachine;
			RegistryKey registryKey = null;
			string[] array = ListOfVersionsOfApplication(toolName);
			if ((array != null) & (array.Length != 0))
			{
				string[] array2 = array;
				foreach (string text in array2)
				{
					string name = "Software\\ETAS\\" + toolName + "\\" + text;
					if (localMachine == null)
					{
						continue;
					}
					registryKey = localMachine.OpenSubKey(name);
					if (registryKey != null)
					{
						string strA = registryKey.GetValue("Path", "").ToString();
						if (string.Compare(strA, installationPath, ignoreCase: true) == 0)
						{
							return text;
						}
					}
				}
			}
			return null;
		}
		catch (Exception ex)
		{
			Console.WriteLine("An exception occured. " + ex.Message);
			return null;
		}
	}

	protected string getApplicationPathUsingProgID(string progID)
	{
		string text = GetCOMDLLPath(progID);
		if (text == null || text.Length == 0)
		{
			return null;
		}
		FileInfo fileInfo = new FileInfo(text);
		if (File.Exists(fileInfo.FullName))
		{
			text = fileInfo.DirectoryName;
		}
		do
		{
			fileInfo = new FileInfo(text);
			if (File.Exists(new FileInfo(fileInfo.FullName + Path.DirectorySeparatorChar + toolName + ".bin").FullName) || Directory.Exists(new FileInfo(fileInfo.FullName + Path.DirectorySeparatorChar + toolName + ".bin").FullName))
			{
				return fileInfo.FullName;
			}
			text = fileInfo.DirectoryName;
		}
		while (text != null);
		return Environment.CurrentDirectory;
	}

	protected string getProgIDOfLastUsedVersion()
	{
		try
		{
			string result = null;
			string name = toolName + "." + toolName;
			RegistryKey classesRoot = Registry.ClassesRoot;
			if (classesRoot != null)
			{
				RegistryKey registryKey = classesRoot.OpenSubKey(name);
				if (registryKey != null)
				{
					result = registryKey.OpenSubKey("CurVer").GetValue("").ToString();
				}
			}
			return result;
		}
		catch (Exception ex)
		{
			Console.WriteLine("An exception occured. " + ex.Message);
		}
		return null;
	}

	public bool Start(long timeOut)
	{
		try
		{
			bool result = false;
			if (isRunning(toolName))
			{
				Console.WriteLine("The tool <" + toolName + "> is already running");
				return true;
			}
			string progIDOfLastUsedVersion;
			if ((progIDOfLastUsedVersion = getProgIDOfLastUsedVersion()) == null)
			{
				Console.WriteLine("ERROR: Unable to determine the last used version of the tool <" + toolName + ">. ");
				return result;
			}
			string text = ((!isOSVista()) ? getApplicationPathUsingProgID(progIDOfLastUsedVersion) : GetApplicationPathForVersion(GetLastUsedVersion()));
			if (text == null)
			{
				Console.WriteLine("ERROR: The path of the executable of the tool <" + toolName + "> could not be found");
				return result;
			}
			if (!startUpParams.ContainsKey(toolName) || !startUpParams[toolName].ContainsKey(progIDOfLastUsedVersion))
			{
				Console.WriteLine("ERROR: Start up parameters for the tool <" + toolName + "> not found");
				return result;
			}
			return StartProcess(text, startUpParams[toolName][progIDOfLastUsedVersion], timeOut);
		}
		catch (Exception ex)
		{
			Console.WriteLine("An exception occured. " + ex.Message);
			return false;
		}
	}

	public bool Start(string version, long timeOut)
	{
		try
		{
			if (isRunning(toolName, version))
			{
				Console.WriteLine("The tool <" + toolName + "> with version <" + version + "> is already running");
				return true;
			}
			string applicationPathForVersion = GetApplicationPathForVersion(version);
			if (applicationPathForVersion == null)
			{
				return false;
			}
			string text = version.Split('.').GetValue(0).ToString();
			if (startUpParams.ContainsKey(toolName))
			{
				string key = toolName + "." + toolName + "." + text;
				string startUpArgument = ((!startUpParams[toolName].ContainsKey(key)) ? startUpParams[toolName][defaultLabel] : startUpParams[toolName][key]);
				return StartProcess(applicationPathForVersion, startUpArgument, timeOut);
			}
			Console.WriteLine("ERROR: Start up parameters for the tool <" + toolName + "> with version <" + version + "> not found");
			return false;
		}
		catch (Exception ex)
		{
			Console.WriteLine("An exception occured. " + ex.Message);
			return false;
		}
	}
}
