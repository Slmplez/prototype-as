using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Inca;

[ProgId("Ascet.IncaDataBase")]
[Guid("AFFCD741-87B8-11D3-8A08-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public class IncaDataBase : DataBase, IncaDataBase_Dispatch, IIncaDataBase, IDataBase
{
	object IncaDataBase_Dispatch.AddFolder(string folderName)
	{
		return AddFolder(folderName);
	}

	object IncaDataBase_Dispatch.BrowseItem(string itemName)
	{
		DataBaseItem[] oTypedArray = BrowseItem(itemName);
		return Adapter.ToObject(oTypedArray);
	}

	object IncaDataBase_Dispatch.BrowseItemInFolder(string itemName, string folderName)
	{
		DataBaseItem[] oTypedArray = BrowseItemInFolder(itemName, folderName);
		return Adapter.ToObject(oTypedArray);
	}

	bool IncaDataBase_Dispatch.ExportToFile(object items, string aFilePath, bool multipleFiles, bool withReferences)
	{
		DataBaseItem[] items2 = Adapter.ToArray1Object<DataBaseItem>(items);
		return ExportToFile(items2, aFilePath, multipleFiles, withReferences);
	}

	object IncaDataBase_Dispatch.GetAllFolders()
	{
		Folder[] allFolders = GetAllFolders();
		return Adapter.ToObject(allFolders);
	}

	object IncaDataBase_Dispatch.GetFolder(string folderName)
	{
		return GetFolder(folderName);
	}

	object IncaDataBase_Dispatch.GetItem(string itemName)
	{
		return GetItem(itemName);
	}

	object IncaDataBase_Dispatch.GetItemForOID(string oid)
	{
		return GetItemForOID(oid);
	}

	object IncaDataBase_Dispatch.GetItemInFolder(string itemName, string folderName)
	{
		return GetItemInFolder(itemName, folderName);
	}

	object IncaDataBase_Dispatch.ImportDirectoryFor(string aFileName, string listMode)
	{
		string[] oTypedArray = ImportDirectoryFor(aFileName, listMode);
		return Adapter.ToObject(oTypedArray);
	}

	object IncaDataBase_Dispatch.ImportItemsFromFile(string aFileName, bool overwriteFlag, bool discardImplFlag)
	{
		DataBaseItem[] oTypedArray = ImportItemsFromFile(aFileName, overwriteFlag, discardImplFlag);
		return Adapter.ToObject(oTypedArray);
	}

	bool IncaDataBase_Dispatch.Remove(object dispatch_aFolderItem, bool recursive)
	{
		Folder aFolderItem = (Folder)dispatch_aFolderItem;
		return Remove(aFolderItem, recursive);
	}

	public IncaDataBase(EtasTool t)
		: base(t)
	{
	}

	public IncaDataBase(EtasTool t, string dataBaseName)
		: base(t, dataBaseName)
	{
	}

	public override bool IsIncaDataBase()
	{
		return true;
	}
}
