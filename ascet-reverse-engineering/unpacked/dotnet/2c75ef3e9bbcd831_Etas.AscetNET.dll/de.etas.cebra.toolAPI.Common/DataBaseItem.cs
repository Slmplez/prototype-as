using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.DataBaseItem")]
[Guid("FE116C63-AC8A-11D3-9138-02FEFE0102B6")]
[ComVisible(true)]
public class DataBaseItem : PersistentItem, DataBaseItem_Dispatch, IDataBaseItem
{
	object DataBaseItem_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object DataBaseItem_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object DataBaseItem_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object DataBaseItem_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string DataBaseItem_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool DataBaseItem_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object DataBaseItem_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public DataBaseItem(DataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public DataBaseItem(Folder f, Identifiable h)
		: base(f.GetDataBase(), h)
	{
	}

	public DataBaseItem Copy(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("copyItem:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return GetDataBase().identifyComponent(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".Copy(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual DataBaseItem CopyToFolder(string name, Folder folder)
	{
		if (folder == null || folder.nullHandle())
		{
			logEntry(GetType().FullName + ".CopyToFolder(): failed -> item is invald");
			return null;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("copyItem:toFolderObject:");
			instanceMethodCall.appendParameter(name);
			instanceMethodCall.appendParameter(folder);
			call(instanceMethodCall);
			return folder.identifyComponent(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".CopyToFolder(): failed -> APIError: " + ex);
		}
		return null;
	}

	[Obsolete("Use newMethod instead", false)]
	public bool ExportToFile(string fileName, bool multipleFiles, bool reference)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("export:multipleFile:withRef:");
			instanceMethodCall.appendParameter(fileName);
			instanceMethodCall.appendParameter(multipleFiles);
			instanceMethodCall.appendParameter(reference);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ExportToFile(): Export failed. -> APIError" + ex);
		}
		return false;
	}

	public virtual bool ExportXMLToFile(string filePath, bool references)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("exportToXMLFilesUsePath:withReferences:");
			instanceMethodCall.appendParameter(filePath);
			instanceMethodCall.appendParameter(references);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ExportXMLToFile(" + filePath + ", " + references + "): Import failed due to an API error. " + ex);
		}
		return false;
	}

	public virtual bool ExportXMLToZipFile(string filePathAndName, bool references)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("exportToZIPFile:withReferences:");
			instanceMethodCall.appendParameter(filePathAndName);
			instanceMethodCall.appendParameter(references);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ExportXMLToZipFile(" + filePathAndName + ", " + references + "): Import failed due to an API error. " + ex);
		}
		return false;
	}

	public bool GetAccessRightApplication()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAccessRightApplication");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAccessRightApplication(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool GetAccessRightCodeGeneration()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAccessRightCodeGeneration");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAccessRightCodeGeneration(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool GetAccessRightExecute()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAccessRightExecution");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAccessRightExecute(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool GetAccessRightRead()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAccessRightRead");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAccessRightRead(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool GetAccessRightWrite()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAccessRightWrite");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAccessRightWrite(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual DataBaseItem[] GetAllReferecedDataBaseItems()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getReferencedItemsRecursive:");
			instanceMethodCall.appendParameter(i: false);
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				DataBaseItem dataBaseItem = GetParentFolder().identifyComponent(remoteObjectsFromCollection[i]);
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
			logEntry(GetType().FullName + ".GetAllReferecedDataBaseItems(): failed. :(");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetAllReferecedDataBaseItems(): failed -> API Error: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetAllReferecedDataBaseItems(): failed.");
		}
		return null;
	}

	public virtual string GetComment()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getItemComment");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetComment(): failed -> APIError: " + ex);
		}
		return null;
	}

	public bool GetDisallowImport()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getDisallowOverwrite");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetDisallowImport(): failed -> APIError: " + ex);
		}
		return false;
	}

	public string GetName()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getLabel");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetName(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetNameWithPath()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getFolderPathName");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetNameWithPath(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetOID()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getOID");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetOID(): failed -> APIError: " + ex);
		}
		return null;
	}

	public Folder GetParentFolder()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getParentFolder");
			call(instanceMethodCall);
			return (Folder)GetDataBase().identifyComponent(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetParentFolder(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetComponentType()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getTypeLabel");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetType(): failed -> APIError: " + ex);
		}
		return null;
	}

	[ETASMethodName("GetType")]
	[Obsolete("Use method GetComponentType() instead", false)]
	public string GetComponentType_Obsolete()
	{
		return GetComponentType();
	}

	public virtual bool IsAsap2CanDB()
	{
		return false;
	}

	public virtual bool IsAsap2Catalog()
	{
		return false;
	}

	public virtual bool IsAsap2Item()
	{
		return false;
	}

	public virtual bool IsAsap2Project()
	{
		return false;
	}

	public virtual bool IsAsap2ProjectFolder()
	{
		return false;
	}

	public virtual bool IsAscetAtomicSoftwareComponent()
	{
		return false;
	}

	public virtual bool IsAscetContainer()
	{
		return false;
	}

	public virtual bool IsAscetFolder()
	{
		return false;
	}

	public virtual bool IsAscetInterface()
	{
		return false;
	}

	public virtual bool IsAscetNetwork()
	{
		return false;
	}

	public virtual bool IsAscetProject()
	{
		return false;
	}

	public virtual bool IsAscetProtocol()
	{
		return false;
	}

	public virtual bool IsClass()
	{
		return false;
	}

	public virtual bool IsCodeComponent()
	{
		return false;
	}

	public virtual bool IsComponent()
	{
		return false;
	}

	public virtual bool IsConditionalTable()
	{
		return false;
	}

	public virtual bool IsCTBlock()
	{
		return false;
	}

	public virtual bool IsCTComponent()
	{
		return false;
	}

	public override bool IsDataBaseItem()
	{
		return true;
	}

	[Obsolete("Item type not supported in ASCET", false)]
	public virtual bool IsDataSet()
	{
		return false;
	}

	public virtual bool IsDiscreteComponent()
	{
		return false;
	}

	public virtual bool IsEnumeration()
	{
		return false;
	}

	public virtual bool IsExperimentEnvironment()
	{
		return false;
	}

	public virtual bool IsFolder()
	{
		return false;
	}

	public virtual bool IsFunctionalComponent()
	{
		return false;
	}

	[Obsolete("Item type not supported in ASCET", false)]
	public virtual bool IsHardwareConfiguration()
	{
		return false;
	}

	public virtual bool IsIcon()
	{
		return false;
	}

	public virtual bool IsIncaFolder()
	{
		return false;
	}

	public virtual bool IsModule()
	{
		return false;
	}

	public virtual bool IsProject()
	{
		return false;
	}

	public virtual bool IsRecord()
	{
		return false;
	}

	public virtual bool IsSignal()
	{
		return false;
	}

	public virtual bool IsStateMachine()
	{
		return false;
	}

	public virtual bool Move(Folder folder)
	{
		if (folder == null || folder.nullHandle())
		{
			logEntry(GetType().FullName + ".Move(): failed -> item is invald");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("moveItemToFolderObject:");
			instanceMethodCall.appendParameter(folder);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".Move(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetAccessRightApplication(bool aBool)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setAccessRightApplication:");
			instanceMethodCall.appendParameter(aBool);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetAccessRightApplication(" + aBool + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetAccessRightCodeGeneration(bool aBool)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setAccessRightCodeGeneration:");
			instanceMethodCall.appendParameter(aBool);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetAccessRightCodeGeneration(" + aBool + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetAccessRightExecute(bool aBool)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setAccessRightExecution:");
			instanceMethodCall.appendParameter(aBool);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetAccessRightExecute(" + aBool + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetAccessRightRead(bool aBool)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setAccessRightRead:");
			instanceMethodCall.appendParameter(aBool);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetAccessRightRead(" + aBool + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetAccessRightWrite(bool aBool)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setAccessRightWrite:");
			instanceMethodCall.appendParameter(aBool);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetAccessRightWrite(" + aBool + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetComment(string comment)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setItemComment:");
			instanceMethodCall.appendParameter(comment);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetComment(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetDisallowImport(bool aBool)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setDisallowOverwrite:");
			instanceMethodCall.appendParameter(aBool);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetDisallowImport(" + aBool + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetName(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setLabel:");
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetName(" + aName + "): failed -> APIError: " + ex);
		}
		return false;
	}
}
