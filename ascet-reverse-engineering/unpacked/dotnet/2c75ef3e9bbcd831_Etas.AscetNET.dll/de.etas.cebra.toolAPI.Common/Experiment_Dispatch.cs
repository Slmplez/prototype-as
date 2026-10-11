using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface Experiment_Dispatch
{
	bool IsExperiment();

	bool IsIncaOnlineExperiment();

	bool IsOnlineExperiment();

	void CreateApplicationError();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	bool IsAbstractDevice();

	bool IsExperimentDataItem();

	bool IsExperimentDevice();

	bool IsExperimentElement();

	bool IsToolErrorAvailable();

	bool IsUserInterface();

	new bool Equals(object hndl);

	new int GetHashCode();
}
