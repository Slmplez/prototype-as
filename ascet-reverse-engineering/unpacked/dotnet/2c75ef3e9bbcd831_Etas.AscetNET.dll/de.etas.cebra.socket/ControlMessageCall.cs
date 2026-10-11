using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI;

namespace de.etas.cebra.socket;

[ComVisible(false)]
public sealed class ControlMessageCall : MethodCall
{
	public ControlMessageCall(ToolAPI a)
		: base(a)
	{
		msg.catItem(new ControlSequence('Q'));
	}

	public ControlMessageCall(string method, ToolAPI a)
		: this(method, serialize: false, a)
	{
	}

	public ControlMessageCall(string method, bool serialize, ToolAPI a)
		: base(a)
	{
		if (serialize)
		{
			msg.catItem(new ControlSequence('Z'));
		}
		else
		{
			msg.catItem(new ControlSequence('C'));
		}
		msg.catItem(method);
		msg.catItem(0);
	}
}
