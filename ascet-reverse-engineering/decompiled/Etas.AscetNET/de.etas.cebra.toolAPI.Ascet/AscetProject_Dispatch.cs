using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface AscetProject_Dispatch
{
	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddArray(string n);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddDistribution(string n);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddImplementation(string name);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddMatrix(string n);

	[return: MarshalAs(UnmanagedType.Struct)]
	object AddMissingFormulasForImplementation(object dispatch_implConf);

	bool AddOperatingMode(string aModeName);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddParameter(string n);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddProjectFile(string aFileName);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddTask(string name);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddTaskOfType(string name, string type);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddVariable(string n);

	bool CleanCodeGenerationDirectory();

	string CopyDataSetNamed(string aDataSetName);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object Create5ParameterFormula();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object CreateIdentityFormula();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object CreateLinearFormula();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object CreateMoebiusFormula();

	string CreateNewDataSet();

	bool DeleteAllImplTypes();

	string DeleteDataSetNamed(string aDataSetName);

	bool DeleteFormula(object dispatch_aformula);

	bool DeleteFormulaNamed(string aName);

	bool DeleteImplementationType(object dispatch_anImplType);

	bool DeleteImplementationTypeNamed(string aName);

	bool GenerateIntecrioCode();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllCodeGenerators();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllData();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllDataSets();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllFormulas();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllGlobals();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllMemoryLocations();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllMemoryLocationsFor(object dispatch_element);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllMemoryLocationsForParameter();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllMemoryLocationsForVariable();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllImplementations();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllModules();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllOperatingModes();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllProjectFiles();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllTargets();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllTasks();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllUnusedProcesses();

	bool GetBooleanOption(string option);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetClassData();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetClassImplementation();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetCodeGenerator(string cgName);

	int GetCooperativeLevel();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetCurrentCodeGenerator();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetCurrentTarget();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetData(string name);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetDefaultImplementation();

	bool GetEnableMonitoring();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetFormula(string aName);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetGlobal(string aName);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetImplementation(string name);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetModule(string aName);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetOptionList();

	int GetPreemptiveLevel();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetProjectFile(string aName);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetTarget(string aName);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetTask(string name);

	bool IsAscetProject();

	bool IsProject();

	bool ReadBuildSettingsFromXMLFile(string aXMLFile);

	bool ReadCodeGenMessagesFromXMLFile(string aXMLFile);

	[return: MarshalAs(UnmanagedType.Struct)]
	object ReadFormulasFromXMLFile(string aXMLFile);

	[return: MarshalAs(UnmanagedType.Struct)]
	object ReadImplementationTypesFromFile(string aXMLFile);

	bool ReadHexFile(string aFileName);

	bool ReadProjectOptionsFromXMLFile(string xmlFilePathName);

	bool RemoveImplementation(string name);

	bool RemoveOperatingMode(string aModeName);

	bool RemoveProjectFile(object dispatch_file);

	bool RemoveTask(object dispatch_t);

	[return: MarshalAs(UnmanagedType.Struct)]
	object ResolveGlobals();

	bool SetBooleanOption(string option, bool state);

	bool SetCooperativeLevel(int level);

	bool SetCurrentCodeGenerator(object dispatch_cg);

	bool SetCurrentTarget(object dispatch_t);

	bool SetDefaultImplementation(object dispatch_implConf);

	bool SetEnableMonitoring(bool flag);

	bool SetPreemptiveLevel(int level);

	bool UpdateImplementation();

	bool WriteASAP2ToFile(string aFileName);

	bool WriteASAP2WithoutCodeGenerationToFile(string aFileName);

	bool WriteAllImplementationTypesToFile(string xmlFilePathName);

	bool WriteAllProjectFormulasToXMLFile(string xmlFilePathName);

	bool WriteCodeGenMessagesToXMLFile(string xmlFilePathName);

	bool WriteImplementationTypesToFile([MarshalAs(UnmanagedType.Struct)] object implTypeList, string xmlFilePathName);

	bool WriteFormulasToXMLFile([MarshalAs(UnmanagedType.Struct)] object formulasList, string xmlFilePathName);

	bool WriteProjectOptionsToXMLFile(string xmlFilePathName);

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

	bool IsAscetProtocol();

	bool IsClass();

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
