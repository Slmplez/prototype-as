using System;
using System.Collections;

namespace de.etas.cebra.toolAPI.Inca;

internal class Misc
{
	public static string asHexString(sbyte[] byteArray)
	{
		if (byteArray == null)
		{
			return "";
		}
		string text = "";
		for (int i = 0; i < byteArray.Length; i++)
		{
			int num = byteArray[i] & 0xFF;
			if (num < 16)
			{
				text += "0";
			}
			text = text + Convert.ToString(num, 16) + " ";
		}
		return text.ToUpper();
	}

	public static string asHexString(short[] shortArray)
	{
		if (shortArray == null)
		{
			return "";
		}
		string text = "";
		for (int i = 0; i < shortArray.Length; i++)
		{
			int num = shortArray[i] & 0xFF;
			if (num < 16)
			{
				text += "0";
			}
			text = text + Convert.ToString(num, 16) + " ";
		}
		return text.ToUpper();
	}

	public static short[] asShort(sbyte[] byteArray)
	{
		if (byteArray == null)
		{
			return null;
		}
		short[] array = new short[byteArray.Length];
		for (int i = 0; i < byteArray.Length; i++)
		{
			array[i] = asShort(byteArray[i]);
		}
		return array;
	}

	public static short asShort(sbyte value_Renamed)
	{
		return (short)(value_Renamed & 0xFF);
	}

	public static sbyte[] asUByte(short[] shortArray)
	{
		if (shortArray == null)
		{
			return null;
		}
		sbyte[] array = new sbyte[shortArray.Length];
		for (int i = 0; i < array.Length; i++)
		{
			array[i] = asUByte(shortArray[i]);
		}
		return array;
	}

	public static sbyte asUByte(short value_Renamed)
	{
		return (sbyte)(value_Renamed & 0xFF);
	}

	public static short[] concatenate(short[] shortArray1, short[] shortArray2)
	{
		if (shortArray1 == null)
		{
			return null;
		}
		if (shortArray2 == null)
		{
			return null;
		}
		short[] array = new short[shortArray1.Length + shortArray2.Length];
		int i;
		for (i = 0; i < shortArray1.Length; i++)
		{
			array[i] = shortArray1[i];
		}
		for (int j = 0; j < shortArray2.Length; j++)
		{
			array[i] = shortArray2[j];
			i++;
		}
		return array;
	}

	public static short[] concatenate(short[] shortArray, short value_Renamed)
	{
		if (shortArray == null)
		{
			return null;
		}
		short[] array = new short[shortArray.Length + 1];
		int i;
		for (i = 0; i < shortArray.Length; i++)
		{
			array[i] = shortArray[i];
		}
		array[i] = value_Renamed;
		return array;
	}

	public static short[] concatenate(short value_Renamed, short[] shortArray)
	{
		if (shortArray == null)
		{
			return null;
		}
		short[] array = new short[1 + shortArray.Length];
		int num = 1;
		array[0] = value_Renamed;
		int num2 = 0;
		while (num < array.Length)
		{
			array[num] = shortArray[num2];
			num++;
			num2++;
		}
		return array;
	}

	public static sbyte getByte0(int value_Renamed)
	{
		return (sbyte)(value_Renamed & 0xFF);
	}

	public static sbyte getByte0(short value_Renamed)
	{
		return (sbyte)(value_Renamed & 0xFF);
	}

	public static sbyte getByte1(int value_Renamed)
	{
		return (sbyte)((value_Renamed >> 8) & 0xFF);
	}

	public static sbyte getByte1(short value_Renamed)
	{
		return (sbyte)((value_Renamed >> 8) & 0xFF);
	}

	public static sbyte getByte2(int value_Renamed)
	{
		return (sbyte)((value_Renamed >> 16) & 0xFF);
	}

	public static sbyte getByte3(int value_Renamed)
	{
		return (sbyte)((value_Renamed >> 24) & 0xFF);
	}

	public static int getInteger(sbyte highByte, sbyte highMiddleByte, sbyte lowMiddleByte, sbyte lowByte)
	{
		return getInteger((short)highByte, (short)highMiddleByte, (short)lowMiddleByte, (short)lowByte);
	}

	public static int getInteger(short highByte, short highMiddleByte, short lowMiddleByte, short lowByte)
	{
		return ((highByte & 0xFF) << 8) | ((highMiddleByte & 0xFF) << 8) | ((lowMiddleByte & 0xFF) << 8) | (lowByte & 0xFF);
	}

	public static short getShort(sbyte highByte, sbyte lowByte)
	{
		return getShort((short)highByte, (short)lowByte);
	}

	public static short getShort(short highByte, short lowByte)
	{
		return (short)(((highByte & 0xFF) << 8) | (lowByte & 0xFF));
	}

	public static sbyte[] getSubArrayOfBytes(sbyte[] byteArray, int start, int end)
	{
		if (byteArray == null)
		{
			return null;
		}
		if (start <= 0 || start > end)
		{
			return null;
		}
		if (end > byteArray.Length)
		{
			return null;
		}
		sbyte[] array = new sbyte[end - start + 1];
		int num = 0;
		int num2 = start;
		while (num2 <= end)
		{
			array[num++] = byteArray[num2++];
		}
		return array;
	}

	public static int[] getSubArrayOfInts(int[] intArray, int start, int end)
	{
		if (intArray == null)
		{
			return null;
		}
		if (start <= 0 || start > end)
		{
			return null;
		}
		if (end > intArray.Length)
		{
			return null;
		}
		int[] array = new int[end - start + 1];
		int num = 0;
		int num2 = start;
		while (num2 < end)
		{
			array[num++] = intArray[num2++];
		}
		return array;
	}

	public static short[] getSubArrayOfShorts(short[] shortArray, int start, int end)
	{
		if (shortArray == null)
		{
			return null;
		}
		if (start <= 0 || start > end)
		{
			return null;
		}
		if (end > shortArray.Length)
		{
			return null;
		}
		short[] array = new short[end - start + 1];
		int num = 0;
		int num2 = start;
		while (num2 < end)
		{
			array[num++] = shortArray[num2++];
		}
		return array;
	}

	public static short[] hexStringAsShortArray(string string_Renamed)
	{
		if (string_Renamed == null)
		{
			return null;
		}
		ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
		int length = string_Renamed.Length;
		int num = -1;
		for (int i = 0; i < length; i++)
		{
			if (!char.IsWhiteSpace(string_Renamed[i]) && i != length - 1)
			{
				continue;
			}
			if (i - num > 1)
			{
				if (i == length - 1)
				{
					i++;
				}
				arrayList.Add(string_Renamed.Substring(num + 1, i - (num + 1)));
			}
			num = i;
		}
		short[] array = new short[arrayList.Count];
		for (int j = 0; j < arrayList.Count; j++)
		{
			try
			{
				array[j] = (short)Convert.ToInt32((string)arrayList[j], 16);
			}
			catch (FormatException)
			{
				Console.Out.WriteLine(string.Concat("Can't convert [", arrayList[j], "] to integer"));
				return null;
			}
		}
		return array;
	}

	public static short[] intAsArray(int value_Renamed)
	{
		return new short[4]
		{
			getByte3(value_Renamed),
			getByte2(value_Renamed),
			getByte1(value_Renamed),
			getByte0(value_Renamed)
		};
	}

	public static short[] shortAsArray(int value_Renamed)
	{
		return new short[2]
		{
			getByte1(value_Renamed),
			getByte0(value_Renamed)
		};
	}

	public static short[] threeByteAddress(int value_Renamed)
	{
		return new short[3]
		{
			getByte2(value_Renamed),
			getByte1(value_Renamed),
			getByte0(value_Renamed)
		};
	}
}
