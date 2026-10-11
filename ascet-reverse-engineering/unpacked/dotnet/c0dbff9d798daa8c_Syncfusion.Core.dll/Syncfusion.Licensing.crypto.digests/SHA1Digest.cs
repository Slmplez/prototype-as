using System;

namespace Syncfusion.Licensing.crypto.digests;

public class SHA1Digest : GeneralDigest
{
	private static readonly int DIGEST_LENGTH = 20;

	private int H1;

	private int H2;

	private int H3;

	private int H4;

	private int H5;

	private int[] X = new int[80];

	private int xOff;

	private static readonly int Y1 = 1518500249;

	private static readonly int Y2 = 1859775393;

	private static readonly int Y3 = -1894007588;

	private static readonly int Y4 = -899497514;

	public SHA1Digest()
	{
		reset();
	}

	public SHA1Digest(SHA1Digest t)
		: base(t)
	{
		H1 = t.H1;
		H2 = t.H2;
		H3 = t.H3;
		H4 = t.H4;
		H5 = t.H5;
		Array.Copy(t.X, 0, X, 0, t.X.Length);
		xOff = t.xOff;
	}

	public override string getAlgorithmName()
	{
		return "SHA-1";
	}

	public override int getDigestSize()
	{
		return DIGEST_LENGTH;
	}

	protected override void processWord(byte[] inBytes, int inOff)
	{
		X[xOff++] = ((inBytes[inOff] & 0xFF) << 24) | ((inBytes[inOff + 1] & 0xFF) << 16) | ((inBytes[inOff + 2] & 0xFF) << 8) | (inBytes[inOff + 3] & 0xFF);
		if (xOff == 16)
		{
			processBlock();
		}
	}

	private void unpackWord(int word, byte[] outBytes, int outOff)
	{
		outBytes[outOff] = (byte)((uint)word >> 24);
		outBytes[outOff + 1] = (byte)((uint)word >> 16);
		outBytes[outOff + 2] = (byte)((uint)word >> 8);
		outBytes[outOff + 3] = (byte)word;
	}

	protected override void processLength(long bitLength)
	{
		if (xOff > 14)
		{
			processBlock();
		}
		X[14] = (int)(bitLength >>> 32);
		X[15] = (int)(bitLength & 0xFFFFFFFFu);
	}

	public override int doFinal(byte[] outBytes, int outOff)
	{
		finish();
		unpackWord(H1, outBytes, outOff);
		unpackWord(H2, outBytes, outOff + 4);
		unpackWord(H3, outBytes, outOff + 8);
		unpackWord(H4, outBytes, outOff + 12);
		unpackWord(H5, outBytes, outOff + 16);
		reset();
		return DIGEST_LENGTH;
	}

	public override void reset()
	{
		base.reset();
		H1 = 1732584193;
		H2 = -271733879;
		H3 = -1732584194;
		H4 = 271733878;
		H5 = -1009589776;
		xOff = 0;
		for (int i = 0; i != X.Length; i++)
		{
			X[i] = 0;
		}
	}

	private int f(int u, int v, int w)
	{
		return (u & v) | (~u & w);
	}

	private int h(int u, int v, int w)
	{
		return u ^ v ^ w;
	}

	private int g(int u, int v, int w)
	{
		return (u & v) | (u & w) | (v & w);
	}

	private int rotateLeft(int x, int n)
	{
		return (x << n) | (x >>> 32 - n);
	}

	protected override void processBlock()
	{
		for (int i = 16; i <= 79; i++)
		{
			X[i] = rotateLeft(X[i - 3] ^ X[i - 8] ^ X[i - 14] ^ X[i - 16], 1);
		}
		int num = H1;
		int num2 = H2;
		int num3 = H3;
		int num4 = H4;
		int num5 = H5;
		for (int j = 0; j <= 19; j++)
		{
			int num6 = rotateLeft(num, 5) + f(num2, num3, num4) + num5 + X[j] + Y1;
			num5 = num4;
			num4 = num3;
			num3 = rotateLeft(num2, 30);
			num2 = num;
			num = num6;
		}
		for (int k = 20; k <= 39; k++)
		{
			int num7 = rotateLeft(num, 5) + h(num2, num3, num4) + num5 + X[k] + Y2;
			num5 = num4;
			num4 = num3;
			num3 = rotateLeft(num2, 30);
			num2 = num;
			num = num7;
		}
		for (int l = 40; l <= 59; l++)
		{
			int num8 = rotateLeft(num, 5) + g(num2, num3, num4) + num5 + X[l] + Y3;
			num5 = num4;
			num4 = num3;
			num3 = rotateLeft(num2, 30);
			num2 = num;
			num = num8;
		}
		for (int m = 60; m <= 79; m++)
		{
			int num9 = rotateLeft(num, 5) + h(num2, num3, num4) + num5 + X[m] + Y4;
			num5 = num4;
			num4 = num3;
			num3 = rotateLeft(num2, 30);
			num2 = num;
			num = num9;
		}
		H1 += num;
		H2 += num2;
		H3 += num3;
		H4 += num4;
		H5 += num5;
		xOff = 0;
		for (int n = 0; n != X.Length; n++)
		{
			X[n] = 0;
		}
	}
}
