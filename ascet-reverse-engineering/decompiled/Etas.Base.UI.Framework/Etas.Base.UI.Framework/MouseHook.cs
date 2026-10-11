using System;
using System.Collections;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Etas.Base.Shared;

namespace Etas.Base.UI.Framework;

public class MouseHook : IDisposable
{
	private Win32Helper.WindowsMessages _lastMessage = Win32Helper.WindowsMessages.WM_NOMESSAGE;

	private bool _disposed;

	private int _hHook;

	private Win32Helper.HookProc _hookProcedure;

	private ArrayList _arrayList;

	private bool _mouseDown;

	public bool LeftButtonDown => _mouseDown;

	public bool ShiftDown => (Win32Helper.GetAsyncKeyState(16) & -32768) == -32768;

	public MouseHook()
	{
		_arrayList = new ArrayList();
		_hookProcedure = MouseHookProc;
		_hHook = Win32Helper.SetWindowsHookEx(7, _hookProcedure, (IntPtr)0, AppDomain.GetCurrentThreadId());
		if (_hHook == 0)
		{
			throw new ApplicationException("SetWindowsHookEx Failed");
		}
	}

	~MouseHook()
	{
		Dispose(disposing: false);
		GC.SuppressFinalize(this);
	}

	public object AddDelegate(MouseHookCallback callback)
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

	private int MouseHookProc(int nCode, IntPtr wParam, IntPtr lParam)
	{
		WinUser.MouseHookStruct mouseHookStruct = (WinUser.MouseHookStruct)Marshal.PtrToStructure(lParam, typeof(WinUser.MouseHookStruct));
		Point point = new Point(mouseHookStruct.pt.x, mouseHookStruct.pt.y);
		Win32Helper.WindowsMessages windowsMessages = (Win32Helper.WindowsMessages)(int)wParam;
		if (windowsMessages == _lastMessage)
		{
			_lastMessage = Win32Helper.WindowsMessages.WM_NOMESSAGE;
			return Win32Helper.CallNextHookEx(_hHook, nCode, wParam, lParam);
		}
		_lastMessage = windowsMessages;
		if (windowsMessages == Win32Helper.WindowsMessages.WM_LBUTTONDOWN || windowsMessages == Win32Helper.WindowsMessages.WM_NCLBUTTONDOWN)
		{
			_mouseDown = true;
		}
		if (windowsMessages == Win32Helper.WindowsMessages.WM_LBUTTONUP || windowsMessages == Win32Helper.WindowsMessages.WM_NCLBUTTONUP)
		{
			_mouseDown = false;
		}
		int num = 0;
		switch (windowsMessages)
		{
		case Win32Helper.WindowsMessages.WM_NCLBUTTONDOWN:
		case Win32Helper.WindowsMessages.WM_NCLBUTTONUP:
		case Win32Helper.WindowsMessages.WM_NCLBUTTONDBLCLK:
		case Win32Helper.WindowsMessages.WM_MOUSEFIRST:
		case Win32Helper.WindowsMessages.WM_LBUTTONDOWN:
		case Win32Helper.WindowsMessages.WM_LBUTTONUP:
		case Win32Helper.WindowsMessages.WM_LBUTTONDBLCLK:
			try
			{
				foreach (MouseHookCallback array in _arrayList)
				{
					int num2 = array(mouseHookStruct.hwnd, windowsMessages, point);
					if (num2 != 0)
					{
						num = num2;
					}
				}
			}
			catch (InvalidOperationException exception)
			{
				Logger.LogException(exception);
				return Win32Helper.CallNextHookEx(_hHook, nCode, wParam, lParam);
			}
			break;
		}
		int result = Win32Helper.CallNextHookEx(_hHook, nCode, wParam, lParam);
		if (num == 0)
		{
			return result;
		}
		return num;
	}

	public static bool EventIsContainedByWindow(Form form, Point point, int hwnd)
	{
		if ((form.Bounds.Contains(point) || form.Capture) && (form.Bounds.Contains(point) || !form.Capture))
		{
			Control control = Control.FromHandle((IntPtr)hwnd);
			if (control == null)
			{
				return false;
			}
			if (form.Handle == control.Handle)
			{
				return true;
			}
			while (control != null)
			{
				if (control.Handle == form.Handle)
				{
					return true;
				}
				control = control.Parent;
			}
		}
		return false;
	}
}
