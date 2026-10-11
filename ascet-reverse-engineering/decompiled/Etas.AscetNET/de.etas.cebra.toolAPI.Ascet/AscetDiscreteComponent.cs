using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
[Guid("A3DF3E88-B490-11D3-8A29-00A0247767D8")]
[ProgId("Ascet.AscetDiscreteComponent")]
public class AscetDiscreteComponent : FunctionalComponent, AscetDiscreteComponent_Dispatch, IAscetDiscreteComponent, IFunctionalComponent, ICodeComponent, IComponent, IDataBaseItem
{
	object AscetDiscreteComponent_Dispatch.AddArray(string n)
	{
		return AddArray(n);
	}

	object AscetDiscreteComponent_Dispatch.AddDiagram(string name)
	{
		return AddDiagram(name);
	}

	object AscetDiscreteComponent_Dispatch.AddDistribution(string n)
	{
		return AddDistribution(n);
	}

	object AscetDiscreteComponent_Dispatch.AddImplementation(string name)
	{
		return AddImplementation(name);
	}

	object AscetDiscreteComponent_Dispatch.AddImplementationCast(string name)
	{
		return AddImplementationCast(name);
	}

	object AscetDiscreteComponent_Dispatch.AddMatrix(string n)
	{
		return AddMatrix(n);
	}

	object AscetDiscreteComponent_Dispatch.AddOneDTableFixed(string name)
	{
		return AddOneDTableFixed(name);
	}

	object AscetDiscreteComponent_Dispatch.AddOneDTableGroup(string name, object dispatch_xDistribution)
	{
		DistributionElement xDistribution = (DistributionElement)dispatch_xDistribution;
		return AddOneDTableGroup(name, xDistribution);
	}

	object AscetDiscreteComponent_Dispatch.AddParameter(string n)
	{
		return AddParameter(n);
	}

	object AscetDiscreteComponent_Dispatch.AddTwoDTableFixed(string name)
	{
		return AddTwoDTableFixed(name);
	}

	object AscetDiscreteComponent_Dispatch.AddTwoDTableGroup(string name, object dispatch_xDistribution, object dispatch_yDistribution)
	{
		DistributionElement xDistribution = (DistributionElement)dispatch_xDistribution;
		DistributionElement yDistribution = (DistributionElement)dispatch_yDistribution;
		return AddTwoDTableGroup(name, xDistribution, yDistribution);
	}

	object AscetDiscreteComponent_Dispatch.AddVariable(string n)
	{
		return AddVariable(n);
	}

	object AscetDiscreteComponent_Dispatch.GetAllData()
	{
		DataConfiguration[] allData = GetAllData();
		return Adapter.ToObject(allData);
	}

	object AscetDiscreteComponent_Dispatch.GetAllImplementationCasts()
	{
		ImplementationCast[] allImplementationCasts = GetAllImplementationCasts();
		return Adapter.ToObject(allImplementationCasts);
	}

	object AscetDiscreteComponent_Dispatch.GetAllImplementations()
	{
		ImplConfiguration[] allImplementations = GetAllImplementations();
		return Adapter.ToObject(allImplementations);
	}

	object AscetDiscreteComponent_Dispatch.GetClassData()
	{
		return GetClassData();
	}

	object AscetDiscreteComponent_Dispatch.GetClassImplementation()
	{
		return GetClassImplementation();
	}

	object AscetDiscreteComponent_Dispatch.GetData(string name)
	{
		return GetData(name);
	}

	object AscetDiscreteComponent_Dispatch.GetDefaultImplementation()
	{
		return GetDefaultImplementation();
	}

	object AscetDiscreteComponent_Dispatch.GetDefaultProject()
	{
		return GetDefaultProject();
	}

	object AscetDiscreteComponent_Dispatch.GetImplementation(string name)
	{
		return GetImplementation(name);
	}

	bool AscetDiscreteComponent_Dispatch.SetDefaultImplementation(object dispatch_implConf)
	{
		ImplConfiguration defaultImplementation = (ImplConfiguration)dispatch_implConf;
		return SetDefaultImplementation(defaultImplementation);
	}

	string AscetDiscreteComponent_Dispatch.GetExternalCCodeInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalCCodeInProject(project);
	}

	string AscetDiscreteComponent_Dispatch.GetExternalHeaderInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalHeaderInProject(project);
	}

	string AscetDiscreteComponent_Dispatch.GetExternalOCodeInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetExternalOCodeInProject(project);
	}

	string AscetDiscreteComponent_Dispatch.GetHeaderInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return GetHeaderInProject(project);
	}

	string AscetDiscreteComponent_Dispatch.GetHeaderInProjectForImplementation(object dispatch_project, object dispatch_implementation)
	{
		AscetProject project = (AscetProject)dispatch_project;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return GetHeaderInProjectForImplementation(project, implementation);
	}

	bool AscetDiscreteComponent_Dispatch.IsExternalHeaderInGlobalUseInProject(object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return IsExternalHeaderInGlobalUseInProject(project);
	}

	bool AscetDiscreteComponent_Dispatch.SetExternalCCodeFromFileInProject(string fileName, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalCCodeFromFileInProject(fileName, project);
	}

	bool AscetDiscreteComponent_Dispatch.SetExternalCCodeInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalCCodeInProject(value_Renamed, project);
	}

	bool AscetDiscreteComponent_Dispatch.SetExternalHeaderInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalHeaderInProject(value_Renamed, project);
	}

	bool AscetDiscreteComponent_Dispatch.SetExternalHeaderToGlobalUseInProject(object dispatch_project)
	{
		AscetProject externalHeaderToGlobalUseInProject = (AscetProject)dispatch_project;
		return SetExternalHeaderToGlobalUseInProject(externalHeaderToGlobalUseInProject);
	}

	bool AscetDiscreteComponent_Dispatch.SetExternalHeaderToLocalUseInProject(object dispatch_project)
	{
		AscetProject externalHeaderToLocalUseInProject = (AscetProject)dispatch_project;
		return SetExternalHeaderToLocalUseInProject(externalHeaderToLocalUseInProject);
	}

	bool AscetDiscreteComponent_Dispatch.SetExternalOCodeFromFileInProject(string fileName, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalOCodeFromFileInProject(fileName, project);
	}

	bool AscetDiscreteComponent_Dispatch.SetExternalOCodeInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetExternalOCodeInProject(value_Renamed, project);
	}

	bool AscetDiscreteComponent_Dispatch.SetHeaderInProject(string value_Renamed, object dispatch_project)
	{
		AscetProject project = (AscetProject)dispatch_project;
		return SetHeaderInProject(value_Renamed, project);
	}

	bool AscetDiscreteComponent_Dispatch.SetHeaderInProjectForImplementation(string value_Renamed, object dispatch_project, object dispatch_implementation)
	{
		AscetProject project = (AscetProject)dispatch_project;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return SetHeaderInProjectForImplementation(value_Renamed, project, implementation);
	}

	object AscetDiscreteComponent_Dispatch.AddComponent(object dispatch_item, string name)
	{
		CodeComponent item = (CodeComponent)dispatch_item;
		return AddComponent(item, name);
	}

	object AscetDiscreteComponent_Dispatch.AddData(string name)
	{
		return AddData(name);
	}

	object AscetDiscreteComponent_Dispatch.AddDeltaT()
	{
		return AddDeltaT();
	}

	object AscetDiscreteComponent_Dispatch.AddEnumeration(object dispatch_enumerator, string name)
	{
		AscetEnumeration enumerator = (AscetEnumeration)dispatch_enumerator;
		return AddEnumeration(enumerator, name);
	}

	object AscetDiscreteComponent_Dispatch.AddOneDTable(string n)
	{
		return AddOneDTable(n);
	}

	object AscetDiscreteComponent_Dispatch.AddTwoDTable(string n)
	{
		return AddTwoDTable(n);
	}

	bool AscetDiscreteComponent_Dispatch.ExistsExportForImport(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return ExistsExportForImport(modelElement);
	}

	object AscetDiscreteComponent_Dispatch.GetAllComplexModelElements()
	{
		ComplexModelElement[] allComplexModelElements = GetAllComplexModelElements();
		return Adapter.ToObject(allComplexModelElements);
	}

	object AscetDiscreteComponent_Dispatch.GetAllDiagrams()
	{
		AscetDiagram[] allDiagrams = GetAllDiagrams();
		return Adapter.ToObject(allDiagrams);
	}

	object AscetDiscreteComponent_Dispatch.GetAllModelElements()
	{
		AscetModelElement[] allModelElements = GetAllModelElements();
		return Adapter.ToObject(allModelElements);
	}

	object AscetDiscreteComponent_Dispatch.GetAllPrimitiveModelElements()
	{
		PrimitiveModelElement[] allPrimitiveModelElements = GetAllPrimitiveModelElements();
		return Adapter.ToObject(allPrimitiveModelElements);
	}

	object AscetDiscreteComponent_Dispatch.GetAllReferencedModelElements()
	{
		AscetModelElement[] allReferencedModelElements = GetAllReferencedModelElements();
		return Adapter.ToObject(allReferencedModelElements);
	}

	object AscetDiscreteComponent_Dispatch.GetAllUndefinedComplexModelElementNames()
	{
		string[] allUndefinedComplexModelElementNames = GetAllUndefinedComplexModelElementNames();
		return Adapter.ToObject(allUndefinedComplexModelElementNames);
	}

	object AscetDiscreteComponent_Dispatch.GetComplexModelElement(string name)
	{
		return GetComplexModelElement(name);
	}

	object AscetDiscreteComponent_Dispatch.GetDefaultData()
	{
		return GetDefaultData();
	}

	object AscetDiscreteComponent_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object AscetDiscreteComponent_Dispatch.GetDiagramWithName(string diagName)
	{
		return GetDiagramWithName(diagName);
	}

	object AscetDiscreteComponent_Dispatch.GetExportForImport(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return GetExportForImport(modelElement);
	}

	object AscetDiscreteComponent_Dispatch.GetIcon()
	{
		return GetIcon();
	}

	object AscetDiscreteComponent_Dispatch.GetModelElement(string name)
	{
		return GetModelElement(name);
	}

	object AscetDiscreteComponent_Dispatch.GetPrimitiveModelElement(string name)
	{
		return GetPrimitiveModelElement(name);
	}

	object AscetDiscreteComponent_Dispatch.GetReferencedItemsForExport()
	{
		DataBaseItem[] referencedItemsForExport = GetReferencedItemsForExport();
		return Adapter.ToObject(referencedItemsForExport);
	}

	bool AscetDiscreteComponent_Dispatch.RemoveDiagram(object dispatch_diagram)
	{
		AscetDiagram diagram = (AscetDiagram)dispatch_diagram;
		return RemoveDiagram(diagram);
	}

	bool AscetDiscreteComponent_Dispatch.RemoveModelElement(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return RemoveModelElement(modelElement);
	}

	bool AscetDiscreteComponent_Dispatch.ReplaceComplexModelElement(object dispatch_element, object dispatch_component)
	{
		ComplexModelElement element = (ComplexModelElement)dispatch_element;
		AscetDiscreteComponent component = (AscetDiscreteComponent)dispatch_component;
		return ReplaceComplexModelElement(element, component);
	}

	bool AscetDiscreteComponent_Dispatch.ReplaceComplexModelElementNamed(string name, object dispatch_component)
	{
		AscetDiscreteComponent component = (AscetDiscreteComponent)dispatch_component;
		return ReplaceComplexModelElementNamed(name, component);
	}

	bool AscetDiscreteComponent_Dispatch.SetDefaultData(object dispatch_dataConf)
	{
		DataConfiguration defaultData = (DataConfiguration)dispatch_dataConf;
		return SetDefaultData(defaultData);
	}

	bool AscetDiscreteComponent_Dispatch.AddTextSegment(string textSegment, object views)
	{
		string[] views2 = Adapter.ToArray1Object<string>(views);
		return AddTextSegment(textSegment, views2);
	}

	object AscetDiscreteComponent_Dispatch.Edit()
	{
		return Edit();
	}

	object AscetDiscreteComponent_Dispatch.EditInFront()
	{
		return EditInFront();
	}

	object AscetDiscreteComponent_Dispatch.GetTextSegments()
	{
		string[] textSegments = GetTextSegments();
		return Adapter.ToObject(textSegments);
	}

	object AscetDiscreteComponent_Dispatch.GetViewsForTextSegment(string textSegment)
	{
		string[] viewsForTextSegment = GetViewsForTextSegment(textSegment);
		return Adapter.ToObject(viewsForTextSegment);
	}

	object AscetDiscreteComponent_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object AscetDiscreteComponent_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object AscetDiscreteComponent_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object AscetDiscreteComponent_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string AscetDiscreteComponent_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool AscetDiscreteComponent_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object AscetDiscreteComponent_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public AscetDiscreteComponent(AscetDataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public AscetDiscreteComponent(AscetFolder f, Identifiable h)
		: base(f, h)
	{
	}

	public ArrayElement AddArray(string n)
	{
		return base.addArray(n);
	}

	public virtual AscetDiagram AddDiagram(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addPublicDiagram:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return AscetDiagram.factory(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddDiagram(): failed -> APIError: " + ex);
		}
		return null;
	}

	public DistributionElement AddDistribution(string n)
	{
		return base.addDistribution(n);
	}

	public ImplConfiguration AddImplementation(string name)
	{
		return base.addImplementation(name);
	}

	public ImplementationCast AddImplementationCast(string name)
	{
		return base.addImplementationCast(name);
	}

	public MatrixElement AddMatrix(string n)
	{
		return base.addMatrix(n);
	}

	public OneDTableElement AddOneDTableFixed(string name)
	{
		Identifiable identifiable = addXXX("OneDTableFixed", name);
		if (identifiable != null)
		{
			return new OneDTableElement(this, identifiable);
		}
		return null;
	}

	public OneDTableElement AddOneDTableGroup(string name, DistributionElement xDistribution)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addOneDTableGroup:xDistribution:");
			instanceMethodCall.appendParameter(name);
			instanceMethodCall.appendParameter(xDistribution);
			call(instanceMethodCall);
			return new OneDTableElement(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddOneDTableGroup(" + name + " ," + xDistribution.GetName() + ") failed -> " + ex);
		}
		return null;
	}

	public ScalarElement AddParameter(string n)
	{
		Identifiable identifiable = addParam(n);
		if (identifiable != null)
		{
			return new ScalarElement(this, identifiable);
		}
		return null;
	}

	public TwoDTableElement AddTwoDTableFixed(string name)
	{
		Identifiable identifiable = addXXX("TwoDTableFixed", name);
		if (identifiable != null)
		{
			return new TwoDTableElement(this, identifiable);
		}
		return null;
	}

	public TwoDTableElement AddTwoDTableGroup(string name, DistributionElement xDistribution, DistributionElement yDistribution)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addTwoDTableGroup:xDistribution:yDistribution:");
			instanceMethodCall.appendParameter(name);
			instanceMethodCall.appendParameter(xDistribution);
			instanceMethodCall.appendParameter(yDistribution);
			call(instanceMethodCall);
			return new TwoDTableElement(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddOneDTableGroup(" + name + " ," + xDistribution.GetName() + " ," + xDistribution.GetName() + ") failed -> " + ex);
		}
		return null;
	}

	public ScalarElement AddVariable(string n)
	{
		return base.addVariable(n);
	}

	public DataConfiguration[] GetAllData()
	{
		return base.getAllData();
	}

	public ImplementationCast[] GetAllImplementationCasts()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getImplementationCasts");
			call(instanceMethodCall);
			Collection coll = new Collection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				AscetModelElement ascetModelElement = identifyAscetModelElement(remoteObjectsFromCollection[i]);
				if (ascetModelElement != null)
				{
					arrayList.Add(ascetModelElement);
				}
			}
			ImplementationCast[] array = new ImplementationCast[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllImplementationCasts(): failed -> APIError: " + ex);
		}
		return null;
	}

	public ImplConfiguration[] GetAllImplementations()
	{
		return base.getAllImplementations();
	}

	public DataConfiguration GetClassData()
	{
		return base.getClassData();
	}

	public ImplConfiguration GetClassImplementation()
	{
		return base.getClassImplementation();
	}

	public DataConfiguration GetData(string name)
	{
		return base.getData(name);
	}

	public ImplConfiguration GetDefaultImplementation()
	{
		return base.getDefaultImplementation();
	}

	public AscetProject GetDefaultProject()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getDefaultProject");
			call(instanceMethodCall);
			return new AscetProject((AscetDataBase)GetDataBase(), instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetDefaultProject(): failed -> APIError: " + ex);
		}
		return null;
	}

	public ImplConfiguration GetImplementation(string name)
	{
		return base.getImplementation(name);
	}

	public AscetModelElement getMethodElement(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getMethodElement:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return identifyAscetModelElement(instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".getMethodElement(" + name + ") failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".getMethodElement(" + name + ") failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".getMethodElement(" + name + ") failed.");
		}
		return null;
	}

	public AscetModelElement[] getMethodElementsBasic()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllMethodElements");
			call(instanceMethodCall);
			Collection coll = new Collection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				AscetModelElement ascetModelElement = identifyAscetModelElement(remoteObjectsFromCollection[i]);
				if (ascetModelElement != null)
				{
					arrayList.Add(ascetModelElement);
				}
			}
			AscetModelElement[] array = new AscetModelElement[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".getMethodElements(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsDiscreteComponent()
	{
		return true;
	}

	public virtual bool RemoveImplementation(string name)
	{
		return base.removeImpl(name);
	}

	public virtual bool SetDefaultImplementation(ImplConfiguration implConf)
	{
		return setDefaultImplementation(implConf);
	}
}
