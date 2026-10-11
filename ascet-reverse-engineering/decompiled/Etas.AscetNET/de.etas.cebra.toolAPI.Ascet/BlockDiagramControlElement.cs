using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[ProgId("Ascet.BlockDiagramControlElement")]
[Guid("A3DF3E92-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
public class BlockDiagramControlElement : BlockDiagramElement, IBlockDiagramControlElement, IBlockDiagramElement, IAbstractBlockDiagramElement, BlockDiagramControlElement_Dispatch
{
	public BlockDiagramControlElement(AscetDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public virtual string GetControlElementType()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getType");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetControlElementType(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsBlockDiagramControlElement()
	{
		return true;
	}

	object BlockDiagramControlElement_Dispatch.GetAllPins()
	{
		BlockDiagramElementPin[] allPins = GetAllPins();
		return Adapter.ToObject(allPins);
	}

	int BlockDiagramControlElement_Dispatch.GetGraphicalObjectIdentifier()
	{
		long graphicalObjectIdentifier = GetGraphicalObjectIdentifier();
		return (int)graphicalObjectIdentifier;
	}

	object BlockDiagramControlElement_Dispatch.GetPosition()
	{
		long[] position = GetPosition();
		return Adapter.ToObject(position);
	}

	object BlockDiagramControlElement_Dispatch.GetSize()
	{
		long[] size = GetSize();
		return Adapter.ToObject(size);
	}

	object BlockDiagramControlElement_Dispatch.GetAllAvailableViews()
	{
		string[] allAvailableViews = GetAllAvailableViews();
		return Adapter.ToObject(allAvailableViews);
	}

	object BlockDiagramControlElement_Dispatch.GetAllAvailableViewTypes()
	{
		string[] allAvailableViewTypes = GetAllAvailableViewTypes();
		return Adapter.ToObject(allAvailableViewTypes);
	}

	object BlockDiagramControlElement_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object BlockDiagramControlElement_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object BlockDiagramControlElement_Dispatch.GetHierarchy()
	{
		return GetHierarchy();
	}

	object BlockDiagramControlElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
