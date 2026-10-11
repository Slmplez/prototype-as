using System;
using System.Runtime.InteropServices;

namespace de.etas.cebra.socket;

[Serializable]
[ComVisible(false)]
public sealed class WrongResultTypeException : Exception
{
	public WrongResultTypeException()
	{
	}

	public WrongResultTypeException(string s)
		: base(s)
	{
	}
}
