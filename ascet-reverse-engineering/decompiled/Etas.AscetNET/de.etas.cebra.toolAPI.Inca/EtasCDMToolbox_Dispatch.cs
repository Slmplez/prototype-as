using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Inca;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface EtasCDMToolbox_Dispatch
{
	bool ActivateDestination(string aCompleteDatasetPath, bool aFlag);

	bool AddAllLabelsToList();

	bool AddDestinationDataSet(string aCompleteDatasetPath);

	bool AddDestinationFile(string aFileName);

	bool AddLabelsFromFileToList(string aFileName);

	bool AddLabelsToList([MarshalAs(UnmanagedType.Struct)] object aLabelNameList);

	bool AddLabelsToListUsingMask(string aMask);

	bool Compare();

	bool Copy();

	bool ExchangeSourceWithDestination(string aCompleteDatasetPath);

	string GetDifferenceFileName();

	string GetErrorFileName();

	string GetMissingLabelFileName();

	string GetNewLabelFileName();

	int GetNumberOfDiffLabels();

	int GetNumberOfErrors();

	int GetNumberOfMissingLabels();

	int GetNumberOfNewLabels();

	int GetNumberOfWarnings();

	string GetOutputFileName();

	string GetWarningFileName();

	bool List();

	bool ListInDCMFormatToFile(string aFileName);

	bool LoadCDMConfigurationFromFile(string aFileName);

	bool LoadLabelListFromFile(string aFileName);

	bool ReadLabelListFromFile(string aFileName);

	bool RemoveAllDestinations();

	bool RemoveAllLabelsFromList();

	bool RemoveLabelsFromList([MarshalAs(UnmanagedType.Struct)] object aLabelNameList);

	bool RemoveLabelsFromListUsingMask(string aMask);

	bool RemoveSource();

	bool SaveCDMConfigurationToFile(string aFileName);

	bool SaveLabelListToFile(string aFileName);

	bool SetDestinationDataSet(string aCompleteDatasetPath);

	bool SetOutputFormat(string anOutputFormat);

	bool SetResultFilePath(string aPath);

	bool SetResultFilePrefix(string aPath);

	bool SetSourceDataSet(string aCompleteDatasetPath);

	bool SetSourceFile(string aFileName);

	void CreateApplicationError();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	bool IsToolErrorAvailable();

	new bool Equals(object hndl);

	new int GetHashCode();
}
