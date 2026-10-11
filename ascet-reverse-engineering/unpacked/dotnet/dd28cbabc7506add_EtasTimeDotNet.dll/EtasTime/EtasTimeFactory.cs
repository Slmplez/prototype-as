using System;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using _003CCppImplementationDetails_003E;
using etas;

namespace EtasTime;

public class EtasTimeFactory : EtasUnknown
{
	protected unsafe override EtasUUID* getUUID(EtasUUID* P_0)
	{
		sbyte* ptr = (sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040MNHMHEEF_00407D30EBCE_003F9DB13_003F94806_003F9B6FC_003F98059DF73_0040);
		do
		{
			ptr++;
		}
		while (*ptr != 0);
		int num = (ref *(_003F*)ptr) - (ref System.Runtime.CompilerServices.Unsafe.As<_0024ArrayType_0024_0024_0024BY0CF_0040_0024_0024CBD, _003F>(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040MNHMHEEF_00407D30EBCE_003F9DB13_003F94806_003F9B6FC_003F98059DF73_0040));
		global::_003CModule_003E.etas_002Estring_generator_002Eoperator_0028_0029_003Cchar_0020const_0020_002A_003E((string_generator*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003FA0x72f3f262_002Eetas_uuid_generator), P_0, (sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040MNHMHEEF_00407D30EBCE_003F9DB13_003F94806_003F9B6FC_003F98059DF73_0040), (sbyte*)((ref *(_003F*)num) + (ref System.Runtime.CompilerServices.Unsafe.As<_0024ArrayType_0024_0024_0024BY0CF_0040_0024_0024CBD, _003F>(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040MNHMHEEF_00407D30EBCE_003F9DB13_003F94806_003F9B6FC_003F98059DF73_0040))));
		return P_0;
	}

	public unsafe EtasTimeFactory(IEtasTimeFactory* pointer)
	{
		wrappedObject = (IEtasUnknown*)pointer;
		((object)this)._002Ector();
		IEtasUnknown* ptr = wrappedObject;
		if (ptr != null)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(int)(*(uint*)ptr)))((nint)ptr);
		}
	}

	public unsafe EtasTimeFactory()
	{
		wrappedObject = null;
		((object)this)._002Ector();
	}

	[return: MarshalAs(UnmanagedType.U1)]
	public unsafe override bool Equals(object obj)
	{
		if (obj is EtasTimeFactory etasTimeFactory && etasTimeFactory.Get() == wrappedObject)
		{
			return true;
		}
		return false;
	}

	public unsafe override int GetHashCode()
	{
		return (int)wrappedObject;
	}

	public unsafe virtual HighResolutionCounter GetHighResolutionCounter()
	{
		//Discarded unreachable code: IL_0110
		System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CEtasTime_003A_003AIHighResolutionCounter_003E cEtasPtr_003CEtasTime_003A_003AIHighResolutionCounter_003E);
		*(int*)(&cEtasPtr_003CEtasTime_003A_003AIHighResolutionCounter_003E) = 0;
		HighResolutionCounter result;
		try
		{
			if (*(int*)(&cEtasPtr_003CEtasTime_003A_003AIHighResolutionCounter_003E) != 0)
			{
				int num = *(int*)(&cEtasPtr_003CEtasTime_003A_003AIHighResolutionCounter_003E);
				*(int*)(&cEtasPtr_003CEtasTime_003A_003AIHighResolutionCounter_003E) = 0;
				((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num + 4)))((IntPtr)num);
			}
			IEtasUnknown* ptr = wrappedObject;
			IEtasUnknown* ptr2 = ptr;
			int num2 = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, IHighResolutionCounter**, int>)(int)(*(uint*)(*(int*)ptr + 12)))((nint)ptr, (IHighResolutionCounter**)(&cEtasPtr_003CEtasTime_003A_003AIHighResolutionCounter_003E));
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
			result = ((*(int*)(&cEtasPtr_003CEtasTime_003A_003AIHighResolutionCounter_003E) == 0) ? null : new HighResolutionCounter((IHighResolutionCounter*)(int)(*(uint*)(&cEtasPtr_003CEtasTime_003A_003AIHighResolutionCounter_003E))));
		}
		catch
		{
			//try-fault
			global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<CEtasPtr_003CEtasTime_003A_003AIHighResolutionCounter_003E*, void>)(&global::_003CModule_003E.CEtasPtr_003CEtasTime_003A_003AIHighResolutionCounter_003E_002E_007Bdtor_007D), &cEtasPtr_003CEtasTime_003A_003AIHighResolutionCounter_003E);
			throw;
		}
		if (*(int*)(&cEtasPtr_003CEtasTime_003A_003AIHighResolutionCounter_003E) != 0)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)(int)(*(uint*)(&cEtasPtr_003CEtasTime_003A_003AIHighResolutionCounter_003E)) + 4)))((IntPtr)(*(int*)(&cEtasPtr_003CEtasTime_003A_003AIHighResolutionCounter_003E)));
		}
		return result;
	}

	public unsafe virtual Clock GetRelativeClock()
	{
		//Discarded unreachable code: IL_0110
		System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CEtasTime_003A_003AIClock_003E cEtasPtr_003CEtasTime_003A_003AIClock_003E);
		*(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E) = 0;
		Clock result;
		try
		{
			if (*(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E) != 0)
			{
				int num = *(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E);
				*(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E) = 0;
				((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num + 4)))((IntPtr)num);
			}
			IEtasUnknown* ptr = wrappedObject;
			IEtasUnknown* ptr2 = ptr;
			int num2 = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, IClock**, int>)(int)(*(uint*)(*(int*)ptr + 16)))((nint)ptr, (IClock**)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E));
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
			result = ((*(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E) == 0) ? null : new Clock((IClock*)(int)(*(uint*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E))));
		}
		catch
		{
			//try-fault
			global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<CEtasPtr_003CEtasTime_003A_003AIClock_003E*, void>)(&global::_003CModule_003E.CEtasPtr_003CEtasTime_003A_003AIClock_003E_002E_007Bdtor_007D), &cEtasPtr_003CEtasTime_003A_003AIClock_003E);
			throw;
		}
		if (*(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E) != 0)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)(int)(*(uint*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E)) + 4)))((IntPtr)(*(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E)));
		}
		return result;
	}

	public unsafe virtual Clock GetSystemClock()
	{
		//Discarded unreachable code: IL_0110
		System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CEtasTime_003A_003AIClock_003E cEtasPtr_003CEtasTime_003A_003AIClock_003E);
		*(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E) = 0;
		Clock result;
		try
		{
			if (*(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E) != 0)
			{
				int num = *(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E);
				*(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E) = 0;
				((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num + 4)))((IntPtr)num);
			}
			IEtasUnknown* ptr = wrappedObject;
			IEtasUnknown* ptr2 = ptr;
			int num2 = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, IClock**, int>)(int)(*(uint*)(*(int*)ptr + 20)))((nint)ptr, (IClock**)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E));
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
			result = ((*(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E) == 0) ? null : new Clock((IClock*)(int)(*(uint*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E))));
		}
		catch
		{
			//try-fault
			global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<CEtasPtr_003CEtasTime_003A_003AIClock_003E*, void>)(&global::_003CModule_003E.CEtasPtr_003CEtasTime_003A_003AIClock_003E_002E_007Bdtor_007D), &cEtasPtr_003CEtasTime_003A_003AIClock_003E);
			throw;
		}
		if (*(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E) != 0)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)(int)(*(uint*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E)) + 4)))((IntPtr)(*(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E)));
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
		int num = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, bool*, int>)(int)(*(uint*)(*(int*)ptr + 24)))((nint)ptr, &result);
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

	public unsafe virtual Clock GetNamedClock(string name)
	{
		//Discarded unreachable code: IL_013e
		ManagedWStringWrapper managedWStringWrapper = null;
		System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CEtasTime_003A_003AIClock_003E cEtasPtr_003CEtasTime_003A_003AIClock_003E);
		*(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E) = 0;
		Clock result;
		try
		{
			ManagedWStringWrapper managedWStringWrapper2 = new ManagedWStringWrapper(name);
			try
			{
				managedWStringWrapper = managedWStringWrapper2;
				if (*(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E) != 0)
				{
					int num = *(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E);
					*(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E) = 0;
					((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num + 4)))((IntPtr)num);
				}
				IEtasUnknown* ptr = wrappedObject;
				IEtasUnknown* ptr2 = ptr;
				int num2 = *(int*)ptr + 28;
				int num3 = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, char*, IClock**, int>)(int)(*(uint*)num2))((nint)wrappedObject, managedWStringWrapper.op_Implicit(), (IClock**)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E));
				if (num3 < 0)
				{
					System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CIGetEtasError_003E cEtasPtr_003CIGetEtasError_003E);
					*(int*)(&cEtasPtr_003CIGetEtasError_003E) = 0;
					try
					{
						if (*(int*)(&cEtasPtr_003CIGetEtasError_003E) != 0)
						{
							int num4 = *(int*)(&cEtasPtr_003CIGetEtasError_003E);
							*(int*)(&cEtasPtr_003CIGetEtasError_003E) = 0;
							((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num4 + 4)))((IntPtr)num4);
						}
						((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, EtasUUID*, void**, int>)(int)(*(uint*)(*(int*)ptr2 + 8)))((nint)ptr2, (EtasUUID*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003FA0x72f3f262_002EINTERFACE_UUID_IGetEtasError), (void**)(&cEtasPtr_003CIGetEtasError_003E));
						System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CIEtasError_003E cEtasPtr_003CIEtasError_003E);
						*(int*)(&cEtasPtr_003CIEtasError_003E) = 0;
						try
						{
							int num5 = *(int*)(&cEtasPtr_003CIGetEtasError_003E);
							if (*(int*)(&cEtasPtr_003CIEtasError_003E) != 0)
							{
								int num6 = *(int*)(&cEtasPtr_003CIEtasError_003E);
								*(int*)(&cEtasPtr_003CIEtasError_003E) = 0;
								((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num6 + 4)))((IntPtr)num6);
							}
							((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, IEtasError**, int>)(int)(*(uint*)(*(int*)num5 + 12)))((IntPtr)num5, (IEtasError**)(&cEtasPtr_003CIEtasError_003E));
							if ((byte)((*(int*)(&cEtasPtr_003CIEtasError_003E) != 0) ? 1u : 0u) != 0)
							{
								throw new EtasModuleWrapperException(num3, (IEtasError*)(int)(*(uint*)(&cEtasPtr_003CIEtasError_003E)));
							}
							throw new EtasModuleWrapperException(num3);
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
				result = ((*(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E) == 0) ? null : new Clock((IClock*)(int)(*(uint*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E))));
			}
			catch
			{
				//try-fault
				((IDisposable)managedWStringWrapper).Dispose();
				throw;
			}
			((IDisposable)managedWStringWrapper).Dispose();
		}
		catch
		{
			//try-fault
			global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<CEtasPtr_003CEtasTime_003A_003AIClock_003E*, void>)(&global::_003CModule_003E.CEtasPtr_003CEtasTime_003A_003AIClock_003E_002E_007Bdtor_007D), &cEtasPtr_003CEtasTime_003A_003AIClock_003E);
			throw;
		}
		if (*(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E) != 0)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)(int)(*(uint*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E)) + 4)))((IntPtr)(*(int*)(&cEtasPtr_003CEtasTime_003A_003AIClock_003E)));
		}
		return result;
	}

	public unsafe virtual WaitForEvents CreateWaitForEvents()
	{
		//Discarded unreachable code: IL_0110
		System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CEtasTime_003A_003AIWaitForEvents_003E cEtasPtr_003CEtasTime_003A_003AIWaitForEvents_003E);
		*(int*)(&cEtasPtr_003CEtasTime_003A_003AIWaitForEvents_003E) = 0;
		WaitForEvents result;
		try
		{
			if (*(int*)(&cEtasPtr_003CEtasTime_003A_003AIWaitForEvents_003E) != 0)
			{
				int num = *(int*)(&cEtasPtr_003CEtasTime_003A_003AIWaitForEvents_003E);
				*(int*)(&cEtasPtr_003CEtasTime_003A_003AIWaitForEvents_003E) = 0;
				((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num + 4)))((IntPtr)num);
			}
			IEtasUnknown* ptr = wrappedObject;
			IEtasUnknown* ptr2 = ptr;
			int num2 = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, IWaitForEvents**, int>)(int)(*(uint*)(*(int*)ptr + 32)))((nint)ptr, (IWaitForEvents**)(&cEtasPtr_003CEtasTime_003A_003AIWaitForEvents_003E));
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
			result = ((*(int*)(&cEtasPtr_003CEtasTime_003A_003AIWaitForEvents_003E) == 0) ? null : new WaitForEvents((IWaitForEvents*)(int)(*(uint*)(&cEtasPtr_003CEtasTime_003A_003AIWaitForEvents_003E))));
		}
		catch
		{
			//try-fault
			global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<CEtasPtr_003CEtasTime_003A_003AIWaitForEvents_003E*, void>)(&global::_003CModule_003E.CEtasPtr_003CEtasTime_003A_003AIWaitForEvents_003E_002E_007Bdtor_007D), &cEtasPtr_003CEtasTime_003A_003AIWaitForEvents_003E);
			throw;
		}
		if (*(int*)(&cEtasPtr_003CEtasTime_003A_003AIWaitForEvents_003E) != 0)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)(int)(*(uint*)(&cEtasPtr_003CEtasTime_003A_003AIWaitForEvents_003E)) + 4)))((IntPtr)(*(int*)(&cEtasPtr_003CEtasTime_003A_003AIWaitForEvents_003E)));
		}
		return result;
	}
}
