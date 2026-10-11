namespace Syncfusion.Core.Licensing;

internal class Base64
{
	private static readonly byte[] encodingTable;

	private static byte[] decodingTable;

	public static byte[] encode(byte[] data)
	{
		int num = data.Length % 3;
		byte[] array = ((num != 0) ? new byte[4 * (data.Length / 3 + 1)] : new byte[4 * data.Length / 3]);
		int num2 = data.Length - num;
		int num3 = 0;
		int num4 = 0;
		while (num3 < num2)
		{
			int num5 = data[num3] & 0xFF;
			int num6 = data[num3 + 1] & 0xFF;
			int num7 = data[num3 + 2] & 0xFF;
			array[num4] = encodingTable[(num5 >>> 2) & 0x3F];
			array[num4 + 1] = encodingTable[((num5 << 4) | (num6 >>> 4)) & 0x3F];
			array[num4 + 2] = encodingTable[((num6 << 2) | (num7 >>> 6)) & 0x3F];
			array[num4 + 3] = encodingTable[num7 & 0x3F];
			num3 += 3;
			num4 += 4;
		}
		switch (num)
		{
		case 1:
		{
			int num8 = data[data.Length - 1] & 0xFF;
			int num10 = (num8 >>> 2) & 0x3F;
			int num11 = (num8 << 4) & 0x3F;
			array[array.Length - 4] = encodingTable[num10];
			array[array.Length - 3] = encodingTable[num11];
			array[array.Length - 2] = 61;
			array[array.Length - 1] = 61;
			break;
		}
		case 2:
		{
			int num8 = data[data.Length - 2] & 0xFF;
			int num9 = data[data.Length - 1] & 0xFF;
			int num10 = (num8 >>> 2) & 0x3F;
			int num11 = ((num8 << 4) | (num9 >>> 4)) & 0x3F;
			int num12 = (num9 << 2) & 0x3F;
			array[array.Length - 4] = encodingTable[num10];
			array[array.Length - 3] = encodingTable[num11];
			array[array.Length - 2] = encodingTable[num12];
			array[array.Length - 1] = 61;
			break;
		}
		}
		return array;
	}

	static Base64()
	{
		encodingTable = new byte[64]
		{
			65, 66, 67, 68, 69, 70, 71, 72, 73, 74,
			75, 76, 77, 78, 79, 80, 81, 82, 83, 84,
			85, 86, 87, 88, 89, 90, 97, 98, 99, 100,
			101, 102, 103, 104, 105, 106, 107, 108, 109, 110,
			111, 112, 113, 114, 115, 116, 117, 118, 119, 120,
			121, 122, 48, 49, 50, 51, 52, 53, 54, 55,
			56, 57, 43, 47
		};
		decodingTable = new byte[128];
		for (int i = 65; i <= 90; i++)
		{
			decodingTable[i] = (byte)(i - 65);
		}
		for (int j = 97; j <= 122; j++)
		{
			decodingTable[j] = (byte)(j - 97 + 26);
		}
		for (int k = 48; k <= 57; k++)
		{
			decodingTable[k] = (byte)(k - 48 + 52);
		}
		decodingTable[43] = 62;
		decodingTable[47] = 63;
	}

	public static byte[] decode(byte[] data)
	{
		byte[] array = ((data[data.Length - 2] == 61) ? new byte[(data.Length / 4 - 1) * 3 + 1] : ((data[data.Length - 1] != 61) ? new byte[data.Length / 4 * 3] : new byte[(data.Length / 4 - 1) * 3 + 2]));
		int num = 0;
		int num2 = 0;
		while (num < data.Length - 4)
		{
			byte b = decodingTable[data[num]];
			byte b2 = decodingTable[data[num + 1]];
			byte b3 = decodingTable[data[num + 2]];
			byte b4 = decodingTable[data[num + 3]];
			array[num2] = (byte)((b << 2) | (b2 >> 4));
			array[num2 + 1] = (byte)((b2 << 4) | (b3 >> 2));
			array[num2 + 2] = (byte)((b3 << 6) | b4);
			num += 4;
			num2 += 3;
		}
		if (data[data.Length - 2] == 61)
		{
			byte b = decodingTable[data[data.Length - 4]];
			byte b2 = decodingTable[data[data.Length - 3]];
			array[array.Length - 1] = (byte)((b << 2) | (b2 >> 4));
		}
		else if (data[data.Length - 1] == 61)
		{
			byte b = decodingTable[data[data.Length - 4]];
			byte b2 = decodingTable[data[data.Length - 3]];
			byte b3 = decodingTable[data[data.Length - 2]];
			array[array.Length - 2] = (byte)((b << 2) | (b2 >> 4));
			array[array.Length - 1] = (byte)((b2 << 4) | (b3 >> 2));
		}
		else
		{
			byte b = decodingTable[data[data.Length - 4]];
			byte b2 = decodingTable[data[data.Length - 3]];
			byte b3 = decodingTable[data[data.Length - 2]];
			byte b4 = decodingTable[data[data.Length - 1]];
			array[array.Length - 3] = (byte)((b << 2) | (b2 >> 4));
			array[array.Length - 2] = (byte)((b2 << 4) | (b3 >> 2));
			array[array.Length - 1] = (byte)((b3 << 6) | b4);
		}
		return array;
	}

	public static byte[] decode(string data)
	{
		byte[] array = ((data[data.Length - 2] == '=') ? new byte[(data.Length / 4 - 1) * 3 + 1] : ((data[data.Length - 1] != '=') ? new byte[data.Length / 4 * 3] : new byte[(data.Length / 4 - 1) * 3 + 2]));
		int num = 0;
		int num2 = 0;
		while (num < data.Length - 4)
		{
			byte b = decodingTable[(uint)data[num]];
			byte b2 = decodingTable[(uint)data[num + 1]];
			byte b3 = decodingTable[(uint)data[num + 2]];
			byte b4 = decodingTable[(uint)data[num + 3]];
			array[num2] = (byte)((b << 2) | (b2 >> 4));
			array[num2 + 1] = (byte)((b2 << 4) | (b3 >> 2));
			array[num2 + 2] = (byte)((b3 << 6) | b4);
			num += 4;
			num2 += 3;
		}
		if (data[data.Length - 2] == '=')
		{
			byte b = decodingTable[(uint)data[data.Length - 4]];
			byte b2 = decodingTable[(uint)data[data.Length - 3]];
			array[array.Length - 1] = (byte)((b << 2) | (b2 >> 4));
		}
		else if (data[data.Length - 1] == '=')
		{
			byte b = decodingTable[(uint)data[data.Length - 4]];
			byte b2 = decodingTable[(uint)data[data.Length - 3]];
			byte b3 = decodingTable[(uint)data[data.Length - 2]];
			array[array.Length - 2] = (byte)((b << 2) | (b2 >> 4));
			array[array.Length - 1] = (byte)((b2 << 4) | (b3 >> 2));
		}
		else
		{
			byte b = decodingTable[(uint)data[data.Length - 4]];
			byte b2 = decodingTable[(uint)data[data.Length - 3]];
			byte b3 = decodingTable[(uint)data[data.Length - 2]];
			byte b4 = decodingTable[(uint)data[data.Length - 1]];
			array[array.Length - 3] = (byte)((b << 2) | (b2 >> 4));
			array[array.Length - 2] = (byte)((b2 << 4) | (b3 >> 2));
			array[array.Length - 1] = (byte)((b3 << 6) | b4);
		}
		return array;
	}
}
