using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[Guid("A3DF3E98-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.BlockDiagramHierarchyPin")]
public class BlockDiagramHierarchyPin : BlockDiagramElement, BlockDiagramHierarchyPin_Dispatch, IBlockDiagramHierarchyPin, IBlockDiagramElement, IAbstractBlockDiagramElement
{
	object BlockDiagramHierarchyPin_Dispatch.GetAllPins()
	{
		BlockDiagramElementPin[] allPins = GetAllPins();
		return Adapter.ToObject(allPins);
	}

	int BlockDiagramHierarchyPin_Dispatch.GetGraphicalObjectIdentifier()
	{
		long graphicalObjectIdentifier = GetGraphicalObjectIdentifier();
		return (int)graphicalObjectIdentifier;
	}

	object BlockDiagramHierarchyPin_Dispatch.GetPosition()
	{
		long[] position = GetPosition();
		return Adapter.ToObject(position);
	}

	object BlockDiagramHierarchyPin_Dispatch.GetSize()
	{
		long[] size = GetSize();
		return Adapter.ToObject(size);
	}

	object BlockDiagramHierarchyPin_Dispatch.GetAllAvailableViews()
	{
		string[] allAvailableViews = GetAllAvailableViews();
		return Adapter.ToObject(allAvailableViews);
	}

	object BlockDiagramHierarchyPin_Dispatch.GetAllAvailableViewTypes()
	{
		string[] allAvailableViewTypes = GetAllAvailableViewTypes();
		return Adapter.ToObject(allAvailableViewTypes);
	}

	object BlockDiagramHierarchyPin_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object BlockDiagramHierarchyPin_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object BlockDiagramHierarchyPin_Dispatch.GetHierarchy()
	{
		return GetHierarchy();
	}

	object BlockDiagramHierarchyPin_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public BlockDiagramHierarchyPin(AscetDiagram diag, Identifiable h)
		: base(diag, h)
	{
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

	public override bool IsBlockDiagramHierarchyPin()
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

	public bool SetName(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setName:");
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetName(): failed -> APIError: " + ex);
		}
		return false;
	}
}
