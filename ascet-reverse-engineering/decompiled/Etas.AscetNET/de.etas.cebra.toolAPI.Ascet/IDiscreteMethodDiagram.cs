using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IDiscreteMethodDiagram : IBlockDiagram, IAscetDiagram
{
	bool IsPrivate();

	bool IsPublic();
}
