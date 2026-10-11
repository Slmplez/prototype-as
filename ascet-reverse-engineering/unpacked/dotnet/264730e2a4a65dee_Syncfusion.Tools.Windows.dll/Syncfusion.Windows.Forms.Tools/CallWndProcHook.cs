using System;
using System.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

internal class CallWndProcHook : WndHook
{
	public CallWndProcHook(WindowsAPI.WindowProc wndProc)
		: base(wndProc)
	{
		if (m_wndProc != null)
		{
			m_hHook = WindowsAPI.SetWindowsHookEx(4, m_hookProc, IntPtr.Zero, WindowsAPI.GetCurrentThreadId());
		}
	}

	protected override void CallWndProcInternal(int nCode, IntPtr wParam, IntPtr lParam)
	{
		CWPSTRUCT cWPSTRUCT = (CWPSTRUCT)Marshal.PtrToStructure(lParam, typeof(CWPSTRUCT));
		m_wndProc(cWPSTRUCT.hwnd, cWPSTRUCT.message, cWPSTRUCT.wparam, cWPSTRUCT.lparam);
	}
}
