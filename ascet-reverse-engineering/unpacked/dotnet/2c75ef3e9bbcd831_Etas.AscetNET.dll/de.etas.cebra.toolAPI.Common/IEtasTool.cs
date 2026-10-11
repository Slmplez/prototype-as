using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface IEtasTool
{
	string APIVersion();

	bool ClearMonitor();

	int CreateSeed();

	void CreateApplicationError();

	bool DisconnectFromTool();

	bool FileOutLoadedPackages(string filePathName);

	string GetApplicationDataPath();

	string GetApplicationLanguage();

	string GetApplicationProgramPath();

	string GetApplicationSharedPath();

	string GetETASLogFilePath();

	string GetETASManualPath();

	string GetETASTempPath();

	Experiment GetOpenedExperiment();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	bool IsDatabaseLocked();

	bool IsToolErrorAvailable();

	bool IsToolLocked();

	bool LockDatabase();

	bool LockTool();

	bool PermitMessageBoxes();

	string ProgId();

	bool SuppressMessageBoxes();

	void SwitchCatchWalkbackOff();

	void SwitchCatchWalkbackOn();

	void SwitchLoggingOff();

	void SwitchLoggingOn();

	string ToolName();

	bool UnlockDatabase();

	bool UnlockTool();

	MessageBox WaitMessage(string text);

	bool WriteMonitorLogFileToPath(string pathName);

	bool WriteMonitorLogFileToPathUsingFileName(string pathName, string fileName);

	bool WriteReadyToMonitor();

	bool WriteToMonitor(string text);
}
