using System.Runtime.InteropServices;
using de.etas.types;

namespace de.etas.cebra.toolAPI;

[ComVisible(false)]
public class OrderedCollection : Collection
{
	public OrderedCollection()
	{
	}

	public OrderedCollection(ToolAPI sender, Identifiable obj)
		: base(sender, obj)
	{
	}

	public OrderedCollection(Identifiable obj)
		: base(obj)
	{
	}
}
