using System;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using _003CCppImplementationDetails_003E;
using etas;

namespace EtasTime;

public class HighResolutionCounter : EtasUnknown
{
	protected unsafe override EtasUUID* getUUID(EtasUUID* P_0)
	{
		sbyte* ptr = (sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040NCNPKHIN_00403F6F227A_003F92F9D_003F94BA5_003F9A5B3_003F9CFEF0949_0040);
		do
		{
			ptr++;
		}
		while (*ptr != 0);
		int num = (ref *(_003F*)ptr) - (ref System.Runtime.CompilerServices.Unsafe.As<_0024ArrayType_0024_0024_0024BY0CF_0040_0024_0024CBD, _003F>(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040NCNPKHIN_00403F6F227A_003F92F9D_003F94BA5_003F9A5B3_003F9CFEF0949_0040));
		global::_003CModule_003E.etas_002Estring_generator_002Eoperator_0028_0029_003Cchar_0020const_0020_002A_003E((string_generator*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003FA0x72f3f262_002Eetas_uuid_generator), P_0, (sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040NCNPKHIN_00403F6F227A_003F92F9D_003F94BA5_003F9A5B3_003F9CFEF0949_0040), (sbyte*)((ref *(_003F*)num) + (ref System.Runtime.CompilerServices.Unsafe.As<_0024ArrayType_0024_0024_0024BY0CF_0040_0024_0024CBD, _003F>(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040NCNPKHIN_00403F6F227A_003F92F9D_003F94BA5_003F9A5B3_003F9CFEF0949_0040))));
		return P_0;
	}

	public unsafe HighResolutionCounter(IHighResolutionCounter* pointer)
	{
		wrappedObject = (IEtasUnknown*)pointer;
		((object)this)._002Ector();
		IEtasUnknown* ptr = wrappedObject;
		if (ptr != null)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(int)(*(uint*)ptr)))((nint)ptr);
		}
	}

	public unsafe HighResolutionCounter()
	{
		wrappedObject = null;
		((object)this)._002Ector();
	}

	[return: MarshalAs(UnmanagedType.U1)]
	public unsafe override bool Equals(object obj)
	{
		if (obj is HighResolutionCounter highResolutionCounter && highResolutionCounter.Get() == wrappedObject)
		{
			return true;
		}
		return false;
	}

	public unsafe override int GetHashCode()
	{
		return (int)wrappedObject;
	}

	public unsafe virtual string GetName()
	{
		//Discarded unreachable code: IL_0144
		System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E);
		*(int*)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E) = 0;
		string result;
		try
		{
			if (*(int*)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E) != 0)
			{
				int num = *(int*)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E);
				*(int*)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E) = 0;
				((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num + 4)))((IntPtr)num);
			}
			IEtasUnknown* ptr = wrappedObject;
			IEtasUnknown* ptr2 = ptr;
			int num2 = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, IEtasWideCharString**, int>)(int)(*(uint*)(*(int*)ptr + 12)))((nint)ptr, (IEtasWideCharString**)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E));
			if (num2 < 0)
			{
				System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CIGetEtasError_003E cEtasPtr_003CIGetEtasError_003E);
				*(int*)(&cEtasPtr_003CIGetEtasError_003E) = 0;
				try
				{
					if (*(int*)(&cEtasPtr_003CIGetEtasError_003E) != 0)
					{
						int num3 = *(int*)(&cEtasPtr_003CIGetEtasError_003E);
						*(int*)(&cEtasPtr_003CIGetEtasError_003E) = 0;
						((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num3 + 4)))((IntPtr)num3);
					}
					((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, EtasUUID*, void**, int>)(int)(*(uint*)(*(int*)ptr2 + 8)))((nint)ptr2, (EtasUUID*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003FA0x72f3f262_002EINTERFACE_UUID_IGetEtasError), (void**)(&cEtasPtr_003CIGetEtasError_003E));
					System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CIEtasError_003E cEtasPtr_003CIEtasError_003E);
					*(int*)(&cEtasPtr_003CIEtasError_003E) = 0;
					try
					{
						int num4 = *(int*)(&cEtasPtr_003CIGetEtasError_003E);
						if (*(int*)(&cEtasPtr_003CIEtasError_003E) != 0)
						{
							int num5 = *(int*)(&cEtasPtr_003CIEtasError_003E);
							*(int*)(&cEtasPtr_003CIEtasError_003E) = 0;
							((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num5 + 4)))((IntPtr)num5);
						}
						((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, IEtasError**, int>)(int)(*(uint*)(*(int*)num4 + 12)))((IntPtr)num4, (IEtasError**)(&cEtasPtr_003CIEtasError_003E));
						if ((byte)((*(int*)(&cEtasPtr_003CIEtasError_003E) != 0) ? 1u : 0u) != 0)
						{
							throw new EtasModuleWrapperException(num2, (IEtasError*)(int)(*(uint*)(&cEtasPtr_003CIEtasError_003E)));
						}
						throw new EtasModuleWrapperException(num2);
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
			char* ptr3 = null;
			if (*(int*)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E) == 0)
			{
				goto IL_011b;
			}
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, char**, int>)(int)(*(uint*)(*(int*)(int)(*(uint*)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E)) + 16)))((IntPtr)(*(int*)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E)), &ptr3);
			if (ptr3 == null)
			{
				goto IL_011b;
			}
			char* value = null;
			if (*(int*)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E) != 0)
			{
				((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, char**, int>)(int)(*(uint*)(*(int*)(int)(*(uint*)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E)) + 16)))((IntPtr)(*(int*)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E)), &value);
			}
			result = new string(value);
			goto end_IL_0004;
			IL_011b:
			result = null;
			end_IL_0004:;
		}
		catch
		{
			//try-fault
			global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<CEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E*, void>)(&global::_003CModule_003E.CEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E_002E_007Bdtor_007D), &cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E);
			throw;
		}
		if (*(int*)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E) != 0)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)(int)(*(uint*)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E)) + 4)))((IntPtr)(*(int*)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E)));
		}
		return result;
	}

	public unsafe virtual WaitableTickTimer CreateTickTimer()
	{
		//Discarded unreachable code: IL_0110
		System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CEtasTime_003A_003AIWaitableTickTimer_003E cEtasPtr_003CEtasTime_003A_003AIWaitableTickTimer_003E);
		*(int*)(&cEtasPtr_003CEtasTime_003A_003AIWaitableTickTimer_003E) = 0;
		WaitableTickTimer result;
		try
		{
			if (*(int*)(&cEtasPtr_003CEtasTime_003A_003AIWaitableTickTimer_003E) != 0)
			{
				int num = *(int*)(&cEtasPtr_003CEtasTime_003A_003AIWaitableTickTimer_003E);
				*(int*)(&cEtasPtr_003CEtasTime_003A_003AIWaitableTickTimer_003E) = 0;
				((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num + 4)))((IntPtr)num);
			}
			IEtasUnknown* ptr = wrappedObject;
			IEtasUnknown* ptr2 = ptr;
			int num2 = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, IWaitableTickTimer**, int>)(int)(*(uint*)(*(int*)ptr + 16)))((nint)ptr, (IWaitableTickTimer**)(&cEtasPtr_003CEtasTime_003A_003AIWaitableTickTimer_003E));
			if (num2 < 0)
			{
				System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CIGetEtasError_003E cEtasPtr_003CIGetEtasError_003E);
				*(int*)(&cEtasPtr_003CIGetEtasError_003E) = 0;
				try
				{
					if (*(int*)(&cEtasPtr_003CIGetEtasError_003E) != 0)
					{
						int num3 = *(int*)(&cEtasPtr_003CIGetEtasError_003E);
						*(int*)(&cEtasPtr_003CIGetEtasError_003E) = 0;
						((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num3 + 4)))((IntPtr)num3);
					}
					((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, EtasUUID*, void**, int>)(int)(*(uint*)(*(int*)ptr2 + 8)))((nint)ptr2, (EtasUUID*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003FA0x72f3f262_002EINTERFACE_UUID_IGetEtasError), (void**)(&cEtasPtr_003CIGetEtasError_003E));
					System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CIEtasError_003E cEtasPtr_003CIEtasError_003E);
					*(int*)(&cEtasPtr_003CIEtasError_003E) = 0;
					try
					{
						int num4 = *(int*)(&cEtasPtr_003CIGetEtasError_003E);
						if (*(int*)(&cEtasPtr_003CIEtasError_003E) != 0)
						{
							int num5 = *(int*)(&cEtasPtr_003CIEtasError_003E);
							*(int*)(&cEtasPtr_003CIEtasError_003E) = 0;
							((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num5 + 4)))((IntPtr)num5);
						}
						((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, IEtasError**, int>)(int)(*(uint*)(*(int*)num4 + 12)))((IntPtr)num4, (IEtasError**)(&cEtasPtr_003CIEtasError_003E));
						if ((byte)((*(int*)(&cEtasPtr_003CIEtasError_003E) != 0) ? 1u : 0u) != 0)
						{
							throw new EtasModuleWrapperException(num2, (IEtasError*)(int)(*(uint*)(&cEtasPtr_003CIEtasError_003E)));
						}
						throw new EtasModuleWrapperException(num2);
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
			result = ((*(int*)(&cEtasPtr_003CEtasTime_003A_003AIWaitableTickTimer_003E) == 0) ? null : new WaitableTickTimer((IWaitableTickTimer*)(int)(*(uint*)(&cEtasPtr_003CEtasTime_003A_003AIWaitableTickTimer_003E))));
		}
		catch
		{
			//try-fault
			global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<CEtasPtr_003CEtasTime_003A_003AIWaitableTickTimer_003E*, void>)(&global::_003CModule_003E.CEtasPtr_003CEtasTime_003A_003AIWaitableTickTimer_003E_002E_007Bdtor_007D), &cEtasPtr_003CEtasTime_003A_003AIWaitableTickTimer_003E);
			throw;
		}
		if (*(int*)(&cEtasPtr_003CEtasTime_003A_003AIWaitableTickTimer_003E) != 0)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)(int)(*(uint*)(&cEtasPtr_003CEtasTime_003A_003AIWaitableTickTimer_003E)) + 4)))((IntPtr)(*(int*)(&cEtasPtr_003CEtasTime_003A_003AIWaitableTickTimer_003E)));
		}
		return result;
	}

	public unsafe virtual void SleepTick(ulong ticks)
	{
		IEtasUnknown* ptr = wrappedObject;
		IEtasUnknown* ptr2 = ptr;
		int num = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, ulong, int>)(int)(*(uint*)(*(int*)ptr + 20)))((nint)ptr, ticks);
		System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CIGetEtasError_003E cEtasPtr_003CIGetEtasError_003E);
		System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CIEtasError_003E cEtasPtr_003CIEtasError_003E);
		if (num < 0)
		{
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
		try
		{
			try
			{
				return;
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

	public unsafe virtual ulong GetFrequencyInHz()
	{
		//Discarded unreachable code: IL_00bc
		IEtasUnknown* ptr = wrappedObject;
		IEtasUnknown* ptr2 = ptr;
		System.Runtime.CompilerServices.Unsafe.SkipInit(out ulong result);
		int num = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, ulong*, int>)(int)(*(uint*)(*(int*)ptr + 24)))((nint)ptr, &result);
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

	public unsafe virtual ulong GetTick()
	{
		//Discarded unreachable code: IL_00bc
		IEtasUnknown* ptr = wrappedObject;
		IEtasUnknown* ptr2 = ptr;
		System.Runtime.CompilerServices.Unsafe.SkipInit(out ulong result);
		int num = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, ulong*, int>)(int)(*(uint*)(*(int*)ptr + 28)))((nint)ptr, &result);
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

	[return: MarshalAs(UnmanagedType.U1)]
	public unsafe virtual bool IsMultiCoreSynchronized()
	{
		//Discarded unreachable code: IL_00bc
		IEtasUnknown* ptr = wrappedObject;
		IEtasUnknown* ptr2 = ptr;
		System.Runtime.CompilerServices.Unsafe.SkipInit(out bool result);
		int num = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, bool*, int>)(int)(*(uint*)(*(int*)ptr + 32)))((nint)ptr, &result);
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

	[return: MarshalAs(UnmanagedType.U1)]
	public unsafe virtual bool IsEventSupported()
	{
		//Discarded unreachable code: IL_00bc
		IEtasUnknown* ptr = wrappedObject;
		IEtasUnknown* ptr2 = ptr;
		System.Runtime.CompilerServices.Unsafe.SkipInit(out bool result);
		int num = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, bool*, int>)(int)(*(uint*)(*(int*)ptr + 36)))((nint)ptr, &result);
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

	public unsafe virtual void SleepTickHighPrecision(ulong ticks)
	{
		IEtasUnknown* ptr = wrappedObject;
		IEtasUnknown* ptr2 = ptr;
		int num = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, ulong, int>)(int)(*(uint*)(*(int*)ptr + 40)))((nint)ptr, ticks);
		System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CIGetEtasError_003E cEtasPtr_003CIGetEtasError_003E);
		System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CIEtasError_003E cEtasPtr_003CIEtasError_003E);
		if (num < 0)
		{
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
		try
		{
			try
			{
				return;
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
}
