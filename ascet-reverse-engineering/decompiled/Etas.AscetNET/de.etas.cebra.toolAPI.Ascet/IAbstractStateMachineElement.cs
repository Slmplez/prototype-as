using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IAbstractStateMachineElement
{
	CodeComponent GetCodeComponent();

	StateMachineDiagram GetDiagram();

	HierarchyState GetHierarchyState();

	bool IsAbstractStateMachineElement();

	bool IsState();

	bool IsStateMachineDiagramElement();

	bool IsStateMachinePin();

	bool IsTransition();
}
