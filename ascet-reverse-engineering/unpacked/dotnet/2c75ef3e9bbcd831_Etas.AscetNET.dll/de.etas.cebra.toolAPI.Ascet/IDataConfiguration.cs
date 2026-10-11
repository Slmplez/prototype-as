using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IDataConfiguration : IConfiguration
{
	bool Set(Configuration data, PersistentItem comp);

	bool SetItem(ConfigurationItem data, PersistentItem comp);
}
