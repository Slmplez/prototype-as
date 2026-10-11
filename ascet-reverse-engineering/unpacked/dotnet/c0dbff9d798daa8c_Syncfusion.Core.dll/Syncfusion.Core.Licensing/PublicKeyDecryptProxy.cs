using System;
using Syncfusion.Licensing;

namespace Syncfusion.Core.Licensing;

internal class PublicKeyDecryptProxy
{
	private static Type typeOfPublicKeyDecrypt;

	private static void LoadLicensingDll()
	{
		if (!(typeOfPublicKeyDecrypt != null))
		{
			typeOfPublicKeyDecrypt = typeof(PublicKeyDecrypt);
		}
	}

	public static byte[] SyncfusionDecode(string key)
	{
		return PublicKeyDecrypt.SyncfusionDecode(key);
	}
}
