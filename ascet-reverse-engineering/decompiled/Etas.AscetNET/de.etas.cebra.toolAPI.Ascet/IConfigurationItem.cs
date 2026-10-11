using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IConfigurationItem
{
	bool IsConfigurationItem();

	bool IsDataItem();

	bool IsImplItem();
}
