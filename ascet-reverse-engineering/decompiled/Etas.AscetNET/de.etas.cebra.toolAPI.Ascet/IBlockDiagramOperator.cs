using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IBlockDiagramOperator : IBlockDiagramElement, IAbstractBlockDiagramElement
{
	string GetOperatorType();
}
