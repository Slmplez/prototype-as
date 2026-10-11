using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IAscetSCMInterface
{
	string ExecuteSCMCommand(string command, string items, string data);

	string ExecuteSCMScriptingCommand(string command);

	string ExecuteSCMScriptingCommandForItems(string command, DataBaseItem[] itemList);

	string ExecuteSCMScriptingCommandForXML(string command, string xmlData);

	string GetItemSCMConfigurationData(DataBaseItem[] itemList);

	string GetItemSCMData(DataBaseItem[] itemList);

	DataBaseItem[] GetLocallyModifiedItems(DataBaseItem[] folderList);

	string GetSourceControlBindingInformation();

	string InitializeSourceControl(string bindingInformation);

	bool RemoveSourceControl();

	bool SetItemToSCMModified(DataBaseItem item);
}
