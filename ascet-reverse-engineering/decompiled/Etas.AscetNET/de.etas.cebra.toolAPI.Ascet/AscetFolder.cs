using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.cebra.toolAPI.Inca;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
[Guid("A3DF3E89-B490-11D3-8A29-00A0247767D8")]
[ProgId("Ascet.AscetFolder")]
public class AscetFolder : IncaFolder, IAscetFolder, IIncaFolder, IFolder, IDataBaseItem, AscetFolder_Dispatch
{
	public AscetFolder(AscetFolder f, Identifiable h)
		: base(f, h)
	{
	}

	public AscetFolder(DataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public AscetProject AddAscetProject(string itemName)
	{
		Identifiable identifiable = addComponent(itemName, "Project");
		if (identifiable == null)
		{
			return null;
		}
		return new AscetProject(this, identifiable);
	}

	public AscetFolder AddAscetSubFolder(string folderName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addFolder:");
			instanceMethodCall.appendParameter(folderName);
			call(instanceMethodCall);
			return (AscetFolder)identifyComponent(instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".AddAscetSubFolder(" + folderName + "): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".AddAscetSubFolder(" + folderName + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".AddAscetSubFolder(" + folderName + "): failed.");
		}
		return null;
	}

	public AscetClass AddClass(string itemName, string type)
	{
		if (!checkExtensionType(type))
		{
			logEntry(GetType().FullName + ".AddClass(" + itemName + ", " + type + "): '" + type + "' is not a valid type specification.");
			return null;
		}
		Identifiable identifiable = addComponent(itemName, "Class" + type);
		if (identifiable == null)
		{
			return null;
		}
		return new AscetClass(this, identifiable);
	}

	public AscetConditionalTable AddConditionalTable(string itemName)
	{
		Identifiable identifiable = addComponent(itemName, "ConditionalTable");
		if (identifiable == null)
		{
			return null;
		}
		return new AscetConditionalTable(this, identifiable);
	}

	public AscetContainer AddContainer(string itemName)
	{
		Identifiable identifiable = addComponent(itemName, "Container");
		if (identifiable == null)
		{
			return null;
		}
		return new AscetContainer(this, identifiable);
	}

	public AscetCTBlock AddCTBlock(string itemName, string type)
	{
		if (!checkExtensionType(type))
		{
			logEntry(GetType().FullName + ".AddCTBlock(" + itemName + ", " + type + "): '" + type + "' is not a valid type specification.");
			return null;
		}
		Identifiable identifiable = addComponent(itemName, "CTBlock" + type);
		if (identifiable == null)
		{
			return null;
		}
		return new AscetCTBlock(this, identifiable);
	}

	public AscetEnumeration AddEnumeration(string enumName)
	{
		Identifiable identifiable = addComponent(enumName, "Enumeration");
		if (identifiable == null)
		{
			return null;
		}
		return new AscetEnumeration(this, identifiable);
	}

	public AscetModule AddModule(string itemName, string type)
	{
		if (!checkExtensionType(type))
		{
			logEntry(GetType().FullName + ".AddModule(" + itemName + ", " + type + "): '" + type + "' is not a valid type specification.");
			return null;
		}
		Identifiable identifiable = addComponent(itemName, "Module" + type);
		if (identifiable == null)
		{
			return null;
		}
		return new AscetModule(this, identifiable);
	}

	public Signal AddSignal(string itemName)
	{
		Identifiable identifiable = addComponent(itemName, "Signal");
		if (identifiable == null)
		{
			return null;
		}
		return new Signal(this, identifiable);
	}

	public AscetStateMachine AddStateMachine(string itemName)
	{
		Identifiable identifiable = addComponent(itemName, "StateMachine");
		if (identifiable == null)
		{
			return null;
		}
		return new AscetStateMachine(this, identifiable);
	}

	public AscetFolder[] BrowseAscetSubFolder(string name)
	{
		Folder[] array = BrowseSubFolder(name);
		if (array == null)
		{
			return null;
		}
		AscetFolder[] array2 = new AscetFolder[array.Length];
		for (int i = 0; i < array.Length; i++)
		{
			array2[i] = (AscetFolder)array[i];
		}
		return array2;
	}

	public bool ChangePassword(string oldPassWord, string newPassWord)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPassword:to:");
			instanceMethodCall.appendParameter(oldPassWord);
			instanceMethodCall.appendParameter(newPassWord);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetPassword(" + oldPassWord + "," + newPassWord + "): failed -> APIError: " + ex);
		}
		return false;
	}

	private bool checkCodeComponentType(string item)
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
		if (item.ToUpper().Equals("ConditionalTable".ToUpper()))
		{
			return true;
		}
		return false;
	}

	protected internal override bool checkComponentType(string item)
	{
		if (base.checkComponentType(item))
		{
			return true;
		}
		if (item.ToUpper().Equals("Project".ToUpper()))
		{
			return true;
		}
		if (item.ToUpper().Equals("Network".ToUpper()))
		{
			return true;
		}
		if (item.ToUpper().Equals("Signal".ToUpper()))
		{
			return true;
		}
		if (item.ToUpper().Equals("Icon".ToUpper()))
		{
			return true;
		}
		if (item.ToUpper().Equals("Enumeration".ToUpper()))
		{
			return true;
		}
		if (item.ToUpper().Equals("Container".ToUpper()))
		{
			return true;
		}
		return checkCodeComponentType(item);
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

	public AscetFolder[] GetAllAscetSubFolders()
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
			logEntry(GetType().FullName + ".GetAllAscetSubFolders(): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetAllAscetSubFolders(): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetAllAscetSubFolders(): failed.");
		}
		return null;
	}

	public AscetFolder GetAscetSubFolder(string folderName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getSubFolder:");
			instanceMethodCall.appendParameter(folderName);
			call(instanceMethodCall);
			return (AscetFolder)identifyComponent(instanceMethodCall.ResultRemoteObject);
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetAscetSubFolder(" + folderName + "): failed :)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetAscetSubFolder(" + folderName + "): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetAscetSubFolder(" + folderName + "): failed.");
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

	public virtual DataBaseItem[] ImportXMLFilesFromDirectory(string filePath, bool discardImpl, bool remapOID, bool keepHierarchy, bool refItems)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("importFromDirectory:discardImpl:remapOID:keepHierarchy:refItems:");
			instanceMethodCall.appendParameter(filePath);
			instanceMethodCall.appendParameter(discardImpl);
			instanceMethodCall.appendParameter(remapOID);
			instanceMethodCall.appendParameter(keepHierarchy);
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
			logEntry(GetType().FullName + ".ImportXMLFilesFromDirectory(" + filePath + ", " + discardImpl + ", " + remapOID + ", " + keepHierarchy + ", " + refItems + "): Import failed due to an API error. " + ex);
		}
		return null;
	}

	public virtual DataBaseItem ImportXMLFromFile(string filePath, string componentName, bool discardImpl, bool remapOID, bool keepHierarchy, bool refItems)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("importFromXMLFileUsePath:componentName:discardImpl:remapOID:keepHierarchy:refItems:");
			instanceMethodCall.appendParameter(filePath);
			instanceMethodCall.appendParameter(componentName);
			instanceMethodCall.appendParameter(discardImpl);
			instanceMethodCall.appendParameter(remapOID);
			instanceMethodCall.appendParameter(keepHierarchy);
			instanceMethodCall.appendParameter(refItems);
			call(instanceMethodCall);
			return identifyComponent(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ImportXMLFromFile(" + filePath + ", " + componentName + ", " + discardImpl + ", " + remapOID + ", " + keepHierarchy + ", " + refItems + "): Import failed due to an API error. " + ex);
		}
		return null;
	}

	public virtual DataBaseItem[] ImportXMLFromZipFile(string filePathAndName, bool discardImpl, bool remapOID, bool keepHierarchy, bool refItems)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("importFromZIPFile:discardImpl:remapOID:keepHierarchy:refItems:");
			instanceMethodCall.appendParameter(filePathAndName);
			instanceMethodCall.appendParameter(discardImpl);
			instanceMethodCall.appendParameter(remapOID);
			instanceMethodCall.appendParameter(keepHierarchy);
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
			logEntry(GetType().FullName + ".ImportXMLToFolderFromZipFile(" + filePathAndName + ", " + discardImpl + ", " + remapOID + ", " + keepHierarchy + ", " + refItems + "): Import failed due to an API error. " + ex);
		}
		return null;
	}

	public override bool IsAscetFolder()
	{
		return true;
	}

	public bool ResetPassword(string passWord)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("resetPassword:");
			instanceMethodCall.appendParameter(passWord);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ResetPassword(" + passWord + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetPassword(string newPassWord)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPassword:");
			instanceMethodCall.appendParameter(newPassWord);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetPassword(" + newPassWord + "): failed -> APIError: " + ex);
		}
		return false;
	}

	object AscetFolder_Dispatch.AddAscetProject(string itemName)
	{
		return AddAscetProject(itemName);
	}

	object AscetFolder_Dispatch.AddAscetSubFolder(string folderName)
	{
		return AddAscetSubFolder(folderName);
	}

	object AscetFolder_Dispatch.AddClass(string itemName, string type)
	{
		return AddClass(itemName, type);
	}

	object AscetFolder_Dispatch.AddConditionalTable(string itemName)
	{
		return AddConditionalTable(itemName);
	}

	object AscetFolder_Dispatch.AddContainer(string itemName)
	{
		return AddContainer(itemName);
	}

	object AscetFolder_Dispatch.AddCTBlock(string itemName, string type)
	{
		return AddCTBlock(itemName, type);
	}

	object AscetFolder_Dispatch.AddEnumeration(string enumName)
	{
		return AddEnumeration(enumName);
	}

	object AscetFolder_Dispatch.AddModule(string itemName, string type)
	{
		return AddModule(itemName, type);
	}

	object AscetFolder_Dispatch.AddSignal(string itemName)
	{
		return AddSignal(itemName);
	}

	object AscetFolder_Dispatch.AddStateMachine(string itemName)
	{
		return AddStateMachine(itemName);
	}

	object AscetFolder_Dispatch.BrowseAscetSubFolder(string name)
	{
		AscetFolder[] oTypedArray = BrowseAscetSubFolder(name);
		return Adapter.ToObject(oTypedArray);
	}

	object AscetFolder_Dispatch.GetAllAscetSubFolders()
	{
		AscetFolder[] allAscetSubFolders = GetAllAscetSubFolders();
		return Adapter.ToObject(allAscetSubFolders);
	}

	object AscetFolder_Dispatch.GetAscetSubFolder(string folderName)
	{
		return GetAscetSubFolder(folderName);
	}

	object AscetFolder_Dispatch.ImportXMLFilesFromDirectory(string filePath, bool discardImpl, bool remapOID, bool keepHierarchy, bool refItems)
	{
		DataBaseItem[] oTypedArray = ImportXMLFilesFromDirectory(filePath, discardImpl, remapOID, keepHierarchy, refItems);
		return Adapter.ToObject(oTypedArray);
	}

	object AscetFolder_Dispatch.ImportXMLFromFile(string filePath, string componentName, bool discardImpl, bool remapOID, bool keepHierarchy, bool refItems)
	{
		return ImportXMLFromFile(filePath, componentName, discardImpl, remapOID, keepHierarchy, refItems);
	}

	object AscetFolder_Dispatch.ImportXMLFromZipFile(string filePathAndName, bool discardImpl, bool remapOID, bool keepHierarchy, bool refItems)
	{
		DataBaseItem[] oTypedArray = ImportXMLFromZipFile(filePathAndName, discardImpl, remapOID, keepHierarchy, refItems);
		return Adapter.ToObject(oTypedArray);
	}

	object AscetFolder_Dispatch.AddSubFolder(string folderName)
	{
		return AddSubFolder(folderName);
	}

	object AscetFolder_Dispatch.BrowseComponent(string name)
	{
		Component[] oTypedArray = BrowseComponent(name);
		return Adapter.ToObject(oTypedArray);
	}

	object AscetFolder_Dispatch.BrowseDataBaseItem(string name)
	{
		DataBaseItem[] oTypedArray = BrowseDataBaseItem(name);
		return Adapter.ToObject(oTypedArray);
	}

	object AscetFolder_Dispatch.BrowseSubFolder(string name)
	{
		Folder[] oTypedArray = BrowseSubFolder(name);
		return Adapter.ToObject(oTypedArray);
	}

	object AscetFolder_Dispatch.GetAllComponents()
	{
		Component[] allComponents = GetAllComponents();
		return Adapter.ToObject(allComponents);
	}

	object AscetFolder_Dispatch.GetAllDataBaseItems()
	{
		DataBaseItem[] allDataBaseItems = GetAllDataBaseItems();
		return Adapter.ToObject(allDataBaseItems);
	}

	object AscetFolder_Dispatch.GetAllSubFolders()
	{
		Folder[] allSubFolders = GetAllSubFolders();
		return Adapter.ToObject(allSubFolders);
	}

	object AscetFolder_Dispatch.GetComponent(string componentName)
	{
		return GetComponent(componentName);
	}

	object AscetFolder_Dispatch.GetDataBaseItem(string itemName)
	{
		return GetDataBaseItem(itemName);
	}

	object AscetFolder_Dispatch.GetSubFolder(string folderName)
	{
		return GetSubFolder(folderName);
	}

	bool AscetFolder_Dispatch.RemoveComponent(object dispatch_comp)
	{
		Component comp = (Component)dispatch_comp;
		return RemoveComponent(comp);
	}

	bool AscetFolder_Dispatch.RemoveFolder(object dispatch_folder, bool recursive)
	{
		Folder folder = (Folder)dispatch_folder;
		return RemoveFolder(folder, recursive);
	}

	object AscetFolder_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object AscetFolder_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object AscetFolder_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object AscetFolder_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string AscetFolder_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool AscetFolder_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object AscetFolder_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
