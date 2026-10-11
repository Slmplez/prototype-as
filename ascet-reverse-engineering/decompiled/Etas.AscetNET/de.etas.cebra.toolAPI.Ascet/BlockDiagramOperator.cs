using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[Guid("A3DF3E9A-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.BlockDiagramOperator")]
public class BlockDiagramOperator : BlockDiagramElement, BlockDiagramOperator_Dispatch, IBlockDiagramOperator, IBlockDiagramElement, IAbstractBlockDiagramElement
{
	object BlockDiagramOperator_Dispatch.GetAllPins()
	{
		BlockDiagramElementPin[] allPins = GetAllPins();
		return Adapter.ToObject(allPins);
	}

	int BlockDiagramOperator_Dispatch.GetGraphicalObjectIdentifier()
	{
		long graphicalObjectIdentifier = GetGraphicalObjectIdentifier();
		return (int)graphicalObjectIdentifier;
	}

	object BlockDiagramOperator_Dispatch.GetPosition()
	{
		long[] position = GetPosition();
		return Adapter.ToObject(position);
	}

	object BlockDiagramOperator_Dispatch.GetSize()
	{
		long[] size = GetSize();
		return Adapter.ToObject(size);
	}

	object BlockDiagramOperator_Dispatch.GetAllAvailableViews()
	{
		string[] allAvailableViews = GetAllAvailableViews();
		return Adapter.ToObject(allAvailableViews);
	}

	object BlockDiagramOperator_Dispatch.GetAllAvailableViewTypes()
	{
		string[] allAvailableViewTypes = GetAllAvailableViewTypes();
		return Adapter.ToObject(allAvailableViewTypes);
	}

	object BlockDiagramOperator_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object BlockDiagramOperator_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object BlockDiagramOperator_Dispatch.GetHierarchy()
	{
		return GetHierarchy();
	}

	object BlockDiagramOperator_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public BlockDiagramOperator(AscetDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public virtual string GetOperatorType()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getType");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetOperatorType(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsBlockDiagramOperator()
	{
		return true;
	}
}
