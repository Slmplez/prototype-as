using System;
using System.Collections;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Runtime.InteropServices;
using System.Threading;
using de.etas.cebra.socket;
using de.etas.multitasking;
using de.etas.types;
using de.etas.util;

namespace de.etas.cebra;

[ComVisible(false)]
public sealed class Cebra
{
	public const string registeredClassesName = "Registered Classes";

	private static long globalID;

	private static Hashtable listOfClasses = Hashtable.Synchronized(new Hashtable());

	private static MessageBox messageBox = new MessageBox();

	private static IniFile iniFile;

	private static IniFile defaultIniFile;

	public static string cebraLogPath;

	public static string cebraPrgPath;

	public static string FS = Path.DirectorySeparatorChar.ToString();

	public static string PS = Path.PathSeparator.ToString();

	public static string LF = Environment.NewLine;

	public static string BIN = ".bin";

	public static bool debug;

	private static LogFile commonLogFile;

	public static LogFile startupLogFile;

	private static CebraServerSocket cebraServerSocket;

	public static bool initialized;

	private static bool automaticStart;

	public static int DefaultToolPort
	{
		get
		{
			string s;
			if (defaultIniFile != null && (s = defaultIniFile.IniReadValue("port", "DEFAULT")) != "")
			{
				return int.Parse(s);
			}
			return 30005;
		}
	}

	public static long ShutDownTimeOut
	{
		get
		{
			string s;
			if (defaultIniFile != null && (s = defaultIniFile.IniReadValue("java", "TimeOut")) != "")
			{
				return int.Parse(s);
			}
			return 1000L;
		}
	}

	private Cebra()
	{
	}

	public static void addClassNameAlias(string alias, Type clazz)
	{
		lock (typeof(Cebra))
		{
			if (listOfClasses.ContainsKey(alias))
			{
				println("Warning: Class " + alias + " was used more the one time.");
			}
			listOfClasses[alias] = clazz;
		}
	}

	public static string cebraIniFile()
	{
		return "cebra.ini";
	}

	public static void closeTool(string toolName)
	{
		long shutDownTimeOut = ShutDownTimeOut;
		ToolClient.shutDownToolClient(toolName, shutDownTimeOut);
		string[] allRegisteredTools = ToolClient.AllRegisteredTools;
		if (allRegisteredTools.Length == 1 && allRegisteredTools[0].Equals("undefined Tool Name"))
		{
			ToolClient.shutDownToolClient(allRegisteredTools[0], shutDownTimeOut);
		}
		ServerScript serverScript = (ServerScript)SupportClass.ThreadClass.Current();
		CebraServer.shutDownCebraServer(serverScript.CebraServer, check: false, shutDownTimeOut);
		initialized = false;
	}

	public static void exit()
	{
		string[] allRegisteredTools = ToolClient.AllRegisteredTools;
		for (int i = 0; i < allRegisteredTools.Length; i++)
		{
			ClientSender clientSender = ToolClient.initToolSocket(allRegisteredTools[i]);
			if (clientSender != null)
			{
				ClassMethodCall classMethodCall = new ClassMethodCall("SGPerformerClient", "shutDown", null);
				clientSender.sendMessage(classMethodCall.Message);
			}
		}
		if (!automaticStart)
		{
			Environment.Exit(0);
		}
	}

	public static string getApplicationStartupPath(string tool, string prgID)
	{
		string text = EtasGeneralDll.getCOMDLLPath(prgID);
		if (text.Length == 0)
		{
			return Environment.CurrentDirectory;
		}
		FileInfo fileInfo = new FileInfo(text);
		if (File.Exists(fileInfo.FullName))
		{
			text = fileInfo.DirectoryName;
		}
		do
		{
			fileInfo = new FileInfo(text);
			if (File.Exists(new FileInfo(fileInfo.FullName + FS + tool + BIN).FullName) || Directory.Exists(new FileInfo(fileInfo.FullName + FS + tool + BIN).FullName))
			{
				return fileInfo.FullName;
			}
			text = fileInfo.DirectoryName;
		}
		while (text != null);
		return Environment.CurrentDirectory;
	}

	public static Type getClassByName(string name)
	{
		lock (typeof(Cebra))
		{
			if (name == null)
			{
				return null;
			}
			Type type = (Type)listOfClasses[name];
			if (type != null)
			{
				return type;
			}
			try
			{
				type = Type.GetType(name);
			}
			catch (Exception)
			{
				return null;
			}
			return type;
		}
	}

	public static string getDefaultHost()
	{
		return IPAddress.Loopback.ToString();
	}

	public static string getDefaultHost(string name)
	{
		if (defaultIniFile != null)
		{
			string text = defaultIniFile.IniReadValue("host", name.ToUpper());
			if (text == "")
			{
				try
				{
					return getDefaultHost();
				}
				catch (Exception)
				{
					return null;
				}
			}
			return Utilities.checkHostName(text);
		}
		try
		{
			return getDefaultHost();
		}
		catch (Exception)
		{
			return null;
		}
	}

	public static int getDefaultPort(string name)
	{
		if (defaultIniFile != null)
		{
			string text = defaultIniFile.IniReadValue("port", name.ToUpper());
			if (text == "")
			{
				return 30005;
			}
			return int.Parse(text);
		}
		return 30005;
	}

	public static string getItemFromSection(string item, string section)
	{
		if (iniFile == null)
		{
			return null;
		}
		return iniFile.IniReadValue(section, item);
	}

	public static object getMessage(string name)
	{
		return messageBox.receiveMessage(name);
	}

	public static void getNewIdentifier(Identifiable obj)
	{
		lock (typeof(Cebra))
		{
			obj.setIdentifier((DateTime.Now.Ticks - 621355968000000000L) / 10000 + globalID++);
		}
	}

	public static void initCebraToolDependent(string toolName, string baseToolName, string prgIdOrStartupPath)
	{
		if (initialized)
		{
			return;
		}
		string lastUsedVersion = EtasGeneralDll.GetLastUsedVersion(toolName, baseToolName);
		string applicationPathForVersion = EtasGeneralDll.GetApplicationPathForVersion(baseToolName, lastUsedVersion);
		EtasGeneralDll.registerApplication(baseToolName, applicationPathForVersion);
		if ((cebraPrgPath = EtasGeneralDll.GetApplicationProgramPath()).Length != 0)
		{
			cebraPrgPath += "Cebra";
		}
		else
		{
			cebraPrgPath = Environment.CurrentDirectory;
		}
		defaultIniFile = new IniFile(cebraPrgPath + FS + cebraIniFile());
		startupLogFile.logMessage("Program Path: " + cebraPrgPath);
		Console.Out.WriteLine("Program Path: " + cebraPrgPath);
		int num = ((!(defaultIniFile.IniReadValue("appstart", "timeout") == "")) ? int.Parse(defaultIniFile.IniReadValue("appstart", "timeout")) : 450000);
		if (!EtasGeneralDll.IsToolRunning(toolName, baseToolName, lastUsedVersion))
		{
			string text = applicationPathForVersion + "\\" + toolName + ".exe";
			if ("starting" != EtasGeneralDll.GetApplicationState(toolName, baseToolName, lastUsedVersion))
			{
				ProcessStartInfo processStartInfo = new ProcessStartInfo(text);
				processStartInfo.Arguments = "";
				processStartInfo.WorkingDirectory = applicationPathForVersion;
				Process.Start(processStartInfo);
			}
			int num2 = 0;
			while (num2 < num)
			{
				if (EtasGeneralDll.IsToolRunning(toolName, baseToolName, lastUsedVersion))
				{
					startupLogFile.logMessage("Application Start: " + text + " (" + num + ")");
					Console.Out.WriteLine("Application Start: " + text + " (" + num + ")");
					break;
				}
				num2 += 250;
				Thread.Sleep(250);
			}
		}
		initialized = true;
	}

	public static void initCebraToolIndependent(bool debugParam, bool visible, string config, string classPath)
	{
		if (!initialized)
		{
			debug = debugParam;
			LogFile.enableLogging(debugParam);
			if ((cebraLogPath = EtasGeneralDll.GetEtasLogFilePath()).Length != 0)
			{
				cebraLogPath += "Cebra";
				Directory.CreateDirectory(new FileInfo(cebraLogPath).FullName);
			}
			else
			{
				cebraLogPath = Environment.CurrentDirectory;
			}
			commonLogFile = new LogFile(cebraLogPath + FS + "CebraLog.log");
			startupLogFile = new LogFile(cebraLogPath + FS + "startupLog.log");
			if (config != null)
			{
				iniFile = new IniFile(config);
			}
			if (classPath != null)
			{
				Utilities.addToClassPath(classPath);
			}
			startupLogFile.logMessage("Log File: " + cebraLogPath);
			Console.Out.WriteLine("Log File: " + cebraLogPath);
		}
	}

	public static void print(int msg)
	{
		lock (typeof(Cebra))
		{
			try
			{
				commonLogFile.logMessage(string.Concat(msg));
			}
			catch (Exception)
			{
			}
		}
	}

	public static void print(string msg)
	{
		lock (typeof(Cebra))
		{
			try
			{
				commonLogFile.logMessage(msg);
			}
			catch
			{
			}
		}
	}

	public static void println(int msg)
	{
		lock (typeof(Cebra))
		{
			try
			{
				commonLogFile.logMessage(string.Concat(msg));
			}
			catch
			{
			}
		}
	}

	public static void println(string msg)
	{
		lock (typeof(Cebra))
		{
			try
			{
				commonLogFile.logMessage(msg);
			}
			catch
			{
			}
		}
	}

	public static void shutDown()
	{
		long shutDownTimeOut = ShutDownTimeOut;
		println("Shutdown ToolClient ...");
		ToolClient.shutDownAllToolClients(shutDownTimeOut);
		println("done.");
	}
}
