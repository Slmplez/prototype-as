using System;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Design;

[DocumentationExclude]
public class ThreadHooks
{
	private IGetMsgProcListener[] getMsgProcArray = new IGetMsgProcListener[16];

	public int getMsgProcCount;

	private ICallWndProcListener[] callWndProcArray = new ICallWndProcListener[16];

	public int callWndProcCount;

	private IntPtr hkGetMsgProc = IntPtr.Zero;

	private IntPtr hkCallWndProc = IntPtr.Zero;

	private NativeMethods.HookProc getMsgProc;

	private NativeMethods.HookProc callWndProc;

	public static bool IgnoreWndProcNcodeZero;

	public bool GetMsgProcListContains(IGetMsgProcListener listener)
	{
		for (int i = 0; i < getMsgProcCount; i++)
		{
			if (listener == getMsgProcArray[i])
			{
				return true;
			}
		}
		return false;
	}

	public bool CallWndProcListContains(ICallWndProcListener listener)
	{
		for (int i = 0; i < callWndProcCount; i++)
		{
			if (listener == callWndProcArray[i])
			{
				return true;
			}
		}
		return false;
	}

	public void AddGetMsgProcListener(IGetMsgProcListener listener)
	{
		if (!GetMsgProcListContains(listener))
		{
			if (getMsgProcArray.Length <= getMsgProcCount)
			{
				IGetMsgProcListener[] destinationArray = new IGetMsgProcListener[(getMsgProcCount == 0) ? 16 : (getMsgProcCount * 2)];
				Array.Copy(getMsgProcArray, 0, destinationArray, 0, getMsgProcCount);
				Array.Clear(getMsgProcArray, 0, getMsgProcCount);
				getMsgProcArray = destinationArray;
			}
			getMsgProcArray[getMsgProcCount++] = listener;
		}
		if (getMsgProcCount > 0 && hkGetMsgProc == IntPtr.Zero)
		{
			getMsgProc = GetMsgProcedure;
			hkGetMsgProc = NativeMethods.SetWindowsHookEx(3, getMsgProc, IntPtr.Zero, NativeMethods.GetCurrentThreadId());
		}
	}

	public void RemoveGetMsgProcListener(IGetMsgProcListener listener)
	{
		for (int i = 0; i < getMsgProcCount; i++)
		{
			if (listener == getMsgProcArray[i])
			{
				getMsgProcCount--;
				if (i < getMsgProcCount)
				{
					Array.Copy(getMsgProcArray, i + 1, getMsgProcArray, i, getMsgProcCount - i);
				}
				getMsgProcArray[getMsgProcCount] = null;
				break;
			}
		}
		if (getMsgProcCount == 0 && hkGetMsgProc != IntPtr.Zero)
		{
			NativeMethods.UnhookWindowsHookEx(hkGetMsgProc);
			getMsgProc = null;
			hkGetMsgProc = IntPtr.Zero;
		}
	}

	public void AddCallWndProcListener(ICallWndProcListener listener)
	{
		if (!CallWndProcListContains(listener))
		{
			if (callWndProcArray.Length <= callWndProcCount)
			{
				ICallWndProcListener[] destinationArray = new ICallWndProcListener[(callWndProcCount == 0) ? 16 : (callWndProcCount * 2)];
				Array.Copy(callWndProcArray, 0, destinationArray, 0, callWndProcCount);
				Array.Clear(callWndProcArray, 0, callWndProcCount);
				callWndProcArray = destinationArray;
			}
			callWndProcArray[callWndProcCount++] = listener;
		}
		if (callWndProcCount > 0 && hkCallWndProc == IntPtr.Zero)
		{
			callWndProc = CallWndProcedure;
			hkCallWndProc = NativeMethods.SetWindowsHookEx(4, callWndProc, IntPtr.Zero, NativeMethods.GetCurrentThreadId());
		}
	}

	public void RemoveCallWndProcListener(ICallWndProcListener listener)
	{
		for (int i = 0; i < callWndProcCount; i++)
		{
			if (listener == callWndProcArray[i])
			{
				callWndProcCount--;
				if (i < callWndProcCount)
				{
					Array.Copy(callWndProcArray, i + 1, callWndProcArray, i, callWndProcCount - i);
				}
				callWndProcArray[callWndProcCount] = null;
				break;
			}
		}
		if (callWndProcCount == 0 && hkCallWndProc != IntPtr.Zero)
		{
			NativeMethods.UnhookWindowsHookEx(hkCallWndProc);
			callWndProc = null;
			hkCallWndProc = IntPtr.Zero;
		}
	}

	public IntPtr GetMsgProcedure(int ncode, IntPtr wparam, IntPtr lparam)
	{
		if ((!IgnoreWndProcNcodeZero || ncode != 0) && ncode >= 0)
		{
			IGetMsgProcListener[] array = new IGetMsgProcListener[getMsgProcCount];
			Array.Copy(getMsgProcArray, array, getMsgProcCount);
			IGetMsgProcListener[] array2 = array;
			foreach (IGetMsgProcListener getMsgProcListener in array2)
			{
				getMsgProcListener.GetMsgProc(ncode, wparam, lparam);
			}
		}
		return NativeMethods.CallNextHookEx(hkGetMsgProc, ncode, wparam, lparam);
	}

	public IntPtr CallWndProcedure(int ncode, IntPtr wparam, IntPtr lparam)
	{
		if (ncode >= 0)
		{
			ICallWndProcListener[] array = new ICallWndProcListener[callWndProcCount];
			Array.Copy(callWndProcArray, array, callWndProcCount);
			ICallWndProcListener[] array2 = array;
			foreach (ICallWndProcListener callWndProcListener in array2)
			{
				callWndProcListener.CallWndProc(ncode, wparam, lparam);
			}
		}
		return NativeMethods.CallNextHookEx(hkCallWndProc, ncode, wparam, lparam);
	}
}
