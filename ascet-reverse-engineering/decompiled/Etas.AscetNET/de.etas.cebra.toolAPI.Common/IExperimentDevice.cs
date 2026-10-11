using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface IExperimentDevice : ITransientItem
{
	sbyte[] ActivateRci2ForAcquisitionRate(string name);

	bool DeActivateRci2ForAcquisitionRate(string name);

	string[] GetAllAcquisitionRates();

	string GetDeviceType();

	string GetName();

	double GetSampleRateFor(string aName);

	bool IsAcquisitionRateAvailable(string rate);

	bool IsActive();

	bool IsCANMonitoringDevice();

	bool IsKwp2000Device();

	bool IsWorkbaseDevice();

	bool ResetTarget();

	bool StartTargetOS();

	bool StopTargetOS();
}
