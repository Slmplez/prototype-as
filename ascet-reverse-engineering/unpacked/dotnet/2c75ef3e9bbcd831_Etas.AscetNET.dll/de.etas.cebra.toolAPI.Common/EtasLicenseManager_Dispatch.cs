using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface EtasLicenseManager_Dispatch
{
	[return: MarshalAs(UnmanagedType.IDispatch)]
	object CreateUserDefinedFeature(string name, string featureName, int majorVersion, int minorVersion);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllAvailableFeatures();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetFeatureNamed(string name);

	bool Heartbeat();

	bool IsActive();

	bool WriteToLogFile(string text);

	void CreateApplicationError();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	bool IsToolErrorAvailable();

	new bool Equals(object hndl);

	new int GetHashCode();
}
