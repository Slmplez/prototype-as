using System;
using System.Collections;
using System.Runtime.InteropServices;
using System.Text;
using de.etas.multitasking;
using de.etas.types;

namespace de.etas.cebra.socket;

[ComVisible(false)]
public sealed class CebraMessage : Identifiable
{
	private ArrayList formatString;

	private ArrayList formatLength;

	internal ArrayList message;

	internal long messageID;

	private bool registered;

	private char lastItemType;

	private int lastItemCount;

	private int lengthHeader;

	private int lengthBody;

	private int numOfItems;

	private int currentItem;

	private int currentAnzahl;

	private int currentMessage;

	private int elementAnzahl;

	private char elementType;

	private Semaphore block_Renamed_Field;

	internal bool ControlMessage
	{
		get
		{
			ItemHandle itemHandle = readItem(0);
			if (itemHandle == null)
			{
				return false;
			}
			return itemHandle.type == 'X';
		}
	}

	internal bool EmptyMessage
	{
		get
		{
			ItemHandle itemHandle = readItem(0);
			if (itemHandle == null)
			{
				return true;
			}
			return false;
		}
	}

	internal bool ErrorMessage
	{
		get
		{
			ItemHandle itemHandle = readItem(0);
			if (itemHandle == null)
			{
				return false;
			}
			return itemHandle.type == 'E';
		}
	}

	internal bool HandshakeMessage => messageID != 0;

	public bool Registered
	{
		get
		{
			return registered;
		}
		set
		{
			registered = value;
		}
	}

	internal CebraMessage()
	{
		block_Renamed_Field = new Semaphore(v: false);
		formatString = new ArrayList();
		formatLength = new ArrayList();
		message = new ArrayList();
		lengthHeader = 0;
		lengthBody = 0;
		numOfItems = 0;
		messageID = 0L;
		registered = false;
		currentItem = 0;
		currentMessage = 0;
		currentAnzahl = 0;
		lastItemCount = 0;
		lastItemType = '\0';
	}

	internal void aliveMessage()
	{
		catItem(new ControlSequence('A'));
		catItem("alive");
		catItem(0);
	}

	internal CebraMessage answer()
	{
		CebraMessage cebraMessage = new CebraMessage();
		cebraMessage.setIdentifier(this);
		return cebraMessage;
	}

	private void appendHeader(char c, int l)
	{
		if (lastItemType == c)
		{
			lastItemCount++;
		}
		else
		{
			flush();
			lastItemType = c;
			lastItemCount++;
		}
		lengthBody += l;
	}

	internal sbyte[] asByteStream()
	{
		flush();
		int num = 5 * lengthHeader + 11;
		int num2 = 5 * lengthHeader + lengthBody + 16;
		int num3 = formatString.Count;
		int num4 = formatLength.Count;
		int num5 = message.Count;
		sbyte[] array = new sbyte[16 + 5 * lengthHeader + lengthBody];
		convertLongToBytes(messageID, array, 0);
		convertIntToBytes(lengthHeader, array, 8);
		convertIntToBytes(lengthBody, array, 12);
		while (num3 > 0)
		{
			char c = (char)formatString[--num3];
			int num6 = (int)formatLength[--num4];
			int num7 = num6;
			array[num] = (sbyte)c;
			convertIntToBytes(num7, array, num + 1);
			switch (char.ToUpper(c))
			{
			case 'A':
			{
				for (int num9 = 0; num9 < num7; num9++)
				{
					num2--;
					char c2 = (char)message[--num5];
					array[num2] = (sbyte)c2;
				}
				break;
			}
			case 'Z':
			{
				num2 -= num7;
				string sourceString = (string)message[--num5];
				sbyte[] array5 = SupportClass.ToSByteArray(SupportClass.ToByteArray(sourceString));
				for (int num16 = 0; num16 < array5.Length; num16++)
				{
					array[num2 + num16] = array5[num16];
				}
				break;
			}
			case 'X':
			{
				num2--;
				ControlSequence controlSequence = (ControlSequence)message[--num5];
				array[num2] = (sbyte)controlSequence.controlCharacter;
				break;
			}
			case 'B':
			{
				for (int l = 0; l < num7; l++)
				{
					num2--;
					sbyte b = (sbyte)message[--num5];
					array[num2] = b;
				}
				break;
			}
			case 'Y':
			{
				sbyte[] array4 = (sbyte[])message[--num5];
				for (int num15 = num7 - 1; num15 >= 0; num15--)
				{
					num2--;
					array[num2] = array4[num15];
				}
				break;
			}
			case 'T':
			{
				for (int num11 = 0; num11 < num7; num11++)
				{
					num2--;
					if ((bool)message[--num5])
					{
						array[num2] = 1;
					}
					else
					{
						array[num2] = 0;
					}
				}
				break;
			}
			case 'C':
			{
				num2 -= num7;
				string name = ((ClassName)message[--num5]).name;
				sbyte[] array2 = SupportClass.ToSByteArray(SupportClass.ToByteArray(name));
				for (int n = 0; n < array2.Length; n++)
				{
					array[num2 + n] = array2[n];
				}
				break;
			}
			case 'D':
			{
				for (int j = 0; j < num7; j++)
				{
					num2 -= 8;
					double d = (double)message[--num5];
					convertDoubleToBytes(d, array, num2);
				}
				break;
			}
			case 'E':
			{
				ErrorHandle errorHandle = (ErrorHandle)message[--num5];
				string errmsg = errorHandle.errmsg;
				num2 -= num7;
				sbyte[] array3 = SupportClass.ToSByteArray(SupportClass.ToByteArray(errmsg));
				for (int num14 = 0; num14 < array3.Length; num14++)
				{
					array[num2 + num14] = array3[num14];
				}
				num2 -= 4;
				convertIntToBytes(errorHandle.errcode, array, num2);
				break;
			}
			case 'F':
			{
				for (int num12 = 0; num12 < num7; num12++)
				{
					num2 -= 4;
					float num13 = (float)message[--num5];
					convertFloatToBytes(num13, array, num2);
				}
				break;
			}
			case 'I':
			{
				for (int num10 = 0; num10 < num7; num10++)
				{
					num2 -= 4;
					int v3 = (int)message[--num5];
					convertIntToBytes(v3, array, num2);
				}
				break;
			}
			case 'L':
			{
				for (int num8 = 0; num8 < num7; num8++)
				{
					num2 -= 8;
					long v2 = (long)message[--num5];
					convertLongToBytes(v2, array, num2);
				}
				break;
			}
			case 'S':
			{
				for (int m = 0; m < num7; m++)
				{
					num2 -= 2;
					short v = (short)message[--num5];
					convertShortToBytes(v, array, num2);
				}
				break;
			}
			case 'O':
			{
				for (int k = 0; k < num7; k++)
				{
					num2 -= 8;
					Identifiable identifiable2 = (Identifiable)message[--num5];
					convertLongToBytes(identifiable2.getIdentifier(), array, num2);
				}
				break;
			}
			case 'R':
			{
				for (int i = 0; i < num7; i++)
				{
					num2 -= 8;
					Identifiable identifiable = (Identifiable)message[--num5];
					convertLongToBytes(identifiable.getIdentifier(), array, num2);
				}
				break;
			}
			}
			num -= 5;
		}
		return array;
	}

	public void block()
	{
		block_Renamed_Field.Wait();
	}

	internal void buildBody(sbyte[] msg)
	{
		int num = 0;
		for (int i = 0; i < lengthHeader; i++)
		{
			char c = (char)formatString[i];
			char c2 = c;
			int num2 = (int)formatLength[i];
			int num3 = num2;
			switch (c2)
			{
			case 'A':
			{
				string text2 = new string(SupportClass.ToCharArray(msg), num, num3);
				for (int j = 0; j < num3; j++)
				{
					char c3 = text2[j];
					message.Add(c3);
				}
				num += num3;
				break;
			}
			case 'Z':
			{
				string value3 = new string(SupportClass.ToCharArray(msg), num, num3);
				message.Add(value3);
				num += num3;
				break;
			}
			case 'X':
			{
				string text = new string(SupportClass.ToCharArray(msg), num, 1);
				ControlSequence value2 = new ControlSequence(text[0]);
				message.Add(value2);
				num++;
				break;
			}
			case 'C':
			{
				ClassName value = new ClassName(new string(SupportClass.ToCharArray(msg), num, num3));
				message.Add(value);
				num += num3;
				break;
			}
			case 'E':
			{
				int c4 = convertBytesToInt(msg, num);
				byte[] array2 = new byte[num3];
				Buffer.BlockCopy(msg, num + 4, array2, 0, num3);
				ErrorHandle value4 = new ErrorHandle(c4, new string(SupportClass.ToCharArray(array2), 0, num3));
				message.Add(value4);
				num += 4 + num3;
				break;
			}
			case 'B':
			{
				for (int j = 0; j < num3; j++)
				{
					sbyte b = msg[num];
					num++;
					message.Add(b);
				}
				break;
			}
			case 'Y':
			{
				sbyte[] array = new sbyte[num3];
				for (int j = 0; j < num3; j++)
				{
					array[j] = msg[num];
					num++;
				}
				message.Add(SupportClass.ToByteArray(array));
				break;
			}
			case 'T':
			{
				for (int j = 0; j < num3; j++)
				{
					bool flag = msg[num] > 0;
					num++;
					message.Add(flag);
				}
				break;
			}
			case 'D':
			{
				for (int j = 0; j < num3; j++)
				{
					double num8 = convertBytesToDouble(msg, num);
					message.Add(num8);
					num += 8;
				}
				break;
			}
			case 'F':
			{
				for (int j = 0; j < num3; j++)
				{
					float num7 = (float)convertBytesToFloat(msg, num);
					message.Add(num7);
					num += 4;
				}
				break;
			}
			case 'I':
			{
				for (int j = 0; j < num3; j++)
				{
					int num6 = convertBytesToInt(msg, num);
					message.Add(num6);
					num += 4;
				}
				break;
			}
			case 'L':
			{
				for (int j = 0; j < num3; j++)
				{
					long num5 = convertBytesToLong(msg, num);
					message.Add(num5);
					num += 8;
				}
				break;
			}
			case 'S':
			{
				for (int j = 0; j < num3; j++)
				{
					short num4 = convertBytesToShort(msg, num);
					message.Add(num4);
					num += 2;
				}
				break;
			}
			case 'O':
			{
				for (int j = 0; j < num3; j++)
				{
					Identifier identifier = new Identifier();
					identifier.setIdentifier(convertBytesToLong(msg, num));
					object fromObjectTable = ObjectTable.getFromObjectTable(identifier);
					message.Add(fromObjectTable);
					num += 8;
				}
				break;
			}
			case 'R':
			{
				for (int j = 0; j < num3; j++)
				{
					RemoteHandle remoteHandle = new RemoteHandle();
					remoteHandle.setIdentifier(convertBytesToLong(msg, num));
					remoteHandle.Registered = true;
					message.Add(remoteHandle);
					num += 8;
				}
				break;
			}
			}
		}
	}

	internal void buildHeader(char c, int i)
	{
		formatString.Add(c);
		formatLength.Add(i);
		lengthHeader++;
		switch (c)
		{
		case 'C':
		case 'X':
		case 'Y':
		case 'Z':
			numOfItems++;
			lengthBody += i;
			break;
		case 'A':
		case 'B':
		case 'T':
			numOfItems += i;
			lengthBody += i;
			break;
		case 'E':
			numOfItems++;
			lengthBody += 4 + i;
			break;
		case 'F':
		case 'I':
			numOfItems += i;
			lengthBody += 4 * i;
			break;
		case 'D':
		case 'L':
		case 'O':
		case 'R':
			numOfItems += i;
			lengthBody += 8 * i;
			break;
		case 'S':
			numOfItems += i;
			lengthBody += 2 * i;
			break;
		case 'V':
			numOfItems += i;
			break;
		case 'G':
		case 'H':
		case 'J':
		case 'K':
		case 'M':
		case 'N':
		case 'P':
		case 'Q':
		case 'U':
		case 'W':
			break;
		}
	}

	internal void catItem()
	{
		appendHeader('V', 0);
	}

	internal void catItem(sbyte[] i)
	{
		flush();
		numOfItems++;
		lengthHeader++;
		lengthBody += i.Length;
		formatString.Add('Y');
		formatLength.Add(i.Length);
		message.Add(SupportClass.ToByteArray(i));
	}

	internal void catItem(sbyte i)
	{
		appendHeader('B', 1);
		message.Add(i);
	}

	internal void catItem(char i)
	{
		appendHeader('C', 1);
		message.Add(i);
	}

	internal void catItem(double i)
	{
		if (i == double.PositiveInfinity)
		{
			catItem(RemoteHandle.POSITIVE_INFINITY);
			return;
		}
		if (i == double.NegativeInfinity)
		{
			catItem(RemoteHandle.NEGATIVE_INFINITY);
			return;
		}
		appendHeader('D', 8);
		message.Add(i);
	}

	internal void catItem(float i)
	{
		if (i == float.PositiveInfinity)
		{
			catItem(float.MaxValue);
			return;
		}
		if (i == float.NegativeInfinity)
		{
			catItem(float.MinValue);
			return;
		}
		appendHeader('F', 4);
		message.Add(i);
	}

	internal void catItem(int i)
	{
		appendHeader('I', 4);
		message.Add(i);
	}

	internal void catItem(long i)
	{
		appendHeader('L', 8);
		message.Add(i);
	}

	internal void catItem(ClassName i)
	{
		flush();
		numOfItems++;
		lengthHeader++;
		lengthBody += i.name.Length;
		formatString.Add('C');
		formatLength.Add(i.name.Length);
		message.Add(i);
	}

	internal void catItem(ControlSequence i)
	{
		appendHeader('X', 1);
		message.Add(i);
	}

	internal void catItem(ErrorHandle i)
	{
		flush();
		numOfItems++;
		lengthBody += i.errmsg.Length + 4;
		lengthHeader++;
		formatString.Add('E');
		formatLength.Add(i.errmsg.Length);
		message.Add(i);
	}

	internal void catItem(ItemHandle item)
	{
		if (item == null)
		{
			catObject(null);
			return;
		}
		switch (item.type)
		{
		case 'A':
			catItem((char)item.oHandle);
			break;
		case 'B':
			catItem((sbyte)item.oHandle);
			break;
		case 'C':
			catItem((ClassName)item.oHandle);
			break;
		case 'D':
			catItem((double)item.oHandle);
			break;
		case 'E':
			catItem((ErrorHandle)item.oHandle);
			break;
		case 'F':
			catItem((float)item.oHandle);
			break;
		case 'I':
			catItem((int)item.oHandle);
			break;
		case 'L':
			catItem((long)item.oHandle);
			break;
		case 'O':
		case 'R':
			catItem((Identifiable)item.oHandle);
			break;
		case 'S':
			catItem((short)(int)item.oHandle);
			break;
		case 'T':
			catItem((bool)item.oHandle);
			break;
		case 'V':
			catItem();
			break;
		case 'X':
			catItem((ControlSequence)item.oHandle);
			break;
		case 'Z':
			catItem((string)item.oHandle);
			break;
		case 'G':
		case 'H':
		case 'J':
		case 'K':
		case 'M':
		case 'N':
		case 'P':
		case 'Q':
		case 'U':
		case 'W':
		case 'Y':
			break;
		}
	}

	internal void catItem(Identifiable i)
	{
		Identifiable value;
		char c;
		if (i == null)
		{
			value = RemoteHandle.Null;
			c = 'O';
		}
		else if (i is RemoteHandle)
		{
			value = i;
			c = 'O';
		}
		else
		{
			value = ObjectTable.addToObjectTable(i);
			c = 'R';
		}
		appendHeader(c, 8);
		message.Add(value);
	}

	internal void catItem(Type c)
	{
		catItem(new ClassName(c.FullName));
	}

	internal void catItem(object i)
	{
		catItem(ObjectTable.addToObjectTable(i));
	}

	internal void catItem(string i)
	{
		if (i == null)
		{
			catItem();
			return;
		}
		int num = SupportClass.ToByteArray(i).Length;
		flush();
		numOfItems++;
		lengthHeader++;
		lengthBody += num;
		formatString.Add('Z');
		formatLength.Add(num);
		message.Add(i);
	}

	internal void catItem(short i)
	{
		appendHeader('S', 2);
		message.Add(i);
	}

	internal void catItem(bool i)
	{
		appendHeader('T', 1);
		message.Add(i);
	}

	internal void catObject(object i)
	{
		catItem(i);
	}

	internal void clear()
	{
		formatString = new ArrayList();
		formatLength = new ArrayList();
		message = new ArrayList();
		lengthHeader = 0;
		lengthBody = 0;
		numOfItems = 0;
		currentItem = 0;
		currentMessage = 0;
		currentAnzahl = 0;
		lastItemCount = 0;
		lastItemType = '\0';
	}

	private static double convertBytesToDouble(sbyte[] b, int start)
	{
		byte[] array = new byte[8];
		Buffer.BlockCopy(b, start, array, 0, 8);
		return BitConverter.ToDouble(array, 0);
	}

	private static double convertBytesToFloat(sbyte[] b, int start)
	{
		byte[] array = new byte[4];
		Buffer.BlockCopy(b, start, array, 0, 4);
		float value = BitConverter.ToSingle(array, 0);
		return Convert.ToDouble(value);
	}

	internal static int convertBytesToInt(sbyte[] b, int start)
	{
		int num = 0;
		int num2 = start + 3;
		for (int num3 = 3; num3 > 0; num3--)
		{
			num |= b[num2] & 0xFF;
			num <<= 8;
			num2--;
		}
		return num | (b[num2] & 0xFF);
	}

	internal static long convertBytesToLong(sbyte[] b, int start)
	{
		long num = 0L;
		int num2 = start + 7;
		for (int num3 = 7; num3 > 0; num3--)
		{
			num |= b[num2] & 0xFF;
			num <<= 8;
			num2--;
		}
		return num | (b[num2] & 0xFF);
	}

	private static short convertBytesToShort(sbyte[] b, int start)
	{
		short num = 0;
		num |= b[start + 1];
		num <<= 8;
		return (short)(num | (short)(b[start] & 0xFF));
	}

	private static void convertDoubleToBytes(double d, sbyte[] ergeb, int start)
	{
		long v = BitConverter.DoubleToInt64Bits(d);
		convertLongToBytes(v, ergeb, start);
	}

	private static void convertFloatToBytes(float f, sbyte[] ergeb, int start)
	{
		byte[] bytes = BitConverter.GetBytes(f);
		Buffer.BlockCopy(bytes, 0, ergeb, start, 4);
	}

	private static void convertIntToBytes(int v, sbyte[] ergeb, int start)
	{
		int num = v;
		int num2 = start;
		for (int i = 0; i < 4; i++)
		{
			ergeb[num2] = (sbyte)(num & 0xFF);
			num >>= 8;
			num2++;
		}
	}

	private static void convertLongToBytes(long v, sbyte[] ergeb, int start)
	{
		long num = v;
		int num2 = start;
		for (int i = 0; i < 8; i++)
		{
			ergeb[num2] = (sbyte)(num & 0xFF);
			num = SupportClass.URShift(num, 8);
			num2++;
		}
	}

	private static void convertShortToBytes(short v, sbyte[] ergeb, int start)
	{
		short num = v;
		ergeb[start] = (sbyte)num;
		num >>= 8;
		ergeb[start + 1] = (sbyte)num;
	}

	internal void copy(CebraMessage msg)
	{
		formatString = msg.formatString;
		formatLength = msg.formatLength;
		message = msg.message;
		messageID = msg.messageID;
		lengthHeader = msg.lengthHeader;
		numOfItems = msg.numOfItems;
		lengthBody = msg.lengthBody;
	}

	private void flush()
	{
		if (lastItemCount != 0)
		{
			formatString.Add(lastItemType);
			formatLength.Add(lastItemCount);
			lengthHeader++;
			numOfItems += lastItemCount;
			lastItemCount = 0;
			lastItemType = '\0';
		}
	}

	public long getIdentifier()
	{
		return messageID;
	}

	internal bool isQuitMessage()
	{
		if (nullHandle())
		{
			return true;
		}
		ItemHandle itemHandle = readItem(0);
		if (itemHandle == null)
		{
			return false;
		}
		if (itemHandle.type != 'X')
		{
			return false;
		}
		itemHandle = readItem(1);
		if (itemHandle == null)
		{
			return false;
		}
		return ((string)itemHandle.oHandle).Equals("quit");
	}

	public bool nullHandle()
	{
		return messageID == 0;
	}

	internal static CebraMessage quitMessage()
	{
		CebraMessage cebraMessage = new CebraMessage();
		cebraMessage.catItem(new ControlSequence('Q'));
		cebraMessage.catItem("quit");
		cebraMessage.catItem(0);
		return cebraMessage;
	}

	internal bool[] readBooleanAll()
	{
		if (lengthHeader == 0)
		{
			return new bool[0];
		}
		if ((char)formatString[0] != 'T')
		{
			throw new WrongResultTypeException();
		}
		int num = (int)formatLength[0];
		bool[] array = new bool[num];
		for (int i = 0; i < num; i++)
		{
			array[i] = (bool)message[i];
		}
		return array;
	}

	internal sbyte[] readByteAll()
	{
		if (lengthHeader == 0)
		{
			return new sbyte[0];
		}
		if ((char)formatString[0] == 'Y')
		{
			throw new WrongResultTypeException();
		}
		if ((char)formatString[0] != 'B')
		{
			throw new WrongResultTypeException();
		}
		int num = (int)formatLength[0];
		sbyte[] array = new sbyte[num];
		for (int i = 0; i < num; i++)
		{
			array[i] = Convert.ToSByte((ValueType)message[i]);
		}
		return array;
	}

	internal char[] readCharacterAll()
	{
		if (lengthHeader == 0)
		{
			return new char[0];
		}
		if ((char)formatString[0] != 'A')
		{
			throw new WrongResultTypeException();
		}
		int num = (int)formatLength[0];
		char[] array = new char[num];
		for (int i = 0; i < num; i++)
		{
			array[i] = (char)message[i];
		}
		return array;
	}

	internal double[] readDoubleAll()
	{
		try
		{
			if (lengthHeader == 0)
			{
				return new double[0];
			}
			int num = 0;
			int num2 = 0;
			for (num = 0; num < formatString.Count; num++)
			{
				char c = (char)formatString[0];
				if (c != 'D' && c != 'F' && c != 'L' && c != 'I' && c != 'S' && c != 'B' && c != 'O')
				{
					throw new WrongResultTypeException();
				}
				num2 += (int)formatLength[num];
			}
			double[] array = new double[num2];
			for (int i = 0; i < num2; i++)
			{
				array[i] = Convert.ToDouble((ValueType)message[i]);
			}
			return array;
		}
		catch (Exception)
		{
			throw new WrongResultTypeException();
		}
	}

	internal float[] readFloatAll()
	{
		try
		{
			if (lengthHeader == 0)
			{
				return new float[0];
			}
			int num = (int)formatLength[0];
			float[] array = new float[num];
			for (int i = 0; i < num; i++)
			{
				array[i] = Convert.ToSingle((ValueType)message[i]);
			}
			return array;
		}
		catch (Exception)
		{
			throw new WrongResultTypeException();
		}
	}

	internal int[] readIntegerAll()
	{
		if (lengthHeader == 0)
		{
			return new int[0];
		}
		int num = 0;
		int num2 = 0;
		for (num = 0; num < formatString.Count; num++)
		{
			char c = (char)formatString[0];
			if (c != 'I' && c != 'S' && c != 'B')
			{
				throw new WrongResultTypeException();
			}
			num2 += (int)formatLength[num];
		}
		int[] array = new int[num2];
		for (int i = 0; i < num2; i++)
		{
			array[i] = Convert.ToInt32((ValueType)message[i]);
		}
		return array;
	}

	internal ItemHandle readItem(int position)
	{
		if (position < 0)
		{
			return null;
		}
		if (position >= numOfItems)
		{
			return null;
		}
		ItemHandle itemHandle = new ItemHandle();
		int num = 0;
		int num2 = 0;
		int num3 = 0;
		char c = 'V';
		int num4 = 0;
		while (num <= position)
		{
			c = (char)formatString[num2];
			num4 = (int)formatLength[num2];
			num2++;
			switch (c)
			{
			case 'C':
			case 'E':
			case 'Y':
			case 'Z':
				num++;
				continue;
			case 'V':
				num3 += num4;
				break;
			case 'A':
			case 'B':
			case 'D':
			case 'F':
			case 'I':
			case 'L':
			case 'O':
			case 'R':
			case 'S':
			case 'T':
			case 'X':
				break;
			default:
				continue;
			}
			num += num4;
		}
		if (c == 'V')
		{
			itemHandle.oHandle = null;
			itemHandle.type = 'V';
		}
		else
		{
			itemHandle.oHandle = message[position - num3];
			itemHandle.type = c;
		}
		return itemHandle;
	}

	internal object[] readLocalObjectsAll()
	{
		if (lengthHeader == 0)
		{
			return new object[0];
		}
		if ((char)formatString[0] != 'O')
		{
			throw new WrongResultTypeException();
		}
		int num = (int)formatLength[0];
		object[] array = new object[num];
		for (int i = 0; i < num; i++)
		{
			array[i] = message[i];
		}
		return array;
	}

	internal long[] readLongAll()
	{
		if (lengthHeader == 0)
		{
			return new long[0];
		}
		int num = 0;
		int num2 = 0;
		for (num = 0; num < formatString.Count; num++)
		{
			char c = (char)formatString[0];
			if (c != 'L' && c != 'I' && c != 'S' && c != 'B')
			{
				throw new WrongResultTypeException();
			}
			num2 += (int)formatLength[num];
		}
		long[] array = new long[num2];
		for (int i = 0; i < num2; i++)
		{
			array[i] = Convert.ToInt64((ValueType)message[i]);
		}
		return array;
	}

	internal ItemHandle readNext()
	{
		if (currentItem >= lengthHeader)
		{
			return null;
		}
		if (currentItem < 0)
		{
			return null;
		}
		ItemHandle itemHandle = new ItemHandle();
		itemHandle.type = elementType;
		switch (elementType)
		{
		case 'C':
		case 'E':
		case 'M':
		case 'X':
		case 'Y':
		case 'Z':
			itemHandle.oHandle = message[currentMessage];
			currentMessage++;
			currentItem++;
			currentAnzahl = 0;
			break;
		case 'A':
		case 'B':
		case 'D':
		case 'F':
		case 'I':
		case 'L':
		case 'O':
		case 'R':
		case 'S':
		case 'T':
			itemHandle.oHandle = message[currentMessage];
			currentMessage++;
			currentAnzahl++;
			if (currentAnzahl == elementAnzahl)
			{
				currentItem++;
				currentAnzahl = 0;
			}
			break;
		case 'V':
			itemHandle.oHandle = null;
			currentAnzahl++;
			if (currentAnzahl == elementAnzahl)
			{
				currentItem++;
				currentAnzahl = 0;
			}
			break;
		}
		if (currentItem < lengthHeader)
		{
			elementAnzahl = (int)formatLength[currentItem];
			elementType = (char)formatString[currentItem];
		}
		return itemHandle;
	}

	internal object[] readObjectAll()
	{
		object[] array = new object[numOfItems];
		for (int i = 0; i < numOfItems; i++)
		{
			array[i] = message[i];
		}
		return array;
	}

	internal Identifiable[] readRemoteObjectsAll()
	{
		if (lengthHeader == 0)
		{
			return new Identifiable[0];
		}
		if ((char)formatString[0] != 'R')
		{
			throw new WrongResultTypeException();
		}
		int num = (int)formatLength[0];
		Identifiable[] array = new Identifiable[num];
		for (int i = 0; i < num; i++)
		{
			array[i] = (Identifiable)message[i];
		}
		return array;
	}

	internal short[] readShortAll()
	{
		if (lengthHeader == 0)
		{
			return new short[0];
		}
		int num = 0;
		int num2 = 0;
		for (num = 0; num < formatString.Count; num++)
		{
			char c = (char)formatString[0];
			if (c != 'S' && c != 'B')
			{
				throw new WrongResultTypeException();
			}
			num2 += (int)formatLength[num];
		}
		short[] array = new short[num2];
		for (int i = 0; i < num2; i++)
		{
			array[i] = Convert.ToInt16((ValueType)message[i]);
		}
		return array;
	}

	internal string[] readStringsAll()
	{
		if (lengthHeader == 0)
		{
			return new string[0];
		}
		int num = 0;
		ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
		reset();
		while (readNext() != null)
		{
			if ((char)formatString[num] != 'Z')
			{
				throw new WrongResultTypeException();
			}
			arrayList.Add(message[num]);
			num++;
		}
		string[] array = new string[arrayList.Count];
		for (num = 0; num < arrayList.Count; num++)
		{
			array[num] = (string)arrayList[num];
		}
		return array;
	}

	public void release()
	{
		block_Renamed_Field.Put();
	}

	internal bool reset()
	{
		currentItem = 0;
		currentMessage = 0;
		currentAnzahl = 0;
		if (formatLength.Count != 0)
		{
			elementAnzahl = (int)formatLength[currentItem];
			elementType = (char)formatString[currentItem];
			return true;
		}
		return false;
	}

	public void setIdentifier(long id)
	{
		messageID = id;
	}

	public void setIdentifier(Identifiable id)
	{
		if (id == null)
		{
			messageID = 0L;
		}
		messageID = id.getIdentifier();
	}

	internal void setQuitMessage()
	{
		catItem(new ControlSequence('Q'));
		catItem("quit");
		catItem(0);
	}

	public override string ToString()
	{
		flush();
		string text = new StringBuilder("MessageID: " + messageID + Cebra.LF).ToString();
		int num = 0;
		for (int i = 0; i < lengthHeader; i++)
		{
			char c = (char)formatString[i];
			char c2 = c;
			int num2 = (int)formatLength[i];
			int num3 = num2;
			switch (c2)
			{
			case 'A':
			{
				object obj5 = text;
				text = string.Concat(obj5, "<", num3, " character> ");
				for (int j = 0; j < num3; j++)
				{
					char c3 = (char)message[num];
					num++;
					text = text + c3 + " ";
				}
				break;
			}
			case 'Z':
			{
				text += "<String> ";
				string text2 = (string)message[num];
				text += text2;
				num++;
				break;
			}
			case 'B':
			{
				object obj12 = text;
				text = string.Concat(obj12, "<", num3, " byte> ");
				for (int j = 0; j < num3; j++)
				{
					sbyte b = (sbyte)message[num];
					num++;
					text = text + (int)b + " ";
				}
				break;
			}
			case 'Y':
			{
				object obj8 = text;
				text = string.Concat(obj8, "<byte array size ", num3, "> ");
				sbyte[] array = (sbyte[])message[num];
				num++;
				for (int j = 0; j < num3; j++)
				{
					text = text + array[j] + " ";
				}
				break;
			}
			case 'X':
				num++;
				text += "<control message>";
				break;
			case 'T':
			{
				object obj3 = text;
				text = string.Concat(obj3, "<", num3, " boolean> ");
				for (int j = 0; j < num3; j++)
				{
					bool flag = (bool)message[num];
					num++;
					text = ((!flag) ? (text + "false ") : (text + "true "));
				}
				break;
			}
			case 'C':
			{
				ClassName className = (ClassName)message[num];
				text = text + "<class> " + className.name;
				num++;
				break;
			}
			case 'D':
			{
				object obj11 = text;
				text = string.Concat(obj11, "<", num3, " double> ");
				for (int j = 0; j < num3; j++)
				{
					double num8 = (double)message[num];
					num++;
					text = text + num8 + " ";
				}
				break;
			}
			case 'E':
			{
				ErrorHandle errorHandle = (ErrorHandle)message[num];
				num++;
				object obj10 = text;
				text = string.Concat(obj10, "<error> ", errorHandle.errcode, " ", errorHandle.errmsg);
				break;
			}
			case 'F':
			{
				object obj9 = text;
				text = string.Concat(obj9, "<", num3, " float> ");
				for (int j = 0; j < num3; j++)
				{
					float num7 = (float)message[num];
					num++;
					text = text + num7 + " ";
				}
				break;
			}
			case 'I':
			{
				object obj7 = text;
				text = string.Concat(obj7, "<", num3, " integer> ");
				for (int j = 0; j < num3; j++)
				{
					int num6 = (int)message[num];
					num++;
					text = text + num6 + " ";
				}
				break;
			}
			case 'L':
			{
				object obj6 = text;
				text = string.Concat(obj6, "<", num3, " long> ");
				for (int j = 0; j < num3; j++)
				{
					long num5 = (long)message[num];
					num++;
					text = text + num5 + " ";
				}
				break;
			}
			case 'S':
			{
				object obj4 = text;
				text = string.Concat(obj4, "<", num3, " short> ");
				for (int j = 0; j < num3; j++)
				{
					short num4 = (short)message[num];
					num++;
					text = text + num4 + " ";
				}
				break;
			}
			case 'O':
			{
				for (int j = 0; j < num3; j++)
				{
					Identifiable identifiable2 = null;
					if (message[num] is Identifiable)
					{
						identifiable2 = (Identifiable)message[num];
					}
					if (identifiable2 != null)
					{
						object obj2 = text;
						text = string.Concat(obj2, "<local object> ", identifiable2.getIdentifier(), " ", message[num]);
					}
					else
					{
						text = text + "<local object>" + message[num];
					}
					num++;
				}
				break;
			}
			case 'R':
			{
				for (int j = 0; j < num3; j++)
				{
					Identifiable identifiable = (Identifiable)message[num];
					num++;
					object obj = text;
					text = string.Concat(obj, "<remote object ", identifiable.getIdentifier(), ">");
				}
				break;
			}
			case 'V':
				text += "<void>";
				break;
			}
			text += Cebra.LF;
		}
		return text;
	}
}
