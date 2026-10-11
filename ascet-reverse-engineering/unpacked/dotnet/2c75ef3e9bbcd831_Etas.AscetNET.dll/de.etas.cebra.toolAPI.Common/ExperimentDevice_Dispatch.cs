using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface ExperimentDevice_Dispatch
{
	[return: MarshalAs(UnmanagedType.Struct)]
	object ActivateRci2ForAcquisitionRate(string name);

	bool DeActivateRci2ForAcquisitionRate(string name);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllAcquisitionRates();

	string GetDeviceType();

	string GetName();

	double GetSampleRateFor(string aName);

	bool IsAcquisitionRateAvailable(string rate);

	bool IsActive();

	bool IsCANMonitoringDevice();

	bool IsExperimentDevice();

	bool IsKwp2000Device();

	bool IsWorkbaseDevice();

	bool ResetTarget();

	bool StartTargetOS();

	bool StopTargetOS();

	void CreateApplicationError();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	bool IsAbstractDevice();

	bool IsExperiment();

	bool IsExperimentDataItem();

	bool IsExperimentElement();

	bool IsToolErrorAvailable();

	bool IsUserInterface();

	new bool Equals(object hndl);

	new int GetHashCode();
}
