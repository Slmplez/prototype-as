using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface DataBase_Dispatch
{
	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddFolder(string folderName);

	[return: MarshalAs(UnmanagedType.Struct)]
	object BrowseItem(string itemName);

	[return: MarshalAs(UnmanagedType.Struct)]
	object BrowseItemInFolder(string itemName, string folderName);

	bool Close();

	void DisableAutoCommit();

	void EnableAutoCommit();

	bool IsAutoCommit();

	bool ExportToFile([MarshalAs(UnmanagedType.Struct)] object items, string aFilePath, bool multipleFiles, bool withReferences);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllFolders();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetFolder(string folderName);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetItem(string itemName);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetItemForOID(string oid);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetItemInFolder(string itemName, string folderName);

	string GetName();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	[return: MarshalAs(UnmanagedType.Struct)]
	object ImportDirectoryFor(string aFileName, string listMode);

	bool ImportFromFile(string aFileName, bool overwriteFlag, bool discardImplFlag);

	[return: MarshalAs(UnmanagedType.Struct)]
	object ImportItemsFromFile(string aFileName, bool overwriteFlag, bool discardImplFlag);

	bool IsAscetDataBase();

	bool IsDataBase();

	bool IsIncaDataBase();

	bool IsToolErrorAvailable();

	void CreateApplicationError();

	bool Remove(object dispatch_aFolderItem, bool recursive);

	bool Save();

	new bool Equals(object hndl);

	new int GetHashCode();
}
