using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IAscetProject : ICodeComponent, IComponent, IDataBaseItem
{
	Formula[] AddMissingFormulasForImplementation(ImplConfiguration implConf);

	bool AddOperatingMode(string aModeName);

	AscetProjectFile AddProjectFile(string aFileName);

	Task AddTask(string name);

	Task AddTaskOfType(string name, string type);

	bool CleanCodeGenerationDirectory();

	Formula Create5ParameterFormula();

	Formula CreateIdentityFormula();

	Formula CreateLinearFormula();

	Formula CreateMoebiusFormula();

	bool DeleteAllImplTypes();

	bool DeleteFormula(Formula aformula);

	bool DeleteFormulaNamed(string aName);

	bool DeleteImplementationType(ImplementationType anImplType);

	bool DeleteImplementationTypeNamed(string aName);

	bool GenerateIntecrioCode();

	CodeGenerator[] GetAllCodeGenerators();

	Formula[] GetAllFormulas();

	PrimitiveModelElement[] GetAllGlobals();

	string[] GetAllMemoryLocations();

	string[] GetAllMemoryLocationsFor(AscetModelElement element);

	string[] GetAllMemoryLocationsForParameter();

	string[] GetAllMemoryLocationsForVariable();

	ComplexModelElement[] GetAllModules();

	string[] GetAllOperatingModes();

	AscetProjectFile[] GetAllProjectFiles();

	Target[] GetAllTargets();

	Task[] GetAllTasks();

	Process[] GetAllUnusedProcesses();

	bool GetBooleanOption(string option);

	CodeGenerator GetCodeGenerator(string cgName);

	int GetCooperativeLevel();

	CodeGenerator GetCurrentCodeGenerator();

	Target GetCurrentTarget();

	bool GetEnableMonitoring();

	Formula GetFormula(string aName);

	AscetModelElement GetGlobal(string aName);

	ComplexModelElement GetModule(string aName);

	string[] GetOptionList();

	int GetPreemptiveLevel();

	AscetProjectFile GetProjectFile(string aName);

	Target GetTarget(string aName);

	Task GetTask(string name);

	bool ReadBuildSettingsFromXMLFile(string aXMLFile);

	bool ReadCodeGenMessagesFromXMLFile(string aXMLFile);

	Formula[] ReadFormulasFromXMLFile(string aXMLFile);

	ImplementationType[] ReadImplementationTypesFromFile(string aXMLFile);

	bool ReadProjectOptionsFromXMLFile(string xmlFilePathName);

	bool RemoveImplementation(string name);

	bool RemoveOperatingMode(string aModeName);

	bool RemoveProjectFile(AscetProjectFile file);

	bool RemoveTask(Task t);

	AscetModelElement[] ResolveGlobals();

	bool SetBooleanOption(string option, bool state);

	bool SetCooperativeLevel(int level);

	bool SetCurrentCodeGenerator(CodeGenerator cg);

	bool SetCurrentTarget(Target t);

	bool SetDefaultImplementation(ImplConfiguration implConf);

	bool SetEnableMonitoring(bool flag);

	bool SetPreemptiveLevel(int level);

	bool UpdateImplementation();

	bool WriteAllProjectFormulasToXMLFile(string xmlFilePathName);

	bool WriteCodeGenMessagesToXMLFile(string xmlFilePathName);

	bool WriteFormulasToXMLFile(Formula[] formulasList, string xmlFilePathName);

	bool WriteImplementationTypesToFile(ImplementationType[] implTypeList, string xmlFilePathName);

	bool WriteAllImplementationTypesToFile(string xmlFilePathName);

	bool WriteProjectOptionsToXMLFile(string xmlFilePathName);
}
