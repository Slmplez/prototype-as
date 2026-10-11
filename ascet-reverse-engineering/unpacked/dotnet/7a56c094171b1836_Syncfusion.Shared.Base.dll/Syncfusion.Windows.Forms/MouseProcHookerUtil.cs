using System;
using System.Drawing;
using System.Runtime.InteropServices;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class MouseProcHookerUtil : IDisposable
{
	[DocumentationExclude]
	internal class MessageHookObject
	{
		internal MouseProcHookerUtil reference;

		public MessageHookObject(MouseProcHookerUtil parent)
		{
			reference = parent;
		}

		public IntPtr Callback(int nCode, int wParam, int lParam)
		{
			IntPtr result = IntPtr.Zero;
			try
			{
				MouseProcHookerUtil mouseProcHookerUtil = reference;
				if (mouseProcHookerUtil != null)
				{
					result = mouseProcHookerUtil.MessageHookProc(nCode, wParam, lParam);
				}
			}
			catch (Exception ex)
			{
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(null, ex))
				{
					throw;
				}
			}
			return result;
		}
	}

	internal int thisProcessID;

	private IMouseHookProcClient client;

	private IMouseHookHLProcClient clientHL;

	private IntPtr handle;

	private bool hookDisable;

	private IntPtr MessageHookHandle;

	private GCHandle MessageHookRoot;

	public bool DisableMessageHook
	{
		get
		{
			return hookDisable;
		}
		set
		{
			hookDisable = value;
		}
	}

	public bool HookMessages
	{
		get
		{
			GC.KeepAlive(this);
			return MessageHookHandle != IntPtr.Zero;
		}
		set
		{
			if (value && !hookDisable)
			{
				HookMessage();
			}
			else
			{
				UnHookMessage();
			}
		}
	}

	public MouseProcHookerUtil(IntPtr handle, IMouseHookProcClient client)
	{
		this.handle = handle;
		this.client = client;
	}

	public MouseProcHookerUtil(IntPtr handle, IMouseHookHLProcClient clientHL)
	{
		this.handle = handle;
		this.clientHL = clientHL;
	}

	~MouseProcHookerUtil()
	{
		Dispose();
	}

	public void Dispose()
	{
		UnHookMessage();
		GC.SuppressFinalize(this);
	}

	private void HookMessage()
	{
		GC.KeepAlive(this);
		lock (this)
		{
			if (MessageHookHandle == IntPtr.Zero)
			{
				if (thisProcessID == 0)
				{
					NativeHookMethods.GetWindowThreadProcessId(handle, ref thisProcessID);
				}
				MessageHookObject messageHookObject = new MessageHookObject(this);
				NativeHookMethods.HookProc hookProc = messageHookObject.Callback;
				MessageHookRoot = GCHandle.Alloc(hookProc);
				int num = 0;
				num = ((client == null) ? 7 : 14);
				MessageHookHandle = NativeHookMethods.SetWindowsHookEx(num, hookProc, IntPtr.Zero, NativeMethods.GetCurrentThreadId());
			}
		}
	}

	private IntPtr MessageHookProc(int nCode, int wParam, int lParam)
	{
		GC.KeepAlive(this);
		if (nCode >= 0)
		{
			if (client != null)
			{
				NativeHookMethods.MOUSEHOOKSTRUCT_LL mOUSEHOOKSTRUCT_LL = (NativeHookMethods.MOUSEHOOKSTRUCT_LL)Marshal.PtrToStructure((IntPtr)lParam, typeof(NativeHookMethods.MOUSEHOOKSTRUCT_LL));
				if (mOUSEHOOKSTRUCT_LL != null)
				{
					IMouseHookProcClient mouseHookProcClient = client;
					if (mouseHookProcClient.MouseHookProc(wParam, new Point(mOUSEHOOKSTRUCT_LL.pt_x, mOUSEHOOKSTRUCT_LL.pt_y), mOUSEHOOKSTRUCT_LL.dwExtraInfo))
					{
						return (IntPtr)1;
					}
				}
			}
			else if (clientHL != null)
			{
				NativeHookMethods.MOUSEHOOKSTRUCT mOUSEHOOKSTRUCT = (NativeHookMethods.MOUSEHOOKSTRUCT)Marshal.PtrToStructure((IntPtr)lParam, typeof(NativeHookMethods.MOUSEHOOKSTRUCT));
				if (mOUSEHOOKSTRUCT != null)
				{
					IMouseHookHLProcClient mouseHookHLProcClient = clientHL;
					if (mouseHookHLProcClient.MouseHookProc(wParam, new Point(mOUSEHOOKSTRUCT.pt_x, mOUSEHOOKSTRUCT.pt_y), mOUSEHOOKSTRUCT.hwnd, mOUSEHOOKSTRUCT.wHitTestCode, mOUSEHOOKSTRUCT.dwExtraInfo))
					{
						return (IntPtr)1;
					}
				}
			}
		}
		return NativeHookMethods.CallNextHookEx(MessageHookHandle, nCode, wParam, lParam);
	}

	private void UnHookMessage()
	{
		GC.KeepAlive(this);
		lock (this)
		{
			if (MessageHookHandle != IntPtr.Zero)
			{
				NativeHookMethods.UnhookWindowsHookEx(MessageHookHandle);
				MessageHookRoot.Free();
				MessageHookHandle = IntPtr.Zero;
			}
		}
	}
}
