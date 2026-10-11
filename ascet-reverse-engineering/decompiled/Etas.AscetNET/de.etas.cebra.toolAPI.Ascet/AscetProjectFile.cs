using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("5F64D4E4-C9A8-11D3-8A31-00A0247767D8")]
[ComVisible(true)]
[ProgId("Ascet.AscetProjectFile")]
[ClassInterface(ClassInterfaceType.None)]
public class AscetProjectFile : PersistentItem, IAscetProjectFile, AscetProjectFile_Dispatch
{
	protected internal AscetProject project;

	public AscetProjectFile(AscetProject prj, Identifiable h)
		: base(prj.GetDataBase(), h)
	{
		project = prj;
	}

	public virtual string GetDate()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getTimeStamp");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetDate(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetName()
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

	public virtual int GetSize()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getSize");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetSize(): failed -> APIError: " + ex);
		}
		return -1;
	}

	public override bool IsAscetProjectFile()
	{
		return true;
	}

	public virtual bool WriteToFile(string aFileName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("writeToFile:");
			instanceMethodCall.appendParameter(aFileName);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".WriteToFile(): failed -> APIError: " + ex);
		}
		return false;
	}

	object AscetProjectFile_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
