using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
[Guid("00BFE0B1-79FC-11d5-98FE-00105A36DC87")]
[ComVisible(true)]
[ProgId("Ascet.AscetEnumeration")]
public class AscetEnumeration : Component, IAscetEnumeration, IComponent, IDataBaseItem, AscetEnumeration_Dispatch
{
	public AscetEnumeration(AscetDataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public AscetEnumeration(AscetFolder f, Identifiable h)
		: base(f, h)
	{
	}

	public virtual string[] GetEnumerators()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getEnumerationValues");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetEnumerators(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsEnumeration()
	{
		return true;
	}

	public virtual bool SetEnumerators(string[] items)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setEnumerationValues:");
			instanceMethodCall.appendParameter(items);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetEnumerators(): failed -> APIError: " + ex);
		}
		return false;
	}

	object AscetEnumeration_Dispatch.GetEnumerators()
	{
		string[] enumerators = GetEnumerators();
		return Adapter.ToObject(enumerators);
	}

	bool AscetEnumeration_Dispatch.SetEnumerators(object items)
	{
		string[] enumerators = Adapter.ToArray1Object<string>(items);
		return SetEnumerators(enumerators);
	}

	bool AscetEnumeration_Dispatch.AddTextSegment(string textSegment, object views)
	{
		string[] views2 = Adapter.ToArray1Object<string>(views);
		return AddTextSegment(textSegment, views2);
	}

	object AscetEnumeration_Dispatch.Edit()
	{
		return Edit();
	}

	object AscetEnumeration_Dispatch.EditInFront()
	{
		return EditInFront();
	}

	object AscetEnumeration_Dispatch.GetTextSegments()
	{
		string[] textSegments = GetTextSegments();
		return Adapter.ToObject(textSegments);
	}

	object AscetEnumeration_Dispatch.GetViewsForTextSegment(string textSegment)
	{
		string[] viewsForTextSegment = GetViewsForTextSegment(textSegment);
		return Adapter.ToObject(viewsForTextSegment);
	}

	object AscetEnumeration_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object AscetEnumeration_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object AscetEnumeration_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object AscetEnumeration_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string AscetEnumeration_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool AscetEnumeration_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object AscetEnumeration_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
