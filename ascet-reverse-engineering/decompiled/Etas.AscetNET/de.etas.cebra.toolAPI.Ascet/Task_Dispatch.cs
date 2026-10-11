using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface Task_Dispatch
{
	bool AddProcess(object dispatch_proc);

	bool AssignOperatingMode(string operatingMode);

	bool AssignOperatingModes([MarshalAs(UnmanagedType.Struct)] object operatingModes);

	bool DeassignOperatingMode(string operatingMode);

	bool DeassignOperatingModes([MarshalAs(UnmanagedType.Struct)] object operatingModes);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllOperatingModes();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllProcesses();

	int GetIndexOfProcess(object dispatch_proc);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetIndicesOfProcess(object dispatch_proc);

	string GetName();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetProcess(string aName);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetProcessAt(int pos);

	string GetTriggerMode();

	bool InsertProcessAt(object dispatch_proc, int pos);

	bool IsAlarmTimerTask();

	bool IsEventTask();

	bool IsInitTask();

	bool IsInterruptTask();

	bool IsMonitoring();

	bool IsSoftwareTask();

	bool IsTask();

	bool IsTimerTask();

	bool MoveProcess(int orgpos, int destpos);

	bool RemoveProcess(object dispatch_proc);

	bool RemoveProcessAt(int pos);

	bool SetDeadline(bool check, double value_Renamed);

	bool SetHooksForString(string type);

	bool SetMonitoring(bool monitor);

	bool SetName(string aName);

	bool SetSchedulingForString(string schedulType);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object SetTriggerMode(string aTriggerType);

	void CreateApplicationError();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetDataBase();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	bool IsAbstractBlockDiagramElement();

	bool IsAbstractMethod();

	bool IsAscetDiagram();

	bool IsAscetProjectFile();

	bool IsCodeGenerator();

	bool IsConfiguration();

	bool IsConfigurationItem();

	bool IsDataBaseItem();

	bool IsDeviceDescription();

	bool IsFormula();

	bool IsHWDevice();

	bool IsHWSubDevice();

	bool IsHWSystem();

	bool IsImplInfo();

	bool IsModelElement();

	bool IsSubDeviceDescription();

	bool IsSystemDescription();

	bool IsTarget();

	bool IsToolErrorAvailable();

	new bool Equals(object hndl);

	new int GetHashCode();
}
