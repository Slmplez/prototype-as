using System;

namespace Syncfusion.Licensing.crypto;

public class CryptoException : Exception
{
	public CryptoException()
	{
	}

	public CryptoException(string message)
		: base(message)
	{
	}
}
