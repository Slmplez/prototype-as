using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface AscetServer_Dispatch
{
	string APIVersion();

	string ToolName();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetGraphicGeneratorSetup();

	bool AddCodeGenMessages(string aXmlString);

	bool AscetLink(string ascetLink);

	bool AsdLink(string asdLink);

	bool ClearCodeGenMessages();

	bool CloseAllOpenWindows();

	bool FileOutLoadedTargets(string filePathName);

	bool GenerateDokument(object dispatch_item, bool recursive, string destinationPath, string fileName);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllEditorsWithUnsavedChanges();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllOpenWindows();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetComponentManagerWindow();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllViews();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetCurrentDataBase();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetCurrentProtectedDataBase(int key);

	string GetCurrentUserDataKey();

	string GetDataBasePath();

	string GetDocumentorAuthor();

	string GetDocumentorLanguage();

	string GetDocumentorOutputFormat();

	string GetDocumentorTitle();

	string GetDocumentorView();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetSCMInterface();

	bool InitializeUserDataKey();

	bool IsDatabaseMode();

	bool IsExportForINCA();

	bool IsWorkspaceMode();

	bool IsXMLExportActive();

	bool IsASCIIExportActive();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object OpenDataBase(string dataBase);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object OpenListBrowserForItems([MarshalAs(UnmanagedType.Struct)] object items, string title);

	bool ReadToolOptionsFromXMLFile(string xmlFilePathName);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object OpenProtectedDataBase(string dataBase, int key);

	string SetCurrentUserDataKey(string userKey);

	bool SetDataBasePath(string newPath);

	bool SetDocumentorAuthor(string author);

	bool SetDocumentorLanguage(string language);

	bool SetDocumentorOutputFormat(string outputFormat);

	bool SetDocumentorTitle(string title);

	bool SetDocumentorView(string view);

	bool SetExportForINCA(bool flag);

	bool SetXMLExportActive(bool flag);

	bool SaveChangesInAllEditors();

	bool SetASCIIExportActive(bool flag);

	bool WriteCodeGenerationErrorsToPath(string pathName);

	bool WriteCodeGenerationErrorsToPathUsingFileName(string pathName, string fileName);

	bool WriteToolOptionsToXMLFile(string xmlFilePathName);

	bool AddMenuButton(string aMenuButtonName, string aMenuName, string aViewName);

	bool ClearMonitor();

	bool CloseDatabase();

	bool CloseTool();

	int CreateSeed();

	bool DisconnectFromTool();

	void Exit(int exitNumber);

	bool FileOutLoadedPackages(string filePathName);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllToolboxNames();

	string GetApplicationDataPath();

	string GetApplicationLanguage();

	string GetApplicationProgramPath();

	string GetApplicationSharedPath();

	string GetCurrentVersion();

	string GetETASLogFilePath();

	string GetETASManualPath();

	string GetETASTempPath();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetLicenseManager();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetOpenedExperiment();

	bool IsDatabaseLocked();

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

	bool UnlockDatabase();

	bool UnlockTool();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object WaitMessage(string text);

	bool WriteMonitorLogFileToPath(string pathName);

	bool WriteMonitorLogFileToPathUsingFileName(string pathName, string fileName);

	bool WriteReadyToMonitor();

	bool WriteToMonitor(string text);

	void CreateApplicationError();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	bool IsToolErrorAvailable();

	new bool Equals(object hndl);

	new int GetHashCode();
}
