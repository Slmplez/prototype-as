using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
[Guid("A3DF3E99-B490-11D3-8A29-00A0247767D8")]
[ComVisible(true)]
[ProgId("Ascet.BlockDiagramLiteral")]
public class BlockDiagramLiteral : BlockDiagramElement, BlockDiagramLiteral_Dispatch
{
	object BlockDiagramLiteral_Dispatch.GetAllPins()
	{
		BlockDiagramElementPin[] allPins = GetAllPins();
		return Adapter.ToObject(allPins);
	}

	int BlockDiagramLiteral_Dispatch.GetGraphicalObjectIdentifier()
	{
		long graphicalObjectIdentifier = GetGraphicalObjectIdentifier();
		return (int)graphicalObjectIdentifier;
	}

	object BlockDiagramLiteral_Dispatch.GetPosition()
	{
		long[] position = GetPosition();
		return Adapter.ToObject(position);
	}

	object BlockDiagramLiteral_Dispatch.GetSize()
	{
		long[] size = GetSize();
		return Adapter.ToObject(size);
	}

	object BlockDiagramLiteral_Dispatch.GetAllAvailableViews()
	{
		string[] allAvailableViews = GetAllAvailableViews();
		return Adapter.ToObject(allAvailableViews);
	}

	object BlockDiagramLiteral_Dispatch.GetAllAvailableViewTypes()
	{
		string[] allAvailableViewTypes = GetAllAvailableViewTypes();
		return Adapter.ToObject(allAvailableViewTypes);
	}

	object BlockDiagramLiteral_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object BlockDiagramLiteral_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object BlockDiagramLiteral_Dispatch.GetHierarchy()
	{
		return GetHierarchy();
	}

	object BlockDiagramLiteral_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public BlockDiagramLiteral(AscetDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public string GetContents()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getLiteralText");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetContents(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsBlockDiagramLiteral()
	{
		return true;
	}

	public virtual bool SetContents(string newContents)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setLiteralText:");
			instanceMethodCall.appendParameter(newContents);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetContents(" + newContents + "): failed -> APIError: " + ex);
		}
		return false;
	}
}
