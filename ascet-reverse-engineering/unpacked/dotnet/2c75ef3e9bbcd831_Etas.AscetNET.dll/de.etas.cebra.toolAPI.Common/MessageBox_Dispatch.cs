using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface MessageBox_Dispatch
{
	bool Close();

	bool IsDialog();

	int ActivateMenuId(uint id);

	int ActivateMenuSelector(string selector);

	int ActivatePaletteId(uint id);

	int ActivatePaletteSelector(string selector);

	int ActivateToolbarId(uint id);

	int ActivateToolbarSelector(string selector);

	bool IsUserInterface();

	bool IsView();

	void CreateApplicationError();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	bool IsAbstractDevice();

	bool IsExperiment();

	bool IsExperimentDataItem();

	bool IsExperimentDevice();

	bool IsExperimentElement();

	bool IsToolErrorAvailable();

	new bool Equals(object hndl);

	new int GetHashCode();
}
