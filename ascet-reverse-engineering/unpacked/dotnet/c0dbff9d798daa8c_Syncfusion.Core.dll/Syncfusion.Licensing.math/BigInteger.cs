using System;
using System.Collections;
using System.Globalization;
using Syncfusion.Licensing.security;

namespace Syncfusion.Licensing.math;

public class BigInteger
{
	private int sign;

	private int[] magnitude;

	private int nBits = -1;

	private int nBitLength = -1;

	private static readonly long IMASK = 4294967295L;

	private long mQuote = -1L;

	private static readonly int BITS_PER_BYTE = 8;

	private static readonly int BYTES_PER_INT = 4;

	private static readonly byte[] rndMask = new byte[8] { 255, 127, 63, 31, 15, 7, 3, 1 };

	private static readonly byte[] bitCounts = new byte[256]
	{
		0, 1, 1, 2, 1, 2, 2, 3, 1, 2,
		2, 3, 2, 3, 3, 4, 1, 2, 2, 3,
		2, 3, 3, 4, 2, 3, 3, 4, 3, 4,
		4, 5, 1, 2, 2, 3, 2, 3, 3, 4,
		2, 3, 3, 4, 3, 4, 4, 5, 2, 3,
		3, 4, 3, 4, 4, 5, 3, 4, 4, 5,
		4, 5, 5, 6, 1, 2, 2, 3, 2, 3,
		3, 4, 2, 3, 3, 4, 3, 4, 4, 5,
		2, 3, 3, 4, 3, 4, 4, 5, 3, 4,
		4, 5, 4, 5, 5, 6, 2, 3, 3, 4,
		3, 4, 4, 5, 3, 4, 4, 5, 4, 5,
		5, 6, 3, 4, 4, 5, 4, 5, 5, 6,
		4, 5, 5, 6, 5, 6, 6, 7, 1, 2,
		2, 3, 2, 3, 3, 4, 2, 3, 3, 4,
		3, 4, 4, 5, 2, 3, 3, 4, 3, 4,
		4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
		2, 3, 3, 4, 3, 4, 4, 5, 3, 4,
		4, 5, 4, 5, 5, 6, 3, 4, 4, 5,
		4, 5, 5, 6, 4, 5, 5, 6, 5, 6,
		6, 7, 2, 3, 3, 4, 3, 4, 4, 5,
		3, 4, 4, 5, 4, 5, 5, 6, 3, 4,
		4, 5, 4, 5, 5, 6, 4, 5, 5, 6,
		5, 6, 6, 7, 3, 4, 4, 5, 4, 5,
		5, 6, 4, 5, 5, 6, 5, 6, 6, 7,
		4, 5, 5, 6, 5, 6, 6, 7, 5, 6,
		6, 7, 6, 7, 7, 8
	};

	private static readonly byte[] bitLengths = new byte[256]
	{
		0, 1, 2, 2, 3, 3, 3, 3, 4, 4,
		4, 4, 4, 4, 4, 4, 5, 5, 5, 5,
		5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
		5, 5, 6, 6, 6, 6, 6, 6, 6, 6,
		6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
		6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
		6, 6, 6, 6, 7, 7, 7, 7, 7, 7,
		7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
		7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
		7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
		7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
		7, 7, 7, 7, 7, 7, 7, 7, 7, 7,
		7, 7, 7, 7, 7, 7, 7, 7, 8, 8,
		8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
		8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
		8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
		8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
		8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
		8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
		8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
		8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
		8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
		8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
		8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
		8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
		8, 8, 8, 8, 8, 8
	};

	public static readonly BigInteger ZERO = new BigInteger(0, new byte[0]);

	public static readonly BigInteger ONE = valueOf(1L);

	private static readonly BigInteger TWO = valueOf(2L);

	private BigInteger()
	{
	}

	private BigInteger(int nWords)
	{
		sign = 1;
		magnitude = new int[nWords];
	}

	private BigInteger(int signum, int[] mag)
	{
		sign = signum;
		if (mag.Length > 0)
		{
			int i;
			for (i = 0; i < mag.Length && mag[i] == 0; i++)
			{
			}
			if (i == 0)
			{
				magnitude = mag;
				return;
			}
			int[] array = new int[mag.Length - i];
			Array.Copy(mag, i, array, 0, array.Length);
			magnitude = array;
			if (array.Length == 0)
			{
				sign = 0;
			}
		}
		else
		{
			magnitude = mag;
			sign = 0;
		}
	}

	public BigInteger(string sval)
		: this(sval, 10)
	{
	}

	public BigInteger(string sval, int rdx)
	{
		if (sval.Length == 0)
		{
			throw new FormatException("Zero length BigInteger");
		}
		NumberStyles style = rdx switch
		{
			10 => NumberStyles.Integer, 
			16 => NumberStyles.AllowHexSpecifier, 
			_ => throw new FormatException("Only base 10 or 16 alllowed"), 
		};
		int i = 0;
		sign = 1;
		if (sval[0] == '-')
		{
			if (sval.Length == 1)
			{
				throw new FormatException("Zero length BigInteger");
			}
			sign = -1;
			i = 1;
		}
		for (; i < sval.Length && int.Parse(sval[i].ToString(), style) == 0; i++)
		{
		}
		if (i >= sval.Length)
		{
			sign = 0;
			magnitude = new int[0];
			return;
		}
		BigInteger bigInteger = ZERO;
		BigInteger val = valueOf(rdx);
		for (; i < sval.Length; i++)
		{
			bigInteger = bigInteger.multiply(val).add(valueOf(int.Parse(sval[i].ToString(), style)));
		}
		magnitude = bigInteger.magnitude;
	}

	public BigInteger(byte[] bval)
	{
		if (bval.Length == 0)
		{
			throw new FormatException("Zero length BigInteger");
		}
		sign = 1;
		if (bval[0] < 0)
		{
			sign = -1;
			int i;
			for (i = 0; i < bval.Length && (sbyte)bval[i] == -1; i++)
			{
			}
			magnitude = new int[(bval.Length - i) / 2 + 1];
		}
		else
		{
			magnitude = makeMagnitude(bval);
		}
	}

	private int[] makeMagnitude(byte[] bval)
	{
		int i;
		for (i = 0; i < bval.Length && bval[i] == 0; i++)
		{
		}
		if (i >= bval.Length)
		{
			return new int[0];
		}
		int num = (bval.Length - i + 3) / 4;
		int num2 = (bval.Length - i) % 4;
		if (num2 == 0)
		{
			num2 = 4;
		}
		int[] array = new int[num];
		int num3 = 0;
		int num4 = 0;
		for (int j = i; j < bval.Length; j++)
		{
			num3 <<= 8;
			num3 |= bval[j] & 0xFF;
			num2--;
			if (num2 <= 0)
			{
				array[num4] = num3;
				num4++;
				num2 = 4;
				num3 = 0;
			}
		}
		if (num4 < array.Length)
		{
			array[num4] = num3;
		}
		return array;
	}

	public BigInteger(int sign, byte[] mag)
	{
		switch (sign)
		{
		default:
			throw new FormatException("Invalid sign value");
		case 0:
			this.sign = 0;
			magnitude = new int[0];
			break;
		case -1:
		case 1:
			magnitude = makeMagnitude(mag);
			this.sign = sign;
			break;
		}
	}

	public BigInteger(int numBits, Random rnd)
	{
		if (numBits < 0)
		{
			throw new ArgumentException("numBits must be non-negative");
		}
		int num = (numBits + 7) / 8;
		byte[] array = new byte[num];
		if (num > 0)
		{
			nextRndBytes(rnd, array);
			array[0] &= rndMask[8 * num - numBits];
		}
		magnitude = makeMagnitude(array);
		sign = 1;
		nBits = -1;
		nBitLength = -1;
	}

	private void nextRndBytes(Random rnd, byte[] bytes)
	{
		int num = bytes.Length;
		int num2 = 0;
		int num3 = 0;
		if (typeof(SecureRandom).IsInstanceOfType(rnd))
		{
			((SecureRandom)rnd).nextBytes(bytes);
			return;
		}
		while (true)
		{
			for (int i = 0; i < BYTES_PER_INT; i++)
			{
				if (num2 == num)
				{
					return;
				}
				num3 = ((i == 0) ? rnd.Next() : (num3 >> BITS_PER_BYTE));
				bytes[num2++] = (byte)num3;
			}
		}
	}

	public BigInteger(int bitLength, int certainty, Random rnd)
	{
		int num = (bitLength + 7) / 8;
		byte[] array = new byte[num];
		do
		{
			if (num > 0)
			{
				nextRndBytes(rnd, array);
				array[0] &= rndMask[8 * num - bitLength];
			}
			magnitude = makeMagnitude(array);
			sign = 1;
			nBits = -1;
			nBitLength = -1;
			mQuote = -1L;
			if (certainty > 0 && bitLength > 2)
			{
				magnitude[magnitude.Length - 1] |= 1;
			}
		}
		while (this.bitLength() != bitLength || !isProbablePrime(certainty));
	}

	public BigInteger abs()
	{
		if (sign < 0)
		{
			return negate();
		}
		return this;
	}

	private int[] add(int[] a, int[] b)
	{
		int num = a.Length - 1;
		int num2 = b.Length - 1;
		long num3 = 0L;
		while (num2 >= 0)
		{
			num3 += (a[num] & IMASK) + (b[num2--] & IMASK);
			a[num--] = (int)num3;
			num3 >>>= 32;
		}
		while (num >= 0 && num3 != 0)
		{
			num3 += a[num] & IMASK;
			a[num--] = (int)num3;
			num3 >>>= 32;
		}
		return a;
	}

	public BigInteger add(BigInteger val)
	{
		if (val.sign == 0 || val.magnitude.Length == 0)
		{
			return this;
		}
		if (sign == 0 || magnitude.Length == 0)
		{
			return val;
		}
		if (val.sign < 0)
		{
			if (sign > 0)
			{
				return subtract(val.negate());
			}
		}
		else if (sign < 0)
		{
			return val.subtract(negate());
		}
		int[] array;
		int[] b;
		if (magnitude.Length < val.magnitude.Length)
		{
			array = new int[val.magnitude.Length + 1];
			Array.Copy(val.magnitude, 0, array, 1, val.magnitude.Length);
			b = magnitude;
		}
		else
		{
			array = new int[magnitude.Length + 1];
			Array.Copy(magnitude, 0, array, 1, magnitude.Length);
			b = val.magnitude;
		}
		return new BigInteger(sign, add(array, b));
	}

	public int bitCount()
	{
		if (nBits == -1)
		{
			nBits = 0;
			for (int i = 0; i < magnitude.Length; i++)
			{
				nBits += bitCounts[magnitude[i] & 0xFF];
				nBits += bitCounts[(magnitude[i] >> 8) & 0xFF];
				nBits += bitCounts[(magnitude[i] >> 16) & 0xFF];
				nBits += bitCounts[(magnitude[i] >> 24) & 0xFF];
			}
		}
		return nBits;
	}

	private int bitLength(int indx, int[] mag)
	{
		if (mag.Length == 0)
		{
			return 0;
		}
		while (indx != mag.Length && mag[indx] == 0)
		{
			indx++;
		}
		if (indx == mag.Length)
		{
			return 0;
		}
		int num = 32 * (mag.Length - indx - 1);
		num += bitLen(mag[indx]);
		if (sign < 0)
		{
			bool flag = bitCounts[mag[indx] & 0xFF] + bitCounts[(mag[indx] >> 8) & 0xFF] + bitCounts[(mag[indx] >> 16) & 0xFF] + bitCounts[(mag[indx] >> 24) & 0xFF] == 1;
			for (int i = indx + 1; i < mag.Length; i++)
			{
				if (!flag)
				{
					break;
				}
				flag = mag[i] == 0;
			}
			num -= (flag ? 1 : 0);
		}
		return num;
	}

	public int bitLength()
	{
		if (nBitLength == -1)
		{
			if (sign == 0)
			{
				nBitLength = 0;
			}
			else
			{
				nBitLength = bitLength(0, magnitude);
			}
		}
		return nBitLength;
	}

	private static int bitLen(int w)
	{
		if (w >= 32768)
		{
			if (w >= 8388608)
			{
				if (w >= 134217728)
				{
					if (w >= 536870912)
					{
						if (w >= 1073741824)
						{
							return 31;
						}
						return 30;
					}
					if (w >= 268435456)
					{
						return 29;
					}
					return 28;
				}
				if (w >= 33554432)
				{
					if (w >= 67108864)
					{
						return 27;
					}
					return 26;
				}
				if (w >= 16777216)
				{
					return 25;
				}
				return 24;
			}
			if (w >= 524288)
			{
				if (w >= 2097152)
				{
					if (w >= 4194304)
					{
						return 23;
					}
					return 22;
				}
				if (w >= 1048576)
				{
					return 21;
				}
				return 20;
			}
			if (w >= 131072)
			{
				if (w >= 262144)
				{
					return 19;
				}
				return 18;
			}
			if (w >= 65536)
			{
				return 17;
			}
			return 16;
		}
		if (w >= 128)
		{
			if (w >= 2048)
			{
				if (w >= 8192)
				{
					if (w >= 16384)
					{
						return 15;
					}
					return 14;
				}
				if (w >= 4096)
				{
					return 13;
				}
				return 12;
			}
			if (w >= 512)
			{
				if (w >= 1024)
				{
					return 11;
				}
				return 10;
			}
			if (w >= 256)
			{
				return 9;
			}
			return 8;
		}
		if (w >= 8)
		{
			if (w >= 32)
			{
				if (w >= 64)
				{
					return 7;
				}
				return 6;
			}
			if (w >= 16)
			{
				return 5;
			}
			return 4;
		}
		if (w >= 2)
		{
			if (w >= 4)
			{
				return 3;
			}
			return 2;
		}
		if (w >= 1)
		{
			return 1;
		}
		if (w >= 0)
		{
			return 0;
		}
		return 32;
	}

	public int compareTo(object o)
	{
		return compareTo((BigInteger)o);
	}

	private int compareTo(int xIndx, int[] x, int yIndx, int[] y)
	{
		while (xIndx != x.Length && x[xIndx] == 0)
		{
			xIndx++;
		}
		while (yIndx != y.Length && y[yIndx] == 0)
		{
			yIndx++;
		}
		if (x.Length - xIndx < y.Length - yIndx)
		{
			return -1;
		}
		if (x.Length - xIndx > y.Length - yIndx)
		{
			return 1;
		}
		while (xIndx < x.Length)
		{
			long num = x[xIndx++] & IMASK;
			long num2 = y[yIndx++] & IMASK;
			if (num < num2)
			{
				return -1;
			}
			if (num > num2)
			{
				return 1;
			}
		}
		return 0;
	}

	public int compareTo(BigInteger val)
	{
		if (sign < val.sign)
		{
			return -1;
		}
		if (sign > val.sign)
		{
			return 1;
		}
		return compareTo(0, magnitude, 0, val.magnitude);
	}

	private int[] divide(int[] x, int[] y)
	{
		int num = compareTo(0, x, 0, y);
		int[] array;
		if (num <= 0)
		{
			array = ((num == 0) ? new int[1] { 1 } : new int[1] { 0 });
		}
		else
		{
			int num2 = bitLength(0, x) - bitLength(0, y);
			int[] array2;
			if (num2 > 1)
			{
				array2 = shiftLeft(y, num2 - 1);
				array = shiftLeft(ONE.magnitude, num2 - 1);
				if (num2 % 32 == 0)
				{
					int[] array3 = new int[num2 / 32 + 1];
					Array.Copy(array, 0, array3, 1, array3.Length - 1);
					array3[0] = 0;
					array = array3;
				}
			}
			else
			{
				array2 = new int[x.Length];
				array = new int[1];
				Array.Copy(y, 0, array2, array2.Length - y.Length, y.Length);
				array[0] = 1;
			}
			int[] array4 = new int[array.Length];
			subtract(0, x, 0, array2);
			Array.Copy(array, 0, array4, 0, array.Length);
			int num3 = 0;
			int num4 = 0;
			int num5 = 0;
			while (true)
			{
				for (int num6 = compareTo(num3, x, num4, array2); num6 >= 0; num6 = compareTo(num3, x, num4, array2))
				{
					subtract(num3, x, num4, array2);
					add(array, array4);
				}
				num = compareTo(num3, x, 0, y);
				if (num <= 0)
				{
					break;
				}
				if (x[num3] == 0)
				{
					num3++;
				}
				num2 = bitLength(num4, array2) - bitLength(num3, x);
				if (num2 == 0)
				{
					array2 = shiftRightOne(num4, array2);
					array4 = shiftRightOne(num5, array4);
				}
				else
				{
					array2 = shiftRight(num4, array2, num2);
					array4 = shiftRight(num5, array4, num2);
				}
				if (array2[num4] == 0)
				{
					num4++;
				}
				if (array4[num5] == 0)
				{
					num5++;
				}
			}
			if (num == 0)
			{
				add(array, ONE.magnitude);
				for (int i = num3; i != x.Length; i++)
				{
					x[i] = 0;
				}
			}
		}
		return array;
	}

	public BigInteger divide(BigInteger val)
	{
		if (val.sign == 0)
		{
			throw new ArithmeticException("Divide by zero");
		}
		if (sign == 0)
		{
			return ZERO;
		}
		if (val.compareTo(ONE) == 0)
		{
			return this;
		}
		int[] array = new int[magnitude.Length];
		Array.Copy(magnitude, 0, array, 0, array.Length);
		return new BigInteger(sign * val.sign, divide(array, val.magnitude));
	}

	public BigInteger[] divideAndRemainder(BigInteger val)
	{
		if (val.sign == 0)
		{
			throw new ArithmeticException("Divide by zero");
		}
		BigInteger[] array = new BigInteger[2];
		if (sign == 0)
		{
			array[0] = (array[1] = ZERO);
			return array;
		}
		if (val.compareTo(ONE) == 0)
		{
			array[0] = this;
			array[1] = ZERO;
			return array;
		}
		int[] array2 = new int[magnitude.Length];
		Array.Copy(magnitude, 0, array2, 0, array2.Length);
		int[] mag = divide(array2, val.magnitude);
		array[0] = new BigInteger(sign * val.sign, mag);
		array[1] = new BigInteger(sign, array2);
		return array;
	}

	public override bool Equals(object val)
	{
		if (val == this)
		{
			return true;
		}
		if (!typeof(BigInteger).IsInstanceOfType(val))
		{
			return false;
		}
		BigInteger bigInteger = (BigInteger)val;
		if (bigInteger.sign != sign || bigInteger.magnitude.Length != magnitude.Length)
		{
			return false;
		}
		for (int i = 0; i < magnitude.Length; i++)
		{
			if (bigInteger.magnitude[i] != magnitude[i])
			{
				return false;
			}
		}
		return true;
	}

	public BigInteger gcd(BigInteger val)
	{
		if (val.sign == 0)
		{
			return abs();
		}
		if (sign == 0)
		{
			return val.abs();
		}
		BigInteger bigInteger = this;
		BigInteger bigInteger2 = val;
		while (bigInteger2.sign != 0)
		{
			BigInteger bigInteger3 = bigInteger.mod(bigInteger2);
			bigInteger = bigInteger2;
			bigInteger2 = bigInteger3;
		}
		return bigInteger;
	}

	public override int GetHashCode()
	{
		return 0;
	}

	public int intValue()
	{
		if (magnitude.Length == 0)
		{
			return 0;
		}
		if (sign < 0)
		{
			return -magnitude[magnitude.Length - 1];
		}
		return magnitude[magnitude.Length - 1];
	}

	public bool isProbablePrime(int certainty)
	{
		if (certainty == 0)
		{
			return true;
		}
		BigInteger bigInteger = abs();
		if (bigInteger.Equals(TWO))
		{
			return true;
		}
		if (bigInteger.Equals(ONE) || !bigInteger.testBit(0))
		{
			return false;
		}
		certainty = (((certainty & 1) != 1) ? (certainty / 2) : (certainty / 2 + 1));
		BigInteger bigInteger2 = bigInteger.subtract(ONE);
		int lowestSetBit = bigInteger2.getLowestSetBit();
		bigInteger2 = bigInteger2.shiftRight(lowestSetBit);
		Random rnd = new Random();
		for (int i = 0; i <= certainty; i++)
		{
			BigInteger bigInteger3;
			do
			{
				bigInteger3 = new BigInteger(bigInteger.bitLength(), rnd);
			}
			while (bigInteger3.compareTo(ONE) <= 0 || bigInteger3.compareTo(bigInteger) >= 0);
			int num = 0;
			BigInteger bigInteger4 = bigInteger3.modPow(bigInteger2, bigInteger);
			while ((num != 0 || !bigInteger4.Equals(ONE)) && !bigInteger4.Equals(bigInteger.subtract(ONE)))
			{
				if (num > 0 && bigInteger4.Equals(ONE))
				{
					return false;
				}
				if (++num == lowestSetBit)
				{
					return false;
				}
				bigInteger4 = bigInteger4.modPow(TWO, bigInteger);
			}
		}
		return true;
	}

	public long longValue()
	{
		long num = 0L;
		if (magnitude.Length == 0)
		{
			return 0L;
		}
		num = ((magnitude.Length <= 1) ? (magnitude[magnitude.Length - 1] & IMASK) : (((long)magnitude[magnitude.Length - 2] << 32) | (magnitude[magnitude.Length - 1] & IMASK)));
		if (sign < 0)
		{
			return -num;
		}
		return num;
	}

	public BigInteger max(BigInteger val)
	{
		if (compareTo(val) <= 0)
		{
			return val;
		}
		return this;
	}

	public BigInteger min(BigInteger val)
	{
		if (compareTo(val) >= 0)
		{
			return val;
		}
		return this;
	}

	public BigInteger mod(BigInteger m)
	{
		if (m.sign <= 0)
		{
			throw new ArithmeticException("BigInteger: modulus is not positive");
		}
		BigInteger bigInteger = remainder(m);
		if (bigInteger.sign < 0)
		{
			return bigInteger.add(m);
		}
		return bigInteger;
	}

	public BigInteger modInverse(BigInteger m)
	{
		if (m.sign != 1)
		{
			throw new ArithmeticException("Modulus must be positive");
		}
		BigInteger bigInteger = new BigInteger();
		BigInteger u2Out = new BigInteger();
		BigInteger bigInteger2 = extEuclid(this, m, bigInteger, u2Out);
		if (!bigInteger2.Equals(ONE))
		{
			throw new ArithmeticException("Numbers not relatively prime.");
		}
		if (bigInteger.compareTo(ZERO) < 0)
		{
			bigInteger = bigInteger.add(m);
		}
		return bigInteger;
	}

	private static BigInteger extEuclid(BigInteger a, BigInteger b, BigInteger u1Out, BigInteger u2Out)
	{
		BigInteger bigInteger = ONE;
		BigInteger bigInteger2 = a;
		BigInteger bigInteger3 = ZERO;
		BigInteger bigInteger4 = b;
		while (bigInteger4.compareTo(ZERO) > 0)
		{
			BigInteger val = bigInteger2.divide(bigInteger4);
			BigInteger bigInteger5 = bigInteger.subtract(bigInteger3.multiply(val));
			bigInteger = bigInteger3;
			bigInteger3 = bigInteger5;
			bigInteger5 = bigInteger2.subtract(bigInteger4.multiply(val));
			bigInteger2 = bigInteger4;
			bigInteger4 = bigInteger5;
		}
		u1Out.sign = bigInteger.sign;
		u1Out.magnitude = bigInteger.magnitude;
		BigInteger bigInteger6 = bigInteger2.subtract(bigInteger.multiply(a)).divide(b);
		u2Out.sign = bigInteger6.sign;
		u2Out.magnitude = bigInteger6.magnitude;
		return bigInteger2;
	}

	private void zero(int[] x)
	{
		for (int i = 0; i != x.Length; i++)
		{
			x[i] = 0;
		}
	}

	public BigInteger modPow(BigInteger exponent, BigInteger m)
	{
		int[] array = null;
		int[] array2 = null;
		bool flag = (m.magnitude[m.magnitude.Length - 1] & 1) == 1;
		long num = 0L;
		if (flag)
		{
			num = m.getMQuote();
			BigInteger bigInteger = shiftLeft(32 * m.magnitude.Length).mod(m);
			array = bigInteger.magnitude;
			flag = array.Length <= m.magnitude.Length;
			if (flag)
			{
				array2 = new int[m.magnitude.Length + 1];
				if (array.Length < m.magnitude.Length)
				{
					int[] array3 = new int[m.magnitude.Length];
					Array.Copy(array, 0, array3, array3.Length - array.Length, array.Length);
					array = array3;
				}
			}
		}
		if (!flag)
		{
			if (magnitude.Length <= m.magnitude.Length)
			{
				array = new int[m.magnitude.Length];
				Array.Copy(magnitude, 0, array, array.Length - magnitude.Length, magnitude.Length);
			}
			else
			{
				BigInteger bigInteger2 = remainder(m);
				array = new int[m.magnitude.Length];
				Array.Copy(bigInteger2.magnitude, 0, array, array.Length - bigInteger2.magnitude.Length, bigInteger2.magnitude.Length);
			}
			array2 = new int[m.magnitude.Length * 2];
		}
		int[] array4 = new int[m.magnitude.Length];
		for (int i = 0; i < exponent.magnitude.Length; i++)
		{
			int num2 = exponent.magnitude[i];
			int j = 0;
			if (i == 0)
			{
				while (num2 > 0)
				{
					num2 <<= 1;
					j++;
				}
				Array.Copy(array, 0, array4, 0, array.Length);
				num2 <<= 1;
				j++;
			}
			while (num2 != 0)
			{
				if (flag)
				{
					multiplyMonty(array2, array4, array4, m.magnitude, num);
				}
				else
				{
					square(array2, array4);
					remainder(array2, m.magnitude);
					Array.Copy(array2, array2.Length - array4.Length, array4, 0, array4.Length);
					zero(array2);
				}
				j++;
				if (num2 < 0)
				{
					if (flag)
					{
						multiplyMonty(array2, array4, array, m.magnitude, num);
					}
					else
					{
						multiply(array2, array4, array);
						remainder(array2, m.magnitude);
						Array.Copy(array2, array2.Length - array4.Length, array4, 0, array4.Length);
						zero(array2);
					}
				}
				num2 <<= 1;
			}
			for (; j < 32; j++)
			{
				if (flag)
				{
					multiplyMonty(array2, array4, array4, m.magnitude, num);
					continue;
				}
				square(array2, array4);
				remainder(array2, m.magnitude);
				Array.Copy(array2, array2.Length - array4.Length, array4, 0, array4.Length);
				zero(array2);
			}
		}
		if (flag)
		{
			zero(array);
			array[array.Length - 1] = 1;
			multiplyMonty(array2, array4, array, m.magnitude, num);
		}
		return new BigInteger(1, array4);
	}

	private int[] square(int[] w, int[] x)
	{
		if (w.Length != 2 * x.Length)
		{
			throw new ArgumentException("no I don't think so...");
		}
		long num4;
		long num3;
		for (int num = x.Length - 1; num != 0; num--)
		{
			long num2 = x[num] & IMASK;
			num3 = num2 * num2;
			num4 = num3 >>> 32;
			num3 &= IMASK;
			num3 += w[2 * num + 1] & IMASK;
			w[2 * num + 1] = (int)num3;
			long num5 = num4 + (num3 >> 32);
			for (int num6 = num - 1; num6 >= 0; num6--)
			{
				num3 = (x[num6] & IMASK) * num2;
				num4 = num3 >>> 31;
				num3 = (num3 & 0x7FFFFFFF) << 1;
				num3 += (w[num + num6 + 1] & IMASK) + num5;
				w[num + num6 + 1] = (int)num3;
				num5 = num4 + (num3 >>> 32);
			}
			num5 += w[num] & IMASK;
			w[num] = (int)num5;
			w[num - 1] = (int)(num5 >> 32);
		}
		num3 = x[0] & IMASK;
		num3 *= num3;
		num4 = num3 >>> 32;
		num3 &= IMASK;
		num3 += w[1] & IMASK;
		w[1] = (int)num3;
		w[0] = (int)(num4 + (num3 >> 32) + w[0]);
		return w;
	}

	private int[] multiply(int[] x, int[] y, int[] z)
	{
		for (int num = z.Length - 1; num >= 0; num--)
		{
			long num2 = z[num] & IMASK;
			long num3 = 0L;
			for (int num4 = y.Length - 1; num4 >= 0; num4--)
			{
				num3 += num2 * (y[num4] & IMASK) + (x[num + num4 + 1] & IMASK);
				x[num + num4 + 1] = (int)num3;
				num3 >>>= 32;
			}
			x[num] = (int)num3;
		}
		return x;
	}

	private long getMQuote()
	{
		if (mQuote != -1)
		{
			return mQuote;
		}
		if ((magnitude[magnitude.Length - 1] & 1) == 0)
		{
			return -1L;
		}
		byte[] mag = new byte[5] { 1, 0, 0, 0, 0 };
		BigInteger m = new BigInteger(1, mag);
		mQuote = negate().mod(m).modInverse(m).longValue();
		return mQuote;
	}

	public void multiplyMonty(int[] a, int[] x, int[] y, int[] m, long mQuote)
	{
		int num = m.Length;
		int num2 = num - 1;
		long num3 = y[num - 1] & IMASK;
		for (int i = 0; i <= num; i++)
		{
			a[i] = 0;
		}
		for (int num4 = num; num4 > 0; num4--)
		{
			long num5 = x[num4 - 1] & IMASK;
			long num6 = ((((a[num] & IMASK) + ((num5 * num3) & IMASK)) & IMASK) * mQuote) & IMASK;
			long num7 = num5 * num3;
			long num8 = num6 * (m[num - 1] & IMASK);
			long num9 = (a[num] & IMASK) + (num7 & IMASK) + (num8 & IMASK);
			long num10 = (num7 >>> 32) + (num8 >>> 32) + (num9 >>> 32);
			for (int num11 = num2; num11 > 0; num11--)
			{
				num7 = num5 * (y[num11 - 1] & IMASK);
				num8 = num6 * (m[num11 - 1] & IMASK);
				num9 = (a[num11] & IMASK) + (num7 & IMASK) + (num8 & IMASK) + (num10 & IMASK);
				num10 = (num10 >>> 32) + (num7 >>> 32) + (num8 >>> 32) + (num9 >>> 32);
				a[num11 + 1] = (int)num9;
			}
			num10 += a[0] & IMASK;
			a[1] = (int)num10;
			a[0] = (int)(num10 >>> 32);
		}
		if (compareTo(0, a, 0, m) >= 0)
		{
			subtract(0, a, 0, m);
		}
		for (int j = 0; j < num; j++)
		{
			x[j] = a[j + 1];
		}
	}

	public BigInteger multiply(BigInteger val)
	{
		if (sign == 0 || val.sign == 0)
		{
			return ZERO;
		}
		int[] x = new int[magnitude.Length + val.magnitude.Length];
		return new BigInteger(sign * val.sign, multiply(x, magnitude, val.magnitude));
	}

	public BigInteger negate()
	{
		return new BigInteger(-sign, magnitude);
	}

	public BigInteger pow(int exp)
	{
		if (exp < 0)
		{
			throw new ArithmeticException("Negative exponent");
		}
		if (sign == 0)
		{
			if (exp != 0)
			{
				return this;
			}
			return ONE;
		}
		BigInteger bigInteger = ONE;
		BigInteger bigInteger2 = this;
		while (exp != 0)
		{
			if ((exp & 1) == 1)
			{
				bigInteger = bigInteger.multiply(bigInteger2);
			}
			exp >>= 1;
			if (exp != 0)
			{
				bigInteger2 = bigInteger2.multiply(bigInteger2);
			}
		}
		return bigInteger;
	}

	private int[] remainder(int[] x, int[] y)
	{
		int num = compareTo(0, x, 0, y);
		if (num > 0)
		{
			int num2 = bitLength(0, x) - bitLength(0, y);
			int[] array;
			if (num2 > 1)
			{
				array = shiftLeft(y, num2 - 1);
			}
			else
			{
				array = new int[x.Length];
				Array.Copy(y, 0, array, array.Length - y.Length, y.Length);
			}
			subtract(0, x, 0, array);
			int num3 = 0;
			int num4 = 0;
			while (true)
			{
				for (int num5 = compareTo(num3, x, num4, array); num5 >= 0; num5 = compareTo(num3, x, num4, array))
				{
					subtract(num3, x, num4, array);
				}
				num = compareTo(num3, x, 0, y);
				if (num <= 0)
				{
					break;
				}
				if (x[num3] == 0)
				{
					num3++;
				}
				num2 = bitLength(num4, array) - bitLength(num3, x);
				array = ((num2 != 0) ? shiftRight(num4, array, num2) : shiftRightOne(num4, array));
				if (array[num4] == 0)
				{
					num4++;
				}
			}
			if (num == 0)
			{
				for (int i = num3; i != x.Length; i++)
				{
					x[i] = 0;
				}
			}
		}
		else if (num == 0)
		{
			for (int j = 0; j != x.Length; j++)
			{
				x[j] = 0;
			}
		}
		return x;
	}

	public BigInteger remainder(BigInteger val)
	{
		if (val.sign == 0)
		{
			throw new ArithmeticException("BigInteger: Divide by zero");
		}
		if (sign == 0)
		{
			return ZERO;
		}
		int[] array = new int[magnitude.Length];
		Array.Copy(magnitude, 0, array, 0, array.Length);
		return new BigInteger(sign, remainder(array, val.magnitude));
	}

	private int[] shiftLeft(int[] mag, int n)
	{
		int num = n >>> 5;
		int num2 = n & 0x1F;
		int num3 = mag.Length;
		int[] array = null;
		if (num2 == 0)
		{
			array = new int[num3 + num];
			for (int i = 0; i < num3; i++)
			{
				array[i] = mag[i];
			}
		}
		else
		{
			int num4 = 0;
			int num5 = 32 - num2;
			int num6 = mag[0] >>> num5;
			if (num6 != 0)
			{
				array = new int[num3 + num + 1];
				array[num4++] = num6;
			}
			else
			{
				array = new int[num3 + num];
			}
			int num7 = mag[0];
			for (int j = 0; j < num3 - 1; j++)
			{
				int num8 = mag[j + 1];
				array[num4++] = (num7 << num2) | (num8 >>> num5);
				num7 = num8;
			}
			array[num4] = mag[num3 - 1] << num2;
		}
		return array;
	}

	public BigInteger shiftLeft(int n)
	{
		if (sign == 0 || magnitude.Length == 0)
		{
			return ZERO;
		}
		if (n == 0)
		{
			return this;
		}
		if (n < 0)
		{
			return shiftRight(-n);
		}
		return new BigInteger(sign, shiftLeft(magnitude, n));
	}

	private int[] shiftRight(int start, int[] mag, int n)
	{
		int num = (n >>> 5) + start;
		int num2 = n & 0x1F;
		int num3 = mag.Length;
		if (num != start)
		{
			int num4 = num - start;
			for (int num5 = num3 - 1; num5 >= num; num5--)
			{
				mag[num5] = mag[num5 - num4];
			}
			for (int num6 = num - 1; num6 >= start; num6--)
			{
				mag[num6] = 0;
			}
		}
		if (num2 != 0)
		{
			int num7 = 32 - num2;
			int num8 = mag[num3 - 1];
			for (int num9 = num3 - 1; num9 >= num + 1; num9--)
			{
				int num10 = mag[num9 - 1];
				mag[num9] = (num8 >>> num2) | (num10 << num7);
				num8 = num10;
			}
			mag[num] >>>= num2;
		}
		return mag;
	}

	private int[] shiftRightOne(int start, int[] mag)
	{
		int num = mag.Length;
		int num2 = mag[num - 1];
		for (int num3 = num - 1; num3 >= start + 1; num3--)
		{
			int num4 = mag[num3 - 1];
			mag[num3] = (num2 >>> 1) | (num4 << 31);
			num2 = num4;
		}
		mag[start] >>>= 1;
		return mag;
	}

	public BigInteger shiftRight(int n)
	{
		if (n == 0)
		{
			return this;
		}
		if (n < 0)
		{
			return shiftLeft(-n);
		}
		if (n >= bitLength())
		{
			if (sign >= 0)
			{
				return ZERO;
			}
			return valueOf(-1L);
		}
		int[] array = new int[magnitude.Length];
		Array.Copy(magnitude, 0, array, 0, array.Length);
		return new BigInteger(sign, shiftRight(0, array, n));
	}

	public int signum()
	{
		return sign;
	}

	private int[] subtract(int xStart, int[] x, int yStart, int[] y)
	{
		int num = x.Length - 1;
		int num2 = y.Length - 1;
		int num3 = 0;
		do
		{
			long num4 = (x[num] & IMASK) - (y[num2--] & IMASK) + num3;
			x[num--] = (int)num4;
			num3 = ((num4 < 0) ? (-1) : 0);
		}
		while (num2 >= yStart);
		while (num >= xStart)
		{
			long num4 = (x[num] & IMASK) + num3;
			x[num--] = (int)num4;
			if (num4 >= 0)
			{
				break;
			}
			num3 = -1;
		}
		return x;
	}

	public BigInteger subtract(BigInteger val)
	{
		if (val.sign == 0 || val.magnitude.Length == 0)
		{
			return this;
		}
		if (sign == 0 || magnitude.Length == 0)
		{
			return val.negate();
		}
		if (val.sign < 0)
		{
			if (sign > 0)
			{
				return add(val.negate());
			}
		}
		else if (sign < 0)
		{
			return add(val.negate());
		}
		int num = compareTo(val);
		if (num == 0)
		{
			return ZERO;
		}
		BigInteger bigInteger;
		BigInteger bigInteger2;
		if (num < 0)
		{
			bigInteger = val;
			bigInteger2 = this;
		}
		else
		{
			bigInteger = this;
			bigInteger2 = val;
		}
		int[] array = new int[bigInteger.magnitude.Length];
		Array.Copy(bigInteger.magnitude, 0, array, 0, array.Length);
		return new BigInteger(sign * num, subtract(0, array, 0, bigInteger2.magnitude));
	}

	public byte[] toByteArray()
	{
		int num = bitLength();
		byte[] array = new byte[num / 8 + 1];
		int num2 = 4;
		int num3 = 0;
		int num4 = magnitude.Length - 1;
		int num5 = 1;
		for (int num6 = array.Length - 1; num6 >= 0; num6--)
		{
			if (num2 == 4 && num4 >= 0)
			{
				if (sign < 0)
				{
					long num7 = ~magnitude[num4--] & IMASK;
					num7 += num5;
					num5 = (((num7 & ~IMASK) != 0) ? 1 : 0);
					num3 = (int)(num7 & IMASK);
				}
				else
				{
					num3 = magnitude[num4--];
				}
				num2 = 1;
			}
			else
			{
				num3 >>>= 8;
				num2++;
			}
			array[num6] = (byte)num3;
		}
		return array;
	}

	public override string ToString()
	{
		return ToString(10);
	}

	public string ToString(int rdx)
	{
		string text = rdx switch
		{
			10 => "d", 
			16 => "x", 
			_ => throw new FormatException("Only base 10 or 16 are allowed"), 
		};
		if (magnitude == null)
		{
			return "null";
		}
		if (sign == 0)
		{
			return "0";
		}
		string text2 = "";
		if (rdx == 16)
		{
			for (int i = 0; i < magnitude.Length; i++)
			{
				string text3 = "0000000" + magnitude[i].ToString("x");
				text3 = text3.Substring(text3.Length - 8);
				text2 += text3;
			}
		}
		else
		{
			Stack stack = new Stack();
			BigInteger bigInteger = new BigInteger(rdx.ToString());
			BigInteger bigInteger2 = new BigInteger(abs().ToString(16), 16);
			while (!bigInteger2.Equals(ZERO))
			{
				BigInteger bigInteger3 = bigInteger2.mod(bigInteger);
				if (bigInteger3.Equals(ZERO))
				{
					stack.Push("0");
				}
				else
				{
					stack.Push(bigInteger3.magnitude[0].ToString(text));
				}
				bigInteger2 = bigInteger2.divide(bigInteger);
			}
			while (stack.Count != 0)
			{
				text2 += stack.Pop();
			}
		}
		while (text2.Length > 1 && text2[0] == '0')
		{
			text2 = text2.Substring(1);
		}
		if (text2.Length == 0)
		{
			text2 = "0";
		}
		else if (sign == -1)
		{
			text2 = "-" + text2;
		}
		return text2;
	}

	public static BigInteger valueOf(long val)
	{
		if (val == 0)
		{
			return ZERO;
		}
		byte[] array = new byte[8];
		for (int i = 0; i < 8; i++)
		{
			array[7 - i] = (byte)val;
			val >>= 8;
		}
		return new BigInteger(array);
	}

	private int max(int a, int b)
	{
		if (a < b)
		{
			return b;
		}
		return a;
	}

	public int getLowestSetBit()
	{
		if (Equals(ZERO))
		{
			return -1;
		}
		int num = magnitude.Length - 1;
		while (num >= 0 && magnitude[num] == 0)
		{
			num--;
		}
		int num2 = 31;
		while (num2 > 0 && magnitude[num] << num2 != int.MinValue)
		{
			num2--;
		}
		return (magnitude.Length - 1 - num) * 32 + (31 - num2);
	}

	public bool testBit(int n)
	{
		if (n < 0)
		{
			throw new ArithmeticException("Bit position must not be negative");
		}
		if (n / 32 >= magnitude.Length)
		{
			return sign < 0;
		}
		return ((magnitude[magnitude.Length - 1 - n / 32] >> n % 32) & 1) > 0;
	}
}
