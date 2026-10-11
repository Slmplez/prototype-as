using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ClassInterface(ClassInterfaceType.None)]
[Guid("FE116C66-AC8A-11D3-9138-02FEFE0102B6")]
[ProgId("Ascet.Folder")]
[ComVisible(true)]
public class Folder : DataBaseItem, Folder_Dispatch, IFolder, IDataBaseItem
{
	object Folder_Dispatch.AddSubFolder(string folderName)
	{
		return AddSubFolder(folderName);
	}

	object Folder_Dispatch.BrowseComponent(string name)
	{
		Component[] oTypedArray = BrowseComponent(name);
		return Adapter.ToObject(oTypedArray);
	}

	object Folder_Dispatch.BrowseDataBaseItem(string name)
	{
		DataBaseItem[] oTypedArray = BrowseDataBaseItem(name);
		return Adapter.ToObject(oTypedArray);
	}

	object Folder_Dispatch.BrowseSubFolder(string name)
	{
		Folder[] oTypedArray = BrowseSubFolder(name);
		return Adapter.ToObject(oTypedArray);
	}

	object Folder_Dispatch.GetAllComponents()
	{
		Component[] allComponents = GetAllComponents();
		return Adapter.ToObject(allComponents);
	}

	object Folder_Dispatch.GetAllDataBaseItems()
	{
		DataBaseItem[] allDataBaseItems = GetAllDataBaseItems();
		return Adapter.ToObject(allDataBaseItems);
	}

	object Folder_Dispatch.GetAllSubFolders()
	{
		Folder[] allSubFolders = GetAllSubFolders();
		return Adapter.ToObject(allSubFolders);
	}

	object Folder_Dispatch.GetComponent(string componentName)
	{
		return GetComponent(componentName);
	}

	object Folder_Dispatch.GetDataBaseItem(string itemName)
	{
		return GetDataBaseItem(itemName);
	}

	object Folder_Dispatch.GetSubFolder(string folderName)
	{
		return GetSubFolder(folderName);
	}

	bool Folder_Dispatch.RemoveComponent(object dispatch_comp)
	{
		Component comp = (Component)dispatch_comp;
		return RemoveComponent(comp);
	}

	bool Folder_Dispatch.RemoveFolder(object dispatch_folder, bool recursive)
	{
		Folder folder = (Folder)dispatch_folder;
		return RemoveFolder(folder, recursive);
	}

	object Folder_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object Folder_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object Folder_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object Folder_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string Folder_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool Folder_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object Folder_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public Folder(DataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public Folder(Folder f, Identifiable h)
		: base(f, h)
	{
	}

	protected internal Identifiable addComponent(string itemName, string type)
	{
		if (itemName == null)
		{
			logEntry(GetType().FullName + ".addComponent(...): Item name is null.");
			return null;
		}
		if (!checkComponentType(type))
		{
			logEntry(GetType().FullName + ".addComponent(" + itemName + ", " + type + "): '" + type + "' is not a valid type specification.");
			return null;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addComponent:ofType:");
			instanceMethodCall.appendParameter(itemName);
			instanceMethodCall.appendParameter(type);
			call(instanceMethodCall);
			return instanceMethodCall.ResultRemoteObject;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".addComponent(" + itemName + ", " + type + "): Could not add component. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".addComponent(" + itemName + ", " + type + "): Could not add component. API Error: " + ex2);
		}
		catch (Exception ex3)
		{
			logEntry(GetType().FullName + ".addComponent(" + itemName + ", " + type + "): Could not add component. " + ex3);
		}
		return null;
	}

	public Folder AddSubFolder(string folderName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addFolder:");
			instanceMethodCall.appendParameter(folderName);
			call(instanceMethodCall);
			return (Folder)identifyComponent(instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".AddSubFolder(" + folderName + "): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".AddSubFolder(" + folderName + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".AddSubFolder(" + folderName + "): failed.");
		}
		return null;
	}

	public Component[] BrowseComponent(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("browseComponent:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				DataBaseItem dataBaseItem = identifyComponent(remoteObjectsFromCollection[i]);
				if (dataBaseItem != null && dataBaseItem.IsComponent())
				{
					arrayList.Add((Component)dataBaseItem);
				}
			}
			Component[] array = new Component[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".BrowseComponent(" + name + "): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".BrowseComponent(" + name + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".BrowseComponent(" + name + "): failed.");
		}
		return null;
	}

	public DataBaseItem[] BrowseDataBaseItem(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("browseItem:");
			instanceMethodCall.appendParameter(name);
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
			logEntry(GetType().FullName + ".BrowseDataBaseItem(" + name + "): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".BrowseDataBaseItem(" + name + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".BrowseDataBaseItem(" + name + "): failed.");
		}
		return null;
	}

	public Folder[] BrowseSubFolder(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("browseSubFolder:");
			instanceMethodCall.appendParameter(name);
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
			logEntry(GetType().FullName + ".BrowseSubFolder(" + name + "): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".BrowseSubFolder(" + name + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".BrowseSubFolder(" + name + "): failed.");
		}
		return null;
	}

	protected internal virtual bool checkComponentType(string aItem)
	{
		return false;
	}

	public Component[] GetAllComponents()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllComponents");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				DataBaseItem dataBaseItem = identifyComponent(remoteObjectsFromCollection[i]);
				if (dataBaseItem != null && dataBaseItem.IsComponent())
				{
					arrayList.Add((Component)dataBaseItem);
				}
			}
			Component[] array = new Component[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetAllComponents(): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetAllComponents(): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetAllComponents(): failed.");
		}
		return null;
	}

	public DataBaseItem[] GetAllDataBaseItems()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllItems");
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
			logEntry(GetType().FullName + ".GetAllDataBaseItems(): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetAllDataBaseItems(): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetAllDataBaseItems(): failed.");
		}
		return null;
	}

	public Folder[] GetAllSubFolders()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllSubFolders");
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
			logEntry(GetType().FullName + ".GetAllSubFolders(): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetAllSubFolders(): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetAllSubFolders(): failed.");
		}
		return null;
	}

	public Component GetComponent(string componentName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getComponent:");
			instanceMethodCall.appendParameter(componentName);
			call(instanceMethodCall);
			return (Component)identifyComponent(instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetComponent(" + componentName + "): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetComponent(" + componentName + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetComponent(" + componentName + "): failed.");
		}
		return null;
	}

	public DataBaseItem GetDataBaseItem(string itemName)
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
			logEntry(GetType().FullName + ".GetDataBaseItem(" + itemName + "): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetDataBaseItem(" + itemName + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetDataBaseItem(" + itemName + "): failed.");
		}
		return null;
	}

	public Folder GetSubFolder(string folderName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getSubFolder:");
			instanceMethodCall.appendParameter(folderName);
			call(instanceMethodCall);
			return (Folder)identifyComponent(instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetSubFolder(" + folderName + "): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetSubFolder(" + folderName + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetSubFolder(" + folderName + "): failed.");
		}
		return null;
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

	public override bool IsFolder()
	{
		return true;
	}

	public bool RemoveComponent(Component comp)
	{
		if (comp == null || comp.nullHandle())
		{
			logEntry(GetType().FullName + ".RemoveComponent(): Unknown item.");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deleteSubItemObject:");
			instanceMethodCall.appendParameter(comp);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".RemoveComponent(): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".RemoveComponent(): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".RemoveComponent(): failed.");
		}
		return false;
	}

	public bool RemoveFolder(Folder folder, bool recursive)
	{
		if (folder == null || folder.nullHandle())
		{
			logEntry(GetType().FullName + ".RemoveFolder(): Unknown folder.");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deleteSubItemObject:recursive:");
			instanceMethodCall.appendParameter(folder);
			instanceMethodCall.appendParameter(recursive);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".RemoveFolder(): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".RemoveFolder(): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".RemoveFolder(): failed.");
		}
		return false;
	}
}
