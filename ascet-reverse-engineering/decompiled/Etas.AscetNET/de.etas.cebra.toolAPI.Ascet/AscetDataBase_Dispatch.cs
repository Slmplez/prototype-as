using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface AscetDataBase_Dispatch
{
	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddAscetFolder(string folderName);

	bool AddView(string viewName);

	bool ExportXMLToFile([MarshalAs(UnmanagedType.Struct)] object items, string filePath, bool references);

	bool ExportXMLToZipFile([MarshalAs(UnmanagedType.Struct)] object items, string filePathAndName, bool references);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllAscetFolders();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllComponentsOfType(string typeString);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllViewNames();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetAscetFolder(string folderName);

	bool ImportFile(string fileName);

	bool ImportFileWithOverwriteAndDiscardImpl(string fileName, bool overwrite, bool discImpl);

	[return: MarshalAs(UnmanagedType.Struct)]
	object ImportXMLFromDirectory(string filePath, bool discardImpl, bool refItems);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object ImportXMLFromFile(string filePath, string componentName, bool discardImpl, bool refItems);

	[return: MarshalAs(UnmanagedType.Struct)]
	object ImportXMLFromZipFile(string filePathAndName, bool discardImpl, bool refItems);

	bool IsAscetDataBase();

	bool RemoveViewName(string viewName);

	bool IsIncaDataBase();

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

	bool IsDataBase();

	bool IsToolErrorAvailable();

	void CreateApplicationError();

	bool Remove(object dispatch_aFolderItem, bool recursive);

	bool Save();

	new bool Equals(object hndl);

	new int GetHashCode();
}
