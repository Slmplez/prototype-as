using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface ExperimentElement_Dispatch
{
	void CreateApplicationError();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	bool IsAbstractDevice();

	bool IsExperiment();

	bool IsExperimentDataItem();

	bool IsExperimentDevice();

	bool IsExperimentElement();

	bool IsToolErrorAvailable();

	bool IsUserInterface();

	new bool Equals(object hndl);

	new int GetHashCode();
}
