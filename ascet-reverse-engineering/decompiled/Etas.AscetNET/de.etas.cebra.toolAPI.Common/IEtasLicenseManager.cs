using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface IEtasLicenseManager
{
	EtasLicenseFeature CreateUserDefinedFeature(string name, string featureName, int majorVersion, int minorVersion);

	EtasLicenseFeature[] GetAllAvailableFeatures();

	EtasLicenseFeature GetFeatureNamed(string name);

	bool Heartbeat();

	bool IsActive();

	bool WriteToLogFile(string text);
}
