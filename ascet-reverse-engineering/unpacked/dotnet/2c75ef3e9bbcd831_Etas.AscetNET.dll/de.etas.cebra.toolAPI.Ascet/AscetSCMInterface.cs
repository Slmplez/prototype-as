using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[Guid("BA7C2DC3-6970-472a-BC06-4F08820F2E7D")]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.AscetSCMInterface")]
public class AscetSCMInterface : SmalltalkToolAPI, AscetSCMInterface_Dispatch, IAscetSCMInterface
{
	private Ascet myTool;

	string AscetSCMInterface_Dispatch.ExecuteSCMScriptingCommandForItems(string command, object itemList)
	{
		DataBaseItem[] itemList2 = Adapter.ToArray1Object<DataBaseItem>(itemList);
		return ExecuteSCMScriptingCommandForItems(command, itemList2);
	}

	string AscetSCMInterface_Dispatch.GetItemSCMData(object itemList)
	{
		DataBaseItem[] itemList2 = Adapter.ToArray1Object<DataBaseItem>(itemList);
		return GetItemSCMData(itemList2);
	}

	string AscetSCMInterface_Dispatch.GetItemSCMConfigurationData(object itemList)
	{
		DataBaseItem[] itemList2 = Adapter.ToArray1Object<DataBaseItem>(itemList);
		return GetItemSCMConfigurationData(itemList2);
	}

	object AscetSCMInterface_Dispatch.GetLocallyModifiedItems(object folderList)
	{
		DataBaseItem[] folderList2 = Adapter.ToArray1Object<DataBaseItem>(folderList);
		DataBaseItem[] locallyModifiedItems = GetLocallyModifiedItems(folderList2);
		return Adapter.ToObject(locallyModifiedItems);
	}

	bool AscetSCMInterface_Dispatch.SetItemToSCMModified(object dispatch_item)
	{
		DataBaseItem itemToSCMModified = (DataBaseItem)dispatch_item;
		return SetItemToSCMModified(itemToSCMModified);
	}

	public AscetSCMInterface(Ascet tool, Identifiable handle)
		: base(tool.Sender)
	{
		setIdentifier(handle);
		myTool = tool;
	}

	public string ExecuteSCMScriptingCommand(string command)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("executeSCMCommand:");
			instanceMethodCall.appendParameter(command);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ExecuteSCMScriptingCommand(" + command + "): failed -> APIError" + ex);
		}
		return null;
	}

	public string ExecuteSCMScriptingCommandForItems(string command, DataBaseItem[] itemList)
	{
		foreach (DataBaseItem dataBaseItem in itemList)
		{
			if (dataBaseItem == null || dataBaseItem.nullHandle())
			{
				logEntry(GetType().FullName + ".ExportToFile(): Unknown/Invalid item.");
				return null;
			}
		}
		OrderedCollection i2 = setOrderedCollectionFromValues(itemList);
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("executeSCMCommand:forItems:");
			instanceMethodCall.appendParameter(command);
			instanceMethodCall.appendParameter(i2);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ExecuteSCMScriptingCommandForItems(" + command + "): failed -> APIError" + ex);
		}
		return null;
	}

	public string ExecuteSCMScriptingCommandForXML(string command, string xmlData)
	{
		return ExecuteSCMCommand(command, xmlData, "");
	}

	public string ExecuteSCMCommand(string command, string items, string data)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("executeSCMCommand:withItems:withData:");
			instanceMethodCall.appendParameter(command);
			instanceMethodCall.appendParameter(items);
			instanceMethodCall.appendParameter(data);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ExecuteSCMCommand(" + command + ", " + items + ", " + data + "): failed -> APIError" + ex);
		}
		return null;
	}

	public string GetItemSCMData(DataBaseItem[] itemList)
	{
		foreach (DataBaseItem dataBaseItem in itemList)
		{
			if (dataBaseItem == null || dataBaseItem.nullHandle())
			{
				logEntry(GetType().FullName + ".ExportToFile(): Unknown/Invalid item.");
				return null;
			}
		}
		try
		{
			OrderedCollection i2 = setOrderedCollectionFromValues(itemList);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getItemSCMData:");
			instanceMethodCall.appendParameter(i2);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetItemSCMData(): failed -> APIError" + ex);
		}
		return null;
	}

	public string GetItemSCMConfigurationData(DataBaseItem[] itemList)
	{
		foreach (DataBaseItem dataBaseItem in itemList)
		{
			if (dataBaseItem == null || dataBaseItem.nullHandle())
			{
				logEntry(GetType().FullName + ".GetItemSCMConfigurationData(): Unknown/Invalid item.");
				return null;
			}
		}
		try
		{
			OrderedCollection i2 = setOrderedCollectionFromValues(itemList);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getItemSCMConfigurationData:");
			instanceMethodCall.appendParameter(i2);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetItemSCMConfigurationData(): failed -> APIError" + ex);
		}
		return null;
	}

	public string GetLastError()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getLastError");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetLastError(): failed -> APIError" + ex);
		}
		return null;
	}

	public DataBaseItem[] GetLocallyModifiedItems(DataBaseItem[] folderList)
	{
		if (folderList == null)
		{
			folderList = new DataBaseItem[0];
		}
		else
		{
			DataBaseItem[] array = folderList;
			foreach (DataBaseItem dataBaseItem in array)
			{
				if (dataBaseItem == null || dataBaseItem.nullHandle() || !dataBaseItem.IsFolder())
				{
					logEntry(GetType().FullName + ".GetLocallyModifiedItems(): Unknown/Invalid folder.");
					return null;
				}
			}
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getLocallyModifiedItems:");
			instanceMethodCall.appendParameter(folderList);
			call(instanceMethodCall);
			AscetDataBase currentDataBase = myTool.GetCurrentDataBase();
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int j = 0; j < remoteObjectsFromCollection.Length; j++)
			{
				DataBaseItem dataBaseItem2 = currentDataBase.identifyComponent(remoteObjectsFromCollection[j]);
				if (dataBaseItem2 != null)
				{
					arrayList.Add(dataBaseItem2);
				}
			}
			DataBaseItem[] array2 = new DataBaseItem[arrayList.Count];
			arrayList.CopyTo(array2);
			return array2;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetLocallyModifiedItems(): failed -> APIError" + ex);
		}
		return null;
	}

	public string GetSourceControlBindingInformation()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getSourceControlBindingInformation");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetSourceControlBindingInformation(): failed -> APIError" + ex);
		}
		return null;
	}

	public string InitializeSourceControl(string bindingInformation)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("initializeSourceControl:");
			instanceMethodCall.appendParameter(bindingInformation);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".InitializeSourceControl(): failed -> APIError" + ex);
		}
		return null;
	}

	public bool RemoveSourceControl()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("removeSourceControl");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemoveSourceControl(): failed -> APIError" + ex);
		}
		return false;
	}

	public bool SetItemToSCMModified(DataBaseItem item)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setItemToSCMModified:");
			instanceMethodCall.appendParameter(item);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetItemToSCMModified(): failed -> APIError" + ex);
		}
		return false;
	}
}
