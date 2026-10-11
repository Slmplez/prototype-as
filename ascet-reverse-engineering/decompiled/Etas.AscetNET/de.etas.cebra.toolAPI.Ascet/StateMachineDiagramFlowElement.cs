using System.Runtime.InteropServices;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("A0ED2D29-DCD6-11D4-9864-00105A36DC87")]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.StateMachineDiagramFlowElement")]
[ComVisible(true)]
public class StateMachineDiagramFlowElement : AbstractStateMachineElement, IStateMachineDiagramFlowElement, IAbstractStateMachineElement, StateMachineDiagramFlowElement_Dispatch
{
	public StateMachineDiagramFlowElement(AscetDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	object StateMachineDiagramFlowElement_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object StateMachineDiagramFlowElement_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object StateMachineDiagramFlowElement_Dispatch.GetHierarchyState()
	{
		return GetHierarchyState();
	}

	object StateMachineDiagramFlowElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
