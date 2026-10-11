using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IAscetClass : IAscetDiscreteComponent, IFunctionalComponent, ICodeComponent, IComponent, IDataBaseItem
{
}
