using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
public class Asap2Item : Component
{
	public Asap2Item(DataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public Asap2Item(Folder f, Identifiable h)
		: base(f, h)
	{
	}

	public override bool IsAsap2Item()
	{
		return true;
	}
}
