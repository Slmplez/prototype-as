using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IStateMachineDiagramElement : IAbstractStateMachineElement
{
	long GetGraphicalObjectIdentifier();

	string GetName();

	bool SetName(string aName);
}
