using System;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using _003CCppImplementationDetails_003E;
using etas;

namespace EtasTime;

public class EtasTimeFactoryAdvanced : EtasUnknown
{
	protected unsafe override EtasUUID* getUUID(EtasUUID* P_0)
	{
		sbyte* ptr = (sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040EEFPOFFI_00409DA31D4F_003F968B2_003F94062_003F98825_003F999ADEBA1_0040);
		do
		{
			ptr++;
		}
		while (*ptr != 0);
		int num = (ref *(_003F*)ptr) - (ref System.Runtime.CompilerServices.Unsafe.As<_0024ArrayType_0024_0024_0024BY0CF_0040_0024_0024CBD, _003F>(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040EEFPOFFI_00409DA31D4F_003F968B2_003F94062_003F98825_003F999ADEBA1_0040));
		global::_003CModule_003E.etas_002Estring_generator_002Eoperator_0028_0029_003Cchar_0020const_0020_002A_003E((string_generator*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003FA0x7379f631_002Eetas_uuid_generator), P_0, (sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040EEFPOFFI_00409DA31D4F_003F968B2_003F94062_003F98825_003F999ADEBA1_0040), (sbyte*)((ref *(_003F*)num) + (ref System.Runtime.CompilerServices.Unsafe.As<_0024ArrayType_0024_0024_0024BY0CF_0040_0024_0024CBD, _003F>(ref global::_003CModule_003E._003F_003F_C_0040_0CF_0040EEFPOFFI_00409DA31D4F_003F968B2_003F94062_003F98825_003F999ADEBA1_0040))));
		return P_0;
	}

	public unsafe EtasTimeFactoryAdvanced(IEtasTimeFactoryAdvanced* pointer)
	{
		wrappedObject = (IEtasUnknown*)pointer;
		((object)this)._002Ector();
		IEtasUnknown* ptr = wrappedObject;
		if (ptr != null)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(int)(*(uint*)ptr)))((nint)ptr);
		}
	}

	public unsafe EtasTimeFactoryAdvanced()
	{
		wrappedObject = null;
		((object)this)._002Ector();
	}

	[return: MarshalAs(UnmanagedType.U1)]
	public unsafe override bool Equals(object obj)
	{
		if (obj is EtasTimeFactoryAdvanced etasTimeFactoryAdvanced && etasTimeFactoryAdvanced.Get() == wrappedObject)
		{
			return true;
		}
		return false;
	}

	public unsafe override int GetHashCode()
	{
		return (int)wrappedObject;
	}

	public unsafe virtual PiecewiseLinearCorrection CreatePiecewiseLinearCorrection()
	{
		//Discarded unreachable code: IL_0110
		System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E);
		*(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E) = 0;
		PiecewiseLinearCorrection result;
		try
		{
			if (*(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E) != 0)
			{
				int num = *(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E);
				*(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E) = 0;
				((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num + 4)))((IntPtr)num);
			}
			IEtasUnknown* ptr = wrappedObject;
			IEtasUnknown* ptr2 = ptr;
			int num2 = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, IPiecewiseLinearCorrection**, int>)(int)(*(uint*)(*(int*)ptr + 12)))((nint)ptr, (IPiecewiseLinearCorrection**)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E));
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
					((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, EtasUUID*, void**, int>)(int)(*(uint*)(*(int*)ptr2 + 8)))((nint)ptr2, (EtasUUID*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003FA0x7379f631_002EINTERFACE_UUID_IGetEtasError), (void**)(&cEtasPtr_003CIGetEtasError_003E));
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
			result = ((*(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E) == 0) ? null : new PiecewiseLinearCorrection((IPiecewiseLinearCorrection*)(int)(*(uint*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E))));
		}
		catch
		{
			//try-fault
			global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<CEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E*, void>)(&global::_003CModule_003E.CEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E_002E_007Bdtor_007D), &cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E);
			throw;
		}
		if (*(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E) != 0)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)(int)(*(uint*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E)) + 4)))((IntPtr)(*(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E)));
		}
		return result;
	}

	public unsafe virtual PiecewiseLinearCorrection CreatePiecewiseLinearCorrectionReader(string name)
	{
		//Discarded unreachable code: IL_013e
		ManagedWStringWrapper managedWStringWrapper = null;
		System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E);
		*(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E) = 0;
		PiecewiseLinearCorrection result;
		try
		{
			ManagedWStringWrapper managedWStringWrapper2 = new ManagedWStringWrapper(name);
			try
			{
				managedWStringWrapper = managedWStringWrapper2;
				if (*(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E) != 0)
				{
					int num = *(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E);
					*(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E) = 0;
					((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num + 4)))((IntPtr)num);
				}
				IEtasUnknown* ptr = wrappedObject;
				IEtasUnknown* ptr2 = ptr;
				int num2 = *(int*)ptr + 16;
				int num3 = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, char*, IPiecewiseLinearCorrection**, int>)(int)(*(uint*)num2))((nint)wrappedObject, managedWStringWrapper.op_Implicit(), (IPiecewiseLinearCorrection**)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E));
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
						((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, EtasUUID*, void**, int>)(int)(*(uint*)(*(int*)ptr2 + 8)))((nint)ptr2, (EtasUUID*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003FA0x7379f631_002EINTERFACE_UUID_IGetEtasError), (void**)(&cEtasPtr_003CIGetEtasError_003E));
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
				result = ((*(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E) == 0) ? null : new PiecewiseLinearCorrection((IPiecewiseLinearCorrection*)(int)(*(uint*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E))));
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
			global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<CEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E*, void>)(&global::_003CModule_003E.CEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E_002E_007Bdtor_007D), &cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E);
			throw;
		}
		if (*(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E) != 0)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)(int)(*(uint*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E)) + 4)))((IntPtr)(*(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E)));
		}
		return result;
	}

	public unsafe virtual PiecewiseLinearCorrection CreatePiecewiseLinearCorrectionWriter(string name)
	{
		//Discarded unreachable code: IL_013e
		ManagedWStringWrapper managedWStringWrapper = null;
		System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E);
		*(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E) = 0;
		PiecewiseLinearCorrection result;
		try
		{
			ManagedWStringWrapper managedWStringWrapper2 = new ManagedWStringWrapper(name);
			try
			{
				managedWStringWrapper = managedWStringWrapper2;
				if (*(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E) != 0)
				{
					int num = *(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E);
					*(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E) = 0;
					((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)num + 4)))((IntPtr)num);
				}
				IEtasUnknown* ptr = wrappedObject;
				IEtasUnknown* ptr2 = ptr;
				int num2 = *(int*)ptr + 20;
				int num3 = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, char*, IPiecewiseLinearCorrection**, int>)(int)(*(uint*)num2))((nint)wrappedObject, managedWStringWrapper.op_Implicit(), (IPiecewiseLinearCorrection**)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E));
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
						((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, EtasUUID*, void**, int>)(int)(*(uint*)(*(int*)ptr2 + 8)))((nint)ptr2, (EtasUUID*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref global::_003CModule_003E._003FA0x7379f631_002EINTERFACE_UUID_IGetEtasError), (void**)(&cEtasPtr_003CIGetEtasError_003E));
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
				result = ((*(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E) == 0) ? null : new PiecewiseLinearCorrection((IPiecewiseLinearCorrection*)(int)(*(uint*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E))));
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
			global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<CEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E*, void>)(&global::_003CModule_003E.CEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E_002E_007Bdtor_007D), &cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E);
			throw;
		}
		if (*(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E) != 0)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)(int)(*(uint*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E)) + 4)))((IntPtr)(*(int*)(&cEtasPtr_003CEtasTime_003A_003AIPiecewiseLinearCorrection_003E)));
		}
		return result;
	}
}
