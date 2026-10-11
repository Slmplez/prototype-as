using System;
using System.Runtime.InteropServices;

namespace Etas.Chap.CodingFramework.HelperClasses;

public class EtasGeneralAccess
{
	private static class EtasGeneralExternal
	{
		private const string EtasGeneralDll = "EtasGeneral100.dll";

		[DllImport("EtasGeneral100.dll", CallingConvention = CallingConvention.Cdecl)]
		public static extern bool RegisterApp(string AppName, string AppPath);

		[DllImport("EtasGeneral100.dll", CallingConvention = CallingConvention.Cdecl)]
		public static extern IntPtr getAppDataPath();

		[DllImport("EtasGeneral100.dll", CallingConvention = CallingConvention.Cdecl)]
		public static extern IntPtr GetAppPathFromRegistry();

		[DllImport("EtasGeneral100.dll", CallingConvention = CallingConvention.Cdecl)]
		public static extern IntPtr getETASLogFilePath();

		[DllImport("EtasGeneral100.dll", CallingConvention = CallingConvention.Cdecl)]
		public static extern IntPtr getETASTempFilePath();

		[DllImport("EtasGeneral100.dll", CallingConvention = CallingConvention.Cdecl)]
		public static extern IntPtr getETASSharedFilePath();

		[DllImport("EtasGeneral100.dll", CallingConvention = CallingConvention.Cdecl)]
		public static extern IntPtr GetETASSharedRegKeyName(string DllName);

		[DllImport("EtasGeneral100.dll", CallingConvention = CallingConvention.Cdecl)]
		public static extern IntPtr GetSharedDllPathFromRegistry(string DllName);

		[DllImport("EtasGeneral100.dll", CallingConvention = CallingConvention.Cdecl)]
		public static extern IntPtr GetAppRegKeyName();

		[DllImport("EtasGeneral100.dll", CallingConvention = CallingConvention.Cdecl)]
		public static extern IntPtr getAppVersion();
	}

	public static bool RegisterApp(string AppName, string AppPath)
	{
		return EtasGeneralExternal.RegisterApp(AppName, AppPath);
	}

	public static string GetAppDataPath()
	{
		return Marshal.PtrToStringAnsi(EtasGeneralExternal.getAppDataPath());
	}

	public static string GetAppPathFromRegistry()
	{
		return Marshal.PtrToStringAnsi(EtasGeneralExternal.GetAppPathFromRegistry());
	}

	public static string GetETASLogFilePath()
	{
		return Marshal.PtrToStringAnsi(EtasGeneralExternal.getETASLogFilePath());
	}

	public static string GetETASTempFilePath()
	{
		return Marshal.PtrToStringAnsi(EtasGeneralExternal.getETASTempFilePath());
	}

	public static string GetETASSharedFilePath()
	{
		return Marshal.PtrToStringAnsi(EtasGeneralExternal.getETASSharedFilePath());
	}

	public static string GetETASSharedRegKeyName(string DllName)
	{
		return Marshal.PtrToStringAnsi(EtasGeneralExternal.GetETASSharedRegKeyName(DllName));
	}

	public static string GetSharedDllPathFromRegistry(string DllName)
	{
		return Marshal.PtrToStringAnsi(EtasGeneralExternal.GetSharedDllPathFromRegistry(DllName));
	}

	public static string GetAppRegKeyName()
	{
		return Marshal.PtrToStringAnsi(EtasGeneralExternal.GetAppRegKeyName());
	}

	public static string GetAppVersion()
	{
		return Marshal.PtrToStringAnsi(EtasGeneralExternal.getAppVersion());
	}
}
