using System.Runtime.InteropServices;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.InitTask")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[Guid("073716F5-B955-11D3-8A2C-00A0247767D8")]
public class InitTask : Task, IInitTask, ITask, InitTask_Dispatch
{
	public InitTask(AscetProject prj, Identifiable h)
		: base(prj, h)
	{
	}

	public override bool IsInitTask()
	{
		return true;
	}

	bool InitTask_Dispatch.AddProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		return AddProcess(proc);
	}

	bool InitTask_Dispatch.AssignOperatingModes(object operatingModes)
	{
		string[] operatingModes2 = Adapter.ToArray1Object<string>(operatingModes);
		return AssignOperatingModes(operatingModes2);
	}

	bool InitTask_Dispatch.DeassignOperatingModes(object operatingModes)
	{
		string[] operatingModes2 = Adapter.ToArray1Object<string>(operatingModes);
		return DeassignOperatingModes(operatingModes2);
	}

	object InitTask_Dispatch.GetAllOperatingModes()
	{
		string[] allOperatingModes = GetAllOperatingModes();
		return Adapter.ToObject(allOperatingModes);
	}

	object InitTask_Dispatch.GetAllProcesses()
	{
		Process[] allProcesses = GetAllProcesses();
		return Adapter.ToObject(allProcesses);
	}

	int InitTask_Dispatch.GetIndexOfProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		return GetIndexOfProcess(proc);
	}

	object InitTask_Dispatch.GetIndicesOfProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		int[] indicesOfProcess = GetIndicesOfProcess(proc);
		return Adapter.ToObject(indicesOfProcess);
	}

	object InitTask_Dispatch.GetProcess(string aName)
	{
		return GetProcess(aName);
	}

	object InitTask_Dispatch.GetProcessAt(int pos)
	{
		return GetProcessAt(pos);
	}

	bool InitTask_Dispatch.InsertProcessAt(object dispatch_proc, int pos)
	{
		Process proc = (Process)dispatch_proc;
		return InsertProcessAt(proc, pos);
	}

	bool InitTask_Dispatch.RemoveProcess(object dispatch_proc)
	{
		Process proc = (Process)dispatch_proc;
		return RemoveProcess(proc);
	}

	object InitTask_Dispatch.SetTriggerMode(string aTriggerType)
	{
		return SetTriggerMode(aTriggerType);
	}

	object InitTask_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
