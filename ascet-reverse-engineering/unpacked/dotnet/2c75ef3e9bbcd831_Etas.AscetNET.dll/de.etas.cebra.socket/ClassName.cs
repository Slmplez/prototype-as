using System.Runtime.InteropServices;

namespace de.etas.cebra.socket;

[ComVisible(false)]
public sealed class ClassName
{
	internal string name;

	internal ClassName(string s)
	{
		name = s;
	}
}
