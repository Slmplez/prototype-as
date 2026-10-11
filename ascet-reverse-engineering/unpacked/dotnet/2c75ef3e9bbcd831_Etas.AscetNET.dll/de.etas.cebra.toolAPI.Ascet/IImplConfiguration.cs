using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IImplConfiguration : IConfiguration
{
	bool Set(Configuration impl, PersistentItem comp);

	bool SetItem(ConfigurationItem impl, PersistentItem comp);
}
