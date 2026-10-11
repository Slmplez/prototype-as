using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;

namespace de.etas.cebra.toolAPI.Common;

[ClassInterface(ClassInterfaceType.None)]
public abstract class EtasTool : SmalltalkToolAPI
{
	protected internal ArrayList evListeners;

	public EtasTool()
	{
	}

	public EtasTool(ClientSender q)
		: base(q)
	{
	}

	public EtasTool(string toolName, string baseToolName)
	{
		Cebra.initCebraToolDependent(toolName, baseToolName, ProgId());
		ClientSender s = ToolClient.initToolSocket(toolName);
		init(s);
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("EtasMainAPI", "createForCurrentOpenedDatabase");
			call(classMethodCall);
			setIdentifier(classMethodCall.ResultRemoteObject);
			SwitchLoggingOff();
		}
		catch (NullHandleException ex)
		{
			logEntry("EtasTool(" + toolName + "): " + ex);
		}
		catch (ErrorResultException ex2)
		{
			logEntry("EtasTool(" + toolName + "): " + ex2);
		}
		catch (Exception)
		{
			logEntry("Instantiation of " + toolName + " failed.");
		}
	}

	[Obsolete("Method is no longer supported since ASCET V5.2.0", false)]
	public bool AddMenuButton(string aMenuButtonName, string aMenuName, string aViewName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addMenuButton:inMenu:forView:");
			instanceMethodCall.appendParameter(aMenuButtonName);
			instanceMethodCall.appendParameter(aMenuName);
			instanceMethodCall.appendParameter(aViewName);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultBoolean;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".AddMenuButton(): failed.");
		}
		return false;
	}

	public virtual string APIVersion()
	{
		return "";
	}

	public virtual bool ClearMonitor()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("clearMonitor");
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ClearMonitor(): failed. " + ex);
		}
		return false;
	}

	[Obsolete("Feature is not supported", false)]
	public bool CloseDatabase()
	{
		return false;
	}

	public bool CloseTool()
	{
		try
		{
			InstanceMethodCall mc = createInstanceMethodCall("exit");
			call(mc, block: false);
			ToolClient.shutDownToolClient(ToolName(), Cebra.ShutDownTimeOut);
			close();
			Cebra.initialized = false;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".LockDatabase(): failed -> APIError" + ex);
		}
		return false;
	}

	public virtual int CreateSeed()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getNewValidSeed:");
			instanceMethodCall.appendParameter(1);
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".CreateSeed(): failed -> APIError" + ex);
		}
		return 0;
	}

	public virtual bool DisconnectFromTool()
	{
		try
		{
			MethodCall mc = new ControlMessageCall(this);
			callQuit(mc);
			ToolClient.shutDownToolClient(ToolName(), Cebra.ShutDownTimeOut);
			close();
			Cebra.initialized = false;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".DisconnectFromTool(): failed -> APIError" + ex);
		}
		return false;
	}

	[Obsolete("Do not use this method", false)]
	public void Exit(int exitNumber)
	{
		Environment.Exit(exitNumber);
	}

	public virtual bool FileOutLoadedPackages(string filePathName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("fileOutLoadedPackages:");
			instanceMethodCall.appendParameter(filePathName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (ErrorResultException ex)
		{
			logEntry(GetType().FullName + ".LoadedPackages(): failed. -> APIError: " + ex);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".LoadedPackages(): failed.");
		}
		return false;
	}

	public override void finalize()
	{
	}

	protected internal virtual Hashtable get_Renamed(Hashtable h, string name, bool creation)
	{
		Hashtable hashtable = (Hashtable)h[name];
		if (hashtable == null && creation)
		{
			hashtable = (Hashtable)(h[name] = Hashtable.Synchronized(new Hashtable()));
		}
		return hashtable;
	}

	public string[] GetAllToolboxNames()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllToolboxNames");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetAllToolboxNames(): failed :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetAllToolboxNames(): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetAllToolboxNames(): failed.");
		}
		return null;
	}

	public virtual string GetApplicationDataPath()
	{
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("EtasGeneralDllApi", "getAppDataPath");
			call(classMethodCall);
			return classMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry("GetApplicationDataPath() failed: " + ex);
		}
		return null;
	}

	public virtual string GetApplicationLanguage()
	{
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("EtasGeneralDllApi", "getLanguageForApp");
			call(classMethodCall);
			return classMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry("GetApplicationLanguage() failed: " + ex);
		}
		return null;
	}

	public virtual string GetApplicationProgramPath()
	{
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("EtasGeneralDllApi", "getAppProgramPath");
			call(classMethodCall);
			return classMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry("GetApplicationProgramPath() failed: " + ex);
		}
		return null;
	}

	public virtual string GetApplicationSharedPath()
	{
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("EtasGeneralDllApi", "getETASSharedFilePath");
			call(classMethodCall);
			return classMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry("GetApplicationSharedPath() failed: " + ex);
		}
		return null;
	}

	public string GetCurrentVersion()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCurrentVersion");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetCurrentVersion(): failed");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetCurrentVersion(): failed -> APIError:" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetCurrentVersion(): failed.");
		}
		return null;
	}

	public virtual string GetETASLogFilePath()
	{
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("EtasGeneralDllApi", "getETASLogFilePath");
			call(classMethodCall);
			return classMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry("GetETASLogFilePath() failed: " + ex);
		}
		return null;
	}

	public virtual string GetETASManualPath()
	{
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("EtasGeneralDllApi", "getETASManualFilePath");
			call(classMethodCall);
			return classMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry("GetETASManualPath() failed: " + ex);
		}
		return null;
	}

	public virtual string GetETASTempPath()
	{
		try
		{
			ClassMethodCall classMethodCall = createClassMethodCall("EtasGeneralDllApi", "getETASTempFilePath");
			call(classMethodCall);
			return classMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry("GetETASTempPath() failed: " + ex);
		}
		return null;
	}

	public EtasLicenseManager GetLicenseManager()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getLicenseManager");
			call(instanceMethodCall);
			return new EtasLicenseManager(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetLicenseManager(): failed :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetLicenseManager(): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetLicenseManager(): failed.");
		}
		return null;
	}

	[Obsolete("Do not use this method", false)]
	public virtual Experiment GetOpenedExperiment()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getOpenedExperiment");
			call(instanceMethodCall);
			return Experiment.factory(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetOpenedExperiment(): failed :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetOpenedExperiment(): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetOpenedExperiment(): failed.");
		}
		return null;
	}

	private static string getToolName()
	{
		return "Unknown";
	}

	public virtual bool IsDatabaseLocked()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isDatabaseLocked");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsDatabaseLocked(): failed -> APIError" + ex);
		}
		return false;
	}

	public virtual bool IsToolLocked()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isToolLocked");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsToolLocked(): failed -> APIError" + ex);
		}
		return false;
	}

	public virtual bool LockDatabase()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("lockDatabase");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".LockDatabase(): failed -> APIError" + ex);
		}
		return false;
	}

	public virtual bool LockTool()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("lockTool");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".LockTool(): failed -> APIError" + ex);
		}
		return false;
	}

	public virtual bool PermitMessageBoxes()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("permitMessageBoxes");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".PermitMessageBoxes(): failed -> APIError" + ex);
		}
		return false;
	}

	public virtual string ProgId()
	{
		string text = ToolName() + "." + ToolName();
		string text2 = APIVersion();
		if (text2.Length != 0)
		{
			text = text + "." + text2;
		}
		return text;
	}

	public virtual bool SuppressMessageBoxes()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("suppressMessageBoxes");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SuppressMessageBoxes(): failed -> APIError" + ex);
		}
		return false;
	}

	public virtual void SwitchCatchWalkbackOff()
	{
		try
		{
			ControlMessageCall controlMessageCall = createControlMessageCall("switchCatchWalkbackOff");
			call(controlMessageCall);
			_ = controlMessageCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SwitchCatchWalkbackOff(): failed -> APIError" + ex);
		}
	}

	public virtual void SwitchCatchWalkbackOn()
	{
		try
		{
			ControlMessageCall controlMessageCall = createControlMessageCall("switchCatchWalkbackOn");
			call(controlMessageCall);
			_ = controlMessageCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SwitchCatchWalkbackOn(): failed -> APIError" + ex);
		}
	}

	public virtual void SwitchLoggingOff()
	{
		sender.SwitchLoggingOff();
	}

	public virtual void SwitchLoggingOn()
	{
		sender.SwitchLoggingOn();
	}

	public virtual string ToolName()
	{
		return getToolName();
	}

	public virtual bool UnlockDatabase()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("unlockDatabase");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".UnlockDatabase(): failed -> APIError" + ex);
		}
		return false;
	}

	public virtual bool UnlockTool()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("unlockTool");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".UnlockTool(): failed -> APIError" + ex);
		}
		return false;
	}

	public virtual MessageBox WaitMessage(string text)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("waitMessage:");
			instanceMethodCall.appendParameter(text);
			call(instanceMethodCall);
			return new MessageBox(Sender, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".WaitMessage(" + text + "): failed." + ex);
		}
		return null;
	}

	public virtual bool WriteMonitorLogFileToPath(string pathName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("saveMonitorContentsToPath:");
			instanceMethodCall.appendParameter(pathName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (ErrorResultException ex)
		{
			logEntry(GetType().FullName + ".WriteMonitorLogFileToPath(): failed. -> APIError: " + ex);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".WriteMonitorLogFileToPath(): failed.");
		}
		return false;
	}

	public virtual bool WriteMonitorLogFileToPathUsingFileName(string pathName, string fileName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("saveMonitorContentsToPath:fileName:");
			instanceMethodCall.appendParameter(pathName);
			instanceMethodCall.appendParameter(fileName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (ErrorResultException ex)
		{
			logEntry(GetType().FullName + ".WriteMonitorLogFileToPathUsingFileName(): failed. -> APIError: " + ex);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".WriteMonitorLogFileToPathUsingFileName(): failed.");
		}
		return false;
	}

	public virtual bool WriteReadyToMonitor()
	{
		try
		{
			InstanceMethodCall mc = createInstanceMethodCall("writeReadyToMonitor");
			call(mc);
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".WriteReadyToMonitor(): failed.");
		}
		return false;
	}

	public virtual bool WriteToMonitor(string text)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("writeToMonitor:");
			instanceMethodCall.appendParameter(text);
			call(instanceMethodCall);
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".WriteToMonitor(" + text + "): failed.");
		}
		return false;
	}
}
