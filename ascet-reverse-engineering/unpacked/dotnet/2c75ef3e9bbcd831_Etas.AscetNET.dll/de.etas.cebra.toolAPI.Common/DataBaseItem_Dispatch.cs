using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface DataBaseItem_Dispatch
{
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

	bool IsAsap2Item();

	bool IsAsap2Project();

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

	bool IsComponent();

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
