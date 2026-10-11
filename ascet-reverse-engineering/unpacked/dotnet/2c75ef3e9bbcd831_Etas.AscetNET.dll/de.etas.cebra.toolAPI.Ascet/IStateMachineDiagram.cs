using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IStateMachineDiagram : IAscetDiagram
{
	Transition ConnectPinToPin(StateMachinePin out_Renamed, StateMachinePin in_Renamed);

	Transition ConnectPinToState(StateMachinePin out_Renamed, State in_Renamed, int x, int y);

	Transition ConnectStateToPin(State out_Renamed, int x, int y, StateMachinePin in_Renamed);

	Transition ConnectStateToState(State out_Renamed, int xo, int yo, State in_Renamed, int xi, int yi);

	string[] GetAllAvailableColors();

	State GetState(string name);

	HierarchyState PlaceHierarchyState(string aName, int x, int y, HierarchyState hierarchy);

	State PlaceState(string aName, int x, int y, HierarchyState hierarchy);
}
