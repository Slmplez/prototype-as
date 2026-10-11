namespace Syncfusion.Licensing.crypto;

public class DataLengthException : RuntimeCryptoException
{
	public DataLengthException()
	{
	}

	public DataLengthException(string message)
		: base(message)
	{
	}
}
