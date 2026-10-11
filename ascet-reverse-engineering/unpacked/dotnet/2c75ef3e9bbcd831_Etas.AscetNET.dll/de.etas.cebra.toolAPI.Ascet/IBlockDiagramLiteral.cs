using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IBlockDiagramLiteral : IBlockDiagramElement, IAbstractBlockDiagramElement
{
	bool SetContents(string newContents);
}
