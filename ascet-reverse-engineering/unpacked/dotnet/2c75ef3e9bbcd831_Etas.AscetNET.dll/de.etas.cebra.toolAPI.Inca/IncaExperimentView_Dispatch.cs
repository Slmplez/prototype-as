using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Inca;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface IncaExperimentView_Dispatch
{
	bool IsIncaExperimentView();

	bool IsExperimentView();

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
