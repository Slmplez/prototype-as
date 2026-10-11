using System;
using System.Collections;

namespace Syncfusion.Runtime.InteropServices;

public class NativeMethodsHelper
{
	private static Hashtable redrawWindowCallCountMap = new Hashtable();

	private static Hashtable m_htCallers = new Hashtable();

	public static void SuspendRedrawWindow(IntPtr ctlHandle)
	{
		if (redrawWindowCallCountMap.ContainsKey(ctlHandle))
		{
			int num = Convert.ToInt32(redrawWindowCallCountMap[ctlHandle]);
			num++;
			redrawWindowCallCountMap[ctlHandle] = num;
		}
		else
		{
			redrawWindowCallCountMap.Add(ctlHandle, 1);
			NativeMethods.SendMessage(ctlHandle, 11, IntPtr.Zero, IntPtr.Zero);
		}
	}

	public static void ResumeRedrawWindow(IntPtr ctlHandle)
	{
		ResumeRedrawWindow(ctlHandle, bRedraw: false);
	}

	public static void ResumeRedrawWindow(IntPtr ctlHandle, bool bRedraw)
	{
		if (!redrawWindowCallCountMap.ContainsKey(ctlHandle))
		{
			return;
		}
		int num = Convert.ToInt32(redrawWindowCallCountMap[ctlHandle]);
		num--;
		if (num == 0)
		{
			NativeMethods.SendMessage(ctlHandle, 11, new IntPtr(1), IntPtr.Zero);
			redrawWindowCallCountMap.Remove(ctlHandle);
			if (bRedraw)
			{
				RedrawWindow(ctlHandle);
			}
		}
		else
		{
			redrawWindowCallCountMap[ctlHandle] = num;
		}
	}

	public static void RedrawWindow(IntPtr ctlHandle)
	{
		int redrawFlags = 1157;
		RedrawWindow(ctlHandle, redrawFlags);
	}

	public static void RedrawWindow(IntPtr ctlHandle, int redrawFlags)
	{
		NativeMethods.RedrawWindow(ctlHandle, IntPtr.Zero, IntPtr.Zero, (uint)redrawFlags);
	}

	public static void SetRedrawWindow(IntPtr hWnd, bool bRedraw, bool bForceRedraw)
	{
		NativeMethods.SendMessage(hWnd, 11, new IntPtr(bRedraw ? 1 : 0), IntPtr.Zero);
		if (bRedraw && bForceRedraw)
		{
			RedrawWindow(hWnd, 1671);
		}
	}

	public static void SetRedrawWindow(IntPtr hWnd, bool bRedraw)
	{
		SetRedrawWindow(hWnd, bRedraw, bRedraw);
	}

	public static void LockWindowUpdate(IntPtr hWnd)
	{
		NativeMethods.LockWindowUpdate(hWnd);
	}

	public static void ResetRedrawCaller(IntPtr ctrlHandle, object caller)
	{
		if (m_htCallers[ctrlHandle] != null)
		{
			m_htCallers[ctrlHandle] = caller;
		}
	}

	public static bool SetRedrawWindow(IntPtr ctrlHandle, bool bRedraw, object caller)
	{
		bool flag = false;
		if (!bRedraw)
		{
			if (m_htCallers[ctrlHandle] == null)
			{
				flag = true;
				m_htCallers[ctrlHandle] = caller;
			}
		}
		else if (m_htCallers[ctrlHandle] != null)
		{
			object obj = m_htCallers[ctrlHandle];
			if (obj == caller)
			{
				flag = true;
				m_htCallers.Remove(ctrlHandle);
			}
		}
		if (flag)
		{
			SetRedrawWindow(ctrlHandle, bRedraw, bRedraw);
		}
		return flag;
	}
}
