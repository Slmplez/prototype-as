using System;
using System.Runtime.InteropServices;

namespace de.etas.cebra.socket;

[Serializable]
[ComVisible(false)]
public sealed class NullResultException : Exception
{
	public NullResultException()
	{
	}

	public NullResultException(string s)
		: base(s)
	{
	}
}
