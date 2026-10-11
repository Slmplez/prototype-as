namespace Syncfusion.Core.Licensing;

internal class Hex
{
	private static HexTranslator encoder = new HexTranslator();

	private static readonly byte[] hexTable = new byte[16]
	{
		48, 49, 50, 51, 52, 53, 54, 55, 56, 57,
		97, 98, 99, 100, 101, 102
	};

	public static byte[] encode(byte[] array)
	{
		return encode(array, 0, array.Length);
	}

	public static byte[] encode(byte[] array, int off, int length)
	{
		byte[] array2 = new byte[length * 2];
		encoder.encode(array, off, length, array2, 0);
		return array2;
	}

	public static byte[] decode(string data)
	{
		byte[] array = new byte[data.Length / 2];
		string text = data.ToLower();
		for (int i = 0; i < text.Length; i += 2)
		{
			char c = text[i];
			char c2 = text[i + 1];
			int num = i / 2;
			if (c < 'a')
			{
				array[num] = (byte)(c - 48 << 4);
			}
			else
			{
				array[num] = (byte)(c - 97 + 10 << 4);
			}
			if (c2 < 'a')
			{
				array[num] += (byte)(c2 - 48);
			}
			else
			{
				array[num] += (byte)(c2 - 97 + 10);
			}
		}
		return array;
	}

	public static byte[] decode(byte[] array)
	{
		byte[] array2 = new byte[array.Length / 2];
		encoder.decode(array, 0, array.Length, array2, 0);
		return array2;
	}
}
