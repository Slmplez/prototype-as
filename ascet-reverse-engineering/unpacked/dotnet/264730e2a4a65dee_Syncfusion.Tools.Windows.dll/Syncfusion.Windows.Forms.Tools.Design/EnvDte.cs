using System;
using System.Diagnostics;
using System.Runtime.InteropServices;
using System.Runtime.InteropServices.ComTypes;
using EnvDTE;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class EnvDte
{
	private const string DEF_VS_IDE_ID_FORMAT = "!VisualStudio.DTE.8.0:{0}";

	[DllImport("ole32.dll")]
	private static extern int GetRunningObjectTable(int reserved, out IRunningObjectTable prot);

	[DllImport("ole32.dll")]
	private static extern int CreateBindCtx(int reserved, out IBindCtx ppbc);

	public static DTE GetDesignTimeEnvironment()
	{
		//IL_000c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0012: Expected O, but got Unknown
		string progID = "VisualStudio.DTE.8.0";
		return (DTE)Marshal.GetActiveObject(progID);
	}

	public static DTE GetCurrentDTE()
	{
		IntPtr zero = IntPtr.Zero;
		IRunningObjectTable prot = null;
		IEnumMoniker ppenumMoniker = null;
		IBindCtx ppbc = null;
		IMoniker[] array = new IMoniker[1];
		string ppszDisplayName = null;
		object ppunkObject = null;
		Process currentProcess = Process.GetCurrentProcess();
		string strB = $"!VisualStudio.DTE.8.0:{currentProcess.Id}";
		GetRunningObjectTable(0, out prot);
		prot.EnumRunning(out ppenumMoniker);
		ppenumMoniker.Reset();
		while (ppenumMoniker.Next(1, array, zero) == 0)
		{
			CreateBindCtx(0, out ppbc);
			array[0].GetDisplayName(ppbc, null, out ppszDisplayName);
			if (string.Compare(ppszDisplayName, strB, ignoreCase: true) == 0)
			{
				prot.GetObject(array[0], out ppunkObject);
				break;
			}
		}
		return (DTE)((ppunkObject is DTE) ? ppunkObject : null);
	}
}
