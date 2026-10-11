using System;
using System.Runtime.InteropServices;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public sealed class KeyboardProcHooker : IDisposable
{
	[DocumentationExclude]
	internal class MessageHookObject
	{
		private const int HC_ACTION = 0;

		internal WeakReference reference;

		public MessageHookObject(KeyboardProcHooker parent)
		{
			reference = new WeakReference(parent, trackResurrection: false);
		}

		public IntPtr Callback(int nCode, int wParam, int lParam)
		{
			IntPtr result = IntPtr.Zero;
			try
			{
				if (nCode == 0)
				{
					KeyboardProcHooker keyboardProcHooker = (KeyboardProcHooker)reference.Target;
					if (keyboardProcHooker != null)
					{
						result = keyboardProcHooker.MessageHookProc(nCode, wParam, lParam);
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

	private IKeyboardProcHookClient client;

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

	public KeyboardProcHooker(IntPtr handle, IKeyboardProcHookClient client)
	{
		this.handle = handle;
		this.client = client;
	}

	~KeyboardProcHooker()
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
				MessageHookHandle = NativeHookMethods.SetWindowsHookEx(2, hookProc, IntPtr.Zero, NativeMethods.GetCurrentThreadId());
			}
		}
	}

	private IntPtr MessageHookProc(int nCode, int wParam, int lParam)
	{
		GC.KeepAlive(this);
		if (nCode >= 0)
		{
			IKeyboardProcHookClient keyboardProcHookClient = client;
			if (keyboardProcHookClient != null && keyboardProcHookClient.KeyboardHookProc(wParam, lParam))
			{
				return (IntPtr)1;
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
