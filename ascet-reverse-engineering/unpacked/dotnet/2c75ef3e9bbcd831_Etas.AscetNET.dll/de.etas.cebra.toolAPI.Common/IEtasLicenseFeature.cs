using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface IEtasLicenseFeature
{
	bool CheckIn();

	bool CheckOut();

	bool IsCheckOut();

	bool IsInGraceMode();

	bool IsSystemDefined();

	string Name();

	string Version();
}
