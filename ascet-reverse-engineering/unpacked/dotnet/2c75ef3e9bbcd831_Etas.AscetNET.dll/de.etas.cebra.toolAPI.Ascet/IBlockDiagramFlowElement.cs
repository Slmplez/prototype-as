using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IBlockDiagramFlowElement : IAbstractBlockDiagramElement
{
	bool IsBlockDiagramConnection();

	bool IsBlockDiagramElementPin();

	bool IsSequenceCall();
}
