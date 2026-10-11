using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[ProgId("Ascet.FunctionalComponent")]
[Guid("A3DF3EA5-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
public class FunctionalComponent : CodeComponent, IFunctionalComponent, ICodeComponent, IComponent, IDataBaseItem, FunctionalComponent_Dispatch
{
	public FunctionalComponent(DataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public FunctionalComponent(Folder f, Identifiable h)
		: base(f, h)
	{
	}

	public string GetExternalCCode()
	{
		return GetExternalCCodeInProject(null);
	}

	public string GetExternalCCodeInProject(AscetProject project)
	{
		if (!IsCType())
		{
			logEntry(GetType().FullName + ".GetExternalCCodeInProject(...): Block must be of type 'C'.");
			return null;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getExternalCCodeProject:");
			instanceMethodCall.appendParameter(project);
			call(instanceMethodCall);
			string resultString = instanceMethodCall.ResultString;
			if (resultString.Length == 0)
			{
				return null;
			}
			return resultString;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetExternalCCodeInProject(...) failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetExternalCCodeInProject(...) failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetExternalCCodeInProject(...) failed.");
		}
		return null;
	}

	public string GetExternalHeader()
	{
		return GetExternalHeaderInProject(null);
	}

	public string GetExternalHeaderInProject(AscetProject project)
	{
		if (!IsCType())
		{
			logEntry(GetType().FullName + ".GetExternalHeaderInProject(...): Block must be of type 'C'.");
			return null;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getExternalHCodeProject:");
			instanceMethodCall.appendParameter(project);
			call(instanceMethodCall);
			string resultString = instanceMethodCall.ResultString;
			if (resultString.Length == 0)
			{
				return null;
			}
			return resultString;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetExternalHeaderInProject(...) failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetExternalHeaderInProject(...) failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetExternalHeaderInProject(...) failed.");
		}
		return null;
	}

	public string GetExternalOCode()
	{
		return GetExternalOCodeInProject(null);
	}

	public string GetExternalOCodeInProject(AscetProject project)
	{
		if (!IsCType())
		{
			logEntry(GetType().FullName + ".GetExternalOCodeInProject(...): Block must be of type 'C'.");
			return null;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getExternalOCodeProject:");
			instanceMethodCall.appendParameter(project);
			call(instanceMethodCall);
			string resultString = instanceMethodCall.ResultString;
			if (resultString.Length == 0)
			{
				return null;
			}
			return resultString;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetExternalOCodeInProject(...) failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetExternalOCodeInProject(...) failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetExternalOCodeInProject(...) failed.");
		}
		return null;
	}

	public string GetHeader()
	{
		return GetHeaderInProject(null);
	}

	public string GetHeaderInProject(AscetProject project)
	{
		if (!IsCType())
		{
			logEntry(GetType().FullName + ".GetHeaderInProject(...): Block must be of type 'C'.");
			return null;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getHCodeProject:");
			instanceMethodCall.appendParameter(project);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetHeaderInProject(...) failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetHeaderInProject(...) failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetHeaderInProject(...) failed.");
		}
		return null;
	}

	public string GetHeaderInProjectForImplementation(AscetProject project, ImplConfiguration implementation)
	{
		if (!IsCType())
		{
			logEntry(GetType().FullName + ".GetHeaderInProjectForImplementation(...): Block must be of type 'C'.");
			return null;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getHCodeProject:implementation:");
			instanceMethodCall.appendParameter(project);
			instanceMethodCall.appendParameter(implementation);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetHeaderInProjectForImplementation(...) failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetHeaderInProjectForImplementation(...) failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetHeaderInProjectForImplementation(...) failed.");
		}
		return null;
	}

	public virtual bool IsBDEType()
	{
		return isXXX("BDEType");
	}

	public virtual bool IsCType()
	{
		return isXXX("CType");
	}

	public virtual bool IsESDLType()
	{
		return isXXX("ESDLType");
	}

	public bool IsExternalHeaderInGlobalUse()
	{
		return IsExternalHeaderInGlobalUseInProject(null);
	}

	public bool IsExternalHeaderInGlobalUseInProject(AscetProject project)
	{
		if (!IsCType())
		{
			logEntry(GetType().FullName + ".IsExternalHeaderInGlobalUseInProject(...): Block has to be of type 'C'.");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isExternalHeaderInGlobalUseProject:");
			instanceMethodCall.appendParameter(project);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".IsExternalHeaderInGlobalUseInProject(...) failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".IsExternalHeaderInGlobalUseInProject(...) failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".IsExternalHeaderInGlobalUseInProject(...) failed.");
		}
		return false;
	}

	public override bool IsFunctionalComponent()
	{
		return true;
	}

	public bool SetExternalCCode(string value_Renamed)
	{
		return SetExternalCCodeInProject(value_Renamed, null);
	}

	public bool SetExternalCCodeFromFileInProject(string fileName, AscetProject project)
	{
		if (fileName == null)
		{
			logEntry(GetType().FullName + ".SetExternalCCodeFromFileInProject(<...>): method code is null.");
			return false;
		}
		if (!IsCType())
		{
			logEntry(GetType().FullName + ".SetExternalCCodeFromFileInProject(...): Block has to be of type 'C'.");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setExternalCCodeFromFile:project:");
			instanceMethodCall.appendParameter(fileName);
			instanceMethodCall.appendParameter(project);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetExternalCCodeFromFileInProject(...) failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetExternalCCodeFromFileInProject(...) failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetExternalCCodeFromFileInProject(...) failed.");
		}
		return false;
	}

	public bool SetExternalCCodeInProject(string value_Renamed, AscetProject project)
	{
		if (value_Renamed == null)
		{
			logEntry(GetType().FullName + ".SetExternalCCodeInProject(<...>): method code is null.");
			return false;
		}
		if (!IsCType())
		{
			logEntry(GetType().FullName + ".SetExternalCCodeInProject(...): Block has to be of type 'C'.");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setExternalCCode:project:");
			instanceMethodCall.appendParameter(value_Renamed);
			instanceMethodCall.appendParameter(project);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetExternalCCodeInProject(...) failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetExternalCCodeInProject(...) failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetExternalCCodeInProject(...) failed.");
		}
		return false;
	}

	public bool SetExternalHeader(string value_Renamed)
	{
		return SetExternalHeaderInProject(value_Renamed, null);
	}

	public bool SetExternalHeaderInProject(string value_Renamed, AscetProject project)
	{
		if (value_Renamed == null)
		{
			logEntry(GetType().FullName + ".SetExternalHeaderInProject(<...>): method code is null.");
			return false;
		}
		if (!IsCType())
		{
			logEntry(GetType().FullName + ".SetExternalHeaderInProject(...): Block has to be of type 'C'.");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setExternalHCode:project:");
			instanceMethodCall.appendParameter(value_Renamed);
			instanceMethodCall.appendParameter(project);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetExternalHeaderInProject(...) failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetExternalHeaderInProject(...) failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetExternalHeaderInProject(...) failed.");
		}
		return false;
	}

	public bool SetExternalHeaderToGlobalUse()
	{
		return SetExternalHeaderToGlobalUseInProject(null);
	}

	public bool SetExternalHeaderToGlobalUseInProject(AscetProject project)
	{
		if (!IsCType())
		{
			logEntry(GetType().FullName + ".SetExternalHeaderToGlobalUseInProject(...): Block has to be of type 'C'.");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setExternalHeaderToGlobalUseProject:");
			instanceMethodCall.appendParameter(project);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetExternalHeaderToGlobalUseInProject(...) failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetExternalHeaderToGlobalUseInProject(...) failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetExternalHeaderToGlobalUseInProject(...) failed.");
		}
		return false;
	}

	public bool SetExternalHeaderToLocalUse()
	{
		return SetExternalHeaderToLocalUseInProject(null);
	}

	public bool SetExternalHeaderToLocalUseInProject(AscetProject project)
	{
		if (!IsCType())
		{
			logEntry(GetType().FullName + ".SetExternalHeaderToLocalUseInProject(...): Block has to be of type 'C'.");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setExternalHeaderToLocalUseProject:");
			instanceMethodCall.appendParameter(project);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetExternalHeaderToLocalUseInProject(...) failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetExternalHeaderToLocalUseInProject(...) failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetExternalHeaderToLocalUseInProject(...) failed.");
		}
		return false;
	}

	[Obsolete("Use SetExternalOCodeFromFileInProject() instead", false)]
	public bool SetExternalOCode(string value_Renamed)
	{
		return SetExternalOCodeInProject(value_Renamed, null);
	}

	public bool SetExternalOCodeFromFileInProject(string fileName, AscetProject project)
	{
		if (fileName == null)
		{
			logEntry(GetType().FullName + ".SetExternalOCodeFromFileInProject(<...>): method code is null.");
			return false;
		}
		if (!IsCType())
		{
			logEntry(GetType().FullName + ".SetExternalOCodeFromFileInProject(...): Block has to be of type 'C'.");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setExternalOCodeFromFile:project:");
			instanceMethodCall.appendParameter(fileName);
			instanceMethodCall.appendParameter(project);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetExternalOCodeFromFileInProject(...) failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetExternalOCodeFromFileInProject(...) failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetExternalOCodeFromFileInProject(...) failed.");
		}
		return false;
	}

	[Obsolete("Use SetExternalOCodeFromFileInProject() instead", false)]
	public bool SetExternalOCodeInProject(string value_Renamed, AscetProject project)
	{
		if (value_Renamed == null)
		{
			logEntry(GetType().FullName + ".SetExternalOCodeInProject(<...>): method code is null.");
			return false;
		}
		if (!IsCType())
		{
			logEntry(GetType().FullName + ".SetExternalOCodeInProject(...): Block has to be of type 'C'.");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setExternalOCode:project:");
			instanceMethodCall.appendParameter(value_Renamed);
			instanceMethodCall.appendParameter(project);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetExternalOCodeInProject(...) failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetExternalOCodeInProject(...) failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetExternalOCodeInProject(...) failed.");
		}
		return false;
	}

	public bool SetHeader(string value_Renamed)
	{
		return SetHeaderInProject(value_Renamed, null);
	}

	public bool SetHeaderInProject(string value_Renamed, AscetProject project)
	{
		if (value_Renamed == null)
		{
			logEntry(GetType().FullName + ".SetHeaderInProject(...) failed. Header code is null.");
			return false;
		}
		if (!IsCType())
		{
			logEntry(GetType().FullName + ".SetHeaderInProject(...): Block has to be of type 'C'.");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setHCode:project:");
			instanceMethodCall.appendParameter(value_Renamed);
			instanceMethodCall.appendParameter(project);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetHeaderInProject(...) failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetHeaderInProject(...) failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetHeaderInProject(...) failed.");
		}
		return false;
	}

	public bool SetHeaderInProjectForImplementation(string value_Renamed, AscetProject project, ImplConfiguration implementation)
	{
		if (value_Renamed == null)
		{
			logEntry(GetType().FullName + ".SetHeaderInProjectForImplementation(...) failed. Header code is null.");
			return false;
		}
		if (!IsCType())
		{
			logEntry(GetType().FullName + ".SetHeaderInProjectForImplementation(...): Block has to be of type 'C'.");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setHCode:project:implementation:");
			instanceMethodCall.appendParameter(value_Renamed);
			instanceMethodCall.appendParameter(project);
			instanceMethodCall.appendParameter(implementation);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".SetHeaderInProjectForImplementation(...) failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetHeaderInProjectForImplementation(...) failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetHeaderInProjectForImplementation(...) failed.");
		}
		return false;
	}

	string FunctionalComponent_Dispatch.GetExternalCCodeInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalCCodeInProject(project);
	}

	string FunctionalComponent_Dispatch.GetExternalHeaderInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalHeaderInProject(project);
	}

	string FunctionalComponent_Dispatch.GetExternalOCodeInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalOCodeInProject(project);
	}

	string FunctionalComponent_Dispatch.GetHeaderInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetHeaderInProject(project);
	}

	string FunctionalComponent_Dispatch.GetHeaderInProjectForImplementation(object dispatch_project, object dispatch_implementation)
	{
		AscetProject project = (AscetProject)dispatch_project;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return GetHeaderInProjectForImplementation(project, implementation);
	}

	bool FunctionalComponent_Dispatch.IsExternalHeaderInGlobalUseInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return IsExternalHeaderInGlobalUseInProject(project);
	}

	bool FunctionalComponent_Dispatch.SetExternalCCodeFromFileInProject(string fileName, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalCCodeFromFileInProject(fileName, project);
	}

	bool FunctionalComponent_Dispatch.SetExternalCCodeInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalCCodeInProject(value_Renamed, project);
	}

	bool FunctionalComponent_Dispatch.SetExternalHeaderInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalHeaderInProject(value_Renamed, project);
	}

	bool FunctionalComponent_Dispatch.SetExternalHeaderToGlobalUseInProject(object dispatch_project)
	{
		AscetProject externalHeaderToGlobalUseInProject = (AscetProject)dispatch_project;
		return SetExternalHeaderToGlobalUseInProject(externalHeaderToGlobalUseInProject);
	}

	bool FunctionalComponent_Dispatch.SetExternalHeaderToLocalUseInProject(object dispatch_project)
	{
		AscetProject externalHeaderToLocalUseInProject = (AscetProject)dispatch_project;
		return SetExternalHeaderToLocalUseInProject(externalHeaderToLocalUseInProject);
	}

	bool FunctionalComponent_Dispatch.SetExternalOCodeFromFileInProject(string fileName, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalOCodeFromFileInProject(fileName, project);
	}

	bool FunctionalComponent_Dispatch.SetExternalOCodeInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalOCodeInProject(value_Renamed, project);
	}

	bool FunctionalComponent_Dispatch.SetHeaderInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetHeaderInProject(value_Renamed, project);
	}

	bool FunctionalComponent_Dispatch.SetHeaderInProjectForImplementation(string value_Renamed, object dispatch_project, object dispatch_implementation)
	{
		AscetProject project = (AscetProject)dispatch_project;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return SetHeaderInProjectForImplementation(value_Renamed, project, implementation);
	}

	object FunctionalComponent_Dispatch.AddComponent(object dispatch_item, string name)
	{
		CodeComponent item = (CodeComponent)dispatch_item;
		return AddComponent(item, name);
	}

	object FunctionalComponent_Dispatch.AddData(string name)
	{
		return AddData(name);
	}

	object FunctionalComponent_Dispatch.AddDeltaT()
	{
		return AddDeltaT();
	}

	object FunctionalComponent_Dispatch.AddEnumeration(object dispatch_enumerator, string name)
	{
		AscetEnumeration enumerator = (AscetEnumeration)dispatch_enumerator;
		return AddEnumeration(enumerator, name);
	}

	object FunctionalComponent_Dispatch.AddOneDTable(string n)
	{
		return AddOneDTable(n);
	}

	object FunctionalComponent_Dispatch.AddTwoDTable(string n)
	{
		return AddTwoDTable(n);
	}

	bool FunctionalComponent_Dispatch.ExistsExportForImport(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return ExistsExportForImport(modelElement);
	}

	object FunctionalComponent_Dispatch.GetAllComplexModelElements()
	{
		ComplexModelElement[] allComplexModelElements = GetAllComplexModelElements();
		return Adapter.ToObject(allComplexModelElements);
	}

	object FunctionalComponent_Dispatch.GetAllDiagrams()
	{
		AscetDiagram[] allDiagrams = GetAllDiagrams();
		return Adapter.ToObject(allDiagrams);
	}

	object FunctionalComponent_Dispatch.GetAllModelElements()
	{
		AscetModelElement[] allModelElements = GetAllModelElements();
		return Adapter.ToObject(allModelElements);
	}

	object FunctionalComponent_Dispatch.GetAllPrimitiveModelElements()
	{
		PrimitiveModelElement[] allPrimitiveModelElements = GetAllPrimitiveModelElements();
		return Adapter.ToObject(allPrimitiveModelElements);
	}

	object FunctionalComponent_Dispatch.GetAllReferencedModelElements()
	{
		AscetModelElement[] allReferencedModelElements = GetAllReferencedModelElements();
		return Adapter.ToObject(allReferencedModelElements);
	}

	object FunctionalComponent_Dispatch.GetAllUndefinedComplexModelElementNames()
	{
		string[] allUndefinedComplexModelElementNames = GetAllUndefinedComplexModelElementNames();
		return Adapter.ToObject(allUndefinedComplexModelElementNames);
	}

	object FunctionalComponent_Dispatch.GetComplexModelElement(string name)
	{
		return GetComplexModelElement(name);
	}

	object FunctionalComponent_Dispatch.GetDefaultData()
	{
		return GetDefaultData();
	}

	object FunctionalComponent_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object FunctionalComponent_Dispatch.GetDiagramWithName(string diagName)
	{
		return GetDiagramWithName(diagName);
	}

	object FunctionalComponent_Dispatch.GetExportForImport(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return GetExportForImport(modelElement);
	}

	object FunctionalComponent_Dispatch.GetIcon()
	{
		return GetIcon();
	}

	object FunctionalComponent_Dispatch.GetModelElement(string name)
	{
		return GetModelElement(name);
	}

	object FunctionalComponent_Dispatch.GetPrimitiveModelElement(string name)
	{
		return GetPrimitiveModelElement(name);
	}

	object FunctionalComponent_Dispatch.GetReferencedItemsForExport()
	{
		DataBaseItem[] referencedItemsForExport = GetReferencedItemsForExport();
		return Adapter.ToObject(referencedItemsForExport);
	}

	bool FunctionalComponent_Dispatch.RemoveDiagram(object dispatch_diagram)
	{
		AscetDiagram diagram = (AscetDiagram)dispatch_diagram;
		return RemoveDiagram(diagram);
	}

	bool FunctionalComponent_Dispatch.RemoveModelElement(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return RemoveModelElement(modelElement);
	}

	bool FunctionalComponent_Dispatch.ReplaceComplexModelElement(object dispatch_element, object dispatch_component)
	{
		ComplexModelElement element = (ComplexModelElement)dispatch_element;
		AscetDiscreteComponent component = (AscetDiscreteComponent)dispatch_component;
		return ReplaceComplexModelElement(element, component);
	}

	bool FunctionalComponent_Dispatch.ReplaceComplexModelElementNamed(string name, object dispatch_component)
	{
		AscetDiscreteComponent component = (AscetDiscreteComponent)dispatch_component;
		return ReplaceComplexModelElementNamed(name, component);
	}

	bool FunctionalComponent_Dispatch.SetDefaultData(object dispatch_dataConf)
	{
		DataConfiguration defaultData = (DataConfiguration)dispatch_dataConf;
		return SetDefaultData(defaultData);
	}

	bool FunctionalComponent_Dispatch.AddTextSegment(string textSegment, object views)
	{
		string[] views2 = Adapter.ToArray1Object<string>(views);
		return AddTextSegment(textSegment, views2);
	}

	object FunctionalComponent_Dispatch.Edit()
	{
		return Edit();
	}

	object FunctionalComponent_Dispatch.EditInFront()
	{
		return EditInFront();
	}

	object FunctionalComponent_Dispatch.GetTextSegments()
	{
		string[] textSegments = GetTextSegments();
		return Adapter.ToObject(textSegments);
	}

	object FunctionalComponent_Dispatch.GetViewsForTextSegment(string textSegment)
	{
		string[] viewsForTextSegment = GetViewsForTextSegment(textSegment);
		return Adapter.ToObject(viewsForTextSegment);
	}

	object FunctionalComponent_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object FunctionalComponent_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object FunctionalComponent_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object FunctionalComponent_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string FunctionalComponent_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool FunctionalComponent_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object FunctionalComponent_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
