using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[Guid("C44A8D44-679F-46df-B9D3-90839EF357AF")]
[ProgId("Ascet.InterruptTask")]
[ClassInterface(ClassInterfaceType.None)]
public class InterruptTask : Task, InterruptTask_Dispatch, IInterruptTask, ITask
{
	bool InterruptTask_Dispatch.AddProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		return AddProcess(proc);
	}

	bool InterruptTask_Dispatch.AssignOperatingModes(object operatingModes)
	{
		string[] operatingModes2 = Adapter.ToArray1Object<string>(operatingModes);
		return AssignOperatingModes(operatingModes2);
	}

	bool InterruptTask_Dispatch.DeassignOperatingModes(object operatingModes)
	{
		string[] operatingModes2 = Adapter.ToArray1Object<string>(operatingModes);
		return DeassignOperatingModes(operatingModes2);
	}

	object InterruptTask_Dispatch.GetAllOperatingModes()
	{
		string[] allOperatingModes = GetAllOperatingModes();
		return Adapter.ToObject(allOperatingModes);
	}

	object InterruptTask_Dispatch.GetAllProcesses()
	{
		Process[] allProcesses = GetAllProcesses();
		return Adapter.ToObject(allProcesses);
	}

	int InterruptTask_Dispatch.GetIndexOfProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		return GetIndexOfProcess(proc);
	}

	object InterruptTask_Dispatch.GetIndicesOfProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		int[] indicesOfProcess = GetIndicesOfProcess(proc);
		return Adapter.ToObject(indicesOfProcess);
	}

	object InterruptTask_Dispatch.GetProcess(string aName)
	{
		return GetProcess(aName);
	}

	object InterruptTask_Dispatch.GetProcessAt(int pos)
	{
		return GetProcessAt(pos);
	}

	bool InterruptTask_Dispatch.InsertProcessAt(object dispatch_proc, int pos)
	{
		Process proc = (Process)dispatch_proc;
		return InsertProcessAt(proc, pos);
	}

	bool InterruptTask_Dispatch.RemoveProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		return RemoveProcess(proc);
	}

	object InterruptTask_Dispatch.SetTriggerMode(string aTriggerType)
	{
		return SetTriggerMode(aTriggerType);
	}

	object InterruptTask_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public InterruptTask(AscetProject prj, Identifiable h)
		: base(prj, h)
	{
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

	[Obsolete("Use IsInterruptTask() instead", false)]
	public override bool IsEventTask()
	{
		return true;
	}

	public override bool IsInterruptTask()
	{
		return true;
	}

	public virtual bool SetMinimumPeriod(bool check, double value_Renamed)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setMinimumPeriodCheck:value:");
			instanceMethodCall.appendParameter(check);
			instanceMethodCall.appendParameter(value_Renamed);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetMinimumPeriod(): failed -> APIError: " + ex);
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
}
