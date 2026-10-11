using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IImplementationCast : IAscetModelElement, IModelElement
{
	bool SetImplementationFromOperatorAndElement(BlockDiagramOperator op, BlockDiagramElementPin pin, ImplConfiguration impl);
}
