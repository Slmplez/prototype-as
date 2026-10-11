using System;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public sealed class WndProcHooker : IDisposable
{
	[DocumentationExclude]
	internal class MessageHookObject
	{
		private bool inrecursion;

		internal WeakReference reference;

		public MessageHookObject(WndProcHooker parent)
		{
			reference = new WeakReference(parent, trackResurrection: false);
		}

		public IntPtr Callback(int nCode, int wParam, int lParam)
		{
			IntPtr result = IntPtr.Zero;
			if (inrecursion)
			{
				return result;
			}
			try
			{
				WndProcHooker wndProcHooker = (WndProcHooker)reference.Target;
				if (wndProcHooker != null)
				{
					bool processMessage = true;
					result = wndProcHooker.MessageHookProc(nCode, wParam, lParam, ref processMessage);
					if (!processMessage)
					{
						inrecursion = true;
						try
						{
							WndProcHooker wndProcHooker2 = reference.Target as WndProcHooker;
							wndProcHooker2.DisableMessageHook = true;
							NativeMethods.CWPSTRUCT cWPSTRUCT = (NativeMethods.CWPSTRUCT)Marshal.PtrToStructure((IntPtr)lParam, typeof(NativeMethods.CWPSTRUCT));
							NativeMethods.MSG msg = default(NativeMethods.MSG);
							NativeMethods.PeekMessage(ref msg, cWPSTRUCT.hwnd, cWPSTRUCT.message, cWPSTRUCT.message, 1);
							result = IntPtr.Zero;
							wndProcHooker2.DisableMessageHook = false;
						}
						finally
						{
							inrecursion = false;
						}
					}
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

	private IMessageFilter client;

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

	public WndProcHooker(IntPtr handle, IMessageFilter client)
	{
		this.handle = handle;
		this.client = client;
	}

	~WndProcHooker()
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
				MessageHookHandle = NativeHookMethods.SetWindowsHookEx(4, hookProc, IntPtr.Zero, NativeMethods.GetCurrentThreadId());
			}
		}
	}

	private IntPtr MessageHookProc(int nCode, int wParam, int lParam, ref bool processMessage)
	{
		GC.KeepAlive(this);
		if (nCode >= 0 && !DisableMessageHook)
		{
			IMessageFilter messageFilter = client;
			if (messageFilter != null)
			{
				NativeMethods.CWPSTRUCT cWPSTRUCT = (NativeMethods.CWPSTRUCT)Marshal.PtrToStructure((IntPtr)lParam, typeof(NativeMethods.CWPSTRUCT));
				Message m = Message.Create(cWPSTRUCT.hwnd, cWPSTRUCT.message, cWPSTRUCT.wParam, cWPSTRUCT.lParam);
				if (messageFilter.PreFilterMessage(ref m))
				{
					processMessage = false;
					return (IntPtr)1;
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
