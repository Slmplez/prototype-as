using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("A3DF3E8B-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[ProgId("Ascet.AscetModule")]
public class AscetModule : AscetDiscreteComponent, AscetModule_Dispatch, IAscetModule, IAscetDiscreteComponent, IFunctionalComponent, ICodeComponent, IComponent, IDataBaseItem
{
	object AscetModule_Dispatch.AddReceiveMessage(string n)
	{
		return AddReceiveMessage(n);
	}

	object AscetModule_Dispatch.AddSendMessage(string n)
	{
		return AddSendMessage(n);
	}

	object AscetModule_Dispatch.AddSendReceiveMessage(string n)
	{
		return AddSendReceiveMessage(n);
	}

	object AscetModule_Dispatch.GetProcessElement(string name)
	{
		return GetProcessElement(name);
	}

	object AscetModule_Dispatch.GetProcessElements()
	{
		AscetModelElement[] processElements = GetProcessElements();
		return Adapter.ToObject(processElements);
	}

	object AscetModule_Dispatch.AddArray(string n)
	{
		return AddArray(n);
	}

	object AscetModule_Dispatch.AddDiagram(string name)
	{
		return AddDiagram(name);
	}

	object AscetModule_Dispatch.AddDistribution(string n)
	{
		return AddDistribution(n);
	}

	object AscetModule_Dispatch.AddImplementation(string name)
	{
		return AddImplementation(name);
	}

	object AscetModule_Dispatch.AddImplementationCast(string name)
	{
		return AddImplementationCast(name);
	}

	object AscetModule_Dispatch.AddMatrix(string n)
	{
		return AddMatrix(n);
	}

	object AscetModule_Dispatch.AddOneDTableFixed(string name)
	{
		return AddOneDTableFixed(name);
	}

	object AscetModule_Dispatch.AddOneDTableGroup(string name, object dispatch_xDistribution)
	{
		DistributionElement xDistribution = (DistributionElement)dispatch_xDistribution;
		return AddOneDTableGroup(name, xDistribution);
	}

	object AscetModule_Dispatch.AddParameter(string n)
	{
		return AddParameter(n);
	}

	object AscetModule_Dispatch.AddTwoDTableFixed(string name)
	{
		return AddTwoDTableFixed(name);
	}

	object AscetModule_Dispatch.AddTwoDTableGroup(string name, object dispatch_xDistribution, object dispatch_yDistribution)
	{
		DistributionElement xDistribution = (DistributionElement)dispatch_xDistribution;
		DistributionElement yDistribution = (DistributionElement)dispatch_yDistribution;
		return AddTwoDTableGroup(name, xDistribution, yDistribution);
	}

	object AscetModule_Dispatch.AddVariable(string n)
	{
		return AddVariable(n);
	}

	object AscetModule_Dispatch.GetAllData()
	{
		DataConfiguration[] allData = GetAllData();
		return Adapter.ToObject(allData);
	}

	object AscetModule_Dispatch.GetAllImplementationCasts()
	{
		ImplementationCast[] allImplementationCasts = GetAllImplementationCasts();
		return Adapter.ToObject(allImplementationCasts);
	}

	object AscetModule_Dispatch.GetAllImplementations()
	{
		ImplConfiguration[] allImplementations = GetAllImplementations();
		return Adapter.ToObject(allImplementations);
	}

	object AscetModule_Dispatch.GetClassData()
	{
		return GetClassData();
	}

	object AscetModule_Dispatch.GetClassImplementation()
	{
		return GetClassImplementation();
	}

	object AscetModule_Dispatch.GetData(string name)
	{
		return GetData(name);
	}

	object AscetModule_Dispatch.GetDefaultImplementation()
	{
		return GetDefaultImplementation();
	}

	object AscetModule_Dispatch.GetDefaultProject()
	{
		return GetDefaultProject();
	}

	object AscetModule_Dispatch.GetImplementation(string name)
	{
		return GetImplementation(name);
	}

	bool AscetModule_Dispatch.SetDefaultImplementation(object dispatch_implConf)
	{
		ImplConfiguration defaultImplementation = (ImplConfiguration)dispatch_implConf;
		return SetDefaultImplementation(defaultImplementation);
	}

	string AscetModule_Dispatch.GetExternalCCodeInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalCCodeInProject(project);
	}

	string AscetModule_Dispatch.GetExternalHeaderInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalHeaderInProject(project);
	}

	string AscetModule_Dispatch.GetExternalOCodeInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalOCodeInProject(project);
	}

	string AscetModule_Dispatch.GetHeaderInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetHeaderInProject(project);
	}

	string AscetModule_Dispatch.GetHeaderInProjectForImplementation(object dispatch_project, object dispatch_implementation)
	{
		AscetProject project = (AscetProject)dispatch_project;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return GetHeaderInProjectForImplementation(project, implementation);
	}

	bool AscetModule_Dispatch.IsExternalHeaderInGlobalUseInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return IsExternalHeaderInGlobalUseInProject(project);
	}

	bool AscetModule_Dispatch.SetExternalCCodeFromFileInProject(string fileName, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalCCodeFromFileInProject(fileName, project);
	}

	bool AscetModule_Dispatch.SetExternalCCodeInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalCCodeInProject(value_Renamed, project);
	}

	bool AscetModule_Dispatch.SetExternalHeaderInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalHeaderInProject(value_Renamed, project);
	}

	bool AscetModule_Dispatch.SetExternalHeaderToGlobalUseInProject(object dispatch_project)
	{
		AscetProject externalHeaderToGlobalUseInProject = (AscetProject)dispatch_project;
		return SetExternalHeaderToGlobalUseInProject(externalHeaderToGlobalUseInProject);
	}

	bool AscetModule_Dispatch.SetExternalHeaderToLocalUseInProject(object dispatch_project)
	{
		AscetProject externalHeaderToLocalUseInProject = (AscetProject)dispatch_project;
		return SetExternalHeaderToLocalUseInProject(externalHeaderToLocalUseInProject);
	}

	bool AscetModule_Dispatch.SetExternalOCodeFromFileInProject(string fileName, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalOCodeFromFileInProject(fileName, project);
	}

	bool AscetModule_Dispatch.SetExternalOCodeInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalOCodeInProject(value_Renamed, project);
	}

	bool AscetModule_Dispatch.SetHeaderInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetHeaderInProject(value_Renamed, project);
	}

	bool AscetModule_Dispatch.SetHeaderInProjectForImplementation(string value_Renamed, object dispatch_project, object dispatch_implementation)
	{
		AscetProject project = (AscetProject)dispatch_project;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return SetHeaderInProjectForImplementation(value_Renamed, project, implementation);
	}

	object AscetModule_Dispatch.AddComponent(object dispatch_item, string name)
	{
		CodeComponent item = (CodeComponent)dispatch_item;
		return AddComponent(item, name);
	}

	object AscetModule_Dispatch.AddData(string name)
	{
		return AddData(name);
	}

	object AscetModule_Dispatch.AddDeltaT()
	{
		return AddDeltaT();
	}

	object AscetModule_Dispatch.AddEnumeration(object dispatch_enumerator, string name)
	{
		AscetEnumeration enumerator = (AscetEnumeration)dispatch_enumerator;
		return AddEnumeration(enumerator, name);
	}

	object AscetModule_Dispatch.AddOneDTable(string n)
	{
		return AddOneDTable(n);
	}

	object AscetModule_Dispatch.AddTwoDTable(string n)
	{
		return AddTwoDTable(n);
	}

	bool AscetModule_Dispatch.ExistsExportForImport(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return ExistsExportForImport(modelElement);
	}

	object AscetModule_Dispatch.GetAllComplexModelElements()
	{
		ComplexModelElement[] allComplexModelElements = GetAllComplexModelElements();
		return Adapter.ToObject(allComplexModelElements);
	}

	object AscetModule_Dispatch.GetAllDiagrams()
	{
		AscetDiagram[] allDiagrams = GetAllDiagrams();
		return Adapter.ToObject(allDiagrams);
	}

	object AscetModule_Dispatch.GetAllModelElements()
	{
		AscetModelElement[] allModelElements = GetAllModelElements();
		return Adapter.ToObject(allModelElements);
	}

	object AscetModule_Dispatch.GetAllPrimitiveModelElements()
	{
		PrimitiveModelElement[] allPrimitiveModelElements = GetAllPrimitiveModelElements();
		return Adapter.ToObject(allPrimitiveModelElements);
	}

	object AscetModule_Dispatch.GetAllReferencedModelElements()
	{
		AscetModelElement[] allReferencedModelElements = GetAllReferencedModelElements();
		return Adapter.ToObject(allReferencedModelElements);
	}

	object AscetModule_Dispatch.GetAllUndefinedComplexModelElementNames()
	{
		string[] allUndefinedComplexModelElementNames = GetAllUndefinedComplexModelElementNames();
		return Adapter.ToObject(allUndefinedComplexModelElementNames);
	}

	object AscetModule_Dispatch.GetComplexModelElement(string name)
	{
		return GetComplexModelElement(name);
	}

	object AscetModule_Dispatch.GetDefaultData()
	{
		return GetDefaultData();
	}

	object AscetModule_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object AscetModule_Dispatch.GetDiagramWithName(string diagName)
	{
		return GetDiagramWithName(diagName);
	}

	object AscetModule_Dispatch.GetExportForImport(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return GetExportForImport(modelElement);
	}

	object AscetModule_Dispatch.GetIcon()
	{
		return GetIcon();
	}

	object AscetModule_Dispatch.GetModelElement(string name)
	{
		return GetModelElement(name);
	}

	object AscetModule_Dispatch.GetPrimitiveModelElement(string name)
	{
		return GetPrimitiveModelElement(name);
	}

	object AscetModule_Dispatch.GetReferencedItemsForExport()
	{
		DataBaseItem[] referencedItemsForExport = GetReferencedItemsForExport();
		return Adapter.ToObject(referencedItemsForExport);
	}

	bool AscetModule_Dispatch.RemoveDiagram(object dispatch_diagram)
	{
		AscetDiagram diagram = (AscetDiagram)dispatch_diagram;
		return RemoveDiagram(diagram);
	}

	bool AscetModule_Dispatch.RemoveModelElement(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return RemoveModelElement(modelElement);
	}

	bool AscetModule_Dispatch.ReplaceComplexModelElement(object dispatch_element, object dispatch_component)
	{
		ComplexModelElement element = (ComplexModelElement)dispatch_element;
		AscetDiscreteComponent component = (AscetDiscreteComponent)dispatch_component;
		return ReplaceComplexModelElement(element, component);
	}

	bool AscetModule_Dispatch.ReplaceComplexModelElementNamed(string name, object dispatch_component)
	{
		AscetDiscreteComponent component = (AscetDiscreteComponent)dispatch_component;
		return ReplaceComplexModelElementNamed(name, component);
	}

	bool AscetModule_Dispatch.SetDefaultData(object dispatch_dataConf)
	{
		DataConfiguration defaultData = (DataConfiguration)dispatch_dataConf;
		return SetDefaultData(defaultData);
	}

	bool AscetModule_Dispatch.AddTextSegment(string textSegment, object views)
	{
		string[] views2 = Adapter.ToArray1Object<string>(views);
		return AddTextSegment(textSegment, views2);
	}

	object AscetModule_Dispatch.Edit()
	{
		return Edit();
	}

	object AscetModule_Dispatch.EditInFront()
	{
		return EditInFront();
	}

	object AscetModule_Dispatch.GetTextSegments()
	{
		string[] textSegments = GetTextSegments();
		return Adapter.ToObject(textSegments);
	}

	object AscetModule_Dispatch.GetViewsForTextSegment(string textSegment)
	{
		string[] viewsForTextSegment = GetViewsForTextSegment(textSegment);
		return Adapter.ToObject(viewsForTextSegment);
	}

	object AscetModule_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object AscetModule_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object AscetModule_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object AscetModule_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string AscetModule_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool AscetModule_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object AscetModule_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public AscetModule(AscetDataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public AscetModule(AscetFolder f, Identifiable h)
		: base(f, h)
	{
	}

	public ReceiveMessageElement AddReceiveMessage(string n)
	{
		Identifiable identifiable = addXXX("ReceiveMessage", n);
		if (identifiable != null)
		{
			return new ReceiveMessageElement(this, identifiable);
		}
		return null;
	}

	public SendMessageElement AddSendMessage(string n)
	{
		Identifiable identifiable = addXXX("SendMessage", n);
		if (identifiable != null)
		{
			return new SendMessageElement(this, identifiable);
		}
		return null;
	}

	public SendReceiveMessageElement AddSendReceiveMessage(string n)
	{
		Identifiable identifiable = addXXX("SendReceiveMessage", n);
		if (identifiable != null)
		{
			return new SendReceiveMessageElement(this, identifiable);
		}
		return null;
	}

	public AscetModelElement GetProcessElement(string name)
	{
		return getMethodElement(name);
	}

	public AscetModelElement[] GetProcessElements()
	{
		return getMethodElementsBasic();
	}

	public override bool IsModule()
	{
		return true;
	}

	public bool IsModuleBDE()
	{
		return IsBDEType();
	}

	public bool IsModuleC()
	{
		return IsCType();
	}

	public bool IsModuleESDL()
	{
		return IsESDLType();
	}
}
