using System;
using Syncfusion.Licensing.crypto.digests;

namespace Syncfusion.Licensing.security;

public class SecureRandom : Random
{
	private static SecureRandom rand = new SecureRandom();

	private long counter = 1L;

	private SHA1Digest digest = new SHA1Digest();

	private byte[] state;

	private byte[] intBytes = new byte[4];

	private byte[] longBytes = new byte[8];

	public SecureRandom()
		: base(0)
	{
		state = new byte[digest.getDigestSize()];
		setSeed(DateTime.Now.Ticks);
	}

	public SecureRandom(byte[] inSeed)
	{
		state = new byte[digest.getDigestSize()];
		setSeed(inSeed);
	}

	public static SecureRandom getInstance(string algorithm)
	{
		return new SecureRandom();
	}

	public static SecureRandom getInstance(string algorithm, string provider)
	{
		return new SecureRandom();
	}

	public virtual void setSeed(byte[] inSeed)
	{
		digest.update(inSeed, 0, inSeed.Length);
	}

	public virtual void setSeed(long rSeed)
	{
		if (rSeed != 0)
		{
			setSeed(longToBytes(rSeed));
		}
	}

	public static byte[] getSeed(int numBytes)
	{
		byte[] array = new byte[numBytes];
		rand.setSeed(DateTime.Now.Ticks);
		rand.nextBytes(array);
		return array;
	}

	public virtual byte[] generateSeed(int numBytes)
	{
		byte[] array = new byte[numBytes];
		nextBytes(array);
		return array;
	}

	public virtual void nextBytes(byte[] bytes)
	{
		int num = 0;
		digest.doFinal(state, 0);
		for (int i = 0; i != bytes.Length; i++)
		{
			if (num == state.Length)
			{
				byte[] array = longToBytes(counter++);
				digest.update(array, 0, array.Length);
				digest.update(state, 0, state.Length);
				digest.doFinal(state, 0);
				num = 0;
			}
			bytes[i] = state[num++];
		}
		byte[] array2 = longToBytes(counter++);
		digest.update(array2, 0, array2.Length);
		digest.update(state, 0, state.Length);
	}

	public virtual int nextInt()
	{
		nextBytes(intBytes);
		int num = 0;
		for (int i = 0; i < 4; i++)
		{
			num = (num << 8) + (intBytes[i] & 0xFF);
		}
		return num;
	}

	protected int next(int numBits)
	{
		int num = (numBits + 7) / 8;
		byte[] array = new byte[num];
		nextBytes(array);
		int num2 = 0;
		for (int i = 0; i < num; i++)
		{
			num2 = (num2 << 8) + (array[i] & 0xFF);
		}
		return num2 & ((1 << numBits) - 1);
	}

	private byte[] longToBytes(long val)
	{
		for (int i = 0; i != 8; i++)
		{
			longBytes[i] = (byte)val;
			val >>>= 8;
		}
		return longBytes;
	}
}
