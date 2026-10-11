using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("A3DF3E93-B490-11D3-8A29-00A0247767D8")]
[ComVisible(true)]
[ProgId("Ascet.BlockDiagramElement")]
[ClassInterface(ClassInterfaceType.None)]
public class BlockDiagramElement : AbstractBlockDiagramElement, IBlockDiagramElement, IAbstractBlockDiagramElement, BlockDiagramElement_Dispatch
{
	public BlockDiagramElement(AscetDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public BlockDiagramElementPin[] GetAllPins()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllPins");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			BlockDiagramElementPin[] array = new BlockDiagramElementPin[remoteObjectsFromCollection.Length];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				array[i] = new BlockDiagramElementPin(diagram, remoteObjectsFromCollection[i]);
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllPins(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual long GetGraphicalObjectIdentifier()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("identifier");
			call(instanceMethodCall);
			return instanceMethodCall.ResultLong;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetGraphicalObjectIdentifier(): failed -> APIError: " + ex);
		}
		return -99L;
	}

	public virtual long[] GetPosition()
	{
		return Position;
	}

	public virtual long[] GetSize()
	{
		return SizeBasic;
	}

	public virtual bool IsBlockDiagramControlElement()
	{
		return false;
	}

	public override bool IsBlockDiagramElement()
	{
		return true;
	}

	public virtual bool IsBlockDiagramFunctionalElement()
	{
		return false;
	}

	public virtual bool IsBlockDiagramHierarchy()
	{
		return false;
	}

	public virtual bool IsBlockDiagramHierarchyPin()
	{
		return false;
	}

	public virtual bool IsBlockDiagramLiteral()
	{
		return false;
	}

	public virtual bool IsBlockDiagramOperator()
	{
		return false;
	}

	object BlockDiagramElement_Dispatch.GetAllPins()
	{
		BlockDiagramElementPin[] allPins = GetAllPins();
		return Adapter.ToObject(allPins);
	}

	int BlockDiagramElement_Dispatch.GetGraphicalObjectIdentifier()
	{
		long graphicalObjectIdentifier = GetGraphicalObjectIdentifier();
		return (int)graphicalObjectIdentifier;
	}

	object BlockDiagramElement_Dispatch.GetPosition()
	{
		long[] position = GetPosition();
		return Adapter.ToObject(position);
	}

	object BlockDiagramElement_Dispatch.GetSize()
	{
		long[] size = GetSize();
		return Adapter.ToObject(size);
	}

	object BlockDiagramElement_Dispatch.GetAllAvailableViews()
	{
		string[] allAvailableViews = GetAllAvailableViews();
		return Adapter.ToObject(allAvailableViews);
	}

	object BlockDiagramElement_Dispatch.GetAllAvailableViewTypes()
	{
		string[] allAvailableViewTypes = GetAllAvailableViewTypes();
		return Adapter.ToObject(allAvailableViewTypes);
	}

	object BlockDiagramElement_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object BlockDiagramElement_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object BlockDiagramElement_Dispatch.GetHierarchy()
	{
		return GetHierarchy();
	}

	object BlockDiagramElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
