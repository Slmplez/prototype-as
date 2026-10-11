using System;
using System.Runtime.InteropServices;

internal class ManagedWStringArrayWrapper : IDisposable
{
	private unsafe char** m_pointer;

	private ManagedWStringWrapper[] m_wrapper;

	public unsafe ManagedWStringArrayWrapper(string[] s_array)
	{
		int num = s_array.Length;
		m_wrapper = new ManagedWStringWrapper[num];
		uint num2 = (uint)num;
		m_pointer = (char**)global::_003CModule_003E.new_005B_005D((num2 > 1073741823) ? uint.MaxValue : (num2 << 2));
		int num3 = 0;
		if (0 < (nint)s_array.LongLength)
		{
			do
			{
				ManagedWStringWrapper[] wrapper = m_wrapper;
				wrapper[num3] = new ManagedWStringWrapper(s_array[num3]);
				*(int*)(num3 * 4 + (byte*)m_pointer) = (int)wrapper[num3].op_Implicit();
				num3++;
			}
			while (num3 < (nint)s_array.LongLength);
		}
	}

	private unsafe void _007EManagedWStringArrayWrapper()
	{
		int num = 0;
		if (0 < (nint)m_wrapper.LongLength)
		{
			do
			{
				ManagedWStringWrapper[] wrapper = m_wrapper;
				ManagedWStringWrapper managedWStringWrapper = wrapper[num];
				wrapper[num] = null;
				((IDisposable)managedWStringWrapper)?.Dispose();
				num++;
			}
			while (num < (nint)m_wrapper.LongLength);
		}
		global::_003CModule_003E.delete_005B_005D(m_pointer);
		m_wrapper = null;
	}

	public unsafe implicit operator char**()
	{
		return m_pointer;
	}

	protected virtual void Dispose([MarshalAs(UnmanagedType.U1)] bool P_0)
	{
		if (P_0)
		{
			_007EManagedWStringArrayWrapper();
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
