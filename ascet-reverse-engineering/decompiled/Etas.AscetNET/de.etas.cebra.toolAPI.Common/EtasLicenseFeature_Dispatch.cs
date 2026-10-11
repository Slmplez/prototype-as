using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface EtasLicenseFeature_Dispatch
{
	bool CheckIn();

	bool CheckOut();

	bool IsCheckOut();

	bool IsInGraceMode();

	bool IsSystemDefined();

	string Name();

	string Version();

	void CreateApplicationError();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	bool IsToolErrorAvailable();

	new bool Equals(object hndl);

	new int GetHashCode();
}
