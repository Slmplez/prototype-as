using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IAlarmTimerTask : ITask
{
	double GetDelay();

	int GetMaximumNumberOfActivations();

	double GetPeriod();

	int GetPriorityLevel();

	string GetPriorityType();

	bool SetDelay(double delay);

	bool SetMaximumNumberOfActivations(int num);

	bool SetPeriod(double period);

	bool SetPriorityLevel(int level);

	bool SetPriorityType(string type);

	bool SetStartAlarm(bool flag);
}
