using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;

namespace msclr.interop;

internal class marshal_context : IDisposable
{
	internal readonly LinkedList<object> _clean_up_list = new LinkedList<object>();

	private void _007Emarshal_context()
	{
		LinkedList<object>.Enumerator enumerator = _clean_up_list.GetEnumerator();
		if (!enumerator.MoveNext())
		{
			return;
		}
		do
		{
			if (enumerator.Current is IDisposable disposable)
			{
				disposable.Dispose();
			}
		}
		while (enumerator.MoveNext());
	}

	protected virtual void Dispose([MarshalAs(UnmanagedType.U1)] bool P_0)
	{
		if (P_0)
		{
			_007Emarshal_context();
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
