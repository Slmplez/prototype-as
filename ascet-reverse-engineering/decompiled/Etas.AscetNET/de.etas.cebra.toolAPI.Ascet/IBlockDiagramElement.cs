using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IBlockDiagramElement : IAbstractBlockDiagramElement
{
	long GetGraphicalObjectIdentifier();

	long[] GetPosition();

	long[] GetSize();

	bool IsBlockDiagramControlElement();

	bool IsBlockDiagramFunctionalElement();

	bool IsBlockDiagramHierarchy();

	bool IsBlockDiagramHierarchyPin();

	bool IsBlockDiagramLiteral();

	bool IsBlockDiagramOperator();
}
