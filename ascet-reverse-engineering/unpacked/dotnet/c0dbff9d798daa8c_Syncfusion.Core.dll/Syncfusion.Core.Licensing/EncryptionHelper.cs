using System.IO;

namespace Syncfusion.Core.Licensing;

internal class EncryptionHelper
{
	private byte delta;

	internal EncryptionHelper(byte delta)
	{
		this.delta = delta;
	}

	internal Stream Decrypt(Stream source)
	{
		MemoryStream memoryStream = new MemoryStream();
		int num;
		while ((num = source.ReadByte()) != -1)
		{
			byte b = (byte)num;
			b -= delta;
			memoryStream.WriteByte(b);
		}
		memoryStream.Position = 0L;
		return memoryStream;
	}
}
