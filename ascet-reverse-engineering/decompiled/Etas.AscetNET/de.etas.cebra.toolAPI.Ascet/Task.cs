using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("073716F9-B955-11D3-8A2C-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.Task")]
[ComVisible(true)]
public class Task : PersistentItem, ITask, Task_Dispatch
{
	public const string EVENT = "Event";

	public const string SOFTWARE = "Software";

	public const string TIMER = "Timer";

	public const string INIT = "Init";

	public const string INTERRUPT = "Interrupt";

	public const string ALARMTIMER = "AlarmTimer";

	public const string TIMETABLE = "Timetable";

	public const string COOPERATIVE = "Cooperative";

	public const string PREEMPTIVE = "Preemptive";

	protected internal AscetProject project;

	public Task(AscetProject prj, Identifiable h)
		: base(prj.GetDataBase(), h)
	{
		project = prj;
	}

	public virtual bool AddProcess(Process proc)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addProcess:");
			instanceMethodCall.appendParameter(proc);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddProcess(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool AssignOperatingMode(string operatingMode)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("assignOperatingMode:");
			instanceMethodCall.appendParameter(operatingMode);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AssignOperatingMode(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool AssignOperatingModes(string[] operatingModes)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("assignOperatingModes:");
			instanceMethodCall.appendParameter(operatingModes);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AssignOperatingModes(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool DeassignOperatingMode(string operatingMode)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deassignOperatingMode:");
			instanceMethodCall.appendParameter(operatingMode);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".DeassignOperatingMode(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool DeassignOperatingModes(string[] operatingModes)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deassignOperatingModes:");
			instanceMethodCall.appendParameter(operatingModes);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".DeassignOperatingModes(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual string[] GetAllOperatingModes()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllOperatingModes");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllOperatingModes(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual Process[] GetAllProcesses()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllProcesses");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				if (isXXX(remoteObjectsFromCollection[i], "ProcessMethod"))
				{
					instanceMethodCall = new InstanceMethodCall(remoteObjectsFromCollection[i], "getDiagram", this);
					call(instanceMethodCall);
					ProcessDiagram diag = new ProcessDiagram(project, instanceMethodCall.ResultRemoteObject);
					arrayList.Add(new Process(diag, remoteObjectsFromCollection[i]));
				}
			}
			Process[] array = new Process[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllProcesses(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual int GetIndexOfProcess(Process proc)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getIndexOfProcess:");
			instanceMethodCall.appendParameter(proc);
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetIndexOfProcess(): failed -> APIError: " + ex);
		}
		return 0;
	}

	public virtual int[] GetIndicesOfProcess(Process proc)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getIndicesOfProcess:");
			instanceMethodCall.appendParameter(proc);
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getIntegerFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetIndicesOfProcess(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetName()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getLabel");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetName(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual Process GetProcess(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getProcess:");
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			Identifiable resultRemoteObject = instanceMethodCall.ResultRemoteObject;
			instanceMethodCall = new InstanceMethodCall(resultRemoteObject, "getDiagram", this);
			call(instanceMethodCall);
			ProcessDiagram diag = new ProcessDiagram(project, instanceMethodCall.ResultRemoteObject);
			return new Process(diag, resultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetProcess(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual Process GetProcessAt(int pos)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getProcessAt:");
			instanceMethodCall.appendParameter(pos);
			call(instanceMethodCall);
			Identifiable resultRemoteObject = instanceMethodCall.ResultRemoteObject;
			instanceMethodCall = new InstanceMethodCall(resultRemoteObject, "getDiagram", this);
			call(instanceMethodCall);
			ProcessDiagram diag = new ProcessDiagram(project, instanceMethodCall.ResultRemoteObject);
			return new Process(diag, resultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetProcessAt(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetTriggerMode()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getTriggerMode");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetTriggerMode(): failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal virtual Task identifyTask(Identifiable obj)
	{
		try
		{
			if (isXXX(obj, "AlarmTask"))
			{
				return new AlarmTimerTask(project, obj);
			}
			if (isXXX(obj, "SoftwareTask"))
			{
				return new SoftwareTask(project, obj);
			}
			if (isXXX(obj, "InitTask"))
			{
				return new InitTask(project, obj);
			}
			if (isXXX(obj, "InterruptTask"))
			{
				return new InterruptTask(project, obj);
			}
			if (isXXX(obj, "TimetableTask"))
			{
				return new TimetableTask(project, obj);
			}
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".identifyTask(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual bool InsertProcessAt(Process proc, int pos)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("insertProcess:at:");
			instanceMethodCall.appendParameter(proc);
			instanceMethodCall.appendParameter(pos);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".InsertProcess(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool IsAlarmTimerTask()
	{
		return false;
	}

	[Obsolete("Use IsInterruptTask() instead", false)]
	public virtual bool IsEventTask()
	{
		return false;
	}

	public virtual bool IsInitTask()
	{
		return false;
	}

	public virtual bool IsInterruptTask()
	{
		return false;
	}

	[Obsolete("Use AscetProject.GetEnableMonitoring() instead", false)]
	public virtual bool IsMonitoring()
	{
		return isXXX("Monitoring");
	}

	public virtual bool IsSoftwareTask()
	{
		return false;
	}

	public override bool IsTask()
	{
		return true;
	}

	[Obsolete("please use the IsAlarmTimerTask", false)]
	public virtual bool IsTimerTask()
	{
		return false;
	}

	public virtual bool MoveProcess(int orgpos, int destpos)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("moveProcessAt:to:");
			instanceMethodCall.appendParameter(orgpos);
			instanceMethodCall.appendParameter(destpos);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".MoveProcessAt(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool RemoveProcess(Process proc)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("removeProcess:");
			instanceMethodCall.appendParameter(proc);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemoveProcess(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool RemoveProcessAt(int pos)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("removeProcessAt:");
			instanceMethodCall.appendParameter(pos);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemoveProcessAt(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetDeadline(bool check, double value_Renamed)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setDeadlineCheck:value:");
			instanceMethodCall.appendParameter(check);
			instanceMethodCall.appendParameter(value_Renamed);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetDeadline(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetHooksForString(string type)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setHooksForString:");
			instanceMethodCall.appendParameter(type);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetHooksForString(" + type + "): failed -> APIError: " + ex);
		}
		return false;
	}

	[Obsolete("Use AscetProject.SetEnableMonitoring() instead", false)]
	public virtual bool SetMonitoring(bool monitor)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setMonitoring:");
			instanceMethodCall.appendParameter(monitor);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".setMonitoring(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetName(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setLabel:");
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

	public virtual bool SetSchedulingForString(string schedulType)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setSchedulingForString:");
			instanceMethodCall.appendParameter(schedulType);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetTriggerMode(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual Task SetTriggerMode(string aTriggerType)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setTriggerMode:");
			instanceMethodCall.appendParameter(aTriggerType);
			call(instanceMethodCall);
			return identifyTask(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetTriggerMode(): failed -> APIError: " + ex);
		}
		return null;
	}

	bool Task_Dispatch.AddProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		return AddProcess(proc);
	}

	bool Task_Dispatch.AssignOperatingModes(object operatingModes)
	{
		string[] operatingModes2 = Adapter.ToArray1Object<string>(operatingModes);
		return AssignOperatingModes(operatingModes2);
	}

	bool Task_Dispatch.DeassignOperatingModes(object operatingModes)
	{
		string[] operatingModes2 = Adapter.ToArray1Object<string>(operatingModes);
		return DeassignOperatingModes(operatingModes2);
	}

	object Task_Dispatch.GetAllOperatingModes()
	{
		string[] allOperatingModes = GetAllOperatingModes();
		return Adapter.ToObject(allOperatingModes);
	}

	object Task_Dispatch.GetAllProcesses()
	{
		Process[] allProcesses = GetAllProcesses();
		return Adapter.ToObject(allProcesses);
	}

	int Task_Dispatch.GetIndexOfProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		return GetIndexOfProcess(proc);
	}

	object Task_Dispatch.GetIndicesOfProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		int[] indicesOfProcess = GetIndicesOfProcess(proc);
		return Adapter.ToObject(indicesOfProcess);
	}

	object Task_Dispatch.GetProcess(string aName)
	{
		return GetProcess(aName);
	}

	object Task_Dispatch.GetProcessAt(int pos)
	{
		return GetProcessAt(pos);
	}

	bool Task_Dispatch.InsertProcessAt(object dispatch_proc, int pos)
	{
		Process proc = (Process)dispatch_proc;
		return InsertProcessAt(proc, pos);
	}

	bool Task_Dispatch.RemoveProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		return RemoveProcess(proc);
	}

	object Task_Dispatch.SetTriggerMode(string aTriggerType)
	{
		return SetTriggerMode(aTriggerType);
	}

	object Task_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
