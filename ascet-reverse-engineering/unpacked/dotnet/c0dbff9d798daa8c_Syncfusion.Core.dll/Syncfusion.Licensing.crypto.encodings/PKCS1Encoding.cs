using System;
using Syncfusion.Licensing.crypto.parameters;
using Syncfusion.Licensing.security;

namespace Syncfusion.Licensing.crypto.encodings;

public class PKCS1Encoding : AsymmetricBlockCipher
{
	private static int HEADER_LENGTH = 10;

	private SecureRandom random;

	private AsymmetricBlockCipher engine;

	private bool forEncryption;

	private bool forPrivateKey;

	public PKCS1Encoding(AsymmetricBlockCipher cipher)
	{
		engine = cipher;
	}

	public AsymmetricBlockCipher getUnderlyingCipher()
	{
		return engine;
	}

	public void init(bool forEncryption, CipherParameters param)
	{
		AsymmetricKeyParameter asymmetricKeyParameter;
		if (typeof(ParametersWithRandom).IsInstanceOfType(param))
		{
			ParametersWithRandom parametersWithRandom = (ParametersWithRandom)param;
			random = parametersWithRandom.getRandom();
			asymmetricKeyParameter = (AsymmetricKeyParameter)parametersWithRandom.getParameters();
		}
		else
		{
			random = new SecureRandom();
			asymmetricKeyParameter = (AsymmetricKeyParameter)param;
		}
		engine.init(forEncryption, asymmetricKeyParameter);
		forPrivateKey = asymmetricKeyParameter.isPrivate();
		this.forEncryption = forEncryption;
	}

	public int getInputBlockSize()
	{
		int inputBlockSize = engine.getInputBlockSize();
		if (forEncryption)
		{
			return inputBlockSize - HEADER_LENGTH;
		}
		return inputBlockSize;
	}

	public int getOutputBlockSize()
	{
		int outputBlockSize = engine.getOutputBlockSize();
		if (forEncryption)
		{
			return outputBlockSize;
		}
		return outputBlockSize - HEADER_LENGTH;
	}

	public byte[] processBlock(byte[] inBytes, int inOff, int inLen)
	{
		if (forEncryption)
		{
			return encodeBlock(inBytes, inOff, inLen);
		}
		return decodeBlock(inBytes, inOff, inLen);
	}

	private byte[] encodeBlock(byte[] inBytes, int inOff, int inLen)
	{
		byte[] array = new byte[engine.getInputBlockSize()];
		if (forPrivateKey)
		{
			array[0] = 1;
			for (int i = 1; i != array.Length - inLen - 1; i++)
			{
				array[i] = byte.MaxValue;
			}
		}
		else
		{
			random.nextBytes(array);
			array[0] = 2;
			for (int j = 1; j != array.Length - inLen - 1; j++)
			{
				while (array[j] == 0)
				{
					array[j] = (byte)random.nextInt();
				}
			}
		}
		array[array.Length - inLen - 1] = 0;
		Array.Copy(inBytes, inOff, array, array.Length - inLen, inLen);
		return engine.processBlock(array, 0, array.Length);
	}

	private byte[] decodeBlock(byte[] inBytes, int inOff, int inLen)
	{
		byte[] array = engine.processBlock(inBytes, inOff, inLen);
		if (array.Length < getOutputBlockSize())
		{
			throw new InvalidCipherTextException("block truncated");
		}
		if (array[0] != 1 && array[0] != 2)
		{
			throw new InvalidCipherTextException("unknown block type");
		}
		int i;
		for (i = 1; i != array.Length && array[i] != 0; i++)
		{
		}
		i++;
		if (i >= array.Length || i < HEADER_LENGTH)
		{
			throw new InvalidCipherTextException("no data in block");
		}
		byte[] array2 = new byte[array.Length - i];
		Array.Copy(array, i, array2, 0, array2.Length);
		return array2;
	}
}
