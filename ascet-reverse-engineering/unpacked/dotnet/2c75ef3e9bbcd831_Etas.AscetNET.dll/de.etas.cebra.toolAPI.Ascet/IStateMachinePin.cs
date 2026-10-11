using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IStateMachinePin : IStateMachineDiagramElement, IAbstractStateMachineElement
{
	Transition[] GetConnectedTransitions();

	HierarchyState GetHierarchy();
}
