using System;
using System.Runtime.InteropServices;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
internal class NativeHookMethods
{
	[StructLayout(LayoutKind.Sequential)]
	internal class MSG
	{
		public IntPtr hwnd = IntPtr.Zero;

		public int message;

		public int wParam;

		public int lParam;

		public int time;

		public int pt_x;

		public int pt_y;
	}

	[StructLayout(LayoutKind.Sequential)]
	internal class MOUSEHOOKSTRUCT
	{
		public int pt_x;

		public int pt_y;

		public IntPtr hwnd = IntPtr.Zero;

		public int wHitTestCode;

		public int dwExtraInfo;
	}

	[StructLayout(LayoutKind.Sequential)]
	internal class MOUSEHOOKSTRUCT_LL
	{
		public int pt_x;

		public int pt_y;

		public ulong mouseData;

		public ulong flags;

		public ulong time;

		public int dwExtraInfo;
	}

	public delegate IntPtr HookProc(int nCode, int wParam, int lParam);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern IntPtr CallNextHookEx(IntPtr hhook, int code, int wparam, int lparam);

	[DllImport("user32", CharSet = CharSet.Auto)]
	public static extern IntPtr SetWindowLong(IntPtr hWnd, int nIndex, IntPtr dwNewLong);

	[DllImport("user32", CharSet = CharSet.Auto)]
	public static extern IntPtr SetWindowsHookEx(int hookid, HookProc pfnhook, IntPtr hinst, int threadid);

	[DllImport("user32", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern int GetWindowThreadProcessId(IntPtr hWnd, ref int lpdwProcessId);

	[DllImport("kernel32.dll", CharSet = CharSet.Auto)]
	public static extern IntPtr GetModuleHandle(string modName);

	[DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
	public static extern bool UnhookWindowsHookEx(IntPtr hhook);
}
