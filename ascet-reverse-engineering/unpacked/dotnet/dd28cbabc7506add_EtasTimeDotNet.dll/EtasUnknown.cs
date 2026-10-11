using System;
using System.Runtime.CompilerServices;
using System.Runtime.ExceptionServices;
using System.Runtime.InteropServices;
using _003CCppImplementationDetails_003E;
using etas;

public abstract class EtasUnknown : IDisposable
{
	protected unsafe IEtasUnknown* wrappedObject;

	internal unsafe virtual IEtasUnknown* Get()
	{
		return wrappedObject;
	}

	protected unsafe virtual void setWrappedObject(IEtasUnknown* objectPtr, [MarshalAs(UnmanagedType.U1)] bool addRef)
	{
		dispose_impl();
		if (objectPtr != null)
		{
			wrappedObject = objectPtr;
			if (addRef)
			{
				((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(int)(*(uint*)objectPtr)))((nint)objectPtr);
			}
		}
	}

	protected unsafe virtual EtasUUID* getUUID(EtasUUID* P_0)
	{
		sbyte* ptr = (sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040FLDMBFAB_004020589DAC_003F92116_003F94EF7_003F9AFE3_003F9A5353EED_0040);
		do
		{
			ptr++;
		}
		while (*ptr != 0);
		int num = (ref *(_003F*)ptr) - (ref System.Runtime.CompilerServices.Unsafe.As<_0024ArrayType_0024_0024_0024BY0CF_0040_0024_0024CBD, _003F>(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040FLDMBFAB_004020589DAC_003F92116_003F94EF7_003F9AFE3_003F9A5353EED_0040));
		global::_003CModule_003E.etas_002Estring_generator_002Eoperator_0028_0029_003Cchar_0020const_0020_002A_003E((string_generator*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003FA0x72f3f262_002Eetas_uuid_generator), P_0, (sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040FLDMBFAB_004020589DAC_003F92116_003F94EF7_003F9AFE3_003F9A5353EED_0040), (sbyte*)((ref *(_003F*)num) + (ref System.Runtime.CompilerServices.Unsafe.As<_0024ArrayType_0024_0024_0024BY0CF_0040_0024_0024CBD, _003F>(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040FLDMBFAB_004020589DAC_003F92116_003F94EF7_003F9AFE3_003F9A5353EED_0040))));
		return P_0;
	}

	public unsafe EtasUnknown()
	{
		wrappedObject = null;
		base._002Ector();
	}

	public unsafe EtasUnknown(IEtasUnknown* ptr)
	{
		wrappedObject = ptr;
		base._002Ector();
		IEtasUnknown* ptr2 = wrappedObject;
		if (ptr2 != null)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(int)(*(uint*)ptr2)))((nint)ptr2);
		}
	}

	private void _007EEtasUnknown()
	{
		dispose_impl();
	}

	private void _0021EtasUnknown()
	{
		dispose_impl();
	}

	public unsafe virtual void dispose_impl()
	{
		IEtasUnknown* ptr = wrappedObject;
		if (ptr != null)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)ptr + 4)))((nint)ptr);
		}
		wrappedObject = null;
	}

	[return: MarshalAs(UnmanagedType.U1)]
	public unsafe override bool Equals(object obj)
	{
		if (obj is EtasUnknown etasUnknown && etasUnknown.Get() == wrappedObject)
		{
			return true;
		}
		return false;
	}

	public unsafe override int GetHashCode()
	{
		return (int)wrappedObject;
	}

	public virtual uint AddRef()
	{
		return 1u;
	}

	public virtual uint Release()
	{
		return 1u;
	}

	public unsafe virtual T QueryInterface<T>() where T : EtasUnknown, new()
	{
		T result = new T();
		void* ptr = null;
		IEtasUnknown* ptr2 = wrappedObject;
		System.Runtime.CompilerServices.Unsafe.SkipInit(out EtasUUID etasUUID);
		if (0 == ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, EtasUUID*, void**, int>)(int)(*(uint*)(*(int*)ptr2 + 8)))((nint)ptr2, result.getUUID(&etasUUID), &ptr) && null != ptr)
		{
			void* objectPtr = ptr;
			result.setWrappedObject((IEtasUnknown*)objectPtr, addRef: false);
		}
		else
		{
			result = null;
		}
		return result;
	}

	[HandleProcessCorruptedStateExceptions]
	protected virtual void Dispose([MarshalAs(UnmanagedType.U1)] bool P_0)
	{
		if (P_0)
		{
			dispose_impl();
			return;
		}
		try
		{
			dispose_impl();
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

	~EtasUnknown()
	{
		Dispose(false);
	}
}
