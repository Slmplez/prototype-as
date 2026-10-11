using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.SoftwareTask")]
[Guid("073716F8-B955-11D3-8A2C-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public class SoftwareTask : Task, ISoftwareTask, ITask, SoftwareTask_Dispatch
{
	public SoftwareTask(AscetProject prj, Identifiable h)
		: base(prj, h)
	{
	}

	public virtual int GetMaximumNumberOfActivations()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getMaximumNumberOfActivations");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetMaximumNumberOfActivations(): failed -> APIError: " + ex);
		}
		return -1;
	}

	public virtual int GetPriorityLevel()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPriorityLevel");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetPriorityLevel(): failed -> APIError: " + ex);
		}
		return -1;
	}

	public virtual string GetPriorityType()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPriorityType");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetPriorityType(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsSoftwareTask()
	{
		return true;
	}

	public virtual bool SetAutostart(bool flag)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setAutostart:");
			instanceMethodCall.appendParameter(flag);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetAutostart(" + flag + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetMaximumNumberOfActivations(int num)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setMaximumNumberOfActivations:");
			instanceMethodCall.appendParameter(num);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetMaximumNumberOfActivations(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetPriorityLevel(int level)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPriorityLevel:");
			instanceMethodCall.appendParameter(level);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetPriorityLevel(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetPriorityType(string type)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPriorityType:");
			instanceMethodCall.appendParameter(type);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetPriorityType(): failed -> APIError: " + ex);
		}
		return false;
	}

	bool SoftwareTask_Dispatch.AddProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		return AddProcess(proc);
	}

	bool SoftwareTask_Dispatch.AssignOperatingModes(object operatingModes)
	{
		string[] operatingModes2 = Adapter.ToArray1Object<string>(operatingModes);
		return AssignOperatingModes(operatingModes2);
	}

	bool SoftwareTask_Dispatch.DeassignOperatingModes(object operatingModes)
	{
		string[] operatingModes2 = Adapter.ToArray1Object<string>(operatingModes);
		return DeassignOperatingModes(operatingModes2);
	}

	object SoftwareTask_Dispatch.GetAllOperatingModes()
	{
		string[] allOperatingModes = GetAllOperatingModes();
		return Adapter.ToObject(allOperatingModes);
	}

	object SoftwareTask_Dispatch.GetAllProcesses()
	{
		Process[] allProcesses = GetAllProcesses();
		return Adapter.ToObject(allProcesses);
	}

	int SoftwareTask_Dispatch.GetIndexOfProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		return GetIndexOfProcess(proc);
	}

	object SoftwareTask_Dispatch.GetIndicesOfProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		int[] indicesOfProcess = GetIndicesOfProcess(proc);
		return Adapter.ToObject(indicesOfProcess);
	}

	object SoftwareTask_Dispatch.GetProcess(string aName)
	{
		return GetProcess(aName);
	}

	object SoftwareTask_Dispatch.GetProcessAt(int pos)
	{
		return GetProcessAt(pos);
	}

	bool SoftwareTask_Dispatch.InsertProcessAt(object dispatch_proc, int pos)
	{
		Process proc = (Process)dispatch_proc;
		return InsertProcessAt(proc, pos);
	}

	bool SoftwareTask_Dispatch.RemoveProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		return RemoveProcess(proc);
	}

	object SoftwareTask_Dispatch.SetTriggerMode(string aTriggerType)
	{
		return SetTriggerMode(aTriggerType);
	}

	object SoftwareTask_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
