using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
[Guid("EF2A55FC-A2EE-400e-AA61-DCE7D3FB2CC2")]
[ComVisible(true)]
[ProgId("Ascet.AlarmTimerTask")]
public class AlarmTimerTask : Task, AlarmTimerTask_Dispatch, IAlarmTimerTask, ITask
{
	bool AlarmTimerTask_Dispatch.AddProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		return AddProcess(proc);
	}

	bool AlarmTimerTask_Dispatch.AssignOperatingModes(object operatingModes)
	{
		string[] operatingModes2 = Adapter.ToArray1Object<string>(operatingModes);
		return AssignOperatingModes(operatingModes2);
	}

	bool AlarmTimerTask_Dispatch.DeassignOperatingModes(object operatingModes)
	{
		string[] operatingModes2 = Adapter.ToArray1Object<string>(operatingModes);
		return DeassignOperatingModes(operatingModes2);
	}

	object AlarmTimerTask_Dispatch.GetAllOperatingModes()
	{
		string[] allOperatingModes = GetAllOperatingModes();
		return Adapter.ToObject(allOperatingModes);
	}

	object AlarmTimerTask_Dispatch.GetAllProcesses()
	{
		Process[] allProcesses = GetAllProcesses();
		return Adapter.ToObject(allProcesses);
	}

	int AlarmTimerTask_Dispatch.GetIndexOfProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		return GetIndexOfProcess(proc);
	}

	object AlarmTimerTask_Dispatch.GetIndicesOfProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		int[] indicesOfProcess = GetIndicesOfProcess(proc);
		return Adapter.ToObject(indicesOfProcess);
	}

	object AlarmTimerTask_Dispatch.GetProcess(string aName)
	{
		return GetProcess(aName);
	}

	object AlarmTimerTask_Dispatch.GetProcessAt(int pos)
	{
		return GetProcessAt(pos);
	}

	bool AlarmTimerTask_Dispatch.InsertProcessAt(object dispatch_proc, int pos)
	{
		Process proc = (Process)dispatch_proc;
		return InsertProcessAt(proc, pos);
	}

	bool AlarmTimerTask_Dispatch.RemoveProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		return RemoveProcess(proc);
	}

	object AlarmTimerTask_Dispatch.SetTriggerMode(string aTriggerType)
	{
		return SetTriggerMode(aTriggerType);
	}

	object AlarmTimerTask_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public AlarmTimerTask(AscetProject prj, Identifiable h)
		: base(prj, h)
	{
	}

	public virtual double GetDelay()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getDelay");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetDelay(): failed -> APIError: " + ex);
		}
		return -1.0;
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

	public virtual double GetPeriod()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPeriod");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetPeriod(): failed -> APIError: " + ex);
		}
		return -1.0;
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

	public override bool IsAlarmTimerTask()
	{
		return true;
	}

	[Obsolete("please use the IsAlarmTimerTask", false)]
	public override bool IsTimerTask()
	{
		return true;
	}

	public virtual bool SetDelay(double delay)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setDelay:");
			instanceMethodCall.appendParameter(delay);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetDelay(): failed -> APIError: " + ex);
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

	public virtual bool SetPeriod(double period)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPeriod:");
			instanceMethodCall.appendParameter(period);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetPeriod(): failed -> APIError: " + ex);
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

	public virtual bool SetStartAlarm(bool flag)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setStartAlarm:");
			instanceMethodCall.appendParameter(flag);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetStartAlarm(" + flag + "): failed -> APIError: " + ex);
		}
		return false;
	}
}
