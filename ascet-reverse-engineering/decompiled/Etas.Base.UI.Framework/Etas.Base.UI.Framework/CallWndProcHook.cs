using System;
using System.Collections;
using System.Runtime.InteropServices;

namespace Etas.Base.UI.Framework;

public class CallWndProcHook : IDisposable
{
	private bool _disposed;

	private ArrayList _arrayList;

	private int _hHook;

	private Win32Helper.HookProc _hookProcedure;

	public CallWndProcHook()
	{
		_arrayList = new ArrayList();
		_hookProcedure = CallWndHookProc;
		_hHook = Win32Helper.SetWindowsHookEx(4, _hookProcedure, (IntPtr)0, AppDomain.GetCurrentThreadId());
		if (_hHook == 0)
		{
			throw new ApplicationException("SetWindowsHookEx Failed");
		}
	}

	~CallWndProcHook()
	{
		Dispose(disposing: false);
		GC.SuppressFinalize(this);
	}

	public object AddDelegate(CallWndProcHookCallback callback)
	{
		_arrayList.Add(callback);
		return callback;
	}

	public void RemoveDelegate(object hookCallback)
	{
		_arrayList.Remove(hookCallback);
	}

	protected void Dispose(bool disposing)
	{
		if (!_disposed && _hHook != 0 && !Win32Helper.UnhookWindowsHookEx(_hHook))
		{
			throw new ApplicationException("UnhookWindowsHookEx Failed");
		}
		_disposed = true;
	}

	public void Dispose()
	{
		Dispose(disposing: true);
	}

	private int CallWndHookProc(int nCode, IntPtr wParam, IntPtr lParam)
	{
		WinUser.CallWindowHookStruct callWindowHookStruct = (WinUser.CallWindowHookStruct)Marshal.PtrToStructure(lParam, typeof(WinUser.CallWindowHookStruct));
		Win32Helper.WindowsMessages message = (Win32Helper.WindowsMessages)callWindowHookStruct.message;
		int num = 0;
		Win32Helper.WindowsMessages windowsMessages = message;
		if (windowsMessages == Win32Helper.WindowsMessages.WM_SIZE || windowsMessages == Win32Helper.WindowsMessages.WM_NCPAINT)
		{
			try
			{
				foreach (CallWndProcHookCallback array in _arrayList)
				{
					int num2 = array((IntPtr)callWindowHookStruct.hwnd, message, callWindowHookStruct.wParam, callWindowHookStruct.lParam);
					if (num2 != 0)
					{
						num = num2;
					}
				}
			}
			catch (InvalidOperationException)
			{
				return Win32Helper.CallNextHookEx(_hHook, nCode, wParam, lParam);
			}
		}
		int result = Win32Helper.CallNextHookEx(_hHook, nCode, wParam, lParam);
		if (num == 0)
		{
			return result;
		}
		return num;
	}
}
