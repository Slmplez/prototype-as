using System;
using Syncfusion.Licensing.crypto.parameters;
using Syncfusion.Licensing.math;

namespace Syncfusion.Licensing.crypto.engines;

public class RSAEngine : AsymmetricBlockCipher
{
	private RSAKeyParameters key;

	private bool forEncryption;

	public string getAlgorithmName()
	{
		return "RSA";
	}

	public void init(bool forEncryption, CipherParameters param)
	{
		key = (RSAKeyParameters)param;
		this.forEncryption = forEncryption;
	}

	public int getInputBlockSize()
	{
		int num = key.getModulus().bitLength();
		if (forEncryption)
		{
			return (num + 7) / 8 - 1;
		}
		return (num + 7) / 8;
	}

	public int getOutputBlockSize()
	{
		int num = key.getModulus().bitLength();
		if (forEncryption)
		{
			return (num + 7) / 8;
		}
		return (num + 7) / 8 - 1;
	}

	public byte[] processBlock(byte[] inBytes, int inOff, int inLen)
	{
		if (inLen > getInputBlockSize() + 1)
		{
			throw new DataLengthException("input too large for RSA cipher.\n");
		}
		if (inLen == getInputBlockSize() + 1 && (inBytes[inOff] & 0x80) != 0)
		{
			throw new DataLengthException("input too large for RSA cipher.\n");
		}
		byte[] array;
		if (inOff != 0 || inLen != inBytes.Length)
		{
			array = new byte[inLen];
			Array.Copy(inBytes, inOff, array, 0, inLen);
		}
		else
		{
			array = inBytes;
		}
		BigInteger bigInteger = new BigInteger(1, array);
		byte[] array2;
		if (typeof(RSAPrivateCrtKeyParameters).IsInstanceOfType(key))
		{
			RSAPrivateCrtKeyParameters rSAPrivateCrtKeyParameters = (RSAPrivateCrtKeyParameters)key;
			BigInteger p = rSAPrivateCrtKeyParameters.getP();
			BigInteger q = rSAPrivateCrtKeyParameters.getQ();
			BigInteger dP = rSAPrivateCrtKeyParameters.getDP();
			BigInteger dQ = rSAPrivateCrtKeyParameters.getDQ();
			BigInteger qInv = rSAPrivateCrtKeyParameters.getQInv();
			BigInteger bigInteger2 = bigInteger.remainder(p).modPow(dP, p);
			BigInteger val = bigInteger.remainder(q).modPow(dQ, q);
			BigInteger bigInteger3 = bigInteger2.subtract(val);
			bigInteger3 = bigInteger3.multiply(qInv);
			bigInteger3 = bigInteger3.mod(p);
			BigInteger bigInteger4 = bigInteger3.multiply(q);
			bigInteger4 = bigInteger4.add(val);
			array2 = bigInteger4.toByteArray();
		}
		else
		{
			array2 = bigInteger.modPow(key.getExponent(), key.getModulus()).toByteArray();
		}
		if (forEncryption)
		{
			if (array2[0] == 0 && array2.Length > getOutputBlockSize())
			{
				byte[] array3 = new byte[array2.Length - 1];
				Array.Copy(array2, 1, array3, 0, array3.Length);
				return array3;
			}
			if (array2.Length < getOutputBlockSize())
			{
				byte[] array4 = new byte[getOutputBlockSize()];
				Array.Copy(array2, 0, array4, array4.Length - array2.Length, array2.Length);
				return array4;
			}
		}
		else if (array2[0] == 0)
		{
			byte[] array5 = new byte[array2.Length - 1];
			Array.Copy(array2, 1, array5, 0, array5.Length);
			return array5;
		}
		return array2;
	}
}
