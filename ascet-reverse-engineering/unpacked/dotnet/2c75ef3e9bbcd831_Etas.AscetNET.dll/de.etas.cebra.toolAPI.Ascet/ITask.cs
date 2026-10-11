using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface ITask
{
	bool AddProcess(Process proc);

	bool AssignOperatingMode(string operatingMode);

	bool AssignOperatingModes(string[] operatingModes);

	bool DeassignOperatingMode(string operatingMode);

	bool DeassignOperatingModes(string[] operatingModes);

	string[] GetAllOperatingModes();

	Process[] GetAllProcesses();

	int GetIndexOfProcess(Process proc);

	int[] GetIndicesOfProcess(Process proc);

	string GetName();

	Process GetProcess(string aName);

	Process GetProcessAt(int pos);

	string GetTriggerMode();

	bool InsertProcessAt(Process proc, int pos);

	bool IsAlarmTimerTask();

	bool IsEventTask();

	bool IsInitTask();

	bool IsInterruptTask();

	bool IsMonitoring();

	bool IsSoftwareTask();

	bool IsTask();

	bool IsTimerTask();

	bool MoveProcess(int orgpos, int destpos);

	bool RemoveProcess(Process proc);

	bool RemoveProcessAt(int pos);

	bool SetDeadline(bool check, double value_Renamed);

	bool SetHooksForString(string type);

	bool SetMonitoring(bool monitor);

	bool SetName(string aName);

	bool SetSchedulingForString(string schedulType);

	Task SetTriggerMode(string aTriggerType);
}
