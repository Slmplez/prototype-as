using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
[Guid("A3DF3E84-B490-11D3-8A29-00A0247767D8")]
[ProgId("Ascet.AscetCTBlock")]
public class AscetCTBlock : AscetCTComponent, IAscetCTBlock, IAscetCTComponent, IFunctionalComponent, ICodeComponent, IComponent, IDataBaseItem, AscetCTBlock_Dispatch
{
	public AscetCTBlock(AscetDataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public AscetCTBlock(AscetFolder f, Identifiable h)
		: base(f, h)
	{
	}

	public ConstantElement AddConstant(string n)
	{
		Identifiable identifiable = addXXX("Constant", n);
		if (identifiable != null)
		{
			return new ConstantElement(this, identifiable);
		}
		return null;
	}

	public ContinuousStateElement AddContinuousState(string n)
	{
		Identifiable identifiable = addXXX("ContinuousState", n);
		if (identifiable != null)
		{
			return new ContinuousStateElement(this, identifiable);
		}
		return null;
	}

	public DependentParameterElement AddDependentParameter(string n)
	{
		Identifiable identifiable = addXXX("DependentParameter", n);
		if (identifiable != null)
		{
			return new DependentParameterElement(this, identifiable);
		}
		return null;
	}

	public DiscreteStateElement AddDiscreteState(string n)
	{
		Identifiable identifiable = addXXX("DiscreteState", n);
		if (identifiable != null)
		{
			return new DiscreteStateElement(this, identifiable);
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

	public ParameterElement AddParameter(string n)
	{
		Identifiable identifiable = addParam(n);
		if (identifiable != null)
		{
			return new ParameterElement(this, identifiable);
		}
		return null;
	}

	public StepLocalElement AddStepLocal(string n)
	{
		Identifiable identifiable = addXXX("StepLocal", n);
		if (identifiable != null)
		{
			return new StepLocalElement(this, identifiable);
		}
		return null;
	}

	public override bool IsCTBlock()
	{
		return true;
	}

	public bool IsCTBlockBDE()
	{
		return IsBDEType();
	}

	public bool IsCTBlockC()
	{
		return IsCType();
	}

	public bool IsCTBlockESDL()
	{
		return IsESDLType();
	}

	public bool SetBlockDirect(bool direct)
	{
		if (!IsCType())
		{
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setBlockBehaviorDirect:");
			instanceMethodCall.appendParameter(direct);
			call(instanceMethodCall);
			if (Equals(instanceMethodCall.ResultRemoteObject))
			{
				return true;
			}
		}
		catch (Exception ex)
		{
			handleException(ex);
		}
		return false;
	}

	object AscetCTBlock_Dispatch.AddConstant(string n)
	{
		return AddConstant(n);
	}

	object AscetCTBlock_Dispatch.AddContinuousState(string n)
	{
		return AddContinuousState(n);
	}

	object AscetCTBlock_Dispatch.AddDependentParameter(string n)
	{
		return AddDependentParameter(n);
	}

	object AscetCTBlock_Dispatch.AddDiscreteState(string n)
	{
		return AddDiscreteState(n);
	}

	object AscetCTBlock_Dispatch.AddInput(string n)
	{
		return AddInput(n);
	}

	object AscetCTBlock_Dispatch.AddOutput(string n)
	{
		return AddOutput(n);
	}

	object AscetCTBlock_Dispatch.AddParameter(string n)
	{
		return AddParameter(n);
	}

	object AscetCTBlock_Dispatch.AddStepLocal(string n)
	{
		return AddStepLocal(n);
	}

	string AscetCTBlock_Dispatch.GetExternalCCodeInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalCCodeInProject(project);
	}

	string AscetCTBlock_Dispatch.GetExternalHeaderInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalHeaderInProject(project);
	}

	string AscetCTBlock_Dispatch.GetExternalOCodeInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalOCodeInProject(project);
	}

	string AscetCTBlock_Dispatch.GetHeaderInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetHeaderInProject(project);
	}

	string AscetCTBlock_Dispatch.GetHeaderInProjectForImplementation(object dispatch_project, object dispatch_implementation)
	{
		AscetProject project = (AscetProject)dispatch_project;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return GetHeaderInProjectForImplementation(project, implementation);
	}

	bool AscetCTBlock_Dispatch.IsExternalHeaderInGlobalUseInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return IsExternalHeaderInGlobalUseInProject(project);
	}

	bool AscetCTBlock_Dispatch.SetExternalCCodeFromFileInProject(string fileName, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalCCodeFromFileInProject(fileName, project);
	}

	bool AscetCTBlock_Dispatch.SetExternalCCodeInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalCCodeInProject(value_Renamed, project);
	}

	bool AscetCTBlock_Dispatch.SetExternalHeaderInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalHeaderInProject(value_Renamed, project);
	}

	bool AscetCTBlock_Dispatch.SetExternalHeaderToGlobalUseInProject(object dispatch_project)
	{
		AscetProject externalHeaderToGlobalUseInProject = (AscetProject)dispatch_project;
		return SetExternalHeaderToGlobalUseInProject(externalHeaderToGlobalUseInProject);
	}

	bool AscetCTBlock_Dispatch.SetExternalHeaderToLocalUseInProject(object dispatch_project)
	{
		AscetProject externalHeaderToLocalUseInProject = (AscetProject)dispatch_project;
		return SetExternalHeaderToLocalUseInProject(externalHeaderToLocalUseInProject);
	}

	bool AscetCTBlock_Dispatch.SetExternalOCodeFromFileInProject(string fileName, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalOCodeFromFileInProject(fileName, project);
	}

	bool AscetCTBlock_Dispatch.SetExternalOCodeInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalOCodeInProject(value_Renamed, project);
	}

	bool AscetCTBlock_Dispatch.SetHeaderInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetHeaderInProject(value_Renamed, project);
	}

	bool AscetCTBlock_Dispatch.SetHeaderInProjectForImplementation(string value_Renamed, object dispatch_project, object dispatch_implementation)
	{
		AscetProject project = (AscetProject)dispatch_project;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return SetHeaderInProjectForImplementation(value_Renamed, project, implementation);
	}

	object AscetCTBlock_Dispatch.AddComponent(object dispatch_item, string name)
	{
		CodeComponent item = (CodeComponent)dispatch_item;
		return AddComponent(item, name);
	}

	object AscetCTBlock_Dispatch.AddData(string name)
	{
		return AddData(name);
	}

	object AscetCTBlock_Dispatch.AddDeltaT()
	{
		return AddDeltaT();
	}

	object AscetCTBlock_Dispatch.AddEnumeration(object dispatch_enumerator, string name)
	{
		AscetEnumeration enumerator = (AscetEnumeration)dispatch_enumerator;
		return AddEnumeration(enumerator, name);
	}

	object AscetCTBlock_Dispatch.AddOneDTable(string n)
	{
		return AddOneDTable(n);
	}

	object AscetCTBlock_Dispatch.AddTwoDTable(string n)
	{
		return AddTwoDTable(n);
	}

	bool AscetCTBlock_Dispatch.ExistsExportForImport(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return ExistsExportForImport(modelElement);
	}

	object AscetCTBlock_Dispatch.GetAllComplexModelElements()
	{
		ComplexModelElement[] allComplexModelElements = GetAllComplexModelElements();
		return Adapter.ToObject(allComplexModelElements);
	}

	object AscetCTBlock_Dispatch.GetAllDiagrams()
	{
		AscetDiagram[] allDiagrams = GetAllDiagrams();
		return Adapter.ToObject(allDiagrams);
	}

	object AscetCTBlock_Dispatch.GetAllModelElements()
	{
		AscetModelElement[] allModelElements = GetAllModelElements();
		return Adapter.ToObject(allModelElements);
	}

	object AscetCTBlock_Dispatch.GetAllPrimitiveModelElements()
	{
		PrimitiveModelElement[] allPrimitiveModelElements = GetAllPrimitiveModelElements();
		return Adapter.ToObject(allPrimitiveModelElements);
	}

	object AscetCTBlock_Dispatch.GetAllReferencedModelElements()
	{
		AscetModelElement[] allReferencedModelElements = GetAllReferencedModelElements();
		return Adapter.ToObject(allReferencedModelElements);
	}

	object AscetCTBlock_Dispatch.GetAllUndefinedComplexModelElementNames()
	{
		string[] allUndefinedComplexModelElementNames = GetAllUndefinedComplexModelElementNames();
		return Adapter.ToObject(allUndefinedComplexModelElementNames);
	}

	object AscetCTBlock_Dispatch.GetComplexModelElement(string name)
	{
		return GetComplexModelElement(name);
	}

	object AscetCTBlock_Dispatch.GetDefaultData()
	{
		return GetDefaultData();
	}

	object AscetCTBlock_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object AscetCTBlock_Dispatch.GetDiagramWithName(string diagName)
	{
		return GetDiagramWithName(diagName);
	}

	object AscetCTBlock_Dispatch.GetExportForImport(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return GetExportForImport(modelElement);
	}

	object AscetCTBlock_Dispatch.GetIcon()
	{
		return GetIcon();
	}

	object AscetCTBlock_Dispatch.GetModelElement(string name)
	{
		return GetModelElement(name);
	}

	object AscetCTBlock_Dispatch.GetPrimitiveModelElement(string name)
	{
		return GetPrimitiveModelElement(name);
	}

	object AscetCTBlock_Dispatch.GetReferencedItemsForExport()
	{
		DataBaseItem[] referencedItemsForExport = GetReferencedItemsForExport();
		return Adapter.ToObject(referencedItemsForExport);
	}

	bool AscetCTBlock_Dispatch.RemoveDiagram(object dispatch_diagram)
	{
		AscetDiagram diagram = (AscetDiagram)dispatch_diagram;
		return RemoveDiagram(diagram);
	}

	bool AscetCTBlock_Dispatch.RemoveModelElement(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return RemoveModelElement(modelElement);
	}

	bool AscetCTBlock_Dispatch.ReplaceComplexModelElement(object dispatch_element, object dispatch_component)
	{
		ComplexModelElement element = (ComplexModelElement)dispatch_element;
		AscetDiscreteComponent component = (AscetDiscreteComponent)dispatch_component;
		return ReplaceComplexModelElement(element, component);
	}

	bool AscetCTBlock_Dispatch.ReplaceComplexModelElementNamed(string name, object dispatch_component)
	{
		AscetDiscreteComponent component = (AscetDiscreteComponent)dispatch_component;
		return ReplaceComplexModelElementNamed(name, component);
	}

	bool AscetCTBlock_Dispatch.SetDefaultData(object dispatch_dataConf)
	{
		DataConfiguration defaultData = (DataConfiguration)dispatch_dataConf;
		return SetDefaultData(defaultData);
	}

	bool AscetCTBlock_Dispatch.AddTextSegment(string textSegment, object views)
	{
		string[] views2 = Adapter.ToArray1Object<string>(views);
		return AddTextSegment(textSegment, views2);
	}

	object AscetCTBlock_Dispatch.Edit()
	{
		return Edit();
	}

	object AscetCTBlock_Dispatch.EditInFront()
	{
		return EditInFront();
	}

	object AscetCTBlock_Dispatch.GetTextSegments()
	{
		string[] textSegments = GetTextSegments();
		return Adapter.ToObject(textSegments);
	}

	object AscetCTBlock_Dispatch.GetViewsForTextSegment(string textSegment)
	{
		string[] viewsForTextSegment = GetViewsForTextSegment(textSegment);
		return Adapter.ToObject(viewsForTextSegment);
	}

	object AscetCTBlock_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object AscetCTBlock_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object AscetCTBlock_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object AscetCTBlock_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string AscetCTBlock_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool AscetCTBlock_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object AscetCTBlock_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
