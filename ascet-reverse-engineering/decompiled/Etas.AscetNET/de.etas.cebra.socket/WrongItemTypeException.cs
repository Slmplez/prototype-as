using System;
using System.Runtime.InteropServices;

namespace de.etas.cebra.socket;

[Serializable]
[ComVisible(false)]
internal sealed class WrongItemTypeException : Exception
{
	public WrongItemTypeException()
	{
	}

	public WrongItemTypeException(string s)
		: base(s)
	{
	}
}
