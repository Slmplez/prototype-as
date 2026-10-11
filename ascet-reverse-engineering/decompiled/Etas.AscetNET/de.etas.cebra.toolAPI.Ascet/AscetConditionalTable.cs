using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.AscetConditionalTable")]
[Guid("09BF4DCD-C13B-4e42-834D-92A152B3C299")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public class AscetConditionalTable : AscetDiscreteComponent, AscetConditionalTable_Dispatch, IAscetConditionalTable, IAscetDiscreteComponent, IFunctionalComponent, ICodeComponent, IComponent, IDataBaseItem
{
	bool AscetConditionalTable_Dispatch.AddCondition(int index, object dispatch_anElement)
	{
		PrimitiveModelElement anElement = (PrimitiveModelElement)dispatch_anElement;
		return AddCondition(index, anElement);
	}

	bool AscetConditionalTable_Dispatch.AddInstruction(int index, object dispatch_anElement)
	{
		PrimitiveModelElement anElement = (PrimitiveModelElement)dispatch_anElement;
		return AddInstruction(index, anElement);
	}

	object AscetConditionalTable_Dispatch.GetMethodElement(string name)
	{
		return GetMethodElement(name);
	}

	object AscetConditionalTable_Dispatch.GetMethodElements()
	{
		AscetModelElement[] methodElements = GetMethodElements();
		return Adapter.ToObject(methodElements);
	}

	object AscetConditionalTable_Dispatch.AddArray(string n)
	{
		return AddArray(n);
	}

	object AscetConditionalTable_Dispatch.AddDiagram(string name)
	{
		return AddDiagram(name);
	}

	object AscetConditionalTable_Dispatch.AddDistribution(string n)
	{
		return AddDistribution(n);
	}

	object AscetConditionalTable_Dispatch.AddImplementation(string name)
	{
		return AddImplementation(name);
	}

	object AscetConditionalTable_Dispatch.AddImplementationCast(string name)
	{
		return AddImplementationCast(name);
	}

	object AscetConditionalTable_Dispatch.AddMatrix(string n)
	{
		return AddMatrix(n);
	}

	object AscetConditionalTable_Dispatch.AddOneDTableFixed(string name)
	{
		return AddOneDTableFixed(name);
	}

	object AscetConditionalTable_Dispatch.AddOneDTableGroup(string name, object dispatch_xDistribution)
	{
		DistributionElement xDistribution = (DistributionElement)dispatch_xDistribution;
		return AddOneDTableGroup(name, xDistribution);
	}

	object AscetConditionalTable_Dispatch.AddParameter(string n)
	{
		return AddParameter(n);
	}

	object AscetConditionalTable_Dispatch.AddTwoDTableFixed(string name)
	{
		return AddTwoDTableFixed(name);
	}

	object AscetConditionalTable_Dispatch.AddTwoDTableGroup(string name, object dispatch_xDistribution, object dispatch_yDistribution)
	{
		DistributionElement xDistribution = (DistributionElement)dispatch_xDistribution;
		DistributionElement yDistribution = (DistributionElement)dispatch_yDistribution;
		return AddTwoDTableGroup(name, xDistribution, yDistribution);
	}

	object AscetConditionalTable_Dispatch.AddVariable(string n)
	{
		return AddVariable(n);
	}

	object AscetConditionalTable_Dispatch.GetAllData()
	{
		DataConfiguration[] allData = GetAllData();
		return Adapter.ToObject(allData);
	}

	object AscetConditionalTable_Dispatch.GetAllImplementationCasts()
	{
		ImplementationCast[] allImplementationCasts = GetAllImplementationCasts();
		return Adapter.ToObject(allImplementationCasts);
	}

	object AscetConditionalTable_Dispatch.GetAllImplementations()
	{
		ImplConfiguration[] allImplementations = GetAllImplementations();
		return Adapter.ToObject(allImplementations);
	}

	object AscetConditionalTable_Dispatch.GetClassData()
	{
		return GetClassData();
	}

	object AscetConditionalTable_Dispatch.GetClassImplementation()
	{
		return GetClassImplementation();
	}

	object AscetConditionalTable_Dispatch.GetData(string name)
	{
		return GetData(name);
	}

	object AscetConditionalTable_Dispatch.GetDefaultImplementation()
	{
		return GetDefaultImplementation();
	}

	object AscetConditionalTable_Dispatch.GetDefaultProject()
	{
		return GetDefaultProject();
	}

	object AscetConditionalTable_Dispatch.GetImplementation(string name)
	{
		return GetImplementation(name);
	}

	bool AscetConditionalTable_Dispatch.SetDefaultImplementation(object dispatch_implConf)
	{
		ImplConfiguration defaultImplementation = (ImplConfiguration)dispatch_implConf;
		return SetDefaultImplementation(defaultImplementation);
	}

	string AscetConditionalTable_Dispatch.GetExternalCCodeInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalCCodeInProject(project);
	}

	string AscetConditionalTable_Dispatch.GetExternalHeaderInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalHeaderInProject(project);
	}

	string AscetConditionalTable_Dispatch.GetExternalOCodeInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalOCodeInProject(project);
	}

	string AscetConditionalTable_Dispatch.GetHeaderInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetHeaderInProject(project);
	}

	string AscetConditionalTable_Dispatch.GetHeaderInProjectForImplementation(object dispatch_project, object dispatch_implementation)
	{
		AscetProject project = (AscetProject)dispatch_project;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return GetHeaderInProjectForImplementation(project, implementation);
	}

	bool AscetConditionalTable_Dispatch.IsExternalHeaderInGlobalUseInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return IsExternalHeaderInGlobalUseInProject(project);
	}

	bool AscetConditionalTable_Dispatch.SetExternalCCodeFromFileInProject(string fileName, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalCCodeFromFileInProject(fileName, project);
	}

	bool AscetConditionalTable_Dispatch.SetExternalCCodeInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalCCodeInProject(value_Renamed, project);
	}

	bool AscetConditionalTable_Dispatch.SetExternalHeaderInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalHeaderInProject(value_Renamed, project);
	}

	bool AscetConditionalTable_Dispatch.SetExternalHeaderToGlobalUseInProject(object dispatch_project)
	{
		AscetProject externalHeaderToGlobalUseInProject = (AscetProject)dispatch_project;
		return SetExternalHeaderToGlobalUseInProject(externalHeaderToGlobalUseInProject);
	}

	bool AscetConditionalTable_Dispatch.SetExternalHeaderToLocalUseInProject(object dispatch_project)
	{
		AscetProject externalHeaderToLocalUseInProject = (AscetProject)dispatch_project;
		return SetExternalHeaderToLocalUseInProject(externalHeaderToLocalUseInProject);
	}

	bool AscetConditionalTable_Dispatch.SetExternalOCodeFromFileInProject(string fileName, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalOCodeFromFileInProject(fileName, project);
	}

	bool AscetConditionalTable_Dispatch.SetExternalOCodeInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalOCodeInProject(value_Renamed, project);
	}

	bool AscetConditionalTable_Dispatch.SetHeaderInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetHeaderInProject(value_Renamed, project);
	}

	bool AscetConditionalTable_Dispatch.SetHeaderInProjectForImplementation(string value_Renamed, object dispatch_project, object dispatch_implementation)
	{
		AscetProject project = (AscetProject)dispatch_project;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return SetHeaderInProjectForImplementation(value_Renamed, project, implementation);
	}

	object AscetConditionalTable_Dispatch.AddComponent(object dispatch_item, string name)
	{
		CodeComponent item = (CodeComponent)dispatch_item;
		return AddComponent(item, name);
	}

	object AscetConditionalTable_Dispatch.AddData(string name)
	{
		return AddData(name);
	}

	object AscetConditionalTable_Dispatch.AddDeltaT()
	{
		return AddDeltaT();
	}

	object AscetConditionalTable_Dispatch.AddEnumeration(object dispatch_enumerator, string name)
	{
		AscetEnumeration enumerator = (AscetEnumeration)dispatch_enumerator;
		return AddEnumeration(enumerator, name);
	}

	object AscetConditionalTable_Dispatch.AddOneDTable(string n)
	{
		return AddOneDTable(n);
	}

	object AscetConditionalTable_Dispatch.AddTwoDTable(string n)
	{
		return AddTwoDTable(n);
	}

	bool AscetConditionalTable_Dispatch.ExistsExportForImport(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return ExistsExportForImport(modelElement);
	}

	object AscetConditionalTable_Dispatch.GetAllComplexModelElements()
	{
		ComplexModelElement[] allComplexModelElements = GetAllComplexModelElements();
		return Adapter.ToObject(allComplexModelElements);
	}

	object AscetConditionalTable_Dispatch.GetAllDiagrams()
	{
		AscetDiagram[] allDiagrams = GetAllDiagrams();
		return Adapter.ToObject(allDiagrams);
	}

	object AscetConditionalTable_Dispatch.GetAllModelElements()
	{
		AscetModelElement[] allModelElements = GetAllModelElements();
		return Adapter.ToObject(allModelElements);
	}

	object AscetConditionalTable_Dispatch.GetAllPrimitiveModelElements()
	{
		PrimitiveModelElement[] allPrimitiveModelElements = GetAllPrimitiveModelElements();
		return Adapter.ToObject(allPrimitiveModelElements);
	}

	object AscetConditionalTable_Dispatch.GetAllReferencedModelElements()
	{
		AscetModelElement[] allReferencedModelElements = GetAllReferencedModelElements();
		return Adapter.ToObject(allReferencedModelElements);
	}

	object AscetConditionalTable_Dispatch.GetAllUndefinedComplexModelElementNames()
	{
		string[] allUndefinedComplexModelElementNames = GetAllUndefinedComplexModelElementNames();
		return Adapter.ToObject(allUndefinedComplexModelElementNames);
	}

	object AscetConditionalTable_Dispatch.GetComplexModelElement(string name)
	{
		return GetComplexModelElement(name);
	}

	object AscetConditionalTable_Dispatch.GetDefaultData()
	{
		return GetDefaultData();
	}

	object AscetConditionalTable_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object AscetConditionalTable_Dispatch.GetDiagramWithName(string diagName)
	{
		return GetDiagramWithName(diagName);
	}

	object AscetConditionalTable_Dispatch.GetExportForImport(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return GetExportForImport(modelElement);
	}

	object AscetConditionalTable_Dispatch.GetIcon()
	{
		return GetIcon();
	}

	object AscetConditionalTable_Dispatch.GetModelElement(string name)
	{
		return GetModelElement(name);
	}

	object AscetConditionalTable_Dispatch.GetPrimitiveModelElement(string name)
	{
		return GetPrimitiveModelElement(name);
	}

	object AscetConditionalTable_Dispatch.GetReferencedItemsForExport()
	{
		DataBaseItem[] referencedItemsForExport = GetReferencedItemsForExport();
		return Adapter.ToObject(referencedItemsForExport);
	}

	bool AscetConditionalTable_Dispatch.RemoveDiagram(object dispatch_diagram)
	{
		AscetDiagram diagram = (AscetDiagram)dispatch_diagram;
		return RemoveDiagram(diagram);
	}

	bool AscetConditionalTable_Dispatch.RemoveModelElement(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return RemoveModelElement(modelElement);
	}

	bool AscetConditionalTable_Dispatch.ReplaceComplexModelElement(object dispatch_element, object dispatch_component)
	{
		ComplexModelElement element = (ComplexModelElement)dispatch_element;
		AscetDiscreteComponent component = (AscetDiscreteComponent)dispatch_component;
		return ReplaceComplexModelElement(element, component);
	}

	bool AscetConditionalTable_Dispatch.ReplaceComplexModelElementNamed(string name, object dispatch_component)
	{
		AscetDiscreteComponent component = (AscetDiscreteComponent)dispatch_component;
		return ReplaceComplexModelElementNamed(name, component);
	}

	bool AscetConditionalTable_Dispatch.SetDefaultData(object dispatch_dataConf)
	{
		DataConfiguration defaultData = (DataConfiguration)dispatch_dataConf;
		return SetDefaultData(defaultData);
	}

	bool AscetConditionalTable_Dispatch.AddTextSegment(string textSegment, object views)
	{
		string[] views2 = Adapter.ToArray1Object<string>(views);
		return AddTextSegment(textSegment, views2);
	}

	object AscetConditionalTable_Dispatch.Edit()
	{
		return Edit();
	}

	object AscetConditionalTable_Dispatch.EditInFront()
	{
		return EditInFront();
	}

	object AscetConditionalTable_Dispatch.GetTextSegments()
	{
		string[] textSegments = GetTextSegments();
		return Adapter.ToObject(textSegments);
	}

	object AscetConditionalTable_Dispatch.GetViewsForTextSegment(string textSegment)
	{
		string[] viewsForTextSegment = GetViewsForTextSegment(textSegment);
		return Adapter.ToObject(viewsForTextSegment);
	}

	object AscetConditionalTable_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object AscetConditionalTable_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object AscetConditionalTable_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object AscetConditionalTable_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string AscetConditionalTable_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool AscetConditionalTable_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object AscetConditionalTable_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public AscetConditionalTable(AscetDataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public AscetConditionalTable(AscetFolder f, Identifiable h)
		: base(f, h)
	{
	}

	public virtual bool AddCondition(int index, PrimitiveModelElement anElement)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addCondition:element:");
			instanceMethodCall.appendParameter(index);
			instanceMethodCall.appendParameter(anElement);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(string.Concat(GetType().FullName, ".AddCondition(", index, ", ", anElement, ") failed. Component itself not defined."));
		}
		catch (ErrorResultException ex2)
		{
			logEntry(string.Concat(GetType().FullName, ".AddCondition(", index, ", ", anElement, ") failed due to API Error ", ex2));
		}
		catch (Exception)
		{
			logEntry(string.Concat(GetType().FullName, ".AddCondition(", index, ", ", anElement, ") failed."));
		}
		return false;
	}

	public virtual bool AddInstruction(int index, PrimitiveModelElement anElement)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addInstruction:element:");
			instanceMethodCall.appendParameter(index);
			instanceMethodCall.appendParameter(anElement);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(string.Concat(GetType().FullName, ".AddInstruction(", index, ", ", anElement, ") failed. Component itself not defined."));
		}
		catch (ErrorResultException ex2)
		{
			logEntry(string.Concat(GetType().FullName, ".AddInstruction(", index, ", ", anElement, ") failed due to API Error ", ex2));
		}
		catch (Exception)
		{
			logEntry(string.Concat(GetType().FullName, ".AddInstruction(", index, ", ", anElement, ") failed."));
		}
		return false;
	}

	public virtual bool AddRow()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addRow");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".AddRow() failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".AddRow() failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".AddRow() failed.");
		}
		return false;
	}

	public virtual bool AddRowBehind(int aRowIndex)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addRowBehind:");
			instanceMethodCall.appendParameter(aRowIndex);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".AddRowBehind(" + aRowIndex + ") failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".AddRowBehind(" + aRowIndex + ") failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".AddRowBehind(" + aRowIndex + ") failed.");
		}
		return false;
	}

	public virtual bool DeleteRow(int anIndex)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deleteRow:");
			instanceMethodCall.appendParameter(anIndex);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".DeleteRow(" + anIndex + ") failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".DeleteRow(" + anIndex + ") failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".DeleteRow(" + anIndex + ") failed.");
		}
		return false;
	}

	public virtual string GetConditionValueAt(int x, int y)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getConditionValue:");
			instanceMethodCall.appendParameter(getPoint(x, y));
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetConditionValueAt(" + x + ", " + y + ") failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetConditionValueAt(" + x + ", " + y + ") failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetConditionValueAt(" + x + ", " + y + ") failed.");
		}
		return null;
	}

	public virtual string GetInstructionValueAt(int x, int y)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getInstructionValue:");
			instanceMethodCall.appendParameter(getPoint(x, y));
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetInstructionValueAt(" + x + ", " + y + ") failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetInstructionValueAt(" + x + ", " + y + ") failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetInstructionValueAt(" + x + ", " + y + ") failed.");
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

	public override bool IsConditionalTable()
	{
		return true;
	}

	public virtual bool MoveConditionColumnLeft(int anIndex)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("moveConditionColumnLeft:");
			instanceMethodCall.appendParameter(anIndex);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".MoveConditionColumnLeft(" + anIndex + ") failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".MoveConditionColumnLeft(" + anIndex + ") failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".MoveConditionColumnLeft(" + anIndex + ") failed.");
		}
		return false;
	}

	public virtual bool MoveConditionColumnRight(int anIndex)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("moveConditionColumnRight:");
			instanceMethodCall.appendParameter(anIndex);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".MoveConditionColumnRight(" + anIndex + ") failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".MoveConditionColumnRight(" + anIndex + ") failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".MoveConditionColumnRight(" + anIndex + ") failed.");
		}
		return false;
	}

	public virtual bool MoveInstructionColumnLeft(int anIndex)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("moveInstructionColumnLeft:");
			instanceMethodCall.appendParameter(anIndex);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".MoveInstructionColumnLeft(" + anIndex + ") failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".MoveInstructionColumnLeft(" + anIndex + ") failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".MoveInstructionColumnLeft(" + anIndex + ") failed.");
		}
		return false;
	}

	public virtual bool MoveInstructionColumnRight(int anIndex)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("moveInstructionColumnRight:");
			instanceMethodCall.appendParameter(anIndex);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".MoveInstructionColumnRight(" + anIndex + ") failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".MoveInstructionColumnRight(" + anIndex + ") failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".MoveInstructionColumnRight(" + anIndex + ") failed.");
		}
		return false;
	}

	public virtual bool MoveRowDown(int anIndex)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("moveRowDown:");
			instanceMethodCall.appendParameter(anIndex);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".MoveRowDown(" + anIndex + ") failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".MoveRowDown(" + anIndex + ") failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".MoveRowDown(" + anIndex + ") failed.");
		}
		return false;
	}

	public virtual bool MoveRowUp(int anIndex)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("moveRowUp:");
			instanceMethodCall.appendParameter(anIndex);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".MoveRowUp(" + anIndex + ") failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".MoveRowUp(" + anIndex + ") failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".MoveRowUp(" + anIndex + ") failed.");
		}
		return false;
	}

	public virtual bool RemoveConditionColumn(int anIndex)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("removeConditionColumn:");
			instanceMethodCall.appendParameter(anIndex);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".RemoveConditionColumn(" + anIndex + ") failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".RemoveConditionColumn(" + anIndex + ") failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".RemoveConditionColumn(" + anIndex + ") failed.");
		}
		return false;
	}

	public virtual bool RemoveInstructionColumn(int anIndex)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("removeInstructionColumn:");
			instanceMethodCall.appendParameter(anIndex);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".RemoveInstructionColumn(" + anIndex + ") failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".RemoveInstructionColumn(" + anIndex + ") failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".RemoveInstructionColumn(" + anIndex + ") failed.");
		}
		return false;
	}

	public virtual bool SetConditionValueAt(string aValue, int x, int y)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setConditionValue:forCell:");
			instanceMethodCall.appendParameter(aValue);
			instanceMethodCall.appendParameter(getPoint(x, y));
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetConditionValueAt(" + aValue + ", " + x + ", " + y + ") failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetConditionValueAt(" + aValue + ", " + x + ", " + y + ") failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetConditionValueAt(" + aValue + ", " + x + ", " + y + ") failed.");
		}
		return false;
	}

	public virtual bool SetInstructionValueAt(string aValue, int x, int y)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setInstructionValue:forCell:");
			instanceMethodCall.appendParameter(aValue);
			instanceMethodCall.appendParameter(getPoint(x, y));
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetInstructionValueAt(" + aValue + ", " + x + ", " + y + ") failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetInstructionValueAt(" + aValue + ", " + x + ", " + y + ") failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetInstructionValueAt(" + aValue + ", " + x + ", " + y + ") failed.");
		}
		return false;
	}
}
