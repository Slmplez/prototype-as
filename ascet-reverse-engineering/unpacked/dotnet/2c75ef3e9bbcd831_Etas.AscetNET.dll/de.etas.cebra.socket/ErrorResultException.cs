using System;
using System.Runtime.InteropServices;

namespace de.etas.cebra.socket;

[Serializable]
[ComVisible(false)]
public class ErrorResultException : Exception
{
	private ErrorHandle errHandle;

	public virtual ErrorHandle ErrorMessage => errHandle;

	public ErrorResultException()
	{
	}

	public ErrorResultException(ErrorHandle err)
	{
		errHandle = err;
	}

	public ErrorResultException(string s)
		: base(s)
	{
	}

	public override string ToString()
	{
		return errHandle.ToString();
	}
}
