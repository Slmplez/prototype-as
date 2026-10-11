using System;
using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI;

[Serializable]
[ComVisible(false)]
public class NullHandleException : Exception
{
	public NullHandleException()
	{
	}

	public NullHandleException(string s)
		: base(s)
	{
	}
}
