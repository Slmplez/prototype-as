using System;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public sealed class GetMsgProcHooker : IDisposable
{
	[DocumentationExclude]
	internal class MessageHookObject
	{
		private bool inrecursion;

		internal WeakReference reference;

		public MessageHookObject(GetMsgProcHooker parent)
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
				GetMsgProcHooker getMsgProcHooker = (GetMsgProcHooker)reference.Target;
				if (getMsgProcHooker != null)
				{
					bool processMessage = true;
					result = getMsgProcHooker.MessageHookProc(nCode, wParam, lParam, ref processMessage);
					if (!processMessage)
					{
						inrecursion = true;
						try
						{
							GetMsgProcHooker getMsgProcHooker2 = reference.Target as GetMsgProcHooker;
							getMsgProcHooker2.DisableMessageHook = true;
							Message message = (Message)Marshal.PtrToStructure((IntPtr)lParam, typeof(Message));
							NativeMethods.MSG msg = default(NativeMethods.MSG);
							NativeMethods.PeekMessage(ref msg, message.HWnd, message.Msg, message.Msg, 1);
							result = IntPtr.Zero;
							getMsgProcHooker2.DisableMessageHook = false;
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

	public GetMsgProcHooker(IntPtr handle, IMessageFilter client)
	{
		this.handle = handle;
		this.client = client;
	}

	~GetMsgProcHooker()
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
				MessageHookHandle = NativeHookMethods.SetWindowsHookEx(3, hookProc, IntPtr.Zero, NativeMethods.GetCurrentThreadId());
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
				Message m = (Message)Marshal.PtrToStructure((IntPtr)lParam, typeof(Message));
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
