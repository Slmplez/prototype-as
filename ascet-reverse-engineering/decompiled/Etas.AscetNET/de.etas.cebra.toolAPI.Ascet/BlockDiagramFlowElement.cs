using System.Runtime.InteropServices;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[ProgId("Ascet.BlockDiagramFlowElement")]
[ClassInterface(ClassInterfaceType.None)]
[Guid("A3DF3E95-B490-11D3-8A29-00A0247767D8")]
public class BlockDiagramFlowElement : AbstractBlockDiagramElement, IBlockDiagramFlowElement, IAbstractBlockDiagramElement, BlockDiagramFlowElement_Dispatch
{
	public BlockDiagramFlowElement(AscetDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public virtual bool IsBlockDiagramConnection()
	{
		return false;
	}

	public virtual bool IsBlockDiagramElementPin()
	{
		return false;
	}

	public override bool IsBlockDiagramFlowElement()
	{
		return true;
	}

	public virtual bool IsSequenceCall()
	{
		return false;
	}

	object BlockDiagramFlowElement_Dispatch.GetAllAvailableViews()
	{
		string[] allAvailableViews = GetAllAvailableViews();
		return Adapter.ToObject(allAvailableViews);
	}

	object BlockDiagramFlowElement_Dispatch.GetAllAvailableViewTypes()
	{
		string[] allAvailableViewTypes = GetAllAvailableViewTypes();
		return Adapter.ToObject(allAvailableViewTypes);
	}

	object BlockDiagramFlowElement_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object BlockDiagramFlowElement_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object BlockDiagramFlowElement_Dispatch.GetHierarchy()
	{
		return GetHierarchy();
	}

	object BlockDiagramFlowElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
