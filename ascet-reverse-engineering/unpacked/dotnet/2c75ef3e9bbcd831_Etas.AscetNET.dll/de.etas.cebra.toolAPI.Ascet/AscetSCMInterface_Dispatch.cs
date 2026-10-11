using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface AscetSCMInterface_Dispatch
{
	string ExecuteSCMScriptingCommand(string command);

	string ExecuteSCMScriptingCommandForItems(string command, [MarshalAs(UnmanagedType.Struct)] object itemList);

	string ExecuteSCMScriptingCommandForXML(string command, string xmlData);

	string ExecuteSCMCommand(string command, string items, string data);

	string GetItemSCMData([MarshalAs(UnmanagedType.Struct)] object itemList);

	string GetItemSCMConfigurationData([MarshalAs(UnmanagedType.Struct)] object itemList);

	string GetLastError();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetLocallyModifiedItems([MarshalAs(UnmanagedType.Struct)] object folderList);

	string GetSourceControlBindingInformation();

	string InitializeSourceControl(string bindingInformation);

	bool RemoveSourceControl();

	bool SetItemToSCMModified(object dispatch_item);

	void CreateApplicationError();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	bool IsToolErrorAvailable();

	new bool Equals(object hndl);

	new int GetHashCode();
}
