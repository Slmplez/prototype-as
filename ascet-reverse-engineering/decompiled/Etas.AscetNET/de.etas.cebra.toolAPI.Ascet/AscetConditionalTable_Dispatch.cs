using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface AscetConditionalTable_Dispatch
{
	bool AddCondition(int index, object dispatch_anElement);

	bool AddInstruction(int index, object dispatch_anElement);

	bool AddRow();

	bool AddRowBehind(int aRowIndex);

	bool DeleteRow(int anIndex);

	string GetConditionValueAt(int x, int y);

	string GetInstructionValueAt(int x, int y);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetMethodElement(string name);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetMethodElements();

	bool IsConditionalTable();

	bool MoveConditionColumnLeft(int anIndex);

	bool MoveConditionColumnRight(int anIndex);

	bool MoveInstructionColumnLeft(int anIndex);

	bool MoveInstructionColumnRight(int anIndex);

	bool MoveRowDown(int anIndex);

	bool MoveRowUp(int anIndex);

	bool RemoveConditionColumn(int anIndex);

	bool RemoveInstructionColumn(int anIndex);

	bool SetConditionValueAt(string aValue, int x, int y);

	bool SetInstructionValueAt(string aValue, int x, int y);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddArray(string n);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddDiagram(string name);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddDistribution(string n);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddImplementation(string name);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddImplementationCast(string name);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddMatrix(string n);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddOneDTableFixed(string name);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddOneDTableGroup(string name, object dispatch_xDistribution);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddParameter(string n);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddTwoDTableFixed(string name);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddTwoDTableGroup(string name, object dispatch_xDistribution, object dispatch_yDistribution);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddVariable(string n);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllData();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllImplementationCasts();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllImplementations();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetClassData();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetClassImplementation();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetData(string name);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetDefaultImplementation();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetDefaultProject();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetImplementation(string name);

	bool IsDiscreteComponent();

	bool RemoveImplementation(string name);

	bool SetDefaultImplementation(object dispatch_implConf);

	string GetExternalCCode();

	string GetExternalCCodeInProject(object dispatch_project);

	string GetExternalHeader();

	string GetExternalHeaderInProject(object dispatch_project);

	string GetExternalOCode();

	string GetExternalOCodeInProject(object dispatch_project);

	string GetHeader();

	string GetHeaderInProject(object dispatch_project);

	string GetHeaderInProjectForImplementation(object dispatch_project, object dispatch_implementation);

	bool IsBDEType();

	bool IsCType();

	bool IsESDLType();

	bool IsExternalHeaderInGlobalUse();

	bool IsExternalHeaderInGlobalUseInProject(object dispatch_project);

	bool IsFunctionalComponent();

	bool SetExternalCCode(string value_Renamed);

	bool SetExternalCCodeFromFileInProject(string fileName, object dispatch_project);

	bool SetExternalCCodeInProject(string value_Renamed, object dispatch_project);

	bool SetExternalHeader(string value_Renamed);

	bool SetExternalHeaderInProject(string value_Renamed, object dispatch_project);

	bool SetExternalHeaderToGlobalUse();

	bool SetExternalHeaderToGlobalUseInProject(object dispatch_project);

	bool SetExternalHeaderToLocalUse();

	bool SetExternalHeaderToLocalUseInProject(object dispatch_project);

	bool SetExternalOCode(string value_Renamed);

	bool SetExternalOCodeFromFileInProject(string fileName, object dispatch_project);

	bool SetExternalOCodeInProject(string value_Renamed, object dispatch_project);

	bool SetHeader(string value_Renamed);

	bool SetHeaderInProject(string value_Renamed, object dispatch_project);

	bool SetHeaderInProjectForImplementation(string value_Renamed, object dispatch_project, object dispatch_implementation);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddComponent(object dispatch_item, string name);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddData(string name);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddDeltaT();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddEnumeration(object dispatch_enumerator, string name);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddOneDTable(string n);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddTwoDTable(string n);

	bool BuildAll();

	bool BuildAllWriteErrorsToPath(string pathName);

	bool BuildAllWriteErrorsToPathUsingFileName(string pathName, string fileName);

	bool ExistsExportForImport(object dispatch_modelElement);

	bool FileOutGeneratedCodeFlat(string pathName);

	bool FileOutGeneratedCodeRecursive(string pathName);

	bool FileOutGenericCodeForExternalMakeFlat(string pathName);

	bool FileOutGenericCodeForExternalMakeRecursive(string pathName);

	bool GenerateCode();

	bool GenerateCodeForOfflineExperiment();

	bool GenerateCodeForOfflineExperimentWriteErrorsToPath(string pathName);

	bool GenerateCodeForOfflineExperimentWriteErrorsToPathUsingFileName(string pathName, string fileName);

	bool GenerateCodeWriteErrorsToPath(string pathName);

	bool GenerateCodeWriteErrorsToPathUsingFileName(string pathName, string fileName);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllComplexModelElements();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllDiagrams();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllModelElements();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllPrimitiveModelElements();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllReferencedModelElements();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllUndefinedComplexModelElementNames();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetComplexModelElement(string name);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetDefaultData();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetDiagram();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetDiagramWithName(string diagName);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetExportForImport(object dispatch_modelElement);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetIcon();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetModelElement(string name);

	string GetOIDForComplexModelElementNamed(string elementName);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetPrimitiveModelElement(string name);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetReferencedItemsForExport();

	bool HasIcon();

	bool HasReferencedItemsForExport();

	bool IsCodeComponent();

	bool RebuildAll();

	bool RebuildAllWriteErrorsToPath(string pathName);

	bool RebuildAllWriteErrorsToPathUsingFileName(string pathName, string fileName);

	bool RemoveData(string name);

	bool RemoveDiagram(object dispatch_diagram);

	bool RemoveModelElement(object dispatch_modelElement);

	bool ReplaceComplexModelElement(object dispatch_element, object dispatch_component);

	bool ReplaceComplexModelElementNamed(string name, object dispatch_component);

	bool SetDefaultData(object dispatch_dataConf);

	bool TouchFlat();

	bool TouchRecursive();

	bool WriteDCMToFile(string outputFilePathName, bool recursive);

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

	bool IsCTBlock();

	bool IsCTComponent();

	bool IsDataBaseItem();

	bool IsDataSet();

	bool IsEnumeration();

	bool IsExperimentEnvironment();

	bool IsFolder();

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
