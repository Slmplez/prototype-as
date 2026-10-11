using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface Asap2Project_Dispatch
{
	bool IsAsap2Project();

	bool IsAsap2Item();

	bool AddTextSegment(string textSegment, [MarshalAs(UnmanagedType.Struct)] object views);

	bool AssignViewToTextSegment(string view, string textSegment);

	bool DeAssignViewFromTextSegment(string view, string textSegment);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object Edit();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object EditInFront();

	string GetConfiguration();

	string GetCustomerDataString();

	string GetDate();

	string GetNoteForTextSegment(string textSegment);

	string GetRequirementManagmentDataString();

	string GetRequirementManagementDataString();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetTextSegments();

	string GetUserDataString();

	string GetVersion();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetViewsForTextSegment(string textSegment);

	bool IsComponent();

	bool IsEdition();

	bool IsVersion();

	bool RemoveTextSegment(string textSegment);

	bool ResetVersion();

	bool SetConfiguration(string configuration);

	bool SetCustomerDataString(string newContents);

	bool SetEdition();

	bool SetNoteForTextSegment(string noteText, string textSegment);

	bool SetRequirementManagementDataString(string newContents);

	bool SetUserDataString(string newContents);

	bool SetVersion(string version);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object Copy(string name);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object CopyToFolder(string name, object dispatch_folder);

	bool ExportToFile(string fileName, bool multipleFiles, bool reference);

	bool ExportXMLToFile(string filePath, bool references);

	bool ExportXMLToZipFile(string filePathAndName, bool references);

	bool GetAccessRightApplication();

	bool GetAccessRightCodeGeneration();

	bool GetAccessRightExecute();

	bool GetAccessRightRead();

	bool GetAccessRightWrite();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllReferecedDataBaseItems();

	string GetComment();

	bool GetDisallowImport();

	string GetName();

	string GetNameWithPath();

	string GetOID();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetParentFolder();

	string GetComponentType();

	new string GetType();

	bool IsAsap2CanDB();

	bool IsAsap2Catalog();

	bool IsAsap2ProjectFolder();

	bool IsAscetAtomicSoftwareComponent();

	bool IsAscetContainer();

	bool IsAscetFolder();

	bool IsAscetInterface();

	bool IsAscetNetwork();

	bool IsAscetProject();

	bool IsAscetProtocol();

	bool IsClass();

	bool IsCodeComponent();

	bool IsConditionalTable();

	bool IsCTBlock();

	bool IsCTComponent();

	bool IsDataBaseItem();

	bool IsDataSet();

	bool IsDiscreteComponent();

	bool IsEnumeration();

	bool IsExperimentEnvironment();

	bool IsFolder();

	bool IsFunctionalComponent();

	bool IsHardwareConfiguration();

	bool IsIcon();

	bool IsIncaFolder();

	bool IsModule();

	bool IsProject();

	bool IsRecord();

	bool IsSignal();

	bool IsStateMachine();

	bool Move(object dispatch_folder);

	bool SetAccessRightApplication(bool aBool);

	bool SetAccessRightCodeGeneration(bool aBool);

	bool SetAccessRightExecute(bool aBool);

	bool SetAccessRightRead(bool aBool);

	bool SetAccessRightWrite(bool aBool);

	bool SetComment(string comment);

	bool SetDisallowImport(bool aBool);

	bool SetName(string aName);

	void CreateApplicationError();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetDataBase();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	bool IsAbstractBlockDiagramElement();

	bool IsAbstractMethod();

	bool IsAscetDiagram();

	bool IsAscetProjectFile();

	bool IsCodeGenerator();

	bool IsConfiguration();

	bool IsConfigurationItem();

	bool IsDeviceDescription();

	bool IsFormula();

	bool IsHWDevice();

	bool IsHWSubDevice();

	bool IsHWSystem();

	bool IsImplInfo();

	bool IsModelElement();

	bool IsSubDeviceDescription();

	bool IsSystemDescription();

	bool IsTarget();

	bool IsTask();

	bool IsToolErrorAvailable();

	new bool Equals(object hndl);

	new int GetHashCode();
}
