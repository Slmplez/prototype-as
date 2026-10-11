using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IBlockDiagram : IAscetDiagram
{
	BlockDiagramConnection ConnectDiagramElementPins(BlockDiagramElementPin outputPin, BlockDiagramElementPin inputPin, int[] x, int[] y);

	BlockDiagramLiteral PlaceBooleanLiteral(bool b, int x, int y, BlockDiagramHierarchy hierarchy);

	BlockDiagramComment PlaceComment(string comment, int x, int y, BlockDiagramHierarchy hierarchy);

	BlockDiagramControlElement PlaceControlElement(string ctrl, int x, int y, int numberOfArguments, BlockDiagramHierarchy hierarchy);

	BlockDiagramLiteral PlaceDoubleLiteral(double b, int x, int y, BlockDiagramHierarchy hierarchy);

	BlockDiagramLiteral PlaceIntegerLiteral(int b, int x, int y, BlockDiagramHierarchy hierarchy);

	BlockDiagramOperator PlaceOperator(string op, int x, int y, int numberOfArguments, BlockDiagramHierarchy hierarchy);

	BlockDiagramLiteral PlaceStringLiteral(string contents, int x, int y, BlockDiagramHierarchy hierarchy);

	bool RemoveDiagramComment(BlockDiagramComment diagComment);

	bool RemoveDiagramConnection(BlockDiagramConnection diagConnection);

	bool RemoveDiagramElement(BlockDiagramElement diagElement);
}
