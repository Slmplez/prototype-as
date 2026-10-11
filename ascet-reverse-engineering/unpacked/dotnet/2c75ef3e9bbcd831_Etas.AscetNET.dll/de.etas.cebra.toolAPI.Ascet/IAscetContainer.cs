using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IAscetContainer : IComponent, IDataBaseItem
{
	bool AddComponent(Component newComponent);

	bool RemoveComponent(Component oldComponent);
}
