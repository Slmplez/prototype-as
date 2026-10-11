using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[Guid("A3DF3E91-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.BlockDiagramConnection")]
public class BlockDiagramConnection : BlockDiagramFlowElement, IBlockDiagramConnection, IBlockDiagramFlowElement, IAbstractBlockDiagramElement, BlockDiagramConnection_Dispatch
{
	public BlockDiagramConnection(AscetDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public int GetConnectionType()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getConnectionType");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetConnectionType(): failed -> APIError: " + ex);
		}
		return -1;
	}

	public BlockDiagramElementPin GetInputPin()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getInputPin");
			call(instanceMethodCall);
			return new BlockDiagramElementPin(diagram, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetInputPin(): failed -> APIError: " + ex);
		}
		return null;
	}

	public BlockDiagramElementPin GetOutputPin()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getOutputPin");
			call(instanceMethodCall);
			return new BlockDiagramElementPin(diagram, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetOutputPin(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual int[][] GetSegmentCoordinatesXY()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getSegmentCoordinatesAsArray");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			int[] integerFromCollection = getIntegerFromCollection(coll);
			int num = integerFromCollection.Length >> 1;
			int[][] array = new int[num][];
			for (int i = 0; i < num; i++)
			{
				array[i] = new int[2];
			}
			for (int j = 0; j < num; j++)
			{
				array[j][0] = integerFromCollection[j];
				array[j][1] = integerFromCollection[num + j];
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetSegmentCoordinatesXY(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsBlockDiagramConnection()
	{
		return true;
	}

	object BlockDiagramConnection_Dispatch.GetInputPin()
	{
		return GetInputPin();
	}

	object BlockDiagramConnection_Dispatch.GetOutputPin()
	{
		return GetOutputPin();
	}

	object BlockDiagramConnection_Dispatch.GetSegmentCoordinatesXY()
	{
		int[][] segmentCoordinatesXY = GetSegmentCoordinatesXY();
		return Adapter.ToObject(segmentCoordinatesXY);
	}

	object BlockDiagramConnection_Dispatch.GetAllAvailableViews()
	{
		string[] allAvailableViews = GetAllAvailableViews();
		return Adapter.ToObject(allAvailableViews);
	}

	object BlockDiagramConnection_Dispatch.GetAllAvailableViewTypes()
	{
		string[] allAvailableViewTypes = GetAllAvailableViewTypes();
		return Adapter.ToObject(allAvailableViewTypes);
	}

	object BlockDiagramConnection_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object BlockDiagramConnection_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object BlockDiagramConnection_Dispatch.GetHierarchy()
	{
		return GetHierarchy();
	}

	object BlockDiagramConnection_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
