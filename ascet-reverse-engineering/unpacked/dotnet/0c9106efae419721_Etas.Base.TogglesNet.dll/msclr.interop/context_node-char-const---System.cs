using System;
using System.Runtime.CompilerServices;
using System.Runtime.ExceptionServices;
using System.Runtime.InteropServices;
using msclr.interop.details;

namespace msclr.interop;

internal class context_node_003Cchar_0020const_0020_002A_002CSystem_003A_003AString_0020_005E_003E : context_node_base, IDisposable
{
	private unsafe sbyte* _ptr;

	public unsafe context_node_003Cchar_0020const_0020_002A_002CSystem_003A_003AString_0020_005E_003E(sbyte** _to_object, string _from_object)
	{
		_ptr = null;
		System.Runtime.CompilerServices.Unsafe.SkipInit(out char_buffer_003Cchar_003E char_buffer_003Cchar_003E);
		if (_from_object == null)
		{
			*(int*)_to_object = 0;
		}
		else
		{
			uint num = global::_003CModule_003E.msclr_002Einterop_002Edetails_002EGetAnsiStringSize(_from_object);
			*(int*)(&char_buffer_003Cchar_003E) = (int)global::_003CModule_003E.new_005B_005D(num);
			try
			{
				if (*(int*)(&char_buffer_003Cchar_003E) == 0)
				{
					throw new InsufficientMemoryException();
				}
				global::_003CModule_003E.msclr_002Einterop_002Edetails_002EWriteAnsiString((sbyte*)(int)(*(uint*)(&char_buffer_003Cchar_003E)), num, _from_object);
				sbyte* ptr = (sbyte*)(int)(*(uint*)(&char_buffer_003Cchar_003E));
				*(int*)(&char_buffer_003Cchar_003E) = 0;
				_ptr = ptr;
				*(int*)_to_object = (int)ptr;
			}
			catch
			{
				//try-fault
				global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<char_buffer_003Cchar_003E*, void>)(&global::_003CModule_003E.msclr_002Einterop_002Edetails_002Echar_buffer_003Cchar_003E_002E_007Bdtor_007D), &char_buffer_003Cchar_003E);
				throw;
			}
			global::_003CModule_003E.delete_005B_005D(null);
		}
		try
		{
			return;
		}
		catch
		{
			//try-fault
			global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<char_buffer_003Cchar_003E*, void>)(&global::_003CModule_003E.msclr_002Einterop_002Edetails_002Echar_buffer_003Cchar_003E_002E_007Bdtor_007D), &char_buffer_003Cchar_003E);
			throw;
		}
	}

	private unsafe void _007Econtext_node_003Cchar_0020const_0020_002A_002CSystem_003A_003AString_0020_005E_003E()
	{
		global::_003CModule_003E.delete_005B_005D(_ptr);
	}

	private unsafe void _0021context_node_003Cchar_0020const_0020_002A_002CSystem_003A_003AString_0020_005E_003E()
	{
		global::_003CModule_003E.delete_005B_005D(_ptr);
	}

	[HandleProcessCorruptedStateExceptions]
	protected unsafe virtual void Dispose([MarshalAs(UnmanagedType.U1)] bool P_0)
	{
		if (P_0)
		{
			global::_003CModule_003E.delete_005B_005D(_ptr);
			return;
		}
		try
		{
			_0021context_node_003Cchar_0020const_0020_002A_002CSystem_003A_003AString_0020_005E_003E();
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

	~context_node_003Cchar_0020const_0020_002A_002CSystem_003A_003AString_0020_005E_003E()
	{
		Dispose(false);
	}
}
