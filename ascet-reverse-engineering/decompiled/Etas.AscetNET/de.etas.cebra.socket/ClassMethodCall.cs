using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI;

namespace de.etas.cebra.socket;

[ComVisible(false)]
public sealed class ClassMethodCall : MethodCall
{
	public ClassMethodCall(string className, string methodName, ToolAPI a)
		: base(a)
	{
		msg.catItem(new ClassName(className));
		msg.catItem(methodName);
		msg.catItem(0);
		a.ToolError = null;
	}
}
