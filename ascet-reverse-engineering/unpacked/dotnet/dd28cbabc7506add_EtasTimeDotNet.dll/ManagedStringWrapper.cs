using System;
using System.Runtime.InteropServices;

internal class ManagedStringWrapper : IDisposable
{
	private IntPtr m_pointer;

	public ManagedStringWrapper()
	{
		ref IntPtr pointer = ref m_pointer;
		pointer = new IntPtr(0);
		base._002Ector();
	}

	public ManagedStringWrapper(string s)
	{
		ref IntPtr pointer = ref m_pointer;
		pointer = new IntPtr(0);
		base._002Ector();
		if (s != null)
		{
			IntPtr pointer2 = Marshal.StringToHGlobalAnsi(s);
			m_pointer = pointer2;
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

	private void _007EManagedStringWrapper()
	{
		if (m_pointer != IntPtr.Zero)
		{
			Marshal.FreeHGlobal(m_pointer);
		}
	}

	public unsafe implicit operator sbyte*()
	{
		return (sbyte*)m_pointer.ToPointer();
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
