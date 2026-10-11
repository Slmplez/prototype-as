namespace Syncfusion.Licensing.util.encoders;

public class HexTranslator : Translator
{
	private static readonly byte[] hexTable = new byte[16]
	{
		48, 49, 50, 51, 52, 53, 54, 55, 56, 57,
		97, 98, 99, 100, 101, 102
	};

	public int getEncodedBlockSize()
	{
		return 2;
	}

	public int encode(byte[] inBytes, int inOff, int length, byte[] outBytes, int outOff)
	{
		int num = 0;
		int num2 = 0;
		while (num < length)
		{
			outBytes[outOff + num2] = hexTable[(inBytes[inOff] >> 4) & 0xF];
			outBytes[outOff + num2 + 1] = hexTable[inBytes[inOff] & 0xF];
			inOff++;
			num++;
			num2 += 2;
		}
		return length * 2;
	}

	public int getDecodedBlockSize()
	{
		return 1;
	}

	public int decode(byte[] inBytes, int inOff, int length, byte[] outBytes, int outOff)
	{
		int num = length / 2;
		for (int i = 0; i < num; i++)
		{
			byte b = inBytes[inOff + i * 2];
			byte b2 = inBytes[inOff + i * 2 + 1];
			if (b < 97)
			{
				outBytes[outOff] = (byte)(b - 48 << 4);
			}
			else
			{
				outBytes[outOff] = (byte)(b - 97 + 10 << 4);
			}
			if (b2 < 97)
			{
				outBytes[outOff] += (byte)(b2 - 48);
			}
			else
			{
				outBytes[outOff] += (byte)(b2 - 97 + 10);
			}
			outOff++;
		}
		return num;
	}
}
