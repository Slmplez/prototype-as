using System;
using System.Runtime.InteropServices;

internal class ManagedStringArrayWrapper : IDisposable
{
	private unsafe sbyte** m_pointer;

	private ManagedStringWrapper[] m_wrapper;

	public unsafe ManagedStringArrayWrapper(string[] s_array)
	{
		int num = s_array.Length;
		m_wrapper = new ManagedStringWrapper[num];
		uint num2 = (uint)num;
		m_pointer = (sbyte**)global::_003CModule_003E.new_005B_005D((num2 > 1073741823) ? uint.MaxValue : (num2 << 2));
		int num3 = 0;
		if (0 < (nint)s_array.LongLength)
		{
			do
			{
				ManagedStringWrapper[] wrapper = m_wrapper;
				wrapper[num3] = new ManagedStringWrapper(s_array[num3]);
				*(int*)(num3 * 4 + (byte*)m_pointer) = (int)wrapper[num3].op_Implicit();
				num3++;
			}
			while (num3 < (nint)s_array.LongLength);
		}
	}

	private unsafe void _007EManagedStringArrayWrapper()
	{
		int num = 0;
		if (0 < (nint)m_wrapper.LongLength)
		{
			do
			{
				ManagedStringWrapper[] wrapper = m_wrapper;
				ManagedStringWrapper managedStringWrapper = wrapper[num];
				wrapper[num] = null;
				((IDisposable)managedStringWrapper)?.Dispose();
				num++;
			}
			while (num < (nint)m_wrapper.LongLength);
		}
		global::_003CModule_003E.delete_005B_005D(m_pointer);
		m_wrapper = null;
	}

	public unsafe implicit operator sbyte**()
	{
		return m_pointer;
	}

	protected virtual void Dispose([MarshalAs(UnmanagedType.U1)] bool P_0)
	{
		if (P_0)
		{
			_007EManagedStringArrayWrapper();
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
