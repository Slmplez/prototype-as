using System;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using std;

namespace EtasTime;

public class EtasTimeLoader : IDisposable
{
	private unsafe CEtasTimeLoader* _Loader;

	public unsafe EtasTimeLoader(string path)
	{
		uint num = 0u;
		CEtasTimeLoader* ptr = (CEtasTimeLoader*)global::_003CModule_003E.@new(4u);
		System.Runtime.CompilerServices.Unsafe.SkipInit(out ManagedWStringWrapper managedWStringWrapper2);
		CEtasTimeLoader* loader;
		try
		{
			if (ptr != null)
			{
				ManagedWStringWrapper managedWStringWrapper = new ManagedWStringWrapper(path);
				try
				{
					num = 1u;
					managedWStringWrapper2 = managedWStringWrapper;
					char* path2 = managedWStringWrapper.op_Implicit();
					*(int*)ptr = 0;
					try
					{
						global::_003CModule_003E.EtasTime_002ECEtasTimeLoader_002Einitialize(ptr, path2);
					}
					catch
					{
						//try-fault
						global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<unique_ptr_003CCEtasDllLoader_002Cstd_003A_003Adefault_delete_003CCEtasDllLoader_003E_0020_003E*, void>)(&global::_003CModule_003E.std_002Eunique_ptr_003CCEtasDllLoader_002Cstd_003A_003Adefault_delete_003CCEtasDllLoader_003E_0020_003E_002E_007Bdtor_007D), ptr);
						throw;
					}
					loader = ptr;
				}
				catch
				{
					//try-fault
					if ((num & 1) != 0)
					{
						num &= 0xFFFFFFFEu;
						((IDisposable)managedWStringWrapper2).Dispose();
					}
					throw;
				}
			}
			else
			{
				loader = null;
			}
		}
		catch
		{
			//try-fault
			global::_003CModule_003E.delete(ptr);
			throw;
		}
		try
		{
			_Loader = loader;
		}
		catch
		{
			//try-fault
			if ((num & 1) != 0)
			{
				num &= 0xFFFFFFFEu;
				((IDisposable)managedWStringWrapper2).Dispose();
			}
			throw;
		}
		if ((num & 1) != 0)
		{
			num &= 0xFFFFFFFEu;
			((IDisposable)managedWStringWrapper2).Dispose();
		}
		base._002Ector();
	}

	public unsafe EtasTimeLoader()
	{
		CEtasTimeLoader* ptr = (CEtasTimeLoader*)global::_003CModule_003E.@new(4u);
		CEtasTimeLoader* loader;
		try
		{
			loader = ((ptr == null) ? null : global::_003CModule_003E.EtasTime_002ECEtasTimeLoader_002E_007Bctor_007D(ptr));
		}
		catch
		{
			//try-fault
			global::_003CModule_003E.delete(ptr);
			throw;
		}
		_Loader = loader;
		base._002Ector();
	}

	private unsafe void _007EEtasTimeLoader()
	{
		CEtasTimeLoader* loader = _Loader;
		if (loader == null)
		{
			return;
		}
		try
		{
			uint num = *(uint*)loader;
			if (0 != num)
			{
				CEtasDllLoader* ptr = (CEtasDllLoader*)(int)num;
				global::_003CModule_003E.CEtasDllLoader_002E_007Bdtor_007D(ptr);
				global::_003CModule_003E.delete(ptr);
				*(int*)loader = 0;
			}
		}
		catch
		{
			//try-fault
			global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<unique_ptr_003CCEtasDllLoader_002Cstd_003A_003Adefault_delete_003CCEtasDllLoader_003E_0020_003E*, void>)(&global::_003CModule_003E.std_002Eunique_ptr_003CCEtasDllLoader_002Cstd_003A_003Adefault_delete_003CCEtasDllLoader_003E_0020_003E_002E_007Bdtor_007D), loader);
			throw;
		}
		uint num2 = *(uint*)loader;
		if (num2 != 0)
		{
			CEtasDllLoader* ptr2 = (CEtasDllLoader*)(int)num2;
			global::_003CModule_003E.CEtasDllLoader_002E_007Bdtor_007D(ptr2);
			global::_003CModule_003E.delete(ptr2);
		}
		global::_003CModule_003E.delete(loader);
	}

	public unsafe EtasTimeFactory GetFactory()
	{
		System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CEtasTime_003A_003AIEtasTimeFactory_003E cEtasPtr_003CEtasTime_003A_003AIEtasTimeFactory_003E);
		CEtasPtr_003CEtasTime_003A_003AIEtasTimeFactory_003E* ptr = global::_003CModule_003E.EtasTime_002ECEtasTimeLoader_002EGetFactory(_Loader, &cEtasPtr_003CEtasTime_003A_003AIEtasTimeFactory_003E);
		EtasTimeFactory result;
		try
		{
			result = new EtasTimeFactory((IEtasTimeFactory*)(int)(*(uint*)ptr));
		}
		catch
		{
			//try-fault
			global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<CEtasPtr_003CEtasTime_003A_003AIEtasTimeFactory_003E*, void>)(&global::_003CModule_003E.CEtasPtr_003CEtasTime_003A_003AIEtasTimeFactory_003E_002E_007Bdtor_007D), &cEtasPtr_003CEtasTime_003A_003AIEtasTimeFactory_003E);
			throw;
		}
		if (*(int*)(&cEtasPtr_003CEtasTime_003A_003AIEtasTimeFactory_003E) != 0)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)(int)(*(uint*)(&cEtasPtr_003CEtasTime_003A_003AIEtasTimeFactory_003E)) + 4)))((IntPtr)(*(int*)(&cEtasPtr_003CEtasTime_003A_003AIEtasTimeFactory_003E)));
		}
		return result;
	}

	public unsafe EtasTimeFactoryAdvanced GetAdvancedFactory()
	{
		System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CEtasTime_003A_003AIEtasTimeFactoryAdvanced_003E cEtasPtr_003CEtasTime_003A_003AIEtasTimeFactoryAdvanced_003E);
		CEtasPtr_003CEtasTime_003A_003AIEtasTimeFactoryAdvanced_003E* ptr = global::_003CModule_003E.EtasTime_002ECEtasTimeLoader_002EGetAdvancedFactory(_Loader, &cEtasPtr_003CEtasTime_003A_003AIEtasTimeFactoryAdvanced_003E);
		EtasTimeFactoryAdvanced result;
		try
		{
			result = new EtasTimeFactoryAdvanced((IEtasTimeFactoryAdvanced*)(int)(*(uint*)ptr));
		}
		catch
		{
			//try-fault
			global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<CEtasPtr_003CEtasTime_003A_003AIEtasTimeFactoryAdvanced_003E*, void>)(&global::_003CModule_003E.CEtasPtr_003CEtasTime_003A_003AIEtasTimeFactoryAdvanced_003E_002E_007Bdtor_007D), &cEtasPtr_003CEtasTime_003A_003AIEtasTimeFactoryAdvanced_003E);
			throw;
		}
		if (*(int*)(&cEtasPtr_003CEtasTime_003A_003AIEtasTimeFactoryAdvanced_003E) != 0)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)(int)(*(uint*)(&cEtasPtr_003CEtasTime_003A_003AIEtasTimeFactoryAdvanced_003E)) + 4)))((IntPtr)(*(int*)(&cEtasPtr_003CEtasTime_003A_003AIEtasTimeFactoryAdvanced_003E)));
		}
		return result;
	}

	protected virtual void Dispose([MarshalAs(UnmanagedType.U1)] bool P_0)
	{
		if (P_0)
		{
			_007EEtasTimeLoader();
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
