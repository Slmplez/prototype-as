using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[Guid("FE116C61-AC8A-11D3-9138-02FEFE0102B6")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[ProgId("Ascet.Component")]
public class Component : DataBaseItem, Component_Dispatch, IComponent, IDataBaseItem
{
	bool Component_Dispatch.AddTextSegment(string textSegment, object views)
	{
		string[] views2 = Adapter.ToArray1Object<string>(views);
		return AddTextSegment(textSegment, views2);
	}

	object Component_Dispatch.Edit()
	{
		return Edit();
	}

	object Component_Dispatch.EditInFront()
	{
		return EditInFront();
	}

	object Component_Dispatch.GetTextSegments()
	{
		string[] textSegments = GetTextSegments();
		return Adapter.ToObject(textSegments);
	}

	object Component_Dispatch.GetViewsForTextSegment(string textSegment)
	{
		string[] viewsForTextSegment = GetViewsForTextSegment(textSegment);
		return Adapter.ToObject(viewsForTextSegment);
	}

	object Component_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object Component_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object Component_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object Component_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string Component_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool Component_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object Component_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public Component(DataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public Component(Folder f, Identifiable h)
		: base(f, h)
	{
	}

	public virtual bool AddTextSegment(string textSegment, string[] views)
	{
		try
		{
			ETASArray i = setArrayFromValues(views);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addTextSegment:assignViews:");
			instanceMethodCall.appendParameter(textSegment);
			instanceMethodCall.appendParameter(i);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddTextSegment(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool AssignViewToTextSegment(string view, string textSegment)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("assignView:toTextSegment:");
			instanceMethodCall.appendParameter(view);
			instanceMethodCall.appendParameter(textSegment);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AssignViewToTextSegment(" + view + "," + textSegment + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool DeAssignViewFromTextSegment(string view, string textSegment)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deassignView:fromTextSegment:");
			instanceMethodCall.appendParameter(view);
			instanceMethodCall.appendParameter(textSegment);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".DeAssignViewFromTextSegment(" + view + "," + textSegment + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual View Edit()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("edit");
			call(instanceMethodCall);
			return new View(Sender, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".Edit(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual View EditInFront()
	{
		View view = Edit();
		view?.BringToFront();
		return view;
	}

	[Obsolete("Version management is no longer supported. Please use the new SCM features.")]
	public string GetConfiguration()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getConfiguration");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + "GetConfiguration :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetConfiguration(): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetConfiguration(): failed.");
		}
		return null;
	}

	public string GetCustomerDataString()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("customerData");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCustomerDataString(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetDate()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getDate");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetDate(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetNoteForTextSegment(string textSegment)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getNotesForTextSegment:");
			instanceMethodCall.appendParameter(textSegment);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetNoteForTextSegment(" + textSegment + "): failed -> APIError: " + ex);
		}
		return null;
	}

	[Obsolete("Please use method GetRequirementManagementDataString() instead", false)]
	public string GetRequirementManagmentDataString()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("requirementManagementData");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetRequirementManagmentDataString(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetRequirementManagementDataString()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("requirementManagementData");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetRequirementManagementDataString(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string[] GetTextSegments()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getTextSegments");
			call(instanceMethodCall);
			Collection coll = new Collection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetTextSegments: failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetUserDataString()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("userData");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetUserDataString(): failed -> APIError: " + ex);
		}
		return null;
	}

	[Obsolete("Version management is no longer supported. Please use the new SCM features.")]
	public virtual string GetVersion()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getVersion");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetVersion(): failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal virtual View getView(Identifiable id)
	{
		return new View(Sender, id);
	}

	public virtual string[] GetViewsForTextSegment(string textSegment)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getViewsForTextSegment:");
			instanceMethodCall.appendParameter(textSegment);
			call(instanceMethodCall);
			Collection coll = new Collection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetViewsForTextSegment(" + textSegment + "): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsComponent()
	{
		return true;
	}

	public bool IsEdition()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isEdition");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + "IsEdition :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".IsEdition(): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".IsEdition(): failed.");
		}
		return false;
	}

	public bool IsVersion()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isVersion");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + "IsVersion :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".IsVersion(): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".IsVersion(): failed.");
		}
		return false;
	}

	public virtual bool RemoveTextSegment(string textSegment)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deleteTextSegment:");
			instanceMethodCall.appendParameter(textSegment);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemoveTextSegment(): failed -> APIError: " + ex);
		}
		return false;
	}

	[Obsolete("Version management is no longer supported. Please use the new SCM features.")]
	public virtual bool ResetVersion()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("resetVersion");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ResetVersion(): failed -> APIError: " + ex);
		}
		return false;
	}

	[Obsolete("Version management is no longer supported. Please use the new SCM features.")]
	public bool SetConfiguration(string configuration)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setConfiguration:");
			instanceMethodCall.appendParameter(configuration);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + "SetConfiguration :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetConfiguration(" + configuration + "): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetConfiguration(" + configuration + "): failed.");
		}
		return false;
	}

	public bool SetCustomerDataString(string newContents)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("customerData:");
			instanceMethodCall.appendParameter(newContents);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetCustomerDataString(" + newContents + "): failed -> APIError: " + ex);
		}
		return false;
	}

	[Obsolete("Version management is no longer supported. Please use the new SCM features.")]
	public bool SetEdition()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setToEdition");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + "SetItemToEdition :-)");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".SetItemToEdition(): failed -> APIError" + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetItemToEdition(): failed.");
		}
		return false;
	}

	public virtual bool SetNoteForTextSegment(string noteText, string textSegment)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setNotes:forTextSegment:");
			instanceMethodCall.appendParameter(noteText);
			instanceMethodCall.appendParameter(textSegment);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetNoteForTextSegment(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetRequirementManagementDataString(string newContents)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("requirementManagementData:");
			instanceMethodCall.appendParameter(newContents);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetRequirementManagementDataString(" + newContents + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetUserDataString(string newContents)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("userData:");
			instanceMethodCall.appendParameter(newContents);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetUserDataString(" + newContents + "): failed -> APIError: " + ex);
		}
		return false;
	}

	[Obsolete("Version management is no longer supported. Please use the new SCM features.")]
	public virtual bool SetVersion(string version)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setVersion:");
			instanceMethodCall.appendParameter(version);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetVersion(" + version + "): failed -> APIError: " + ex);
		}
		return false;
	}
}
