using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface ExperimentView_Dispatch
{
	bool IsExperimentView();

	bool IsIncaExperimentView();

	bool BringToFront();

	bool Close();

	bool IsView();

	bool PerformMenuAction(string menuEntry);

	int ActivateMenuId(uint id);

	int ActivateMenuSelector(string selector);

	int ActivatePaletteId(uint id);

	int ActivatePaletteSelector(string selector);

	int ActivateToolbarId(uint id);

	int ActivateToolbarSelector(string selector);

	bool IsDialog();

	bool IsUserInterface();

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
