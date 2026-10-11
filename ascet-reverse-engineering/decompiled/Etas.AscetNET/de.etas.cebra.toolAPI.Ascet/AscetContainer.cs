using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[Guid("5B646737-4190-418e-8C72-F8DEFB3ABA54")]
[ProgId("Ascet.AscetContainer")]
[ClassInterface(ClassInterfaceType.None)]
public class AscetContainer : Component, AscetContainer_Dispatch, IAscetContainer, IComponent, IDataBaseItem
{
	bool AscetContainer_Dispatch.AddComponent(object dispatch_newComponent)
	{
		Component newComponent = (Component)dispatch_newComponent;
		return AddComponent(newComponent);
	}

	object AscetContainer_Dispatch.GetAllComponents()
	{
		Component[] allComponents = GetAllComponents();
		return Adapter.ToObject(allComponents);
	}

	bool AscetContainer_Dispatch.RemoveComponent(object dispatch_oldComponent)
	{
		Component oldComponent = (Component)dispatch_oldComponent;
		return RemoveComponent(oldComponent);
	}

	bool AscetContainer_Dispatch.AddTextSegment(string textSegment, object views)
	{
		string[] views2 = Adapter.ToArray1Object<string>(views);
		return AddTextSegment(textSegment, views2);
	}

	object AscetContainer_Dispatch.Edit()
	{
		return Edit();
	}

	object AscetContainer_Dispatch.EditInFront()
	{
		return EditInFront();
	}

	object AscetContainer_Dispatch.GetTextSegments()
	{
		string[] textSegments = GetTextSegments();
		return Adapter.ToObject(textSegments);
	}

	object AscetContainer_Dispatch.GetViewsForTextSegment(string textSegment)
	{
		string[] viewsForTextSegment = GetViewsForTextSegment(textSegment);
		return Adapter.ToObject(viewsForTextSegment);
	}

	object AscetContainer_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object AscetContainer_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object AscetContainer_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object AscetContainer_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string AscetContainer_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool AscetContainer_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object AscetContainer_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public AscetContainer(AscetDataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public AscetContainer(AscetFolder f, Identifiable h)
		: base(f, h)
	{
	}

	public virtual bool AddComponent(Component newComponent)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addComponent:");
			instanceMethodCall.appendParameter(newComponent);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (ErrorResultException ex)
		{
			logEntry(string.Concat(GetType().FullName, ".AddComponent(", newComponent, "): failed -> API Error: ", ex));
		}
		catch (Exception)
		{
			logEntry(string.Concat(GetType().FullName, ".AddComponent(", newComponent, "): failed."));
		}
		return false;
	}

	public Component[] GetAllComponents()
	{
		ArrayList.Synchronized(new ArrayList(10));
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getComponents");
			call(instanceMethodCall);
			Collection coll = new Collection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				DataBaseItem dataBaseItem = GetParentFolder().identifyComponent(remoteObjectsFromCollection[i]);
				if (dataBaseItem != null && dataBaseItem.IsComponent())
				{
					arrayList.Add((Component)dataBaseItem);
				}
			}
			Component[] array = new Component[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllComponents():  failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsAscetContainer()
	{
		return true;
	}

	public virtual bool RemoveComponent(Component oldComponent)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("removeComponent:");
			instanceMethodCall.appendParameter(oldComponent);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (ErrorResultException ex)
		{
			logEntry(string.Concat(GetType().FullName, ".RemoveComponent(", oldComponent, "): failed -> API Error: ", ex));
		}
		catch (Exception)
		{
			logEntry(string.Concat(GetType().FullName, ".RemoveComponent(", oldComponent, "): failed."));
		}
		return false;
	}
}
