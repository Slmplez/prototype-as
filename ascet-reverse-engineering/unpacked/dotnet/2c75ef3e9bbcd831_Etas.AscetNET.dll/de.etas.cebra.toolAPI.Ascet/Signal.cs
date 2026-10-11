using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
[Guid("A3DF3EB3-B490-11D3-8A29-00A0247767D8")]
[ProgId("Ascet.Signal")]
public class Signal : Component, ISignal, IComponent, IDataBaseItem, Signal_Dispatch
{
	public Signal(AscetDataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public Signal(AscetFolder f, Identifiable h)
		: base(f, h)
	{
	}

	public virtual string[] GetAllAvailableDataFormats()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllDataFormats");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllAvailableDataFormats(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsSignal()
	{
		return true;
	}

	public virtual bool ReadFromFile(string fileName, string format)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("readDataFormat:fromFile:");
			instanceMethodCall.appendParameter(format);
			instanceMethodCall.appendParameter(fileName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ReadFromFile(" + fileName + "," + format + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool WriteToFile(string fileName, string format)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("writeDataFormat:toFile:");
			instanceMethodCall.appendParameter(format);
			instanceMethodCall.appendParameter(fileName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".WriteToFile(" + fileName + "," + format + "): failed -> APIError: " + ex);
		}
		return false;
	}

	object Signal_Dispatch.GetAllAvailableDataFormats()
	{
		string[] allAvailableDataFormats = GetAllAvailableDataFormats();
		return Adapter.ToObject(allAvailableDataFormats);
	}

	bool Signal_Dispatch.AddTextSegment(string textSegment, object views)
	{
		string[] views2 = Adapter.ToArray1Object<string>(views);
		return AddTextSegment(textSegment, views2);
	}

	object Signal_Dispatch.Edit()
	{
		return Edit();
	}

	object Signal_Dispatch.EditInFront()
	{
		return EditInFront();
	}

	object Signal_Dispatch.GetTextSegments()
	{
		string[] textSegments = GetTextSegments();
		return Adapter.ToObject(textSegments);
	}

	object Signal_Dispatch.GetViewsForTextSegment(string textSegment)
	{
		string[] viewsForTextSegment = GetViewsForTextSegment(textSegment);
		return Adapter.ToObject(viewsForTextSegment);
	}

	object Signal_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object Signal_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object Signal_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object Signal_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string Signal_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool Signal_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object Signal_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
