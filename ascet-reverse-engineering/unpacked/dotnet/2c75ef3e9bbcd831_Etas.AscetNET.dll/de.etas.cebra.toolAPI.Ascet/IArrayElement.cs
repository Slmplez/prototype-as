using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IArrayElement : IPrimitiveDiscreteModelElement, IPrimitiveModelElement, IAscetModelElement, IModelElement
{
}
