using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using std;

namespace Etas.Base.TogglesNet;

public class FeatureToggle
{
	private bool m_value;

	public bool Value
	{
		[return: MarshalAs(UnmanagedType.U1)]
		get
		{
			return m_value;
		}
	}

	public unsafe FeatureToggle(string toggle)
	{
		//IL_001f->IL0021: Incompatible stack types: I4 vs Ref
		System.Runtime.CompilerServices.Unsafe.SkipInit(out basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E obj);
		global::_003CModule_003E.msclr_002Einterop_002Emarshal_as_003Cclass_0020std_003A_003Abasic_string_003Cchar_002Cstruct_0020std_003A_003Achar_traits_003Cchar_003E_002Cclass_0020std_003A_003Aallocator_003Cchar_003E_0020_003E_002Cclass_0020System_003A_003AString_0020_005E_003E(&obj, &toggle);
		try
		{
			byte value = (global::_003CModule_003E.InitAndCheckFeatureToggle((sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref 16u > (uint)System.Runtime.CompilerServices.Unsafe.As<basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E, int>(ref System.Runtime.CompilerServices.Unsafe.AddByteOffset(ref obj, 20)) ? ref *(_003F*)(&obj) : ref *(_003F*)(*(int*)(&obj)))) ? ((byte)1) : ((byte)0));
			m_value = value != 0;
		}
		catch
		{
			//try-fault
			global::_003CModule_003E.___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E*, void>)(&global::_003CModule_003E.std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_007Bdtor_007D), &obj);
			throw;
		}
		if (16u <= (uint)System.Runtime.CompilerServices.Unsafe.As<basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E, int>(ref System.Runtime.CompilerServices.Unsafe.AddByteOffset(ref obj, 20)))
		{
			global::_003CModule_003E.delete((void*)(int)(*(uint*)(&obj)));
		}
	}
}
