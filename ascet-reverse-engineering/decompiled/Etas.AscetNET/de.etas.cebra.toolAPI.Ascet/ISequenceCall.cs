using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface ISequenceCall : IBlockDiagramFlowElement, IAbstractBlockDiagramElement
{
	long[] GetPosition();
}
