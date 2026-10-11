using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using Microsoft.VisualC;

namespace std;

[StructLayout(LayoutKind.Sequential, Size = 28)]
[DebugInfoInPDB]
[MiscellaneousBits(64)]
[NativeCppClass]
[UnsafeValueType]
internal struct basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E
{
	[SpecialName]
	public unsafe static void _003CMarshalCopy_003E(basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* P_0, basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* P_1)
	{
		((int*)P_0)[5] = 7;
		((int*)P_0)[4] = 0;
		*(short*)P_0 = 0;
		global::_003CModule_003E.std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002Eassign(P_0, P_1, 0u, uint.MaxValue);
	}

	[SpecialName]
	public unsafe static void _003CMarshalDestroy_003E(basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* P_0)
	{
		if (8u <= (uint)((int*)P_0)[5])
		{
			global::_003CModule_003E.delete((void*)(int)(*(uint*)P_0));
		}
		((int*)P_0)[5] = 7;
		((int*)P_0)[4] = 0;
		*(short*)P_0 = 0;
	}
}
