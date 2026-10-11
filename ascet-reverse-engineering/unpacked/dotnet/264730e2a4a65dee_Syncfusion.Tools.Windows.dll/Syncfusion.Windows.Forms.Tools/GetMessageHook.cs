using System;
using System.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

internal class GetMessageHook : WndHook
{
	public GetMessageHook(WindowsAPI.WindowProc wndProc)
		: base(wndProc)
	{
		if (m_wndProc != null)
		{
			m_hHook = WindowsAPI.SetWindowsHookEx(3, m_hookProc, IntPtr.Zero, WindowsAPI.GetCurrentThreadId());
		}
	}

	protected override void CallWndProcInternal(int nCode, IntPtr wParam, IntPtr lParam)
	{
		MSG mSG = (MSG)Marshal.PtrToStructure(lParam, typeof(MSG));
		m_wndProc(mSG.hwnd, mSG.message, mSG.wParam, mSG.lParam);
	}
}
