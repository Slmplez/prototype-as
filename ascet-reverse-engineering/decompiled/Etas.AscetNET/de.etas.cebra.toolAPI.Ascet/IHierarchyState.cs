using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IHierarchyState : IState, IStateMachineDiagramElement, IAbstractStateMachineElement
{
	StateMachinePin AddPin();

	StateMachinePin AddPin(string aName, int x, int y);

	State CreateNormalState();

	StateMachinePin[] GetAllPins();

	State[] GetAllStates();

	Transition[] GetAllTransitions();

	StateMachinePin GetPin(string name);

	State GetState(string name);

	bool IsHierarchyState();

	bool RemovePin(StateMachinePin pin);

	bool SaveAsBitmap(string fileName, string view);

	bool SaveAsGIF(string fileName, string view);

	bool SaveAsPostscript(string fileName, string view);

	bool SaveAsPostscriptAndRescale(string fileName, double scaleFactor, string view);

	bool SaveAsRTF(string fileName, string view);
}
