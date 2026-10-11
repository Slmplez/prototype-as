using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
[Guid("4EBA49FC-41E9-461f-93BD-53BCD2244099")]
[ComVisible(true)]
[ProgId("Ascet.AscetAtomicSoftwareComponent")]
public class AscetAtomicSoftwareComponent : AscetDiscreteComponent, AscetAtomicSoftwareComponent_Dispatch, IAscetAtomicSoftwareComponent, IAscetDiscreteComponent, IFunctionalComponent, ICodeComponent, IComponent, IDataBaseItem
{
	object AscetAtomicSoftwareComponent_Dispatch.AddArray(string n)
	{
		return AddArray(n);
	}

	object AscetAtomicSoftwareComponent_Dispatch.AddDiagram(string name)
	{
		return AddDiagram(name);
	}

	object AscetAtomicSoftwareComponent_Dispatch.AddDistribution(string n)
	{
		return AddDistribution(n);
	}

	object AscetAtomicSoftwareComponent_Dispatch.AddImplementation(string name)
	{
		return AddImplementation(name);
	}

	object AscetAtomicSoftwareComponent_Dispatch.AddImplementationCast(string name)
	{
		return AddImplementationCast(name);
	}

	object AscetAtomicSoftwareComponent_Dispatch.AddMatrix(string n)
	{
		return AddMatrix(n);
	}

	object AscetAtomicSoftwareComponent_Dispatch.AddOneDTableFixed(string name)
	{
		return AddOneDTableFixed(name);
	}

	object AscetAtomicSoftwareComponent_Dispatch.AddOneDTableGroup(string name, object dispatch_xDistribution)
	{
		DistributionElement xDistribution = (DistributionElement)dispatch_xDistribution;
		return AddOneDTableGroup(name, xDistribution);
	}

	object AscetAtomicSoftwareComponent_Dispatch.AddParameter(string n)
	{
		return AddParameter(n);
	}

	object AscetAtomicSoftwareComponent_Dispatch.AddTwoDTableFixed(string name)
	{
		return AddTwoDTableFixed(name);
	}

	object AscetAtomicSoftwareComponent_Dispatch.AddTwoDTableGroup(string name, object dispatch_xDistribution, object dispatch_yDistribution)
	{
		DistributionElement xDistribution = (DistributionElement)dispatch_xDistribution;
		DistributionElement yDistribution = (DistributionElement)dispatch_yDistribution;
		return AddTwoDTableGroup(name, xDistribution, yDistribution);
	}

	object AscetAtomicSoftwareComponent_Dispatch.AddVariable(string n)
	{
		return AddVariable(n);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetAllData()
	{
		DataConfiguration[] allData = GetAllData();
		return Adapter.ToObject(allData);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetAllImplementationCasts()
	{
		ImplementationCast[] allImplementationCasts = GetAllImplementationCasts();
		return Adapter.ToObject(allImplementationCasts);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetAllImplementations()
	{
		ImplConfiguration[] allImplementations = GetAllImplementations();
		return Adapter.ToObject(allImplementations);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetClassData()
	{
		return GetClassData();
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetClassImplementation()
	{
		return GetClassImplementation();
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetData(string name)
	{
		return GetData(name);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetDefaultImplementation()
	{
		return GetDefaultImplementation();
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetDefaultProject()
	{
		return GetDefaultProject();
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetImplementation(string name)
	{
		return GetImplementation(name);
	}

	bool AscetAtomicSoftwareComponent_Dispatch.SetDefaultImplementation(object dispatch_implConf)
	{
		ImplConfiguration defaultImplementation = (ImplConfiguration)dispatch_implConf;
		return SetDefaultImplementation(defaultImplementation);
	}

	string AscetAtomicSoftwareComponent_Dispatch.GetExternalCCodeInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalCCodeInProject(project);
	}

	string AscetAtomicSoftwareComponent_Dispatch.GetExternalHeaderInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalHeaderInProject(project);
	}

	string AscetAtomicSoftwareComponent_Dispatch.GetExternalOCodeInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalOCodeInProject(project);
	}

	string AscetAtomicSoftwareComponent_Dispatch.GetHeaderInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetHeaderInProject(project);
	}

	string AscetAtomicSoftwareComponent_Dispatch.GetHeaderInProjectForImplementation(object dispatch_project, object dispatch_implementation)
	{
		AscetProject project = (AscetProject)dispatch_project;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return GetHeaderInProjectForImplementation(project, implementation);
	}

	bool AscetAtomicSoftwareComponent_Dispatch.IsExternalHeaderInGlobalUseInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return IsExternalHeaderInGlobalUseInProject(project);
	}

	bool AscetAtomicSoftwareComponent_Dispatch.SetExternalCCodeFromFileInProject(string fileName, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalCCodeFromFileInProject(fileName, project);
	}

	bool AscetAtomicSoftwareComponent_Dispatch.SetExternalCCodeInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalCCodeInProject(value_Renamed, project);
	}

	bool AscetAtomicSoftwareComponent_Dispatch.SetExternalHeaderInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalHeaderInProject(value_Renamed, project);
	}

	bool AscetAtomicSoftwareComponent_Dispatch.SetExternalHeaderToGlobalUseInProject(object dispatch_project)
	{
		AscetProject externalHeaderToGlobalUseInProject = (AscetProject)dispatch_project;
		return SetExternalHeaderToGlobalUseInProject(externalHeaderToGlobalUseInProject);
	}

	bool AscetAtomicSoftwareComponent_Dispatch.SetExternalHeaderToLocalUseInProject(object dispatch_project)
	{
		AscetProject externalHeaderToLocalUseInProject = (AscetProject)dispatch_project;
		return SetExternalHeaderToLocalUseInProject(externalHeaderToLocalUseInProject);
	}

	bool AscetAtomicSoftwareComponent_Dispatch.SetExternalOCodeFromFileInProject(string fileName, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalOCodeFromFileInProject(fileName, project);
	}

	bool AscetAtomicSoftwareComponent_Dispatch.SetExternalOCodeInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalOCodeInProject(value_Renamed, project);
	}

	bool AscetAtomicSoftwareComponent_Dispatch.SetHeaderInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetHeaderInProject(value_Renamed, project);
	}

	bool AscetAtomicSoftwareComponent_Dispatch.SetHeaderInProjectForImplementation(string value_Renamed, object dispatch_project, object dispatch_implementation)
	{
		AscetProject project = (AscetProject)dispatch_project;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return SetHeaderInProjectForImplementation(value_Renamed, project, implementation);
	}

	object AscetAtomicSoftwareComponent_Dispatch.AddComponent(object dispatch_item, string name)
	{
		CodeComponent item = (CodeComponent)dispatch_item;
		return AddComponent(item, name);
	}

	object AscetAtomicSoftwareComponent_Dispatch.AddData(string name)
	{
		return AddData(name);
	}

	object AscetAtomicSoftwareComponent_Dispatch.AddDeltaT()
	{
		return AddDeltaT();
	}

	object AscetAtomicSoftwareComponent_Dispatch.AddEnumeration(object dispatch_enumerator, string name)
	{
		AscetEnumeration enumerator = (AscetEnumeration)dispatch_enumerator;
		return AddEnumeration(enumerator, name);
	}

	object AscetAtomicSoftwareComponent_Dispatch.AddOneDTable(string n)
	{
		return AddOneDTable(n);
	}

	object AscetAtomicSoftwareComponent_Dispatch.AddTwoDTable(string n)
	{
		return AddTwoDTable(n);
	}

	bool AscetAtomicSoftwareComponent_Dispatch.ExistsExportForImport(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return ExistsExportForImport(modelElement);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetAllComplexModelElements()
	{
		ComplexModelElement[] allComplexModelElements = GetAllComplexModelElements();
		return Adapter.ToObject(allComplexModelElements);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetAllDiagrams()
	{
		AscetDiagram[] allDiagrams = GetAllDiagrams();
		return Adapter.ToObject(allDiagrams);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetAllModelElements()
	{
		AscetModelElement[] allModelElements = GetAllModelElements();
		return Adapter.ToObject(allModelElements);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetAllPrimitiveModelElements()
	{
		PrimitiveModelElement[] allPrimitiveModelElements = GetAllPrimitiveModelElements();
		return Adapter.ToObject(allPrimitiveModelElements);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetAllReferencedModelElements()
	{
		AscetModelElement[] allReferencedModelElements = GetAllReferencedModelElements();
		return Adapter.ToObject(allReferencedModelElements);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetAllUndefinedComplexModelElementNames()
	{
		string[] allUndefinedComplexModelElementNames = GetAllUndefinedComplexModelElementNames();
		return Adapter.ToObject(allUndefinedComplexModelElementNames);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetComplexModelElement(string name)
	{
		return GetComplexModelElement(name);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetDefaultData()
	{
		return GetDefaultData();
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetDiagramWithName(string diagName)
	{
		return GetDiagramWithName(diagName);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetExportForImport(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return GetExportForImport(modelElement);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetIcon()
	{
		return GetIcon();
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetModelElement(string name)
	{
		return GetModelElement(name);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetPrimitiveModelElement(string name)
	{
		return GetPrimitiveModelElement(name);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetReferencedItemsForExport()
	{
		DataBaseItem[] referencedItemsForExport = GetReferencedItemsForExport();
		return Adapter.ToObject(referencedItemsForExport);
	}

	bool AscetAtomicSoftwareComponent_Dispatch.RemoveDiagram(object dispatch_diagram)
	{
		AscetDiagram diagram = (AscetDiagram)dispatch_diagram;
		return RemoveDiagram(diagram);
	}

	bool AscetAtomicSoftwareComponent_Dispatch.RemoveModelElement(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return RemoveModelElement(modelElement);
	}

	bool AscetAtomicSoftwareComponent_Dispatch.ReplaceComplexModelElement(object dispatch_element, object dispatch_component)
	{
		ComplexModelElement element = (ComplexModelElement)dispatch_element;
		AscetDiscreteComponent component = (AscetDiscreteComponent)dispatch_component;
		return ReplaceComplexModelElement(element, component);
	}

	bool AscetAtomicSoftwareComponent_Dispatch.ReplaceComplexModelElementNamed(string name, object dispatch_component)
	{
		AscetDiscreteComponent component = (AscetDiscreteComponent)dispatch_component;
		return ReplaceComplexModelElementNamed(name, component);
	}

	bool AscetAtomicSoftwareComponent_Dispatch.SetDefaultData(object dispatch_dataConf)
	{
		DataConfiguration defaultData = (DataConfiguration)dispatch_dataConf;
		return SetDefaultData(defaultData);
	}

	bool AscetAtomicSoftwareComponent_Dispatch.AddTextSegment(string textSegment, object views)
	{
		string[] views2 = Adapter.ToArray1Object<string>(views);
		return AddTextSegment(textSegment, views2);
	}

	object AscetAtomicSoftwareComponent_Dispatch.Edit()
	{
		return Edit();
	}

	object AscetAtomicSoftwareComponent_Dispatch.EditInFront()
	{
		return EditInFront();
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetTextSegments()
	{
		string[] textSegments = GetTextSegments();
		return Adapter.ToObject(textSegments);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetViewsForTextSegment(string textSegment)
	{
		string[] viewsForTextSegment = GetViewsForTextSegment(textSegment);
		return Adapter.ToObject(viewsForTextSegment);
	}

	object AscetAtomicSoftwareComponent_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object AscetAtomicSoftwareComponent_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string AscetAtomicSoftwareComponent_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool AscetAtomicSoftwareComponent_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object AscetAtomicSoftwareComponent_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public AscetAtomicSoftwareComponent(AscetDataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public AscetAtomicSoftwareComponent(AscetFolder f, Identifiable h)
		: base(f, h)
	{
	}

	public override bool IsAscetAtomicSoftwareComponent()
	{
		return true;
	}
}
