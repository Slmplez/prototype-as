using System.Runtime.InteropServices;
using de.etas.types;

namespace de.etas.cebra.toolAPI;

[ComVisible(false)]
public class Collection : SmalltalkToolAPI
{
	public Collection()
	{
	}

	public Collection(ToolAPI sender, Identifiable obj)
		: base(sender.Sender)
	{
		setIdentifier(obj);
	}

	public Collection(Identifiable obj)
	{
		setIdentifier(obj);
	}
}
