using System;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using _003CCppImplementationDetails_003E;
using etas;

namespace EtasTime;

public class WaitForEvents : EtasUnknown
{
	protected unsafe override EtasUUID* getUUID(EtasUUID* P_0)
	{
		sbyte* ptr = (sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040KIBGGPPA_00408534850D_003F984FF_003F94598_003F9B1BA_003F993A0F4E1_0040);
		do
		{
			ptr++;
		}
		while (*ptr != 0);
		int num = (ref *(_003F*)ptr) - (ref System.Runtime.CompilerServices.Unsafe.As<_0024ArrayType_0024_0024_0024BY0CF_0040_0024_0024CBD, _003F>(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040KIBGGPPA_00408534850D_003F984FF_003F94598_003F9B1BA_003F993A0F4E1_0040));
		global::_003CModule_003E.etas_002Estring_generator_002Eoperator_0028_0029_003Cchar_0020const_0020_002A_003E((string_generator*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003FA0x72f3f262_002Eetas_uuid_generator), P_0, (sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040KIBGGPPA_00408534850D_003F984FF_003F94598_003F9B1BA_003F993A0F4E1_0040), (sbyte*)((ref *(_003F*)num) + (ref System.Runtime.CompilerServices.Unsafe.As<_0024ArrayType_0024_0024_0024BY0CF_0040_0024_0024CBD, _003F>(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040KIBGGPPA_00408534850D_003F984FF_003F94598_003F9B1BA_003F993A0F4E1_0040))));
		return P_0;
	}

	public unsafe WaitForEvents(IWaitForEvents* pointer)
	{
		wrappedObject = (IEtasUnknown*)pointer;
		((object)this)._002Ector();
		IEtasUnknown* ptr = wrappedObject;
		if (ptr != null)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(int)(*(uint*)ptr)))((nint)ptr);
		}
	}

	public unsafe WaitForEvents()
	{
		wrappedObject = null;
		((object)this)._002Ector();
	}

	[return: MarshalAs(UnmanagedType.U1)]
	public unsafe override bool Equals(object obj)
	{
		if (obj is WaitForEvents waitForEvents && waitForEvents.Get() == wrappedObject)
		{
			return true;
		}
		return false;
	}

	public unsafe override int GetHashCode()
	{
		return (int)wrappedObject;
	}

	public unsafe virtual uint WaitForMultipleEvents(uint[] handles, [MarshalAs(UnmanagedType.U1)] bool waitAll, uint timeout)
	{
		//Discarded unreachable code: IL_00dc
		//The blocks IL_001a, IL_003f, IL_00d9 are reachable both inside and outside the pinned region starting at IL_0010. ILSpy has duplicated these blocks in order to place them both within and outside the `fixed` statement.
		uint* ptr = null;
		uint num = 0u;
		System.Runtime.CompilerServices.Unsafe.SkipInit(out uint result);
		System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CIGetEtasError_003E cEtasPtr_003CIGetEtasError_003E);
		int num3;
		System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CIEtasError_003E cEtasPtr_003CIEtasError_003E);
		int num5;
		int num6;
		IEtasUnknown* ptr3;
		IEtasUnknown* ptr4;
		int num2;
		if (handles != null)
		{
			fixed (uint* ptr2 = &handles[0])
			{
				ptr = ptr2;
				num = (uint)handles.Length;
				ptr3 = wrappedObject;
				ptr4 = ptr3;
				num2 = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint*, uint, byte, uint, uint*, int>)(int)(*(uint*)(*(int*)ptr3 + 12)))((nint)ptr3, ptr, num, waitAll ? ((byte)1) : ((byte)0), timeout, &result);
				if (num2 < 0)
				{
					*(int*)(&cEtasPtr_003CIGetEtasError_003E) = 0;
					try
					{
						if (*(int*)(&cEtasPtr_003CIGetEtasError_003E) != 0)
						{
							num3 = *(int*)(&cEtasPtr_003CIGetEtasError_003E);
							*(int*)(&cEtasPtr_003CIGetEtasError_003E) = 0;
							((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num3 + 4)))((IntPtr)num3);
						}
						((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, EtasUUID*, void**, int>)(int)(*(uint*)(*(int*)ptr4 + 8)))((nint)ptr4, (EtasUUID*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003FA0x72f3f262_002EINTERFACE_UUID_IGetEtasError), (void**)(&cEtasPtr_003CIGetEtasError_003E));
						*(int*)(&cEtasPtr_003CIEtasError_003E) = 0;
						try
						{
							int num4 = *(int*)(&cEtasPtr_003CIGetEtasError_003E);
							if (*(int*)(&cEtasPtr_003CIEtasError_003E) != 0)
							{
								num5 = *(int*)(&cEtasPtr_003CIEtasError_003E);
								*(int*)(&cEtasPtr_003CIEtasError_003E) = 0;
								((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num5 + 4)))((IntPtr)num5);
							}
							((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, IEtasError**, int>)(int)(*(uint*)(*(int*)num4 + 12)))((IntPtr)num4, (IEtasError**)(&cEtasPtr_003CIEtasError_003E));
							num6 = ((*(int*)(&cEtasPtr_003CIEtasError_003E) != 0) ? 1 : 0);
							if ((byte)num6 != 0)
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
				return result;
			}
		}
		ptr3 = wrappedObject;
		ptr4 = ptr3;
		num2 = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint*, uint, byte, uint, uint*, int>)(int)(*(uint*)(*(int*)ptr3 + 12)))((nint)ptr3, ptr, num, waitAll ? ((byte)1) : ((byte)0), timeout, &result);
		if (num2 < 0)
		{
			*(int*)(&cEtasPtr_003CIGetEtasError_003E) = 0;
			try
			{
				if (*(int*)(&cEtasPtr_003CIGetEtasError_003E) != 0)
				{
					num3 = *(int*)(&cEtasPtr_003CIGetEtasError_003E);
					*(int*)(&cEtasPtr_003CIGetEtasError_003E) = 0;
					((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num3 + 4)))((IntPtr)num3);
				}
				((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, EtasUUID*, void**, int>)(int)(*(uint*)(*(int*)ptr4 + 8)))((nint)ptr4, (EtasUUID*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003FA0x72f3f262_002EINTERFACE_UUID_IGetEtasError), (void**)(&cEtasPtr_003CIGetEtasError_003E));
				*(int*)(&cEtasPtr_003CIEtasError_003E) = 0;
				try
				{
					int num4 = *(int*)(&cEtasPtr_003CIGetEtasError_003E);
					if (*(int*)(&cEtasPtr_003CIEtasError_003E) != 0)
					{
						num5 = *(int*)(&cEtasPtr_003CIEtasError_003E);
						*(int*)(&cEtasPtr_003CIEtasError_003E) = 0;
						((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num5 + 4)))((IntPtr)num5);
					}
					((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, IEtasError**, int>)(int)(*(uint*)(*(int*)num4 + 12)))((IntPtr)num4, (IEtasError**)(&cEtasPtr_003CIEtasError_003E));
					num6 = ((*(int*)(&cEtasPtr_003CIEtasError_003E) != 0) ? 1 : 0);
					if ((byte)num6 != 0)
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
		return result;
	}
}
