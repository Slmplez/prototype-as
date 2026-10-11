using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[Guid("A3DF3E94-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.BlockDiagramElementPin")]
public class BlockDiagramElementPin : BlockDiagramFlowElement, BlockDiagramElementPin_Dispatch, IBlockDiagramElementPin, IBlockDiagramFlowElement, IAbstractBlockDiagramElement
{
	object BlockDiagramElementPin_Dispatch.GetAllBlockDiagramConnections()
	{
		BlockDiagramConnection[] allBlockDiagramConnections = GetAllBlockDiagramConnections();
		return Adapter.ToObject(allBlockDiagramConnections);
	}

	object BlockDiagramElementPin_Dispatch.GetBlockDiagramElement()
	{
		return GetBlockDiagramElement();
	}

	object BlockDiagramElementPin_Dispatch.GetSequenceCall()
	{
		return GetSequenceCall();
	}

	object BlockDiagramElementPin_Dispatch.GetAllAvailableViews()
	{
		string[] allAvailableViews = GetAllAvailableViews();
		return Adapter.ToObject(allAvailableViews);
	}

	object BlockDiagramElementPin_Dispatch.GetAllAvailableViewTypes()
	{
		string[] allAvailableViewTypes = GetAllAvailableViewTypes();
		return Adapter.ToObject(allAvailableViewTypes);
	}

	object BlockDiagramElementPin_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object BlockDiagramElementPin_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object BlockDiagramElementPin_Dispatch.GetHierarchy()
	{
		return GetHierarchy();
	}

	object BlockDiagramElementPin_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public BlockDiagramElementPin(AscetDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public BlockDiagramConnection[] GetAllBlockDiagramConnections()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllBlockDiagramConnections");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			BlockDiagramConnection[] array = new BlockDiagramConnection[remoteObjectsFromCollection.Length];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				array[i] = new BlockDiagramConnection(diagram, remoteObjectsFromCollection[i]);
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllDiagramConnections(): failed -> APIError: " + ex);
		}
		return null;
	}

	public BlockDiagramElement GetBlockDiagramElement()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getBlockDiagramElement");
			call(instanceMethodCall);
			return identifyBlockDiagramElement(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetBlockDiagramElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetName()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getName");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetName(): failed -> APIError: " + ex);
		}
		return null;
	}

	public SequenceCall GetSequenceCall()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getSequenceCall");
			call(instanceMethodCall);
			return new SequenceCall(diagram, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetSequenceCall(): failed -> APIError: " + ex);
		}
		return null;
	}

	public bool HasSequenceCall()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("hasSequenceCall");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".HasSequenceCall(): failed -> APIError: " + ex);
		}
		return false;
	}

	public override bool IsBlockDiagramElementPin()
	{
		return true;
	}

	public bool IsInput()
	{
		return isXXX("InputPin");
	}

	public bool IsOutput()
	{
		return isXXX("OutputPin");
	}

	public virtual bool SetName(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setName:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetName(" + name + ") failed -> APIError: " + ex);
		}
		return false;
	}
}
