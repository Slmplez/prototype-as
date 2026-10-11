using System;
using System.Reflection;
using System.Windows.Forms;

namespace Syncfusion.Runtime.InteropServices;

public class SystemInformationExt
{
	private static bool appTypeKnown = false;

	private static bool isDotNetApp = true;

	private static string executablePathURI = null;

	private static bool isDevStudio = false;

	public static bool KeyboardCuesAlwaysOn
	{
		get
		{
			bool lpvParam = true;
			NativeMethods.SystemParametersInfo(4106, 0, ref lpvParam, 0);
			return lpvParam;
		}
	}

	public static bool IsDotNetApp
	{
		get
		{
			if (appTypeKnown)
			{
				return isDotNetApp;
			}
			bool flag = false;
			try
			{
				Assembly entryAssembly = Assembly.GetEntryAssembly();
				if (entryAssembly != null)
				{
					flag = null != entryAssembly.EntryPoint;
				}
			}
			catch (Exception)
			{
			}
			bool flag2 = true;
			try
			{
				_ = Application.ProductName;
			}
			catch (Exception)
			{
				flag2 = false;
			}
			appTypeKnown = true;
			if (flag2 && flag)
			{
				isDotNetApp = true;
			}
			else
			{
				isDotNetApp = false;
			}
			return isDotNetApp;
		}
		set
		{
			appTypeKnown = true;
			isDotNetApp = value;
		}
	}

	public static bool IsDevStudio
	{
		get
		{
			if (executablePathURI == null)
			{
				try
				{
					Assembly entryAssembly = Assembly.GetEntryAssembly();
					if (entryAssembly != null)
					{
						executablePathURI = entryAssembly.EscapedCodeBase.ToLower();
					}
					else
					{
						executablePathURI = Application.ExecutablePath.ToLower();
					}
				}
				catch (Exception)
				{
					executablePathURI = "";
				}
				isDevStudio = executablePathURI.IndexOf("devenv.exe") >= 0 || executablePathURI.IndexOf("vbexpress.exe") >= 0 || executablePathURI.IndexOf("vcsexpress.exe") >= 0 || executablePathURI.IndexOf("vcexpress.exe") >= 0 || executablePathURI.IndexOf("vwdexpress.exe") >= 0;
			}
			return isDevStudio;
		}
	}
}
