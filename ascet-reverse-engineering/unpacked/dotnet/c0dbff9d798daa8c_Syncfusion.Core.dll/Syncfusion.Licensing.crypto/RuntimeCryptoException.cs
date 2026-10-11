using System;

namespace Syncfusion.Licensing.crypto;

public class RuntimeCryptoException : Exception
{
	public RuntimeCryptoException()
	{
	}

	public RuntimeCryptoException(string message)
		: base(message)
	{
	}
}
