using System;
using System.Runtime.InteropServices;

internal class ManagedWStringWrapper : IDisposable
{
	private IntPtr m_pointer;

	public ManagedWStringWrapper()
	{
		ref IntPtr pointer = ref m_pointer;
		pointer = new IntPtr(0);
		base._002Ector();
	}

	public ManagedWStringWrapper(string s)
	{
		ref IntPtr pointer = ref m_pointer;
		pointer = new IntPtr(0);
		base._002Ector();
		if (s != null)
		{
			IntPtr pointer2 = Marshal.StringToHGlobalUni(s);
			m_pointer = pointer2;
		}
	}

	private void _007EManagedWStringWrapper()
	{
		if (m_pointer != IntPtr.Zero)
		{
			Marshal.FreeHGlobal(m_pointer);
		}
	}

	public void SetString(string s)
	{
		if (m_pointer != IntPtr.Zero)
		{
			Marshal.FreeHGlobal(m_pointer);
		}
		IntPtr pointer = Marshal.StringToHGlobalAnsi(s);
		m_pointer = pointer;
	}

	public unsafe implicit operator char*()
	{
		return (char*)m_pointer.ToPointer();
	}

	protected virtual void Dispose([MarshalAs(UnmanagedType.U1)] bool P_0)
	{
		if (P_0)
		{
			if (m_pointer != IntPtr.Zero)
			{
				Marshal.FreeHGlobal(m_pointer);
			}
		}
		else
		{
			base.Finalize();
		}
	}

	public virtual sealed void Dispose()
	{
		Dispose(true);
		GC.SuppressFinalize(this);
	}
}
