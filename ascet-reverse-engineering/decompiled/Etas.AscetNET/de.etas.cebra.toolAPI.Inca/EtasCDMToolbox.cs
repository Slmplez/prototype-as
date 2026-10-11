using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Inca;

[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
[Guid("52F98A60-120C-11D5-988D-00105A36DC87")]
[ProgId("Ascet.EtasCDMToolbox")]
public class EtasCDMToolbox : EtasPackage, EtasCDMToolbox_Dispatch
{
	bool EtasCDMToolbox_Dispatch.AddLabelsToList(object aLabelNameList)
	{
		string[] aLabelNameList2 = Adapter.ToArray1Object<string>(aLabelNameList);
		return AddLabelsToList(aLabelNameList2);
	}

	bool EtasCDMToolbox_Dispatch.RemoveLabelsFromList(object aLabelNameList)
	{
		string[] aLabelNameList2 = Adapter.ToArray1Object<string>(aLabelNameList);
		return RemoveLabelsFromList(aLabelNameList2);
	}

	public EtasCDMToolbox(EtasTool tool, Identifiable handle)
		: base(tool.Sender)
	{
		setIdentifier(handle);
	}

	public bool ActivateDestination(string aCompleteDatasetPath, bool aFlag)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("activateDestinationNamed:setActive:");
			instanceMethodCall.appendParameter(aCompleteDatasetPath);
			instanceMethodCall.appendParameter(aFlag);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".ActivateDestination(" + aCompleteDatasetPath + "," + aFlag + "): failed.");
		}
		return false;
	}

	public bool AddAllLabelsToList()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addAllLabels");
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".AddAllLabelsToList(): failed.");
		}
		return false;
	}

	public bool AddDestinationDataSet(string aCompleteDatasetPath)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addDestinationDatasetNamed:");
			instanceMethodCall.appendParameter(aCompleteDatasetPath);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".AddDestinationDataSet(" + aCompleteDatasetPath + "): failed.");
		}
		return false;
	}

	public bool AddDestinationFile(string aFileName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addDestinationFile:");
			instanceMethodCall.appendParameter(aFileName);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".AddDestinationFile(" + aFileName + "): failed.");
		}
		return false;
	}

	public bool AddLabelsFromFileToList(string aFileName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addLabelListFromFile:");
			instanceMethodCall.appendParameter(aFileName);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".AddLabelsFromFileToList(" + aFileName + "): failed.");
		}
		return false;
	}

	public bool AddLabelsToList(string[] aLabelNameList)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addLabelsNamed:");
			instanceMethodCall.appendParameter(aLabelNameList);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".AddLabelsToList(): failed.");
		}
		return false;
	}

	public bool AddLabelsToListUsingMask(string aMask)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addLabelsByMask:");
			instanceMethodCall.appendParameter(aMask);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".AddLabelsToListUsingMask(" + aMask + "): failed.");
		}
		return false;
	}

	public bool Compare()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("compare");
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".Compare(): failed.");
		}
		return false;
	}

	public bool Copy()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("copy");
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".Copy(): failed.");
		}
		return false;
	}

	public bool ExchangeSourceWithDestination(string aCompleteDatasetPath)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("exchangeSourceWithDestinationNamed:");
			instanceMethodCall.appendParameter(aCompleteDatasetPath);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".ExchangeSourceWithDestination(" + aCompleteDatasetPath + "): failed.");
		}
		return false;
	}

	public string GetDifferenceFileName()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getDifferencesFileName");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetDifferenceFileName(): failed.");
		}
		return null;
	}

	public string GetErrorFileName()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getErrorFileName");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetErrorFileName(): failed.");
		}
		return null;
	}

	public string GetMissingLabelFileName()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getMissingLabelFileName");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetMissingLabelFileName(): failed.");
		}
		return null;
	}

	public string GetNewLabelFileName()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getNewLabelFileName");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetNewLabelFileName(): failed.");
		}
		return null;
	}

	public int GetNumberOfDiffLabels()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getDifferencesCounter");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetNumberOfDiffLabels(): failed.");
		}
		return -1;
	}

	public int GetNumberOfErrors()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getErrorCounter");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetNumberOfErrors(): failed.");
		}
		return -1;
	}

	public int GetNumberOfMissingLabels()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getMissingLabelCounter");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetNumberOfMissingLabels(): failed.");
		}
		return -1;
	}

	public int GetNumberOfNewLabels()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getNewLabelCounter");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetNumberOfNewLabels(): failed.");
		}
		return -1;
	}

	public int GetNumberOfWarnings()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getWarningCounter");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetNumberOfWarnings(): failed.");
		}
		return -1;
	}

	public string GetOutputFileName()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getOutputFileName");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetOutputFileName(): failed.");
		}
		return null;
	}

	public string GetWarningFileName()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getWarningFileName");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetWarningFileName(): failed.");
		}
		return null;
	}

	public bool List()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("list");
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".List(): failed.");
		}
		return false;
	}

	[Obsolete("No longer supported since ASCET V5.0", false)]
	public bool ListInDCMFormatToFile(string aFileName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("listInDCMFormatFileName:");
			instanceMethodCall.appendParameter(aFileName);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".ListInDCMFormatToFile(" + aFileName + "): failed.");
		}
		return false;
	}

	public bool LoadCDMConfigurationFromFile(string aFileName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("loadCDMConfigurationFromFile:");
			instanceMethodCall.appendParameter(aFileName);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".LoadCDMConfigurationFromFile(" + aFileName + "): failed.");
		}
		return false;
	}

	public bool LoadLabelListFromFile(string aFileName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("loadLabelListFromFile:");
			instanceMethodCall.appendParameter(aFileName);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".LoadLabelListFromFile(" + aFileName + "): failed.");
		}
		return false;
	}

	[Obsolete("No longer supported since ASCET V5.0", false)]
	public bool ReadLabelListFromFile(string aFileName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("copyFromDCMFile:");
			instanceMethodCall.appendParameter(aFileName);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".ReadLabelListFromFile(" + aFileName + "): failed.");
		}
		return false;
	}

	public bool RemoveAllDestinations()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("removeAllDestinations");
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".RemoveAllDestinations(): failed.");
		}
		return false;
	}

	public bool RemoveAllLabelsFromList()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("removeAllLabels");
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".RemoveAllLabelsFromList(): failed.");
		}
		return false;
	}

	public bool RemoveLabelsFromList(string[] aLabelNameList)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("removeLabelsNamed:");
			instanceMethodCall.appendParameter(aLabelNameList);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".RemoveLabelsFromList(): failed.");
		}
		return false;
	}

	public bool RemoveLabelsFromListUsingMask(string aMask)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("removeLabelsByMask:");
			instanceMethodCall.appendParameter(aMask);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".RemoveLabelsFromListUsingMask(" + aMask + "): failed.");
		}
		return false;
	}

	public bool RemoveSource()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("removeSource");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemoveSource(): failed." + ex);
		}
		return false;
	}

	public bool SaveCDMConfigurationToFile(string aFileName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("saveCDMConfigurationToFile:");
			instanceMethodCall.appendParameter(aFileName);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SaveCDMConfigurationToFile(" + aFileName + "): failed.");
		}
		return false;
	}

	public bool SaveLabelListToFile(string aFileName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("saveLabelListToFile:");
			instanceMethodCall.appendParameter(aFileName);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SaveLabelListToFile(" + aFileName + "): failed.");
		}
		return false;
	}

	[Obsolete("No longer supported since ASCET V5.0", false)]
	public bool SetDestinationDataSet(string aCompleteDatasetPath)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setDestinationDatasetNamed:");
			instanceMethodCall.appendParameter(aCompleteDatasetPath);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetDestinationDataSet(" + aCompleteDatasetPath + "): failed.");
		}
		return false;
	}

	public bool SetOutputFormat(string anOutputFormat)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setOutputFileFormat:");
			instanceMethodCall.appendParameter(anOutputFormat);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetOutputFormat(" + anOutputFormat + "): failed.");
		}
		return false;
	}

	public bool SetResultFilePath(string aPath)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setResultFilePath:");
			instanceMethodCall.appendParameter(aPath);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetResultFilePath(" + aPath + "): failed.");
		}
		return false;
	}

	public bool SetResultFilePrefix(string aPath)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setResultFilePrefix:");
			instanceMethodCall.appendParameter(aPath);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetResultFilePrefix(" + aPath + "): failed.");
		}
		return false;
	}

	public bool SetSourceDataSet(string aCompleteDatasetPath)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setSourceDatasetNamed:");
			instanceMethodCall.appendParameter(aCompleteDatasetPath);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetSourceDataSet(" + aCompleteDatasetPath + "): failed.");
		}
		return false;
	}

	public bool SetSourceFile(string aFileName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setSourceFile:");
			instanceMethodCall.appendParameter(aFileName);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".SetSourceFile(" + aFileName + "): failed.");
		}
		return false;
	}
}
