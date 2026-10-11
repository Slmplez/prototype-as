using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Inca;

[Guid("AFFCD743-87B8-11D3-8A08-00A0247767D8")]
[ComVisible(true)]
[ProgId("Ascet.IncaFolder")]
[ClassInterface(ClassInterfaceType.None)]
public class IncaFolder : Folder, IIncaFolder, IFolder, IDataBaseItem, IncaFolder_Dispatch
{
	public IncaFolder(DataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public IncaFolder(Folder f, Identifiable h)
		: base(f, h)
	{
	}

	protected internal override bool checkComponentType(string aItem)
	{
		if (aItem.ToUpper().Equals("HardwareConfiguration".ToUpper()))
		{
			return true;
		}
		if (aItem.ToUpper().Equals("ExperimentEnvironment".ToUpper()))
		{
			return true;
		}
		return base.checkComponentType(aItem);
	}

	public override bool IsIncaFolder()
	{
		return true;
	}

	object IncaFolder_Dispatch.AddSubFolder(string folderName)
	{
		return AddSubFolder(folderName);
	}

	object IncaFolder_Dispatch.BrowseComponent(string name)
	{
		Component[] oTypedArray = BrowseComponent(name);
		return Adapter.ToObject(oTypedArray);
	}

	object IncaFolder_Dispatch.BrowseDataBaseItem(string name)
	{
		DataBaseItem[] oTypedArray = BrowseDataBaseItem(name);
		return Adapter.ToObject(oTypedArray);
	}

	object IncaFolder_Dispatch.BrowseSubFolder(string name)
	{
		Folder[] oTypedArray = BrowseSubFolder(name);
		return Adapter.ToObject(oTypedArray);
	}

	object IncaFolder_Dispatch.GetAllComponents()
	{
		Component[] allComponents = GetAllComponents();
		return Adapter.ToObject(allComponents);
	}

	object IncaFolder_Dispatch.GetAllDataBaseItems()
	{
		DataBaseItem[] allDataBaseItems = GetAllDataBaseItems();
		return Adapter.ToObject(allDataBaseItems);
	}

	object IncaFolder_Dispatch.GetAllSubFolders()
	{
		Folder[] allSubFolders = GetAllSubFolders();
		return Adapter.ToObject(allSubFolders);
	}

	object IncaFolder_Dispatch.GetComponent(string componentName)
	{
		return GetComponent(componentName);
	}

	object IncaFolder_Dispatch.GetDataBaseItem(string itemName)
	{
		return GetDataBaseItem(itemName);
	}

	object IncaFolder_Dispatch.GetSubFolder(string folderName)
	{
		return GetSubFolder(folderName);
	}

	bool IncaFolder_Dispatch.RemoveComponent(object dispatch_comp)
	{
		Component comp = (Component)dispatch_comp;
		return RemoveComponent(comp);
	}

	bool IncaFolder_Dispatch.RemoveFolder(object dispatch_folder, bool recursive)
	{
		Folder folder = (Folder)dispatch_folder;
		return RemoveFolder(folder, recursive);
	}

	object IncaFolder_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object IncaFolder_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object IncaFolder_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object IncaFolder_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string IncaFolder_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool IncaFolder_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object IncaFolder_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
