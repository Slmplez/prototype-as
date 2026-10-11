using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IBlockDiagramComment : IAbstractBlockDiagramElement
{
	string GetComment();

	long[] GetPosition();

	long[] GetSize();

	bool SetComment(string comment);
}
