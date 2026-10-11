using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IAscetDiscreteComponent : IFunctionalComponent, ICodeComponent, IComponent, IDataBaseItem
{
	AscetDiagram AddDiagram(string name);

	bool RemoveImplementation(string name);

	bool SetDefaultImplementation(ImplConfiguration implConf);
}
