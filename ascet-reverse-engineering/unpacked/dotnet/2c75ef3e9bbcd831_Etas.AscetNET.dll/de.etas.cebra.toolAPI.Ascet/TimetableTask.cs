using System.Runtime.InteropServices;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
public class TimetableTask : Task
{
	public TimetableTask(AscetProject prj, Identifiable h)
		: base(prj, h)
	{
	}
}
