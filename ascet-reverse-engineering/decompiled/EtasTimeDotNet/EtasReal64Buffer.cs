using System;
using System.Runtime.ExceptionServices;
using System.Runtime.InteropServices;

public class EtasReal64Buffer : IDisposable
{
	private unsafe IEtasArray_003Cdouble_003E* wrapped_object = null;

	private unsafe double* m_begin = null;

	private uint m_size = 0u;

	public int Length => (int)m_size;

	public unsafe double this[int index]
	{
		get
		{
			if (wrapped_object != null)
			{
				if (index >= 0 && index < (int)m_size)
				{
					return *(double*)(index * 8 + (byte*)m_begin);
				}
				throw new IndexOutOfRangeException();
			}
			return 0.0;
		}
	}

	public unsafe EtasReal64Buffer(IEtasArray_003Cdouble_003E* pointer)
	{
		if (pointer != null)
		{
			wrapped_object = pointer;
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(int)(*(uint*)pointer)))((nint)pointer);
			double* begin = null;
			uint size = 0u;
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, double**, uint*, int>)(int)(*(uint*)(*(int*)pointer + 16)))((nint)pointer, &begin, &size);
			m_begin = begin;
			m_size = size;
		}
	}

	private unsafe void _007EEtasReal64Buffer()
	{
		IEtasArray_003Cdouble_003E* ptr = wrapped_object;
		if (ptr != null)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)ptr + 4)))((nint)ptr);
		}
		wrapped_object = null;
	}

	private unsafe void _0021EtasReal64Buffer()
	{
		IEtasArray_003Cdouble_003E* ptr = wrapped_object;
		if (ptr != null)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)ptr + 4)))((nint)ptr);
		}
		wrapped_object = null;
	}

	public unsafe void dispose_impl()
	{
		IEtasArray_003Cdouble_003E* ptr = wrapped_object;
		if (ptr != null)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)ptr + 4)))((nint)ptr);
		}
		wrapped_object = null;
	}

	[HandleProcessCorruptedStateExceptions]
	protected unsafe virtual void Dispose([MarshalAs(UnmanagedType.U1)] bool P_0)
	{
		if (P_0)
		{
			IEtasArray_003Cdouble_003E* ptr = wrapped_object;
			if (ptr != null)
			{
				((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)ptr + 4)))((nint)ptr);
			}
			wrapped_object = null;
			return;
		}
		try
		{
			_0021EtasReal64Buffer();
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

	~EtasReal64Buffer()
	{
		Dispose(false);
	}
}
