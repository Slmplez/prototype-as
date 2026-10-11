using System;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using _003CCppImplementationDetails_003E;
using etas;

namespace EtasTime;

public class CorrectionFunction : EtasUnknown
{
	protected unsafe override EtasUUID* getUUID(EtasUUID* P_0)
	{
		sbyte* ptr = (sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040DDDECNJI_00404CA6B644_003F94426_003F946CB_003F9AE30_003F97FEC9C98_0040);
		do
		{
			ptr++;
		}
		while (*ptr != 0);
		int num = (ref *(_003F*)ptr) - (ref System.Runtime.CompilerServices.Unsafe.As<_0024ArrayType_0024_0024_0024BY0CF_0040_0024_0024CBD, _003F>(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040DDDECNJI_00404CA6B644_003F94426_003F946CB_003F9AE30_003F97FEC9C98_0040));
		global::_003CModule_003E.etas_002Estring_generator_002Eoperator_0028_0029_003Cchar_0020const_0020_002A_003E((string_generator*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003FA0x72f3f262_002Eetas_uuid_generator), P_0, (sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040DDDECNJI_00404CA6B644_003F94426_003F946CB_003F9AE30_003F97FEC9C98_0040), (sbyte*)((ref *(_003F*)num) + (ref System.Runtime.CompilerServices.Unsafe.As<_0024ArrayType_0024_0024_0024BY0CF_0040_0024_0024CBD, _003F>(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040DDDECNJI_00404CA6B644_003F94426_003F946CB_003F9AE30_003F97FEC9C98_0040))));
		return P_0;
	}

	public unsafe CorrectionFunction(ICorrectionFunction* pointer)
	{
		wrappedObject = (IEtasUnknown*)pointer;
		((object)this)._002Ector();
		IEtasUnknown* ptr = wrappedObject;
		if (ptr != null)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(int)(*(uint*)ptr)))((nint)ptr);
		}
	}

	public unsafe CorrectionFunction()
	{
		wrappedObject = null;
		((object)this)._002Ector();
	}

	[return: MarshalAs(UnmanagedType.U1)]
	public unsafe override bool Equals(object obj)
	{
		if (obj is CorrectionFunction correctionFunction && correctionFunction.Get() == wrappedObject)
		{
			return true;
		}
		return false;
	}

	public unsafe override int GetHashCode()
	{
		return (int)wrappedObject;
	}

	public unsafe virtual long TickToTime(ulong ticks)
	{
		//Discarded unreachable code: IL_00c3
		System.Runtime.CompilerServices.Unsafe.SkipInit(out EtasFileTime etasFileTime);
		*(long*)(&etasFileTime) = 0L;
		IEtasUnknown* ptr = wrappedObject;
		IEtasUnknown* ptr2 = ptr;
		int num = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, ulong, EtasFileTime*, int>)(int)(*(uint*)(*(int*)ptr + 12)))((nint)ptr, ticks, &etasFileTime);
		if (num < 0)
		{
			System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CIGetEtasError_003E cEtasPtr_003CIGetEtasError_003E);
			*(int*)(&cEtasPtr_003CIGetEtasError_003E) = 0;
			try
			{
				if (*(int*)(&cEtasPtr_003CIGetEtasError_003E) != 0)
				{
					int num2 = *(int*)(&cEtasPtr_003CIGetEtasError_003E);
					*(int*)(&cEtasPtr_003CIGetEtasError_003E) = 0;
					((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num2 + 4)))((IntPtr)num2);
				}
				((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, EtasUUID*, void**, int>)(int)(*(uint*)(*(int*)ptr2 + 8)))((nint)ptr2, (EtasUUID*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003FA0x72f3f262_002EINTERFACE_UUID_IGetEtasError), (void**)(&cEtasPtr_003CIGetEtasError_003E));
				System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CIEtasError_003E cEtasPtr_003CIEtasError_003E);
				*(int*)(&cEtasPtr_003CIEtasError_003E) = 0;
				try
				{
					int num3 = *(int*)(&cEtasPtr_003CIGetEtasError_003E);
					if (*(int*)(&cEtasPtr_003CIEtasError_003E) != 0)
					{
						int num4 = *(int*)(&cEtasPtr_003CIEtasError_003E);
						*(int*)(&cEtasPtr_003CIEtasError_003E) = 0;
						((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num4 + 4)))((IntPtr)num4);
					}
					((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, IEtasError**, int>)(int)(*(uint*)(*(int*)num3 + 12)))((IntPtr)num3, (IEtasError**)(&cEtasPtr_003CIEtasError_003E));
					if ((byte)((*(int*)(&cEtasPtr_003CIEtasError_003E) != 0) ? 1u : 0u) != 0)
					{
						throw new EtasModuleWrapperException(num, (IEtasError*)(int)(*(uint*)(&cEtasPtr_003CIEtasError_003E)));
					}
					throw new EtasModuleWrapperException(num);
				}
				catch
				{
					//try-fault
					global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<CEtasPtr_003CIEtasError_003E*, void>)(&global::_003CModule_003E.CEtasPtr_003CIEtasError_003E_002E_007Bdtor_007D), &cEtasPtr_003CIEtasError_003E);
					throw;
				}
			}
			catch
			{
				//try-fault
				global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<CEtasPtr_003CIGetEtasError_003E*, void>)(&global::_003CModule_003E.CEtasPtr_003CIGetEtasError_003E_002E_007Bdtor_007D), &cEtasPtr_003CIGetEtasError_003E);
				throw;
			}
		}
		return *(long*)(&etasFileTime);
	}

	public unsafe virtual ulong TimeToTick(long time)
	{
		//Discarded unreachable code: IL_00c2
		System.Runtime.CompilerServices.Unsafe.SkipInit(out EtasFileTime etasFileTime);
		*(long*)(&etasFileTime) = time;
		IEtasUnknown* ptr = wrappedObject;
		IEtasUnknown* ptr2 = ptr;
		System.Runtime.CompilerServices.Unsafe.SkipInit(out ulong result);
		int num = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, EtasFileTime, ulong*, int>)(int)(*(uint*)(*(int*)ptr + 16)))((nint)ptr, etasFileTime, &result);
		if (num < 0)
		{
			System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CIGetEtasError_003E cEtasPtr_003CIGetEtasError_003E);
			*(int*)(&cEtasPtr_003CIGetEtasError_003E) = 0;
			try
			{
				if (*(int*)(&cEtasPtr_003CIGetEtasError_003E) != 0)
				{
					int num2 = *(int*)(&cEtasPtr_003CIGetEtasError_003E);
					*(int*)(&cEtasPtr_003CIGetEtasError_003E) = 0;
					((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num2 + 4)))((IntPtr)num2);
				}
				((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, EtasUUID*, void**, int>)(int)(*(uint*)(*(int*)ptr2 + 8)))((nint)ptr2, (EtasUUID*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003FA0x72f3f262_002EINTERFACE_UUID_IGetEtasError), (void**)(&cEtasPtr_003CIGetEtasError_003E));
				System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CIEtasError_003E cEtasPtr_003CIEtasError_003E);
				*(int*)(&cEtasPtr_003CIEtasError_003E) = 0;
				try
				{
					int num3 = *(int*)(&cEtasPtr_003CIGetEtasError_003E);
					if (*(int*)(&cEtasPtr_003CIEtasError_003E) != 0)
					{
						int num4 = *(int*)(&cEtasPtr_003CIEtasError_003E);
						*(int*)(&cEtasPtr_003CIEtasError_003E) = 0;
						((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num4 + 4)))((IntPtr)num4);
					}
					((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, IEtasError**, int>)(int)(*(uint*)(*(int*)num3 + 12)))((IntPtr)num3, (IEtasError**)(&cEtasPtr_003CIEtasError_003E));
					if ((byte)((*(int*)(&cEtasPtr_003CIEtasError_003E) != 0) ? 1u : 0u) != 0)
					{
						throw new EtasModuleWrapperException(num, (IEtasError*)(int)(*(uint*)(&cEtasPtr_003CIEtasError_003E)));
					}
					throw new EtasModuleWrapperException(num);
				}
				catch
				{
					//try-fault
					global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<CEtasPtr_003CIEtasError_003E*, void>)(&global::_003CModule_003E.CEtasPtr_003CIEtasError_003E_002E_007Bdtor_007D), &cEtasPtr_003CIEtasError_003E);
					throw;
				}
			}
			catch
			{
				//try-fault
				global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<CEtasPtr_003CIGetEtasError_003E*, void>)(&global::_003CModule_003E.CEtasPtr_003CIGetEtasError_003E_002E_007Bdtor_007D), &cEtasPtr_003CIGetEtasError_003E);
				throw;
			}
		}
		return result;
	}

	public unsafe virtual double GetCurrentTimePerTick()
	{
		//Discarded unreachable code: IL_00bc
		IEtasUnknown* ptr = wrappedObject;
		IEtasUnknown* ptr2 = ptr;
		System.Runtime.CompilerServices.Unsafe.SkipInit(out double result);
		int num = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, double*, int>)(int)(*(uint*)(*(int*)ptr + 20)))((nint)ptr, &result);
		if (num < 0)
		{
			System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CIGetEtasError_003E cEtasPtr_003CIGetEtasError_003E);
			*(int*)(&cEtasPtr_003CIGetEtasError_003E) = 0;
			try
			{
				if (*(int*)(&cEtasPtr_003CIGetEtasError_003E) != 0)
				{
					int num2 = *(int*)(&cEtasPtr_003CIGetEtasError_003E);
					*(int*)(&cEtasPtr_003CIGetEtasError_003E) = 0;
					((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num2 + 4)))((IntPtr)num2);
				}
				((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, EtasUUID*, void**, int>)(int)(*(uint*)(*(int*)ptr2 + 8)))((nint)ptr2, (EtasUUID*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003FA0x72f3f262_002EINTERFACE_UUID_IGetEtasError), (void**)(&cEtasPtr_003CIGetEtasError_003E));
				System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CIEtasError_003E cEtasPtr_003CIEtasError_003E);
				*(int*)(&cEtasPtr_003CIEtasError_003E) = 0;
				try
				{
					int num3 = *(int*)(&cEtasPtr_003CIGetEtasError_003E);
					if (*(int*)(&cEtasPtr_003CIEtasError_003E) != 0)
					{
						int num4 = *(int*)(&cEtasPtr_003CIEtasError_003E);
						*(int*)(&cEtasPtr_003CIEtasError_003E) = 0;
						((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num4 + 4)))((IntPtr)num4);
					}
					((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, IEtasError**, int>)(int)(*(uint*)(*(int*)num3 + 12)))((IntPtr)num3, (IEtasError**)(&cEtasPtr_003CIEtasError_003E));
					if ((byte)((*(int*)(&cEtasPtr_003CIEtasError_003E) != 0) ? 1u : 0u) != 0)
					{
						throw new EtasModuleWrapperException(num, (IEtasError*)(int)(*(uint*)(&cEtasPtr_003CIEtasError_003E)));
					}
					throw new EtasModuleWrapperException(num);
				}
				catch
				{
					//try-fault
					global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<CEtasPtr_003CIEtasError_003E*, void>)(&global::_003CModule_003E.CEtasPtr_003CIEtasError_003E_002E_007Bdtor_007D), &cEtasPtr_003CIEtasError_003E);
					throw;
				}
			}
			catch
			{
				//try-fault
				global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<CEtasPtr_003CIGetEtasError_003E*, void>)(&global::_003CModule_003E.CEtasPtr_003CIGetEtasError_003E_002E_007Bdtor_007D), &cEtasPtr_003CIGetEtasError_003E);
				throw;
			}
		}
		return result;
	}
}
