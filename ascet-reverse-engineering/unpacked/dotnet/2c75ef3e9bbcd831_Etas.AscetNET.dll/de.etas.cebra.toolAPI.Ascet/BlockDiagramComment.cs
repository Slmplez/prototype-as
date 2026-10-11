using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.BlockDiagramComment")]
[Guid("F16D22C3-6985-11D5-98DA-00105A36DC87")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public class BlockDiagramComment : AbstractBlockDiagramElement, BlockDiagramComment_Dispatch, IBlockDiagramComment, IAbstractBlockDiagramElement
{
	object BlockDiagramComment_Dispatch.GetPosition()
	{
		long[] position = GetPosition();
		return Adapter.ToObject(position);
	}

	object BlockDiagramComment_Dispatch.GetSize()
	{
		long[] size = GetSize();
		return Adapter.ToObject(size);
	}

	object BlockDiagramComment_Dispatch.GetAllAvailableViews()
	{
		string[] allAvailableViews = GetAllAvailableViews();
		return Adapter.ToObject(allAvailableViews);
	}

	object BlockDiagramComment_Dispatch.GetAllAvailableViewTypes()
	{
		string[] allAvailableViewTypes = GetAllAvailableViewTypes();
		return Adapter.ToObject(allAvailableViewTypes);
	}

	object BlockDiagramComment_Dispatch.GetCodeComponent()
	{
		return GetCodeComponent();
	}

	object BlockDiagramComment_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object BlockDiagramComment_Dispatch.GetHierarchy()
	{
		return GetHierarchy();
	}

	object BlockDiagramComment_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public BlockDiagramComment(AscetDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public virtual string GetComment()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getComment");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetComment(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual long[] GetPosition()
	{
		return Position;
	}

	public virtual long[] GetSize()
	{
		return SizeBasic;
	}

	public override bool IsBlockDiagramComment()
	{
		return true;
	}

	public virtual bool SetComment(string comment)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setComment:");
			instanceMethodCall.appendParameter(comment);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetComment(): failed -> APIError: " + ex);
		}
		return false;
	}
}
