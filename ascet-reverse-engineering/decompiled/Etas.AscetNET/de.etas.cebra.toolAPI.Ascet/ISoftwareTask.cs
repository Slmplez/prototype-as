using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface ISoftwareTask : ITask
{
	int GetMaximumNumberOfActivations();

	int GetPriorityLevel();

	string GetPriorityType();

	bool SetAutostart(bool flag);

	bool SetMaximumNumberOfActivations(int num);

	bool SetPriorityLevel(int level);

	bool SetPriorityType(string type);
}
