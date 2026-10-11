using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IBlockDiagramElementPin : IBlockDiagramFlowElement, IAbstractBlockDiagramElement
{
	bool SetName(string name);
}
