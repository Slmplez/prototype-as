using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ClassInterface(ClassInterfaceType.None)]
[Guid("FE116C62-AC8A-11D3-9138-02FEFE0102B6")]
[ComVisible(true)]
[ProgId("Ascet.DataBase")]
public class DataBase : SmalltalkToolAPI, DataBase_Dispatch
{
	protected internal string dataBaseName;

	object DataBase_Dispatch.AddFolder(string folderName)
	{
		return AddFolder(folderName);
	}

	object DataBase_Dispatch.BrowseItem(string itemName)
	{
		DataBaseItem[] oTypedArray = BrowseItem(itemName);
		return Adapter.ToObject(oTypedArray);
	}

	object DataBase_Dispatch.BrowseItemInFolder(string itemName, string folderName)
	{
		DataBaseItem[] oTypedArray = BrowseItemInFolder(itemName, folderName);
		return Adapter.ToObject(oTypedArray);
	}

	bool DataBase_Dispatch.ExportToFile(object items, string aFilePath, bool multipleFiles, bool withReferences)
	{
		DataBaseItem[] items2 = Adapter.ToArray1Object<DataBaseItem>(items);
		return ExportToFile(items2, aFilePath, multipleFiles, withReferences);
	}

	object DataBase_Dispatch.GetAllFolders()
	{
		Folder[] allFolders = GetAllFolders();
		return Adapter.ToObject(allFolders);
	}

	object DataBase_Dispatch.GetFolder(string folderName)
	{
		return GetFolder(folderName);
	}

	object DataBase_Dispatch.GetItem(string itemName)
	{
		return GetItem(itemName);
	}

	object DataBase_Dispatch.GetItemForOID(string oid)
	{
		return GetItemForOID(oid);
	}

	object DataBase_Dispatch.GetItemInFolder(string itemName, string folderName)
	{
		return GetItemInFolder(itemName, folderName);
	}

	object DataBase_Dispatch.ImportDirectoryFor(string aFileName, string listMode)
	{
		string[] oTypedArray = ImportDirectoryFor(aFileName, listMode);
		return Adapter.ToObject(oTypedArray);
	}

	object DataBase_Dispatch.ImportItemsFromFile(string aFileName, bool overwriteFlag, bool discardImplFlag)
	{
		DataBaseItem[] oTypedArray = ImportItemsFromFile(aFileName, overwriteFlag, discardImplFlag);
		return Adapter.ToObject(oTypedArray);
	}

	bool DataBase_Dispatch.Remove(object dispatch_aFolderItem, bool recursive)
	{
		Folder aFolderItem = (Folder)dispatch_aFolderItem;
		return Remove(aFolderItem, recursive);
	}

	public DataBase(EtasTool t)
		: base(t.Sender)
	{
	}

	public DataBase(EtasTool t, string dataBaseName)
		: base(t.Sender)
	{
		this.dataBaseName = dataBaseName;
	}

	public Folder AddFolder(string folderName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addTopFolder:");
			instanceMethodCall.appendParameter(folderName);
			call(instanceMethodCall);
			return (Folder)identifyComponent(instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".AddFolder(" + folderName + "): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".AddFolder(" + folderName + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".AddFolder(" + folderName + "): failed.");
		}
		return null;
	}

	public DataBaseItem[] BrowseItem(string itemName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("browseItem:");
			instanceMethodCall.appendParameter(itemName);
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
			logEntry(GetType().FullName + ".BrowseItem(" + itemName + "): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".BrowseItem(" + itemName + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".BrowseItem(" + itemName + "): failed.");
		}
		return null;
	}

	public DataBaseItem[] BrowseItemInFolder(string itemName, string folderName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("browseItem:inFolder:");
			instanceMethodCall.appendParameter(itemName);
			instanceMethodCall.appendParameter(folderName);
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
			logEntry(GetType().FullName + ".BrowseItemInFolder(" + itemName + "," + folderName + "): failed.");
			return null;
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".BrowseItemInFolder(" + itemName + "," + folderName + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".BrowseItemInFolder(" + itemName + "," + folderName + "): failed.");
		}
		return null;
	}

	public virtual bool checkForInstalledPassword()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("hasPasswordInstalled");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".checkForInstalledPassword(): failed -> APIError" + ex);
		}
		return false;
	}

	public bool Close()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("closeDatabase");
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			logEntry(GetType().FullName + ".closed Database(" + dataBaseName + ") failed.");
			return true;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".Close(" + dataBaseName + "): failed.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".Close(" + dataBaseName + "): failed -> APIError: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".Close(" + dataBaseName + ") failed.");
		}
		return false;
	}

	public virtual void DisableAutoCommit()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("disableAutoCommit");
			call(instanceMethodCall);
			instanceMethodCall.getResultVoid();
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".DisableAutoCommit(" + dataBaseName + ") failed.");
		}
	}

	public virtual void EnableAutoCommit()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("enableAutoCommit");
			call(instanceMethodCall);
			instanceMethodCall.getResultVoid();
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".EnableAutoCommit(" + dataBaseName + ") failed.");
		}
	}

	public virtual bool IsAutoCommit()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isAutoCommit");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".IsAutoCommit() failed.");
		}
		return false;
	}

	public bool ExportToFile(DataBaseItem[] items, string aFilePath, bool multipleFiles, bool withReferences)
	{
		for (int i = 0; i < items.Length; i++)
		{
			if (items[i] == null)
			{
				logEntry(GetType().FullName + ".ExportToFile(): Unknown item.");
				return false;
			}
			if (items[i].nullHandle())
			{
				logEntry(GetType().FullName + ".ExportToFile(): item not valid.");
				return false;
			}
		}
		try
		{
			OrderedCollection i2 = setOrderedCollectionFromValues(items);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("export:path:multipleFile:withRef:");
			instanceMethodCall.appendParameter(i2);
			instanceMethodCall.appendParameter(aFilePath);
			instanceMethodCall.appendParameter(multipleFiles);
			instanceMethodCall.appendParameter(withReferences);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".ExportToFile(): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".ExportToFile(): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".ExportToFile(): failed.");
		}
		return false;
	}

	public Folder[] GetAllFolders()
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
				if (dataBaseItem != null && dataBaseItem.IsFolder())
				{
					arrayList.Add((Folder)dataBaseItem);
				}
			}
			Folder[] array = new Folder[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetAllFolders(): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetAllFolders(): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetAllFolders(): failed.");
		}
		return null;
	}

	public Folder GetFolder(string folderName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getTopFolder:");
			instanceMethodCall.appendParameter(folderName);
			call(instanceMethodCall);
			return (Folder)identifyComponent(instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetFolder(" + folderName + "): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetFolder(" + folderName + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetFolder(" + folderName + "): failed.");
		}
		return null;
	}

	public DataBaseItem GetItem(string itemName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getItem:");
			instanceMethodCall.appendParameter(itemName);
			call(instanceMethodCall);
			return identifyComponent(instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			return null;
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetItem(" + itemName + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetItem(" + itemName + "): failed.");
		}
		return null;
	}

	public DataBaseItem GetItemForOID(string oid)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getItemForOID:");
			instanceMethodCall.appendParameter(oid);
			call(instanceMethodCall);
			return identifyComponent(instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			return null;
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetItemForOID(" + oid + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetItemForOID(" + oid + "): failed.");
		}
		return null;
	}

	public DataBaseItem GetItemInFolder(string itemName, string folderName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getItem:inFolder:");
			instanceMethodCall.appendParameter(itemName);
			instanceMethodCall.appendParameter(folderName);
			call(instanceMethodCall);
			return identifyComponent(instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			return null;
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetItemInFolder(" + itemName + "," + folderName + "): Could not get item. API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetItemInFolder(" + itemName + "," + folderName + "): Could not get item.");
		}
		return null;
	}

	public string GetName()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("location");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetName(): failed.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetName(): failed -> APIError: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetName(): failed.");
		}
		return null;
	}

	public override int GetToolErrorCode()
	{
		return base.GetToolErrorCode();
	}

	public override string GetToolErrorMessage()
	{
		return base.GetToolErrorMessage();
	}

	public virtual DataBaseItem identifyComponent(Identifiable obj)
	{
		if (obj == null)
		{
			return null;
		}
		try
		{
			if (isXXX(obj, "Folder"))
			{
				return new Folder(this, obj);
			}
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".identifyComponent(): failed.");
		}
		return null;
	}

	public virtual string[] ImportDirectoryFor(string aFileName, string listMode)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("importDirectoryFor:listMode:");
			instanceMethodCall.appendParameter(aFileName);
			instanceMethodCall.appendParameter(listMode);
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".ImportItemsFromFile(" + aFileName + "," + listMode + "): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".ImportItemsFromFile(" + aFileName + "," + listMode + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".ImportItemsFromFile(" + aFileName + "," + listMode + "): failed.");
		}
		return null;
	}

	public bool ImportFromFile(string aFileName, bool overwriteFlag, bool discardImplFlag)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("import:overwrite:discardImpl:");
			instanceMethodCall.appendParameter(aFileName);
			instanceMethodCall.appendParameter(overwriteFlag);
			instanceMethodCall.appendParameter(discardImplFlag);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".ImportFromFile(" + aFileName + "," + overwriteFlag + "," + discardImplFlag + "): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".ImportFromFile(" + aFileName + "," + overwriteFlag + "," + discardImplFlag + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".ImportFromFile(" + aFileName + "," + overwriteFlag + "," + discardImplFlag + "): failed.");
		}
		return false;
	}

	public virtual DataBaseItem[] ImportItemsFromFile(string aFileName, bool overwriteFlag, bool discardImplFlag)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("import:overwrite:discardImpl:");
			instanceMethodCall.appendParameter(aFileName);
			instanceMethodCall.appendParameter(overwriteFlag);
			instanceMethodCall.appendParameter(discardImplFlag);
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
			logEntry(GetType().FullName + ".ImportItemsFromFile(" + aFileName + "," + overwriteFlag + "," + discardImplFlag + "): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".ImportItemsFromFile(" + aFileName + "," + overwriteFlag + "," + discardImplFlag + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".ImportItemsFromFile(" + aFileName + "," + overwriteFlag + "," + discardImplFlag + "): failed.");
		}
		return null;
	}

	public virtual bool IsAscetDataBase()
	{
		return false;
	}

	public bool IsDataBase()
	{
		return true;
	}

	public virtual bool IsIncaDataBase()
	{
		return false;
	}

	public override bool IsToolErrorAvailable()
	{
		return base.IsToolErrorAvailable();
	}

	public override void CreateApplicationError()
	{
		base.CreateApplicationError();
	}

	public bool Remove(Folder aFolderItem, bool recursive)
	{
		if (aFolderItem == null)
		{
			logEntry(GetType().FullName + ".Remove(): Unknown item.");
			return false;
		}
		if (aFolderItem.nullHandle())
		{
			logEntry(GetType().FullName + ".Remove(): item not valid.");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = ((!recursive) ? createInstanceMethodCall("removeFolderObject:") : createInstanceMethodCall("removeFolderObjectRecursive:"));
			instanceMethodCall.appendParameter(aFolderItem);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".Remove(): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".Remove(): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".Remove(): failed.");
		}
		return false;
	}

	public bool Save()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("commitDatabase");
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".Save(): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".Save(): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".Save(): failed.");
		}
		return false;
	}
}
