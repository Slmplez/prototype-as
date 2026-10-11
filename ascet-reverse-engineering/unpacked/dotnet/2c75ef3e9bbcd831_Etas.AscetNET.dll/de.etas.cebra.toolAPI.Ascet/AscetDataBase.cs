using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.cebra.toolAPI.Inca;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[ProgId("Ascet.AscetDataBase")]
[Guid("A3DF3E86-B490-11D3-8A29-00A0247767D8")]
public class AscetDataBase : IncaDataBase, AscetDataBase_Dispatch, IAscetDataBase, IIncaDataBase, IDataBase
{
	object AscetDataBase_Dispatch.AddAscetFolder(string folderName)
	{
		return AddAscetFolder(folderName);
	}

	bool AscetDataBase_Dispatch.ExportXMLToFile(object items, string filePath, bool references)
	{
		DataBaseItem[] items2 = Adapter.ToArray1Object<DataBaseItem>(items);
		return ExportXMLToFile(items2, filePath, references);
	}

	bool AscetDataBase_Dispatch.ExportXMLToZipFile(object items, string filePathAndName, bool references)
	{
		DataBaseItem[] items2 = Adapter.ToArray1Object<DataBaseItem>(items);
		return ExportXMLToZipFile(items2, filePathAndName, references);
	}

	object AscetDataBase_Dispatch.GetAllAscetFolders()
	{
		AscetFolder[] allAscetFolders = GetAllAscetFolders();
		return Adapter.ToObject(allAscetFolders);
	}

	object AscetDataBase_Dispatch.GetAllComponentsOfType(string typeString)
	{
		DataBaseItem[] allComponentsOfType = GetAllComponentsOfType(typeString);
		return Adapter.ToObject(allComponentsOfType);
	}

	object AscetDataBase_Dispatch.GetAllViewNames()
	{
		string[] allViewNames = GetAllViewNames();
		return Adapter.ToObject(allViewNames);
	}

	object AscetDataBase_Dispatch.GetAscetFolder(string folderName)
	{
		return GetAscetFolder(folderName);
	}

	object AscetDataBase_Dispatch.ImportXMLFromDirectory(string filePath, bool discardImpl, bool refItems)
	{
		DataBaseItem[] oTypedArray = ImportXMLFromDirectory(filePath, discardImpl, refItems);
		return Adapter.ToObject(oTypedArray);
	}

	object AscetDataBase_Dispatch.ImportXMLFromFile(string filePath, string componentName, bool discardImpl, bool refItems)
	{
		return ImportXMLFromFile(filePath, componentName, discardImpl, refItems);
	}

	object AscetDataBase_Dispatch.ImportXMLFromZipFile(string filePathAndName, bool discardImpl, bool refItems)
	{
		DataBaseItem[] oTypedArray = ImportXMLFromZipFile(filePathAndName, discardImpl, refItems);
		return Adapter.ToObject(oTypedArray);
	}

	object AscetDataBase_Dispatch.AddFolder(string folderName)
	{
		return AddFolder(folderName);
	}

	object AscetDataBase_Dispatch.BrowseItem(string itemName)
	{
		DataBaseItem[] oTypedArray = BrowseItem(itemName);
		return Adapter.ToObject(oTypedArray);
	}

	object AscetDataBase_Dispatch.BrowseItemInFolder(string itemName, string folderName)
	{
		DataBaseItem[] oTypedArray = BrowseItemInFolder(itemName, folderName);
		return Adapter.ToObject(oTypedArray);
	}

	bool AscetDataBase_Dispatch.ExportToFile(object items, string aFilePath, bool multipleFiles, bool withReferences)
	{
		DataBaseItem[] items2 = Adapter.ToArray1Object<DataBaseItem>(items);
		return ExportToFile(items2, aFilePath, multipleFiles, withReferences);
	}

	object AscetDataBase_Dispatch.GetAllFolders()
	{
		Folder[] allFolders = GetAllFolders();
		return Adapter.ToObject(allFolders);
	}

	object AscetDataBase_Dispatch.GetFolder(string folderName)
	{
		return GetFolder(folderName);
	}

	object AscetDataBase_Dispatch.GetItem(string itemName)
	{
		return GetItem(itemName);
	}

	object AscetDataBase_Dispatch.GetItemForOID(string oid)
	{
		return GetItemForOID(oid);
	}

	object AscetDataBase_Dispatch.GetItemInFolder(string itemName, string folderName)
	{
		return GetItemInFolder(itemName, folderName);
	}

	object AscetDataBase_Dispatch.ImportDirectoryFor(string aFileName, string listMode)
	{
		string[] oTypedArray = ImportDirectoryFor(aFileName, listMode);
		return Adapter.ToObject(oTypedArray);
	}

	object AscetDataBase_Dispatch.ImportItemsFromFile(string aFileName, bool overwriteFlag, bool discardImplFlag)
	{
		DataBaseItem[] oTypedArray = ImportItemsFromFile(aFileName, overwriteFlag, discardImplFlag);
		return Adapter.ToObject(oTypedArray);
	}

	bool AscetDataBase_Dispatch.Remove(object dispatch_aFolderItem, bool recursive)
	{
		Folder aFolderItem = (Folder)dispatch_aFolderItem;
		return Remove(aFolderItem, recursive);
	}

	public AscetDataBase(EtasTool t)
		: base(t)
	{
	}

	public AscetDataBase(EtasTool t, string dataBaseName)
		: base(t, dataBaseName)
	{
	}

	public AscetFolder AddAscetFolder(string folderName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addTopFolder:");
			instanceMethodCall.appendParameter(folderName);
			call(instanceMethodCall);
			return (AscetFolder)identifyComponent(instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".AddAscetFolder(" + folderName + "): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".AddAscetFolder(" + folderName + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".AddAscetFolder(" + folderName + "): failed.");
		}
		return null;
	}

	public bool AddView(string viewName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addView:");
			instanceMethodCall.appendParameter(viewName);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".AddView(" + viewName + "): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".AddView(" + viewName + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".AddView(" + viewName + "): failed.");
		}
		return false;
	}

	private bool checkComponentType(string item)
	{
		if (item.ToUpper().Equals("ClassC".ToUpper()))
		{
			return true;
		}
		if (item.ToUpper().Equals("ClassBDE".ToUpper()))
		{
			return true;
		}
		if (item.ToUpper().Equals("ClassESDL".ToUpper()))
		{
			return true;
		}
		if (item.ToUpper().Equals("ModuleC".ToUpper()))
		{
			return true;
		}
		if (item.ToUpper().Equals("ModuleBDE".ToUpper()))
		{
			return true;
		}
		if (item.ToUpper().Equals("ModuleESDL".ToUpper()))
		{
			return true;
		}
		if (item.ToUpper().Equals("CTBlockC".ToUpper()))
		{
			return true;
		}
		if (item.ToUpper().Equals("CTBlockBDE".ToUpper()))
		{
			return true;
		}
		if (item.ToUpper().Equals("CTBlockESDL".ToUpper()))
		{
			return true;
		}
		if (item.ToUpper().Equals("StateMachine".ToUpper()))
		{
			return true;
		}
		if (item.ToUpper().Equals("Protocol".ToUpper()))
		{
			return true;
		}
		return false;
	}

	private bool checkExtensionType(string item)
	{
		if (item.ToUpper().Equals("C".ToUpper()))
		{
			return true;
		}
		if (item.ToUpper().Equals("BDE".ToUpper()))
		{
			return true;
		}
		if (item.ToUpper().Equals("ESDL".ToUpper()))
		{
			return true;
		}
		return false;
	}

	public virtual bool ExportXMLToFile(DataBaseItem[] items, string filePath, bool references)
	{
		for (int i = 0; i < items.Length; i++)
		{
			if (items[i] == null || items[i].nullHandle())
			{
				logEntry(GetType().FullName + ".ExportXMLToFile(): Unknown/Invalid item.");
				return false;
			}
		}
		try
		{
			OrderedCollection i2 = setOrderedCollectionFromValues(items);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("exportToXMLFiles:usePath:withReferences:");
			instanceMethodCall.appendParameter(i2);
			instanceMethodCall.appendParameter(filePath);
			instanceMethodCall.appendParameter(references);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ExportXMLToFile(DataBaseItem[], " + filePath + ", " + references + "): Import failed due to an API error. " + ex);
		}
		return false;
	}

	public virtual bool ExportXMLToZipFile(DataBaseItem[] items, string filePathAndName, bool references)
	{
		for (int i = 0; i < items.Length; i++)
		{
			if (items[i] == null || items[i].nullHandle())
			{
				logEntry(GetType().FullName + ".ExportXMLToZipFile(): Unknown/Invalid item.");
				return false;
			}
		}
		try
		{
			OrderedCollection i2 = setOrderedCollectionFromValues(items);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("exportToZIPFile:useFilePathName:withReferences:");
			instanceMethodCall.appendParameter(i2);
			instanceMethodCall.appendParameter(filePathAndName);
			instanceMethodCall.appendParameter(references);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ExportXMLToZipFile(DataBaseItem[], " + filePathAndName + ", " + references + "): Import failed due to an API error. " + ex);
		}
		return false;
	}

	public AscetFolder[] GetAllAscetFolders()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllTopFolders");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				DataBaseItem dataBaseItem = identifyComponent(remoteObjectsFromCollection[i]);
				if (dataBaseItem != null && dataBaseItem.IsAscetFolder())
				{
					arrayList.Add((AscetFolder)dataBaseItem);
				}
			}
			AscetFolder[] array = new AscetFolder[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetAllAscetFolders(): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetAllAscetFolders(): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetAllAscetFolders(): failed.");
		}
		return null;
	}

	public virtual DataBaseItem[] GetAllComponentsOfType(string typeString)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllComponentsOfType:");
			instanceMethodCall.appendParameter(typeString);
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				DataBaseItem dataBaseItem = identifyComponent(remoteObjectsFromCollection[i]);
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
			logEntry(GetType().FullName + ".GetAllComponentsOfType(" + typeString + "): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetAllComponentsOfType(" + typeString + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetAllComponentsOfType(" + typeString + "): failed.");
		}
		return null;
	}

	public string[] GetAllViewNames()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllViews");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllViews(): failed -> API Error: " + ex);
		}
		return null;
	}

	public AscetFolder GetAscetFolder(string folderName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getTopFolder:");
			instanceMethodCall.appendParameter(folderName);
			call(instanceMethodCall);
			return (AscetFolder)identifyComponent(instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetAscetFolder(" + folderName + "): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetAscetFolder(" + folderName + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetAscetFolder(" + folderName + "): failed.");
		}
		return null;
	}

	public override DataBaseItem identifyComponent(Identifiable obj)
	{
		if (obj == null)
		{
			return null;
		}
		try
		{
			switch (getClassName(obj))
			{
			case "EtasAPIClass":
			case "EtasAPIClassBDE":
			case "EtasAPIClassC":
			case "EtasAPIClassESDL":
				return new AscetClass(this, obj);
			case "EtasAPIModule":
			case "EtasAPIModuleBDE":
			case "EtasAPIModuleC":
			case "EtasAPIModuleESDL":
				return new AscetModule(this, obj);
			case "EtasAPICTBlock":
			case "EtasAPICTBlockBDE":
			case "EtasAPICTBlockC":
			case "EtasAPICTBlockESDL":
				return new AscetCTBlock(this, obj);
			case "EtasAPIStateMachine":
				return new AscetStateMachine(this, obj);
			case "EtasAPIProject":
				return new AscetProject(this, obj);
			case "EtasAPIEnumeration":
				return new AscetEnumeration(this, obj);
			case "EtasAPISignal":
				return new Signal(this, obj);
			case "EtasAPIIcon":
				return new AscetIcon(this, obj);
			case "EtasAPIRecord":
				return new AscetRecord(this, obj);
			case "EtasAPIContainer":
				return new AscetContainer(this, obj);
			case "EtasAPIClassConditionalTable":
				return new AscetConditionalTable(this, obj);
			case "EtasAPIFolder":
				return new AscetFolder(this, obj);
			case "EtasAPIAsap2Item":
				return new Asap2Project(this, obj);
			case "EtasAPIAtomicSoftwareComponent":
				return new AscetAtomicSoftwareComponent(this, obj);
			case "EtasAPIAscetInterface":
				return new AscetInterface(this, obj);
			default:
				return null;
			}
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".identifyComponent(): failed -> APIError: " + ex);
		}
		return null;
	}

	[Obsolete("Use ImportFileWithOverwriteAndDiscardImpl() instead", false)]
	public bool ImportFile(string fileName)
	{
		return ImportFileWithOverwriteAndDiscardImpl(fileName, overwrite: false, discImpl: false);
	}

	[Obsolete("Use DataBase.ImportItemsFromFile instead", false)]
	public bool ImportFileWithOverwriteAndDiscardImpl(string fileName, bool overwrite, bool discImpl)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("import:overwrite:discardImpl:");
			instanceMethodCall.appendParameter(fileName);
			instanceMethodCall.appendParameter(overwrite);
			instanceMethodCall.appendParameter(discImpl);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (NullHandleException)
		{
			return false;
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".ImportFileWithOverwriteAndDiscardImpl(" + fileName + ", " + overwrite + "," + discImpl + "): Import failed due to an API error. " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".ImportFileWithOverwriteAndDiscardImpl(" + fileName + ", " + overwrite + "," + discImpl + "): Import failed.");
		}
		return false;
	}

	public virtual DataBaseItem[] ImportXMLFromDirectory(string filePath, bool discardImpl, bool refItems)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("importFromDirectory:discardImpl:refItems:");
			instanceMethodCall.appendParameter(filePath);
			instanceMethodCall.appendParameter(discardImpl);
			instanceMethodCall.appendParameter(refItems);
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				DataBaseItem dataBaseItem = identifyComponent(remoteObjectsFromCollection[i]);
				if (dataBaseItem != null)
				{
					arrayList.Add(dataBaseItem);
				}
			}
			DataBaseItem[] array = new DataBaseItem[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ImportXMLFromDirectory(" + filePath + ", " + discardImpl + ", " + refItems + "): Import failed due to an API error. " + ex);
		}
		return null;
	}

	public virtual DataBaseItem ImportXMLFromFile(string filePath, string componentName, bool discardImpl, bool refItems)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("importFromXMLFileUsePath:componentName:discardImpl:refItems:");
			instanceMethodCall.appendParameter(filePath);
			instanceMethodCall.appendParameter(componentName);
			instanceMethodCall.appendParameter(discardImpl);
			instanceMethodCall.appendParameter(refItems);
			call(instanceMethodCall);
			return identifyComponent(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ImportXMLFromFile(" + filePath + ", " + componentName + ", " + discardImpl + ", " + refItems + "): Import failed due to an API error. " + ex);
		}
		return null;
	}

	public virtual DataBaseItem[] ImportXMLFromZipFile(string filePathAndName, bool discardImpl, bool refItems)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("importFromZIPFile:discardImpl:refItems:");
			instanceMethodCall.appendParameter(filePathAndName);
			instanceMethodCall.appendParameter(discardImpl);
			instanceMethodCall.appendParameter(refItems);
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				DataBaseItem dataBaseItem = identifyComponent(remoteObjectsFromCollection[i]);
				if (dataBaseItem != null)
				{
					arrayList.Add(dataBaseItem);
				}
			}
			DataBaseItem[] array = new DataBaseItem[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ImportXMLFromZipFile(" + filePathAndName + ", " + discardImpl + ", " + refItems + "): Import failed due to an API error. " + ex);
		}
		return null;
	}

	public override bool IsAscetDataBase()
	{
		return true;
	}

	public bool RemoveViewName(string viewName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deleteView:");
			instanceMethodCall.appendParameter(viewName);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".RemoveView(" + viewName + "): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".RemoveView(" + viewName + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".RemoveView(" + viewName + "): failed.");
		}
		return false;
	}
}
