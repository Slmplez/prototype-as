using System;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

internal abstract class WndHook : IDisposable
{
	protected WindowsAPI.WindowProc m_wndProc;

	protected WindowsAPI.HookProc m_hookProc;

	protected IntPtr m_hHook;

	public WndHook(WindowsAPI.WindowProc wndProc)
	{
		m_wndProc = wndProc;
		m_hookProc = CallWndProc;
	}

	private IntPtr CallWndProc(int nCode, IntPtr wParam, IntPtr lParam)
	{
		CallWndProcInternal(nCode, wParam, lParam);
		return WindowsAPI.CallNextHookEx(m_hHook, nCode, wParam, lParam);
	}

	protected abstract void CallWndProcInternal(int nCode, IntPtr wParam, IntPtr lParam);

	public void Dispose()
	{
		if (m_hHook != IntPtr.Zero)
		{
			WindowsAPI.UnhookWindowsHookEx(m_hHook);
		}
	}
}
