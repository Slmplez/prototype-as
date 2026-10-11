#define DEBUG
using System;
using System.Collections;
using System.Diagnostics;
using Syncfusion.Licensing.crypto;
using Syncfusion.Licensing.crypto.encodings;
using Syncfusion.Licensing.crypto.engines;
using Syncfusion.Licensing.crypto.parameters;
using Syncfusion.Licensing.math;

namespace Syncfusion.Licensing;

public class PublicKeyDecrypt
{
	internal static RSAKeyParameters pubParameters;

	static PublicKeyDecrypt()
	{
		pubParameters = new RSAKeyParameters(isPrivate: false, new BigInteger("74311111206657030479635290206242922294134948120327310989730425327779900016841"), new BigInteger("17"));
	}

	public static byte[] SyncfusionDecode(string key)
	{
		return DecodeLongBuffer(key.Trim(), pubParameters);
	}

	private static byte[] DecodeLongBuffer(string encryptedLongKey, RSAKeyParameters pubParameters)
	{
		byte[] buffer = Convert.FromBase64String(encryptedLongKey);
		return DecodeLongBuffer(buffer, pubParameters);
	}

	private static byte[] DecodeLongBuffer(byte[] buffer, RSAKeyParameters pubParameters)
	{
		AsymmetricBlockCipher cipher = new RSAEngine();
		PKCS1Encoding pKCS1Encoding = new PKCS1Encoding(cipher);
		pKCS1Encoding.init(forEncryption: false, pubParameters);
		try
		{
			ArrayList arrayList = new ArrayList();
			int inputBlockSize = pKCS1Encoding.getInputBlockSize();
			int num = buffer.Length / inputBlockSize;
			new ArrayList();
			for (int i = 0; i < num; i++)
			{
				int num2 = i * inputBlockSize;
				int inLen = Math.Min(buffer.Length - num2, inputBlockSize);
				byte[] array = pKCS1Encoding.processBlock(buffer, num2, inLen);
				byte[] array2 = new byte[array[0]];
				Array.Copy(array, 1, array2, 0, array2.Length);
				arrayList.AddRange(array2);
			}
			byte[] array3 = new byte[arrayList.Count];
			arrayList.CopyTo(array3);
			return array3;
		}
		catch (Exception ex)
		{
			Debug.WriteLine("RSA: failed - exception " + ex.ToString());
			return new byte[0];
		}
	}
}
