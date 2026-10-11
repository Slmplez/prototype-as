using System.Runtime.InteropServices;
using de.etas.types;

namespace de.etas.cebra.toolAPI;

[ComVisible(false)]
public class ETASArray : Collection
{
	public ETASArray()
	{
	}

	public ETASArray(ToolAPI sender, Identifiable obj)
		: base(sender, obj)
	{
	}

	public ETASArray(Identifiable obj)
		: base(obj)
	{
	}
}
