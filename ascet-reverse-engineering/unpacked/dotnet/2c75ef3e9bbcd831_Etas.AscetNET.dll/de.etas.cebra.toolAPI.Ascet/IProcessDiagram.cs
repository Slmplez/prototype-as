using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IProcessDiagram : IBlockDiagram, IAscetDiagram
{
	DiscreteMethod AddMethod(string methodName);

	DiscreteMethod[] GetAllMethods();

	DiscreteMethod GetMethod(string methodName);

	bool RemoveMethod(DiscreteMethod method);
}
