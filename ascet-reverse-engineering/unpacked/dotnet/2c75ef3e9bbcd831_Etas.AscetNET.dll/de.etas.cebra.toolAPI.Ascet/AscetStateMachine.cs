using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[Guid("A3DF3E8F-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.AscetStateMachine")]
public class AscetStateMachine : AscetDiscreteComponent, IAscetStateMachine, IAscetDiscreteComponent, IFunctionalComponent, ICodeComponent, IComponent, IDataBaseItem, AscetStateMachine_Dispatch
{
	public AscetStateMachine(AscetDataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public AscetStateMachine(AscetFolder f, Identifiable h)
		: base(f, h)
	{
	}

	public virtual ActionConditionDiagram AddActionConditionDiagram(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addActionConditionDiagram:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return new ActionConditionDiagram(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddActionConditionDiagram(): failed -> APIError: " + ex);
		}
		return null;
	}

	public InputElement AddInput(string n)
	{
		Identifiable identifiable = addXXX("Input", n);
		if (identifiable != null)
		{
			return new InputElement(this, identifiable);
		}
		return null;
	}

	public OutputElement AddOutput(string n)
	{
		Identifiable identifiable = addXXX("Output", n);
		if (identifiable != null)
		{
			return new OutputElement(this, identifiable);
		}
		return null;
	}

	public AscetModelElement GetMethodElement(string name)
	{
		return getMethodElement(name);
	}

	public AscetModelElement[] GetMethodElements()
	{
		return getMethodElementsBasic();
	}

	public override bool IsStateMachine()
	{
		return true;
	}

	object AscetStateMachine_Dispatch.AddActionConditionDiagram(string name)
	{
		return AddActionConditionDiagram(name);
	}

	object AscetStateMachine_Dispatch.AddInput(string n)
	{
		return AddInput(n);
	}

	object AscetStateMachine_Dispatch.AddOutput(string n)
	{
		return AddOutput(n);
	}

	object AscetStateMachine_Dispatch.GetMethodElement(string name)
	{
		return GetMethodElement(name);
	}

	object AscetStateMachine_Dispatch.GetMethodElements()
	{
		AscetModelElement[] methodElements = GetMethodElements();
		return Adapter.ToObject(methodElements);
	}

	object AscetStateMachine_Dispatch.AddArray(string n)
	{
		return AddArray(n);
	}

	object AscetStateMachine_Dispatch.AddDiagram(string name)
	{
		return AddDiagram(name);
	}

	object AscetStateMachine_Dispatch.AddDistribution(string n)
	{
		return AddDistribution(n);
	}

	object AscetStateMachine_Dispatch.AddImplementation(string name)
	{
		return AddImplementation(name);
	}

	object AscetStateMachine_Dispatch.AddImplementationCast(string name)
	{
		return AddImplementationCast(name);
	}

	object AscetStateMachine_Dispatch.AddMatrix(string n)
	{
		return AddMatrix(n);
	}

	object AscetStateMachine_Dispatch.AddOneDTableFixed(string name)
	{
		return AddOneDTableFixed(name);
	}

	object AscetStateMachine_Dispatch.AddOneDTableGroup(string name, object dispatch_xDistribution)
	{
		DistributionElement xDistribution = (DistributionElement)dispatch_xDistribution;
		return AddOneDTableGroup(name, xDistribution);
	}

	object AscetStateMachine_Dispatch.AddParameter(string n)
	{
		return AddParameter(n);
	}

	object AscetStateMachine_Dispatch.AddTwoDTableFixed(string name)
	{
		return AddTwoDTableFixed(name);
	}

	object AscetStateMachine_Dispatch.AddTwoDTableGroup(string name, object dispatch_xDistribution, object dispatch_yDistribution)
	{
		DistributionElement xDistribution = (DistributionElement)dispatch_xDistribution;
		DistributionElement yDistribution = (DistributionElement)dispatch_yDistribution;
		return AddTwoDTableGroup(name, xDistribution, yDistribution);
	}

	object AscetStateMachine_Dispatch.AddVariable(string n)
	{
		return AddVariable(n);
	}

	object AscetStateMachine_Dispatch.GetAllData()
	{
		DataConfiguration[] allData = GetAllData();
		return Adapter.ToObject(allData);
	}

	object AscetStateMachine_Dispatch.GetAllImplementationCasts()
	{
		ImplementationCast[] allImplementationCasts = GetAllImplementationCasts();
		return Adapter.ToObject(allImplementationCasts);
	}

	object AscetStateMachine_Dispatch.GetAllImplementations()
	{
		ImplConfiguration[] allImplementations = GetAllImplementations();
		return Adapter.ToObject(allImplementations);
	}

	object AscetStateMachine_Dispatch.GetClassData()
	{
		return GetClassData();
	}

	object AscetStateMachine_Dispatch.GetClassImplementation()
	{
		return GetClassImplementation();
	}

	object AscetStateMachine_Dispatch.GetData(string name)
	{
		return GetData(name);
	}

	object AscetStateMachine_Dispatch.GetDefaultImplementation()
	{
		return GetDefaultImplementation();
	}

	object AscetStateMachine_Dispatch.GetDefaultProject()
	{
		return GetDefaultProject();
	}

	object AscetStateMachine_Dispatch.GetImplementation(string name)
	{
		return GetImplementation(name);
	}

	bool AscetStateMachine_Dispatch.SetDefaultImplementation(object dispatch_implConf)
	{
		ImplConfiguration defaultImplementation = (ImplConfiguration)dispatch_implConf;
		return SetDefaultImplementation(defaultImplementation);
	}

	string AscetStateMachine_Dispatch.GetExternalCCodeInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalCCodeInProject(project);
	}

	string AscetStateMachine_Dispatch.GetExternalHeaderInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalHeaderInProject(project);
	}

	string AscetStateMachine_Dispatch.GetExternalOCodeInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalOCodeInProject(project);
	}

	string AscetStateMachine_Dispatch.GetHeaderInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetHeaderInProject(project);
	}

	string AscetStateMachine_Dispatch.GetHeaderInProjectForImplementation(object dispatch_project, object dispatch_implementation)
	{
		AscetProject project = (AscetProject)dispatch_project;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return GetHeaderInProjectForImplementation(project, implementation);
	}

	bool AscetStateMachine_Dispatch.IsExternalHeaderInGlobalUseInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return IsExternalHeaderInGlobalUseInProject(project);
	}

	bool AscetStateMachine_Dispatch.SetExternalCCodeFromFileInProject(string fileName, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalCCodeFromFileInProject(fileName, project);
	}

	bool AscetStateMachine_Dispatch.SetExternalCCodeInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalCCodeInProject(value_Renamed, project);
	}

	bool AscetStateMachine_Dispatch.SetExternalHeaderInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalHeaderInProject(value_Renamed, project);
	}

	bool AscetStateMachine_Dispatch.SetExternalHeaderToGlobalUseInProject(object dispatch_project)
	{
		AscetProject externalHeaderToGlobalUseInProject = (AscetProject)dispatch_project;
		return SetExternalHeaderToGlobalUseInProject(externalHeaderToGlobalUseInProject);
	}

	bool AscetStateMachine_Dispatch.SetExternalHeaderToLocalUseInProject(object dispatch_project)
	{
		AscetProject externalHeaderToLocalUseInProject = (AscetProject)dispatch_project;
		return SetExternalHeaderToLocalUseInProject(externalHeaderToLocalUseInProject);
	}

	bool AscetStateMachine_Dispatch.SetExternalOCodeFromFileInProject(string fileName, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalOCodeFromFileInProject(fileName, project);
	}

	bool AscetStateMachine_Dispatch.SetExternalOCodeInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalOCodeInProject(value_Renamed, project);
	}

	bool AscetStateMachine_Dispatch.SetHeaderInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetHeaderInProject(value_Renamed, project);
	}

	bool AscetStateMachine_Dispatch.SetHeaderInProjectForImplementation(string value_Renamed, object dispatch_project, object dispatch_implementation)
	{
		AscetProject project = (AscetProject)dispatch_project;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return SetHeaderInProjectForImplementation(value_Renamed, project, implementation);
	}

	object AscetStateMachine_Dispatch.AddComponent(object dispatch_item, string name)
	{
		CodeComponent item = (CodeComponent)dispatch_item;
		return AddComponent(item, name);
	}

	object AscetStateMachine_Dispatch.AddData(string name)
	{
		return AddData(name);
	}

	object AscetStateMachine_Dispatch.AddDeltaT()
	{
		return AddDeltaT();
	}

	object AscetStateMachine_Dispatch.AddEnumeration(object dispatch_enumerator, string name)
	{
		AscetEnumeration enumerator = (AscetEnumeration)dispatch_enumerator;
		return AddEnumeration(enumerator, name);
	}

	object AscetStateMachine_Dispatch.AddOneDTable(string n)
	{
		return AddOneDTable(n);
	}

	object AscetStateMachine_Dispatch.AddTwoDTable(string n)
	{
		return AddTwoDTable(n);
	}

	bool AscetStateMachine_Dispatch.ExistsExportForImport(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return ExistsExportForImport(modelElement);
	}

	object AscetStateMachine_Dispatch.GetAllComplexModelElements()
	{
		ComplexModelElement[] allComplexModelElements = GetAllComplexModelElements();
		return Adapter.ToObject(allComplexModelElements);
	}

	object AscetStateMachine_Dispatch.GetAllDiagrams()
	{
		AscetDiagram[] allDiagrams = GetAllDiagrams();
		return Adapter.ToObject(allDiagrams);
	}

	object AscetStateMachine_Dispatch.GetAllModelElements()
	{
		AscetModelElement[] allModelElements = GetAllModelElements();
		return Adapter.ToObject(allModelElements);
	}

	object AscetStateMachine_Dispatch.GetAllPrimitiveModelElements()
	{
		PrimitiveModelElement[] allPrimitiveModelElements = GetAllPrimitiveModelElements();
		return Adapter.ToObject(allPrimitiveModelElements);
	}

	object AscetStateMachine_Dispatch.GetAllReferencedModelElements()
	{
		AscetModelElement[] allReferencedModelElements = GetAllReferencedModelElements();
		return Adapter.ToObject(allReferencedModelElements);
	}

	object AscetStateMachine_Dispatch.GetAllUndefinedComplexModelElementNames()
	{
		string[] allUndefinedComplexModelElementNames = GetAllUndefinedComplexModelElementNames();
		return Adapter.ToObject(allUndefinedComplexModelElementNames);
	}

	object AscetStateMachine_Dispatch.GetComplexModelElement(string name)
	{
		return GetComplexModelElement(name);
	}

	object AscetStateMachine_Dispatch.GetDefaultData()
	{
		return GetDefaultData();
	}

	object AscetStateMachine_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object AscetStateMachine_Dispatch.GetDiagramWithName(string diagName)
	{
		return GetDiagramWithName(diagName);
	}

	object AscetStateMachine_Dispatch.GetExportForImport(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return GetExportForImport(modelElement);
	}

	object AscetStateMachine_Dispatch.GetIcon()
	{
		return GetIcon();
	}

	object AscetStateMachine_Dispatch.GetModelElement(string name)
	{
		return GetModelElement(name);
	}

	object AscetStateMachine_Dispatch.GetPrimitiveModelElement(string name)
	{
		return GetPrimitiveModelElement(name);
	}

	object AscetStateMachine_Dispatch.GetReferencedItemsForExport()
	{
		DataBaseItem[] referencedItemsForExport = GetReferencedItemsForExport();
		return Adapter.ToObject(referencedItemsForExport);
	}

	bool AscetStateMachine_Dispatch.RemoveDiagram(object dispatch_diagram)
	{
		AscetDiagram diagram = (AscetDiagram)dispatch_diagram;
		return RemoveDiagram(diagram);
	}

	bool AscetStateMachine_Dispatch.RemoveModelElement(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return RemoveModelElement(modelElement);
	}

	bool AscetStateMachine_Dispatch.ReplaceComplexModelElement(object dispatch_element, object dispatch_component)
	{
		ComplexModelElement element = (ComplexModelElement)dispatch_element;
		AscetDiscreteComponent component = (AscetDiscreteComponent)dispatch_component;
		return ReplaceComplexModelElement(element, component);
	}

	bool AscetStateMachine_Dispatch.ReplaceComplexModelElementNamed(string name, object dispatch_component)
	{
		AscetDiscreteComponent component = (AscetDiscreteComponent)dispatch_component;
		return ReplaceComplexModelElementNamed(name, component);
	}

	bool AscetStateMachine_Dispatch.SetDefaultData(object dispatch_dataConf)
	{
		DataConfiguration defaultData = (DataConfiguration)dispatch_dataConf;
		return SetDefaultData(defaultData);
	}

	bool AscetStateMachine_Dispatch.AddTextSegment(string textSegment, object views)
	{
		string[] views2 = Adapter.ToArray1Object<string>(views);
		return AddTextSegment(textSegment, views2);
	}

	object AscetStateMachine_Dispatch.Edit()
	{
		return Edit();
	}

	object AscetStateMachine_Dispatch.EditInFront()
	{
		return EditInFront();
	}

	object AscetStateMachine_Dispatch.GetTextSegments()
	{
		string[] textSegments = GetTextSegments();
		return Adapter.ToObject(textSegments);
	}

	object AscetStateMachine_Dispatch.GetViewsForTextSegment(string textSegment)
	{
		string[] viewsForTextSegment = GetViewsForTextSegment(textSegment);
		return Adapter.ToObject(viewsForTextSegment);
	}

	object AscetStateMachine_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object AscetStateMachine_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object AscetStateMachine_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object AscetStateMachine_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string AscetStateMachine_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool AscetStateMachine_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object AscetStateMachine_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
