using System;
using System.Runtime.ExceptionServices;
using System.Runtime.InteropServices;

namespace msclr.interop;

internal class context_node_003Cwchar_t_0020const_0020_002A_002CSystem_003A_003AString_0020_005E_003E : context_node_base, IDisposable
{
	private IntPtr _ip;

	public unsafe context_node_003Cwchar_t_0020const_0020_002A_002CSystem_003A_003AString_0020_005E_003E(char** _to_object, string _from_object)
	{
		IntPtr ip = Marshal.StringToHGlobalUni(_from_object);
		_ip = ip;
		*(int*)_to_object = (int)_ip.ToPointer();
	}

	private void _007Econtext_node_003Cwchar_t_0020const_0020_002A_002CSystem_003A_003AString_0020_005E_003E()
	{
		if (_ip != IntPtr.Zero)
		{
			Marshal.FreeHGlobal(_ip);
		}
	}

	private void _0021context_node_003Cwchar_t_0020const_0020_002A_002CSystem_003A_003AString_0020_005E_003E()
	{
		if (_ip != IntPtr.Zero)
		{
			Marshal.FreeHGlobal(_ip);
		}
	}

	[HandleProcessCorruptedStateExceptions]
	protected virtual void Dispose([MarshalAs(UnmanagedType.U1)] bool P_0)
	{
		if (P_0)
		{
			if (_ip != IntPtr.Zero)
			{
				Marshal.FreeHGlobal(_ip);
			}
			return;
		}
		try
		{
			_0021context_node_003Cwchar_t_0020const_0020_002A_002CSystem_003A_003AString_0020_005E_003E();
		}
		finally
		{
			base.Finalize();
		}
	}

	public virtual sealed void Dispose()
	{
		Dispose(true);
		GC.SuppressFinalize(this);
	}

	~context_node_003Cwchar_t_0020const_0020_002A_002CSystem_003A_003AString_0020_005E_003E()
	{
		Dispose(false);
	}
}
