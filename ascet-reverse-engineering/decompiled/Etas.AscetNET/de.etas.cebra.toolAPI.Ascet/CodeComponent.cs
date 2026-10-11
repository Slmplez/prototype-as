using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("A3DF3E9B-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.CodeComponent")]
[ComVisible(true)]
public class CodeComponent : Component, ICodeComponent, IComponent, IDataBaseItem, CodeComponent_Dispatch
{
	public CodeComponent(DataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public CodeComponent(Folder f, Identifiable h)
		: base(f, h)
	{
	}

	protected internal virtual ArrayElement addArray(string n)
	{
		Identifiable identifiable = addXXX("Array", n);
		if (identifiable != null)
		{
			return new ArrayElement(this, identifiable);
		}
		return null;
	}

	public ComplexModelElement AddComponent(CodeComponent item, string name)
	{
		if (item == null)
		{
			logEntry(GetType().FullName + ".AddComponent(): Unknown item.");
			return null;
		}
		if (item.nullHandle())
		{
			logEntry(GetType().FullName + ".AddComponent(): Item not valid.");
			return null;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addLibItem:forName:");
			instanceMethodCall.appendParameter(item);
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return new ComplexModelElement(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".AddComponent(): 'this' has no valid handle.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".AddComponent() failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".AddComponent() failed.");
		}
		return null;
	}

	public virtual DataConfiguration AddData(string name)
	{
		Identifiable identifiable = addXXX("Data", name);
		if (identifiable != null)
		{
			return new DataConfiguration(this, identifiable);
		}
		return null;
	}

	public DeltaTElement AddDeltaT()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addDeltaT");
			call(instanceMethodCall);
			return new DeltaTElement(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".addDeltaT failed -> APIError:" + ex);
		}
		return null;
	}

	protected internal virtual DistributionElement addDistribution(string n)
	{
		Identifiable identifiable = addXXX("Distribution", n);
		if (identifiable != null)
		{
			return new DistributionElement(this, identifiable);
		}
		return null;
	}

	public EnumerationModelElement AddEnumeration(AscetEnumeration enumerator, string name)
	{
		if (enumerator == null)
		{
			logEntry(GetType().FullName + ".AddEnumeration(): Unknown item.");
			return null;
		}
		if (enumerator.nullHandle())
		{
			logEntry(GetType().FullName + ".AddEnumeration(): Item not valid.");
			return null;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addLibItem:forName:");
			instanceMethodCall.appendParameter(enumerator);
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return new EnumerationModelElement(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".AddEnumeration(): 'this' has no valid handle.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".AddEnumeration() failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".AddEnumeration() failed.");
		}
		return null;
	}

	protected internal virtual ImplConfiguration addImplementation(string name)
	{
		Identifiable identifiable = addXXX("Implementation", name);
		if (identifiable != null)
		{
			return new ImplConfiguration(this, identifiable);
		}
		return null;
	}

	protected internal virtual ImplementationCast addImplementationCast(string n)
	{
		Identifiable identifiable = addXXX("ImplementationCast", n);
		if (identifiable != null)
		{
			return new ImplementationCast(this, identifiable);
		}
		return null;
	}

	protected internal virtual MatrixElement addMatrix(string n)
	{
		Identifiable identifiable = addXXX("Matrix", n);
		if (identifiable != null)
		{
			return new MatrixElement(this, identifiable);
		}
		return null;
	}

	public OneDTableElement AddOneDTable(string n)
	{
		Identifiable identifiable = addXXX("OneDTable", n);
		if (identifiable != null)
		{
			return new OneDTableElement(this, identifiable);
		}
		return null;
	}

	protected internal virtual Identifiable addParam(string n)
	{
		return addXXX("Parameter", n);
	}

	public TwoDTableElement AddTwoDTable(string n)
	{
		Identifiable identifiable = addXXX("TwoDTable", n);
		if (identifiable != null)
		{
			return new TwoDTableElement(this, identifiable);
		}
		return null;
	}

	protected internal virtual ScalarElement addVariable(string n)
	{
		Identifiable identifiable = addXXX("Variable", n);
		if (identifiable != null)
		{
			return new ScalarElement(this, identifiable);
		}
		return null;
	}

	protected internal virtual Identifiable addXXX(string type, string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("add" + type + ":");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return instanceMethodCall.ResultRemoteObject;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".add" + type + "(" + name + ") failed -> APIError:" + ex);
		}
		return null;
	}

	public virtual bool BuildAll()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("buildAll");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".BuildAll(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool BuildAllWriteErrorsToPath(string pathName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("buildAllWriteErrorsToPath:");
			instanceMethodCall.appendParameter(pathName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".BuildAllWriteErrorsToPath(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool BuildAllWriteErrorsToPathUsingFileName(string pathName, string fileName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("buildAllWriteErrorsToPath:fileName:");
			instanceMethodCall.appendParameter(pathName);
			instanceMethodCall.appendParameter(fileName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".BuildAllWriteErrorsToPathUsingFileName(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool ExistsExportForImport(AscetModelElement modelElement)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("existsExportForImport:");
			instanceMethodCall.appendParameter(modelElement);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".ExistsExportForImport(" + modelElement.GetType().FullName + ") failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".ExistsExportForImport(" + modelElement.GetType().FullName + ") failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".ExistsExportForImport(" + modelElement.GetType().FullName + ") failed.");
		}
		return false;
	}

	public static CodeComponent factory(PersistentItem sender, Identifiable handle)
	{
		try
		{
			return (CodeComponent)sender.GetDataBase().identifyComponent(handle);
		}
		catch (Exception ex)
		{
			sender.logEntry("CodeComponent.factory(" + sender.GetType().FullName + ", " + handle.GetType().FullName + "): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual bool FileOutGeneratedCodeFlat(string pathName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("fileOutGeneratedCodeFlatToPath:");
			instanceMethodCall.appendParameter(pathName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".FileOutGeneratedCodeFlat(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool FileOutGeneratedCodeRecursive(string pathName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("fileOutGeneratedCodeRecursiveToPath:");
			instanceMethodCall.appendParameter(pathName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".FileOutGeneratedCodeRecursive(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool FileOutGenericCodeForExternalMakeFlat(string pathName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("fileOutGenericCodeForExternalMakeFlatToPath:");
			instanceMethodCall.appendParameter(pathName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".FileOutGenericCodeForExternalMakeFlat(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool FileOutGenericCodeForExternalMakeRecursive(string pathName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("fileOutGenericCodeForExternalMakeRecursiveToPath:");
			instanceMethodCall.appendParameter(pathName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".FileOutGenericCodeForExternalMakeRecursive(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool GenerateCode()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("generateCode");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GenerateCode(): failed -> APIError: " + ex);
		}
		return false;
	}

	[Obsolete("Use BuildAll() instead", false)]
	public virtual bool GenerateCodeForOfflineExperiment()
	{
		return BuildAll();
	}

	[Obsolete("Use BuildAllWriteErrorsToPath() instead", false)]
	public virtual bool GenerateCodeForOfflineExperimentWriteErrorsToPath(string pathName)
	{
		return BuildAllWriteErrorsToPath(pathName);
	}

	[Obsolete("Use BuildAllWriteErrorsToPath() instead", false)]
	public virtual bool GenerateCodeForOfflineExperimentWriteErrorsToPathUsingFileName(string pathName, string fileName)
	{
		return BuildAllWriteErrorsToPathUsingFileName(pathName, fileName);
	}

	public virtual bool GenerateCodeWriteErrorsToPath(string pathName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("generateCodeWriteErrorsToPath:");
			instanceMethodCall.appendParameter(pathName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GenerateCodeWriteErrorsToPath(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool GenerateCodeWriteErrorsToPathUsingFileName(string pathName, string fileName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("generateCodeWriteErrorsToPath:fileName:");
			instanceMethodCall.appendParameter(pathName);
			instanceMethodCall.appendParameter(fileName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GenerateCodeWriteErrorsToPathUsingFileName(): failed -> APIError: " + ex);
		}
		return false;
	}

	public ComplexModelElement[] GetAllComplexModelElements()
	{
		ArrayList.Synchronized(new ArrayList(10));
		try
		{
			AscetModelElement[] allModelElements = GetAllModelElements();
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < allModelElements.Length; i++)
			{
				if (allModelElements[i].IsComplex())
				{
					arrayList.Add((ComplexModelElement)allModelElements[i]);
				}
			}
			ComplexModelElement[] array = new ComplexModelElement[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllComplexModelElements():  failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal virtual DataConfiguration[] getAllData()
	{
		ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllData");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				arrayList.Add(new DataConfiguration(this, remoteObjectsFromCollection[i]));
			}
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllData(): failed -> APIError: " + ex);
			return null;
		}
		DataConfiguration[] array = new DataConfiguration[arrayList.Count];
		int num = 0;
		IEnumerator enumerator = arrayList.GetEnumerator();
		while (enumerator.MoveNext())
		{
			array[num++] = (DataConfiguration)enumerator.Current;
		}
		return array;
	}

	public virtual AscetDiagram[] GetAllDiagrams()
	{
		ArrayList.Synchronized(new ArrayList(10));
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllDiagrams");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				AscetDiagram ascetDiagram = AscetDiagram.factory(this, remoteObjectsFromCollection[i]);
				if (ascetDiagram != null)
				{
					arrayList.Add(ascetDiagram);
				}
			}
			AscetDiagram[] array = new AscetDiagram[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllDiagrams(): failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal virtual ImplConfiguration[] getAllImplementations()
	{
		ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllImplementations");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				arrayList.Add(new ImplConfiguration(this, remoteObjectsFromCollection[i]));
			}
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".getAllImplementations(): failed -> APIError: " + ex);
			return null;
		}
		ImplConfiguration[] array = new ImplConfiguration[arrayList.Count];
		int num = 0;
		IEnumerator enumerator = arrayList.GetEnumerator();
		while (enumerator.MoveNext())
		{
			array[num++] = (ImplConfiguration)enumerator.Current;
		}
		return array;
	}

	public AscetModelElement[] GetAllModelElements()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllVariables");
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
			logEntry(GetType().FullName + ".GetAllModelElements(): failed -> APIError: " + ex);
		}
		return null;
	}

	public PrimitiveModelElement[] GetAllPrimitiveModelElements()
	{
		ArrayList.Synchronized(new ArrayList(10));
		try
		{
			AscetModelElement[] allModelElements = GetAllModelElements();
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < allModelElements.Length; i++)
			{
				if (allModelElements[i].IsPrimitive())
				{
					arrayList.Add((PrimitiveModelElement)allModelElements[i]);
				}
			}
			PrimitiveModelElement[] array = new PrimitiveModelElement[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllPrimitiveModelElements(): failed -> APIError: " + ex);
		}
		return null;
	}

	public AscetModelElement[] GetAllReferencedModelElements()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("allReferencedComplexElements");
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
			logEntry(GetType().FullName + ".GetAllReferencedModelElements():  failed -> APIError: " + ex);
		}
		return null;
	}

	public string[] GetAllUndefinedComplexModelElementNames()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllUndefinedVariableNames");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllUndefinedComplexModelElementNames(): failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal virtual DataConfiguration getClassData()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getClassData");
			call(instanceMethodCall);
			return new DataConfiguration(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".getClassData(): failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal virtual ImplConfiguration getClassImplementation()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getClassImplementation");
			call(instanceMethodCall);
			return new ImplConfiguration(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".getClassImplemenation(): failed -> APIError: " + ex);
		}
		return null;
	}

	public ComplexModelElement GetComplexModelElement(string name)
	{
		if (name == null)
		{
			logEntry(GetType().FullName + ".getComplexModelElement(null) failed. Name of variable must be defined.");
			return null;
		}
		try
		{
			AscetModelElement modelElement = GetModelElement(name);
			if (modelElement.IsComplex())
			{
				return (ComplexModelElement)modelElement;
			}
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetComplexModelElement(" + name + ") failed.");
		}
		return null;
	}

	protected internal virtual DataConfiguration getData(string name)
	{
		if (name == null)
		{
			logEntry(GetType().FullName + ".getData(" + name + "): failed -> invalid data configuration name");
			return null;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getData:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return new DataConfiguration(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".getData(" + name + "): failed -> APIError: " + ex);
		}
		return null;
	}

	public DataConfiguration GetDefaultData()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getDefaultData");
			call(instanceMethodCall);
			return new DataConfiguration(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetDefaultData(): failed" + ex);
		}
		return null;
	}

	protected internal virtual ImplConfiguration getDefaultImplementation()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getDefaultImplementation");
			call(instanceMethodCall);
			return new ImplConfiguration(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".getDefaultImplementation(): failed -> APIError: " + ex);
		}
		return null;
	}

	public AscetDiagram GetDiagram()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getDiagram");
			call(instanceMethodCall);
			return AscetDiagram.factory(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetDiagram() failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetDiagram() failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetDiagram() failed.");
		}
		return null;
	}

	public AscetDiagram GetDiagramWithName(string diagName)
	{
		if (diagName == null)
		{
			logEntry(GetType().FullName + ".GetDiagram(" + diagName + ") failed: name is not valid");
			return null;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getDiagram:");
			instanceMethodCall.appendParameter(diagName);
			call(instanceMethodCall);
			return AscetDiagram.factory(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetDiagram(" + diagName + ") failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetDiagram(" + diagName + ") failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetDiagram(" + diagName + ") failed.");
		}
		return null;
	}

	public AscetModelElement GetExportForImport(AscetModelElement modelElement)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getExportForImport:");
			instanceMethodCall.appendParameter(modelElement);
			call(instanceMethodCall);
			return identifyAscetModelElement(instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetExportForImport(" + modelElement.GetType().FullName + ") failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetExportForImport(" + modelElement.GetType().FullName + ") failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetExportForImport(" + modelElement.GetType().FullName + ") failed.");
		}
		return null;
	}

	public AscetIcon GetIcon()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getIcon");
			call(instanceMethodCall);
			return new AscetIcon((AscetDataBase)GetDataBase(), instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetIcon() failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetIcon() failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetIcon() failed.");
		}
		return null;
	}

	protected internal virtual ImplConfiguration getImplementation(string name)
	{
		if (name == null)
		{
			logEntry(GetType().FullName + ".getImplementation(" + name + "): failed -> invalid implementation configration name");
			return null;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getImplementation:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return new ImplConfiguration(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".getImplementation(" + name + "): failed -> APIError: " + ex);
		}
		return null;
	}

	public AscetModelElement GetModelElement(string name)
	{
		if (name == null)
		{
			logEntry(GetType().FullName + ".GetModelElement(null) failed. Name of variable must be defined.");
			return null;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getModelElement:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return identifyAscetModelElement(instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetModelElement(" + name + ") failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetModelElement(" + name + ") failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetModelElement(" + name + ") failed.");
		}
		return null;
	}

	public string GetOIDForComplexModelElementNamed(string elementName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getOIDForComplexModelElement:");
			instanceMethodCall.appendParameter(elementName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetOIDForComplexModelElementNamed(): failed -> APIError: " + ex);
		}
		return null;
	}

	public PrimitiveModelElement GetPrimitiveModelElement(string name)
	{
		if (name == null)
		{
			logEntry(GetType().FullName + ".GetPrimitiveModelElement(null) failed. Name of variable must be defined.");
			return null;
		}
		try
		{
			AscetModelElement modelElement = GetModelElement(name);
			if (modelElement.IsPrimitive())
			{
				return (PrimitiveModelElement)modelElement;
			}
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetPrimitiveModelElement(" + name + ") failed.");
		}
		return null;
	}

	public virtual DataBaseItem[] GetReferencedItemsForExport()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getReferencedItemsForExport");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				DataBaseItem dataBaseItem = GetDataBase().identifyComponent(remoteObjectsFromCollection[i]);
				if (dataBaseItem != null)
				{
					arrayList.Add(dataBaseItem);
				}
			}
			DataBaseItem[] array = new DataBaseItem[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetReferencedItemsForExport() failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetReferencedItemsForExport() failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetReferencedItemsForExport() failed.");
		}
		return null;
	}

	public virtual bool HasIcon()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("hasIcon");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".HasIcon() failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".HasIcon() failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".HasIcon() failed.");
		}
		return false;
	}

	public virtual bool HasReferencedItemsForExport()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("hasReferencedItemsForExport");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".HasReferencedItemsForExport() failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".HasReferencedItemsForExport() failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".HasReferencedItemsForExport() failed.");
		}
		return false;
	}

	protected internal virtual AscetModelElement identifyAscetModelElement(Identifiable obj)
	{
		try
		{
			switch (getClassName(obj))
			{
			case "EtasAPIImplementationCast":
				return new ImplementationCast(this, obj);
			case "EtasAPIModelClass":
			case "EtasAPIModelCTBlock":
			case "EtasAPIModelModule":
			case "EtasAPIComplexModelElement":
				return new ComplexModelElement(this, obj);
			case "EtasAPIModelOneDTable":
				return new OneDTableElement(this, obj);
			case "EtasAPIModelTwoDTable":
				return new TwoDTableElement(this, obj);
			case "EtasAPIInput":
				return new InputElement(this, obj);
			case "EtasAPIOutput":
				return new OutputElement(this, obj);
			case "EtasAPIDeltaT":
				return new DeltaTElement(this, obj);
			case "EtasAPIModelScalar":
				return new ScalarElement(this, obj);
			case "EtasAPIModelArray":
				return new ArrayElement(this, obj);
			case "EtasAPIModelDistribution":
				return new DistributionElement(this, obj);
			case "EtasAPIModelEnumeration":
				return new EnumerationModelElement(this, obj);
			case "EtasAPIModelMatrix":
				return new MatrixElement(this, obj);
			case "EtasAPIModelSendMessage":
				return new SendMessageElement(this, obj);
			case "EtasAPIModelReceiveMessage":
				return new ReceiveMessageElement(this, obj);
			case "EtasAPIModelSendReceiveMessage":
				return new SendReceiveMessageElement(this, obj);
			case "EtasAPIModelRessource":
				return new ResourceModelElement(this, obj);
			case "EtasAPIConstant":
				return new ConstantElement(this, obj);
			case "EtasAPIContinuousState":
				return new ContinuousStateElement(this, obj);
			case "EtasAPIDependentParameter":
				return new DependentParameterElement(this, obj);
			case "EtasAPIDiscreteState":
				return new DiscreteStateElement(this, obj);
			case "EtasAPIParameter":
				return new ParameterElement(this, obj);
			case "EtasAPIStepLocal":
				return new StepLocalElement(this, obj);
			case "EtasAPISystemConstant":
				return new SystemConstantElement(this, obj);
			case "EtasAPIVariable":
				return new AscetModelElement(this, obj);
			case "EtasAPIModelElement":
				return new AscetModelElement(this, obj);
			default:
				return null;
			}
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".identifyAscetModelElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal virtual PrimitiveCTModelElement identifyPrimitiveCTModelElement(Identifiable obj)
	{
		try
		{
			if (isXXX(obj, "Constant"))
			{
				return new ConstantElement(this, obj);
			}
			if (isXXX(obj, "ContinuousState"))
			{
				return new ContinuousStateElement(this, obj);
			}
			if (isXXX(obj, "DependentParameter"))
			{
				return new DependentParameterElement(this, obj);
			}
			if (isXXX(obj, "DiscreteState"))
			{
				return new DiscreteStateElement(this, obj);
			}
			if (isXXX(obj, "Parameter"))
			{
				return new ParameterElement(this, obj);
			}
			if (isXXX(obj, "StepLocal"))
			{
				return new StepLocalElement(this, obj);
			}
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".identifyPrimitiveCTModelElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal virtual PrimitiveDiscreteModelElement identifyPrimitiveDiscreteModelElement(Identifiable obj)
	{
		try
		{
			if (isXXX(obj, "Scalar"))
			{
				return new ScalarElement(this, obj);
			}
			if (isXXX(obj, "Array"))
			{
				return new ArrayElement(this, obj);
			}
			if (isXXX(obj, "SendMessage"))
			{
				return new SendMessageElement(this, obj);
			}
			if (isXXX(obj, "ReceiveMessage"))
			{
				return new ReceiveMessageElement(this, obj);
			}
			if (isXXX(obj, "SendReceiveMessage"))
			{
				return new SendReceiveMessageElement(this, obj);
			}
			if (isXXX(obj, "Matrix"))
			{
				return new MatrixElement(this, obj);
			}
			if (isXXX(obj, "Distribution"))
			{
				return new DistributionElement(this, obj);
			}
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".identifyAscetModelElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsCodeComponent()
	{
		return true;
	}

	public virtual bool RebuildAll()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("rebuildAll");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RebuildAll(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool RebuildAllWriteErrorsToPath(string pathName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("rebuildAllWriteErrorsToPath:");
			instanceMethodCall.appendParameter(pathName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RebuildAllWriteErrorsToPath(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool RebuildAllWriteErrorsToPathUsingFileName(string pathName, string fileName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("rebuildAllWriteErrorsToPath:fileName:");
			instanceMethodCall.appendParameter(pathName);
			instanceMethodCall.appendParameter(fileName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RebuildAllWriteErrorsToPathUsingFileName(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool RemoveData(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("removeData:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemoveData(" + name + ") failed -> APIError:" + ex);
		}
		return false;
	}

	public bool RemoveDiagram(AscetDiagram diagram)
	{
		if (diagram == null || diagram.nullHandle())
		{
			logEntry(GetType().FullName + ".RemoveDiagram() failed: diagram is not valid");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deleteDiagram:");
			instanceMethodCall.appendParameter(diagram);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemoveDiagram() failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool removeImpl(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("removeImplementation:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".removeImplementation(" + name + ") failed -> APIError:" + ex);
		}
		return false;
	}

	public bool RemoveModelElement(AscetModelElement modelElement)
	{
		if (modelElement == null || modelElement.nullHandle())
		{
			logEntry(GetType().FullName + ".RemoveModelElement() failed: modelElement is not valid");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deleteModelElement:");
			instanceMethodCall.appendParameter(modelElement);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemoveModelElement() failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool ReplaceComplexModelElement(ComplexModelElement element, AscetDiscreteComponent component)
	{
		if (element == null || component == null)
		{
			logEntry(GetType().FullName + ".ReplaceComplexModelElementNamed(ComplexModelElement, AscetDiscretComponent) failed. Parameter is null.");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("replaceComplexModelElement:with:");
			instanceMethodCall.appendParameter(element);
			instanceMethodCall.appendParameter(component);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".ReplaceComplexModelElement(" + component.GetName() + ", " + component.GetName() + ") failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".ReplaceComplexModelElement(" + component.GetName() + ", " + component.GetName() + ") failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".ReplaceComplexModelElement(" + component.GetName() + ", " + component.GetName() + ") failed.");
		}
		return false;
	}

	public virtual bool ReplaceComplexModelElementNamed(string name, AscetDiscreteComponent component)
	{
		if (name == null || component == null)
		{
			logEntry(GetType().FullName + ".ReplaceComplexModelElementNamed(String, AscetDiscretComponent) failed. Parameter is null.");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("replaceComplexModelElementNamed:with:");
			instanceMethodCall.appendParameter(name);
			instanceMethodCall.appendParameter(component);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".ReplaceComplexModelElementNamed(" + name + ", " + component.GetName() + ") failed. Component itself not defined.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".ReplaceComplexModelElementNamed(" + name + ", " + component.GetName() + ") failed due to API Error " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".ReplaceComplexModelElementNamed(" + name + ", " + component.GetName() + ") failed.");
		}
		return false;
	}

	public virtual bool SetDefaultData(DataConfiguration dataConf)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setDefaultData:");
			instanceMethodCall.appendParameter(dataConf);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".SetDefaultData(", dataConf, "): failed", ex));
		}
		return false;
	}

	protected internal virtual bool setDefaultImplementation(ImplConfiguration implConf)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setDefaultImplementation:");
			instanceMethodCall.appendParameter(implConf);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".setDefaultImplementation(", implConf, "): failed", ex));
		}
		return false;
	}

	public virtual bool TouchFlat()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("touchFlat");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".TouchFlat(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool TouchRecursive()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("touchRecursive");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".TouchRecursive(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool WriteDCMToFile(string outputFilePathName, bool recursive)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("writeDCMToFile:recursive:");
			instanceMethodCall.appendParameter(outputFilePathName);
			instanceMethodCall.appendParameter(recursive);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".WriteDCMToFile(" + outputFilePathName + ", " + recursive + "): failed" + ex);
		}
		return false;
	}

	object CodeComponent_Dispatch.AddComponent(object dispatch_item, string name)
	{
		CodeComponent item = (CodeComponent)dispatch_item;
		return AddComponent(item, name);
	}

	object CodeComponent_Dispatch.AddData(string name)
	{
		return AddData(name);
	}

	object CodeComponent_Dispatch.AddDeltaT()
	{
		return AddDeltaT();
	}

	object CodeComponent_Dispatch.AddEnumeration(object dispatch_enumerator, string name)
	{
		AscetEnumeration enumerator = (AscetEnumeration)dispatch_enumerator;
		return AddEnumeration(enumerator, name);
	}

	object CodeComponent_Dispatch.AddOneDTable(string n)
	{
		return AddOneDTable(n);
	}

	object CodeComponent_Dispatch.AddTwoDTable(string n)
	{
		return AddTwoDTable(n);
	}

	bool CodeComponent_Dispatch.ExistsExportForImport(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return ExistsExportForImport(modelElement);
	}

	object CodeComponent_Dispatch.GetAllComplexModelElements()
	{
		ComplexModelElement[] allComplexModelElements = GetAllComplexModelElements();
		return Adapter.ToObject(allComplexModelElements);
	}

	object CodeComponent_Dispatch.GetAllDiagrams()
	{
		AscetDiagram[] allDiagrams = GetAllDiagrams();
		return Adapter.ToObject(allDiagrams);
	}

	object CodeComponent_Dispatch.GetAllModelElements()
	{
		AscetModelElement[] allModelElements = GetAllModelElements();
		return Adapter.ToObject(allModelElements);
	}

	object CodeComponent_Dispatch.GetAllPrimitiveModelElements()
	{
		PrimitiveModelElement[] allPrimitiveModelElements = GetAllPrimitiveModelElements();
		return Adapter.ToObject(allPrimitiveModelElements);
	}

	object CodeComponent_Dispatch.GetAllReferencedModelElements()
	{
		AscetModelElement[] allReferencedModelElements = GetAllReferencedModelElements();
		return Adapter.ToObject(allReferencedModelElements);
	}

	object CodeComponent_Dispatch.GetAllUndefinedComplexModelElementNames()
	{
		string[] allUndefinedComplexModelElementNames = GetAllUndefinedComplexModelElementNames();
		return Adapter.ToObject(allUndefinedComplexModelElementNames);
	}

	object CodeComponent_Dispatch.GetComplexModelElement(string name)
	{
		return GetComplexModelElement(name);
	}

	object CodeComponent_Dispatch.GetDefaultData()
	{
		return GetDefaultData();
	}

	object CodeComponent_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object CodeComponent_Dispatch.GetDiagramWithName(string diagName)
	{
		return GetDiagramWithName(diagName);
	}

	object CodeComponent_Dispatch.GetExportForImport(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return GetExportForImport(modelElement);
	}

	object CodeComponent_Dispatch.GetIcon()
	{
		return GetIcon();
	}

	object CodeComponent_Dispatch.GetModelElement(string name)
	{
		return GetModelElement(name);
	}

	object CodeComponent_Dispatch.GetPrimitiveModelElement(string name)
	{
		return GetPrimitiveModelElement(name);
	}

	object CodeComponent_Dispatch.GetReferencedItemsForExport()
	{
		DataBaseItem[] referencedItemsForExport = GetReferencedItemsForExport();
		return Adapter.ToObject(referencedItemsForExport);
	}

	bool CodeComponent_Dispatch.RemoveDiagram(object dispatch_diagram)
	{
		AscetDiagram diagram = (AscetDiagram)dispatch_diagram;
		return RemoveDiagram(diagram);
	}

	bool CodeComponent_Dispatch.RemoveModelElement(object dispatch_modelElement)
	{
		AscetModelElement modelElement = (AscetModelElement)dispatch_modelElement;
		return RemoveModelElement(modelElement);
	}

	bool CodeComponent_Dispatch.ReplaceComplexModelElement(object dispatch_element, object dispatch_component)
	{
		ComplexModelElement element = (ComplexModelElement)dispatch_element;
		AscetDiscreteComponent component = (AscetDiscreteComponent)dispatch_component;
		return ReplaceComplexModelElement(element, component);
	}

	bool CodeComponent_Dispatch.ReplaceComplexModelElementNamed(string name, object dispatch_component)
	{
		AscetDiscreteComponent component = (AscetDiscreteComponent)dispatch_component;
		return ReplaceComplexModelElementNamed(name, component);
	}

	bool CodeComponent_Dispatch.SetDefaultData(object dispatch_dataConf)
	{
		DataConfiguration defaultData = (DataConfiguration)dispatch_dataConf;
		return SetDefaultData(defaultData);
	}

	bool CodeComponent_Dispatch.AddTextSegment(string textSegment, object views)
	{
		string[] views2 = Adapter.ToArray1Object<string>(views);
		return AddTextSegment(textSegment, views2);
	}

	object CodeComponent_Dispatch.Edit()
	{
		return Edit();
	}

	object CodeComponent_Dispatch.EditInFront()
	{
		return EditInFront();
	}

	object CodeComponent_Dispatch.GetTextSegments()
	{
		string[] textSegments = GetTextSegments();
		return Adapter.ToObject(textSegments);
	}

	object CodeComponent_Dispatch.GetViewsForTextSegment(string textSegment)
	{
		string[] viewsForTextSegment = GetViewsForTextSegment(textSegment);
		return Adapter.ToObject(viewsForTextSegment);
	}

	object CodeComponent_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object CodeComponent_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object CodeComponent_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object CodeComponent_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string CodeComponent_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool CodeComponent_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object CodeComponent_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
