using System;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

public sealed class NativeMessageHandler
{
	private class Handlers : Dictionary<IntPtr, ArrayList>
	{
		public void AddHandler(IntPtr hWnd, NativeMessageHandler handler)
		{
			ArrayList arrayList = null;
			if (ContainsKey(hWnd))
			{
				arrayList = base[hWnd];
			}
			if (arrayList == null)
			{
				arrayList = (base[hWnd] = new ArrayList());
			}
			arrayList.Add(handler);
		}

		public void RemoveHandlers(IntPtr hWnd)
		{
			if (ContainsKey(hWnd))
			{
				base[hWnd].Clear();
				Remove(hWnd);
			}
		}
	}

	private delegate IntPtr SetWindowLongPtr(IntPtr hWnd, int nIndex, WindowsAPI.WindowProc wndProc);

	private const int GWLP_WNDPROC = -4;

	private WindowsAPI.WindowProc m_wndProc;

	private IntPtr m_hWnd;

	private IntPtr m_defProc;

	private INativeMessageFilter m_preProcessFilter;

	private INativeMessageFilter2 m_postProcessFlter;

	private static Handlers m_handlers;

	public bool IsAssigned => m_hWnd != IntPtr.Zero;

	public INativeMessageFilter MessageFilter
	{
		get
		{
			return m_preProcessFilter;
		}
		set
		{
			m_preProcessFilter = value;
			m_postProcessFlter = value as INativeMessageFilter2;
		}
	}

	static NativeMessageHandler()
	{
		m_handlers = new Handlers();
	}

	public NativeMessageHandler()
	{
		m_wndProc = WndProc;
		m_hWnd = IntPtr.Zero;
		m_defProc = IntPtr.Zero;
		m_preProcessFilter = null;
		m_postProcessFlter = null;
	}

	public void Assign(IntPtr hWnd)
	{
		if (!IsAssigned)
		{
			if (WindowsAPI.IsWindow(hWnd) != 0)
			{
				m_hWnd = hWnd;
				m_defProc = SetWndProc(hWnd, m_wndProc);
				m_handlers.AddHandler(hWnd, this);
			}
			return;
		}
		throw new InvalidOperationException("Handle is already assigned");
	}

	public void Unassign()
	{
		if (IsAssigned)
		{
			m_handlers.RemoveHandlers(m_hWnd);
			m_hWnd = IntPtr.Zero;
			return;
		}
		throw new InvalidOperationException("No handle assigned");
	}

	private IntPtr WndProc(IntPtr hWnd, int msg, IntPtr wparam, IntPtr lparam)
	{
		if (msg == 2)
		{
			MessageFilter = null;
		}
		IntPtr result = CallWndProc(hWnd, msg, wparam, lparam);
		if (msg == 130)
		{
			m_handlers.RemoveHandlers(hWnd);
			m_hWnd = IntPtr.Zero;
		}
		return result;
	}

	private IntPtr CallWndProc(IntPtr hWnd, int msg, IntPtr wparam, IntPtr lparam)
	{
		Message m = new Message
		{
			HWnd = hWnd,
			Msg = msg,
			WParam = wparam,
			LParam = lparam
		};
		if (!PreProcessing(ref m))
		{
			DefProcessing(ref m);
			PostProcessing(ref m);
		}
		return m.Result;
	}

	private bool PreProcessing(ref Message m)
	{
		if (m_preProcessFilter != null)
		{
			return m_preProcessFilter.ProcessMessage(ref m);
		}
		return false;
	}

	private void PostProcessing(ref Message m)
	{
		if (m_postProcessFlter != null)
		{
			m_postProcessFlter.PostProcessMessage(ref m);
		}
	}

	private void DefProcessing(ref Message m)
	{
		if (m_defProc != IntPtr.Zero)
		{
			m.Result = (IntPtr)WindowsAPI.CallWindowProc(m_defProc, m.HWnd, m.Msg, m.WParam, m.LParam);
		}
		else
		{
			m.Result = (IntPtr)WindowsAPI.DefWindowProc(m.HWnd, m.Msg, m.WParam, m.LParam);
		}
	}

	private IntPtr SetWndProc(IntPtr hWnd, WindowsAPI.WindowProc wndProc)
	{
		IntPtr result = IntPtr.Zero;
		IntPtr intPtr = LoadLibrary("user32.dll");
		if (intPtr != IntPtr.Zero)
		{
			IntPtr procAddress = GetProcAddress(intPtr, "SetWindowLongPtrW");
			if (procAddress == IntPtr.Zero)
			{
				procAddress = GetProcAddress(intPtr, "SetWindowLongW");
			}
			if (procAddress != IntPtr.Zero)
			{
				SetWindowLongPtr setWindowLongPtr = (SetWindowLongPtr)Marshal.GetDelegateForFunctionPointer(procAddress, typeof(SetWindowLongPtr));
				result = setWindowLongPtr(hWnd, -4, wndProc);
			}
			FreeLibrary(intPtr);
		}
		return result;
	}

	[DllImport("kernel32.dll", CharSet = CharSet.Auto)]
	private static extern IntPtr LoadLibrary(string sFileName);

	[DllImport("kernel32.dll")]
	private static extern bool FreeLibrary(IntPtr hModule);

	[DllImport("kernel32.dll")]
	private static extern IntPtr GetProcAddress(IntPtr hModule, string sProcName);
}
