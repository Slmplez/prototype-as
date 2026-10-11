using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IInterruptTask : ITask
{
	int GetPriorityLevel();

	bool SetMinimumPeriod(bool check, double value_Renamed);

	bool SetPriorityLevel(int level);
}
