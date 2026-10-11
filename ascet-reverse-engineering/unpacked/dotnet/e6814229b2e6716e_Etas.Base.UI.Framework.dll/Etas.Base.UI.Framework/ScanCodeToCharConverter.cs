using System;
using System.Diagnostics;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;

namespace Etas.Base.UI.Framework;

public static class ScanCodeToCharConverter
{
	private static readonly Keys[] _keyStates = new Keys[256];

	private static uint _procId;

	private static readonly uint _thread = GetWindowThreadProcessId(Process.GetCurrentProcess().MainWindowHandle, out _procId);

	private static readonly IntPtr _keyBoardlayout = GetKeyboardLayout(_thread);

	[DllImport("user32.dll", CharSet = CharSet.Unicode, ExactSpelling = true)]
	private static extern int ToUnicodeEx(uint wVirtKey, uint wScanCode, Keys[] lpKeyState, StringBuilder pwszBuff, int cchBuff, uint wFlags, IntPtr dwhkl);

	[DllImport("user32.dll", ExactSpelling = true)]
	internal static extern IntPtr GetKeyboardLayout(uint threadId);

	[DllImport("user32.dll", ExactSpelling = true)]
	internal static extern bool GetKeyboardState(Keys[] keyStates);

	[DllImport("user32.dll", ExactSpelling = true)]
	internal static extern uint GetWindowThreadProcessId(IntPtr hwindow, out uint processId);

	public static string ScanCodeToString(int scanCode)
	{
		if (_keyBoardlayout == IntPtr.Zero)
		{
			return string.Empty;
		}
		if (!GetKeyboardState(_keyStates))
		{
			return string.Empty;
		}
		StringBuilder stringBuilder = new StringBuilder(8);
		int num = -1;
		do
		{
			num = ToUnicodeEx((uint)scanCode, (uint)scanCode, _keyStates, stringBuilder, stringBuilder.Capacity, 0u, _keyBoardlayout);
		}
		while (num < 0);
		return stringBuilder.ToString();
	}
}
