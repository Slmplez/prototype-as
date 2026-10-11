using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI;
using de.etas.types;

namespace de.etas.cebra.socket;

[ComVisible(false)]
public sealed class InstanceMethodCall : MethodCall
{
	public InstanceMethodCall(Identifiable o, string methodName, ToolAPI a)
		: base(a)
	{
		msg.catItem(o);
		msg.catItem(methodName);
		msg.catItem(0);
		a.ToolError = null;
	}
}
