using System;
using System.Runtime.CompilerServices;

public class EtasModuleWrapperException(int errorCode) : Exception(GetDescription(errorCode))
{
	private uint m_error = (uint)errorCode;

	public uint ErrorCode => m_error;

	public unsafe EtasModuleWrapperException(int errorCode, IEtasError* error)
		: base(GetDescription(error))
	{
	}

	public unsafe string GetDescription(IEtasError* error)
	{
		m_error = (uint)((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, int>)(int)(*(uint*)(*(int*)error + 12)))((nint)error);
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
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, IEtasWideCharString**, int>)(int)(*(uint*)(*(int*)error + 16)))((nint)error, (IEtasWideCharString**)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E));
			System.Runtime.CompilerServices.Unsafe.SkipInit(out CEtasPtr_003CIEtasWideCharString_003E cEtasPtr_003CIEtasWideCharString_003E);
			CEtasPtr_003CIEtasWideCharString_003E* ptr = global::_003CModule_003E.CEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E_002Eget(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E, &cEtasPtr_003CIEtasWideCharString_003E);
			bool flag;
			try
			{
				flag = *(int*)ptr == 0;
			}
			catch
			{
				//try-fault
				global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<CEtasPtr_003CIEtasWideCharString_003E*, void>)(&global::_003CModule_003E.CEtasPtr_003CIEtasWideCharString_003E_002E_007Bdtor_007D), &cEtasPtr_003CIEtasWideCharString_003E);
				throw;
			}
			if (*(int*)(&cEtasPtr_003CIEtasWideCharString_003E) != 0)
			{
				((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)(int)(*(uint*)(&cEtasPtr_003CIEtasWideCharString_003E)) + 4)))((IntPtr)(*(int*)(&cEtasPtr_003CIEtasWideCharString_003E)));
			}
			if (flag)
			{
				result = "Unknown Error";
				goto IL_008f;
			}
		}
		catch
		{
			//try-fault
			global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<CEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E*, void>)(&global::_003CModule_003E.CEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E_002E_007Bdtor_007D), &cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E);
			throw;
		}
		string result2;
		try
		{
			char* value = null;
			if (*(int*)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E) != 0)
			{
				((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, char**, int>)(int)(*(uint*)(*(int*)(int)(*(uint*)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E)) + 16)))((IntPtr)(*(int*)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E)), &value);
			}
			result2 = new string(value);
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
		return result2;
		IL_008f:
		if (*(int*)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E) != 0)
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)(int)(*(uint*)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E)) + 4)))((IntPtr)(*(int*)(&cEtasStringPtr_003CIEtasWideCharString_002Cwchar_t_003E)));
		}
		return result;
	}

	public string GetDescription(int errorCode)
	{
		return "Wrapped object does not implement IEtasError.";
	}
}
