#define DEBUG
using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Reflection;

namespace Syncfusion.Core.Licensing;

internal class SweepProxy
{
	private static Sweep sw;

	private static void InitAssemblyInfo()
	{
		if (sw == null)
		{
			sw = new Sweep();
			sw.InitAssemblyInfo(typeof(SweepProxy));
		}
	}

	internal static string GetErrorMessage()
	{
		InitAssemblyInfo();
		return sw.GetErrorMessage();
	}

	public static bool CreateSLF(string path, Type type)
	{
		InitAssemblyInfo();
		return sw.CreateSLF(path, type);
	}

	public static bool IsKeyValid(string key, bool bLinkServer, int length, ref int rt, ref DateTime expire)
	{
		InitAssemblyInfo();
		try
		{
			bool result = sw.IsKeyValid2(key, bLinkServer, length);
			rt = sw.GetRTResultForIsKeyValid2();
			expire = sw.GetExpireResultForIsKeyValid2();
			return result;
		}
		catch
		{
		}
		return false;
	}

	internal static bool GetEncLic(Assembly asm, Type type, LicenseContext context)
	{
		InitAssemblyInfo();
		try
		{
			return sw.GetEncLic(asm, type, context);
		}
		catch
		{
		}
		return false;
	}

	internal static License GetDevLicense(LicenseContext context, Type type, object instance, bool allowExceptions, out bool isExpired)
	{
		InitAssemblyInfo();
		try
		{
			return sw.GetDevLicense(context, type, instance, allowExceptions, out isExpired);
		}
		catch (Exception ex)
		{
			Debug.WriteLine(ex.Message);
		}
		isExpired = false;
		return null;
	}

	internal static string[] GetUnlockTextInformation()
	{
		InitAssemblyInfo();
		return Sweep.GetUnlockTextInformation();
	}
}
