using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IBlockDiagramConnection : IBlockDiagramFlowElement, IAbstractBlockDiagramElement
{
	int[][] GetSegmentCoordinatesXY();
}
