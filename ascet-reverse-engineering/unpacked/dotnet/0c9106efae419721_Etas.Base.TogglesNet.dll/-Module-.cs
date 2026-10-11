using System;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Runtime.ConstrainedExecution;
using System.Runtime.ExceptionServices;
using System.Runtime.InteropServices;
using System.Security;
using System.Security.Permissions;
using System.Threading;
using _003CCppImplementationDetails_003E;
using _003CCrtImplementationDetails_003E;
using Etas.Base.Toggles;
using msclr.interop.details;
using std;

internal class _003CModule_003E
{
	internal static _0024ArrayType_0024_0024_0024BY0BI_0040_0024_0024CBD _003F_003F_C_0040_0BI_0040CFPLBAOH_0040invalid_003F5string_003F5position_003F_0024AA_0040/* Not supported: data(69 6E 76 61 6C 69 64 20 73 74 72 69 6E 67 20 70 6F 73 69 74 69 6F 6E 00) */;

	internal static _0024ArrayType_0024_0024_0024BY0BA_0040_0024_0024CBD _003F_003F_C_0040_0BA_0040JFNIOLAK_0040string_003F5too_003F5long_003F_0024AA_0040/* Not supported: data(73 74 72 69 6E 67 20 74 6F 6F 20 6C 6F 6E 67 00) */;

	internal static _0024_s__RTTIBaseClassArray_0024_extraBytes_16 _003F_003F_R2failure_0040ios_base_0040std_0040_00408/* Not supported: data(7C 7A 01 10 28 7A 01 10 D8 79 01 10 74 79 01 10 00) */;

	internal static _0024_s__RTTIBaseClassArray_0024_extraBytes_12 _003F_003F_R2system_error_0040std_0040_00408/* Not supported: data(28 7A 01 10 D8 79 01 10 74 79 01 10 00) */;

	internal static _0024_s__RTTIBaseClassArray_0024_extraBytes_8 _003F_003F_R2runtime_error_0040std_0040_00408/* Not supported: data(D8 79 01 10 74 79 01 10 00) */;

	internal static _0024_s__RTTIBaseClassArray_0024_extraBytes_8 _003F_003F_R2bad_alloc_0040std_0040_00408/* Not supported: data(58 79 01 10 74 79 01 10 00) */;

	internal static _0024_s__RTTIBaseClassArray_0024_extraBytes_4 _003F_003F_R2exception_0040std_0040_00408/* Not supported: data(74 79 01 10 00) */;

	internal static _s__RTTIBaseClassDescriptor2 _003F_003F_R1A_0040_003F0A_0040EA_0040failure_0040ios_base_0040std_0040_00408/* Not supported: data(98 91 01 10 03 00 00 00 00 00 00 00 FF FF FF FF 00 00 00 00 40 00 00 00 58 7A 01 10) */;

	internal static _s__RTTIBaseClassDescriptor2 _003F_003F_R1A_0040_003F0A_0040EA_0040system_error_0040std_0040_00408/* Not supported: data(D0 90 01 10 02 00 00 00 00 00 00 00 FF FF FF FF 00 00 00 00 40 00 00 00 08 7A 01 10) */;

	internal static _s__RTTIBaseClassDescriptor2 _003F_003F_R1A_0040_003F0A_0040EA_0040runtime_error_0040std_0040_00408/* Not supported: data(98 90 01 10 01 00 00 00 00 00 00 00 FF FF FF FF 00 00 00 00 40 00 00 00 BC 79 01 10) */;

	internal static _s__RTTIBaseClassDescriptor2 _003F_003F_R1A_0040_003F0A_0040EA_0040bad_alloc_0040std_0040_00408/* Not supported: data(14 90 01 10 01 00 00 00 00 00 00 00 FF FF FF FF 00 00 00 00 40 00 00 00 3C 79 01 10) */;

	internal static _s__RTTIBaseClassDescriptor2 _003F_003F_R1A_0040_003F0A_0040EA_0040exception_0040std_0040_00408/* Not supported: data(30 90 01 10 00 00 00 00 00 00 00 00 FF FF FF FF 00 00 00 00 40 00 00 00 90 79 01 10) */;

	internal static _s__RTTIClassHierarchyDescriptor _003F_003F_R3failure_0040ios_base_0040std_0040_00408/* Not supported: data(00 00 00 00 00 00 00 00 04 00 00 00 68 7A 01 10) */;

	internal static _s__RTTIClassHierarchyDescriptor _003F_003F_R3system_error_0040std_0040_00408/* Not supported: data(00 00 00 00 00 00 00 00 03 00 00 00 18 7A 01 10) */;

	internal static _s__RTTIClassHierarchyDescriptor _003F_003F_R3runtime_error_0040std_0040_00408/* Not supported: data(00 00 00 00 00 00 00 00 02 00 00 00 CC 79 01 10) */;

	internal static _s__RTTIClassHierarchyDescriptor _003F_003F_R3bad_alloc_0040std_0040_00408/* Not supported: data(00 00 00 00 00 00 00 00 02 00 00 00 4C 79 01 10) */;

	internal static _s__RTTIClassHierarchyDescriptor _003F_003F_R3exception_0040std_0040_00408/* Not supported: data(00 00 00 00 00 00 00 00 01 00 00 00 A0 79 01 10) */;

	internal static _s__RTTICompleteObjectLocator _003F_003F_R4failure_0040ios_base_0040std_0040_00406B_0040/* Not supported: data(00 00 00 00 00 00 00 00 00 00 00 00 98 91 01 10 58 7A 01 10) */;

	internal static _s__RTTICompleteObjectLocator _003F_003F_R4system_error_0040std_0040_00406B_0040/* Not supported: data(00 00 00 00 00 00 00 00 00 00 00 00 D0 90 01 10 08 7A 01 10) */;

	internal static _s__RTTICompleteObjectLocator _003F_003F_R4runtime_error_0040std_0040_00406B_0040/* Not supported: data(00 00 00 00 00 00 00 00 00 00 00 00 98 90 01 10 BC 79 01 10) */;

	internal static _s__RTTICompleteObjectLocator _003F_003F_R4bad_alloc_0040std_0040_00406B_0040/* Not supported: data(00 00 00 00 00 00 00 00 00 00 00 00 14 90 01 10 3C 79 01 10) */;

	internal static _0024_s__CatchableTypeArray_0024_extraBytes_8 _CTA2_003FAVbad_alloc_0040std_0040_0040/* Not supported: data(02 00 00 00 14 7B 01 10 30 7B 01 10) */;

	internal static _s__CatchableType _CT_003F_003F_R0_003FAVbad_alloc_0040std_0040_0040_00408_003F_003F0bad_alloc_0040std_0040_0040_0024_0024FQAE_0040ABV01_0040_0040Z12/* Not supported: data(00 00 00 00 14 90 01 10 00 00 00 00 FF FF FF FF 00 00 00 00 0C 00 00 00 90 1B 00 10) */;

	internal static _0024_TypeDescriptor_0024_extraBytes_20 _003F_003F_R0_003FAVbad_alloc_0040std_0040_0040_00408/* Not supported: data(C4 62 00 10 00 00 00 00 2E 3F 41 56 62 61 64 5F 61 6C 6C 6F 63 40 73 74 64 40 40 00) */;

	internal static _s__ThrowInfo _TI2_003FAVbad_alloc_0040std_0040_0040/* Not supported: data(00 00 00 00 30 11 00 10 00 00 00 00 08 7B 01 10) */;

	internal static _0024_TypeDescriptor_0024_extraBytes_23 _003F_003F_R0_003FAVsystem_error_0040std_0040_0040_00408/* Not supported: data(C4 62 00 10 00 00 00 00 2E 3F 41 56 73 79 73 74 65 6D 5F 65 72 72 6F 72 40 73 74 64 40 40 00) */;

	internal static _0024_TypeDescriptor_0024_extraBytes_27 _003F_003F_R0_003FAVfailure_0040ios_base_0040std_0040_0040_00408/* Not supported: data(C4 62 00 10 00 00 00 00 2E 3F 41 56 66 61 69 6C 75 72 65 40 69 6F 73 5F 62 61 73 65 40 73 74 64 40 40 00) */;

	internal static _0024ArrayType_0024_0024_0024BY02Q6AXXZ _003F_003F_7failure_0040ios_base_0040std_0040_00406B_0040/* Not supported: data(E0 1D 00 10 40 31 00 10 C4 62 00 10) */;

	internal static _Iosb_003Cint_003E._Seekdir _003Fend_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Seekdir_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Seekdir _003Fcur_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Seekdir_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Seekdir _003Fbeg_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Seekdir_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Openmode _003Fbinary_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Openmode_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Openmode _003F_Noreplace_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Openmode_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Openmode _003F_Nocreate_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Openmode_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Openmode _003Ftrunc_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Openmode_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Openmode _003Fapp_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Openmode_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Openmode _003Fate_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Openmode_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Openmode _003Fout_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Openmode_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Openmode _003Fin_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Openmode_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Iostate _003F_Hardfail_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Iostate_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Iostate _003Fbadbit_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Iostate_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Iostate _003Ffailbit_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Iostate_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Iostate _003Feofbit_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Iostate_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Iostate _003Fgoodbit_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Iostate_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Fmtflags _003Ffloatfield_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Fmtflags_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Fmtflags _003Fbasefield_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Fmtflags_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Fmtflags _003Fadjustfield_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Fmtflags_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Fmtflags _003F_Stdio_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Fmtflags_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Fmtflags _003Fboolalpha_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Fmtflags_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Fmtflags _003Fhexfloat_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Fmtflags_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Fmtflags _003Ffixed_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Fmtflags_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Fmtflags _003Fscientific_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Fmtflags_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Fmtflags _003Fhex_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Fmtflags_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Fmtflags _003Foct_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Fmtflags_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Fmtflags _003Fdec_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Fmtflags_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Fmtflags _003Finternal_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Fmtflags_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Fmtflags _003Fright_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Fmtflags_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Fmtflags _003Fleft_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Fmtflags_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Fmtflags _003Fshowpos_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Fmtflags_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Fmtflags _003Fshowpoint_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Fmtflags_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Fmtflags _003Fshowbase_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Fmtflags_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Fmtflags _003Fuppercase_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Fmtflags_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Fmtflags _003Funitbuf_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Fmtflags_004012_0040B/* Not supported: data() */;

	internal static _Iosb_003Cint_003E._Fmtflags _003Fskipws_0040_003F_0024_Iosb_0040H_0040std_0040_00402W4_Fmtflags_004012_0040B/* Not supported: data() */;

	internal static _0024ArrayType_0024_0024_0024BY02Q6AXXZ _003F_003F_7system_error_0040std_0040_00406B_0040/* Not supported: data(B0 1C 00 10 40 31 00 10 C4 62 00 10) */;

	internal static int _003Fnone_0040_003F_0024_Locbase_0040H_0040std_0040_00402HB/* Not supported: data(00 00 00 00) */;

	internal static int _003Fall_0040_003F_0024_Locbase_0040H_0040std_0040_00402HB/* Not supported: data(3F 00 00 00) */;

	internal static int _003Fmessages_0040_003F_0024_Locbase_0040H_0040std_0040_00402HB/* Not supported: data(20 00 00 00) */;

	internal static int _003Ftime_0040_003F_0024_Locbase_0040H_0040std_0040_00402HB/* Not supported: data(10 00 00 00) */;

	internal static int _003Fnumeric_0040_003F_0024_Locbase_0040H_0040std_0040_00402HB/* Not supported: data(08 00 00 00) */;

	internal static int _003Fmonetary_0040_003F_0024_Locbase_0040H_0040std_0040_00402HB/* Not supported: data(04 00 00 00) */;

	internal static int _003Fctype_0040_003F_0024_Locbase_0040H_0040std_0040_00402HB/* Not supported: data(02 00 00 00) */;

	internal static int _003Fcollate_0040_003F_0024_Locbase_0040H_0040std_0040_00402HB/* Not supported: data(01 00 00 00) */;

	internal static _s__CatchableType _CT_003F_003F_R0_003FAVexception_0040std_0040_0040_00408_003F_003F0exception_0040std_0040_0040_0024_0024FQAE_0040ABV01_0040_0040Z12/* Not supported: data(00 00 00 00 30 90 01 10 00 00 00 00 FF FF FF FF 00 00 00 00 0C 00 00 00 46 31 00 10) */;

	internal static _0024_TypeDescriptor_0024_extraBytes_20 _003F_003F_R0_003FAVexception_0040std_0040_0040_00408/* Not supported: data(C4 62 00 10 00 00 00 00 2E 3F 41 56 65 78 63 65 70 74 69 6F 6E 40 73 74 64 40 40 00) */;

	internal static _0024_TypeDescriptor_0024_extraBytes_24 _003F_003F_R0_003FAVruntime_error_0040std_0040_0040_00408/* Not supported: data(C4 62 00 10 00 00 00 00 2E 3F 41 56 72 75 6E 74 69 6D 65 5F 65 72 72 6F 72 40 73 74 64 40 40 00) */;

	internal static _0024ArrayType_0024_0024_0024BY02Q6AXXZ _003F_003F_7runtime_error_0040std_0040_00406B_0040/* Not supported: data(50 1C 00 10 40 31 00 10 C4 62 00 10) */;

	internal static int _003F_Rank_0040_003F_0024_Arithmetic_traits_0040O_0040std_0040_00402HB/* Not supported: data(09 00 00 00) */;

	internal static int _003F_Rank_0040_003F_0024_Arithmetic_traits_0040N_0040std_0040_00402HB/* Not supported: data(08 00 00 00) */;

	internal static int _003F_Rank_0040_003F_0024_Arithmetic_traits_0040M_0040std_0040_00402HB/* Not supported: data(07 00 00 00) */;

	internal static int _003F_Rank_0040_003F_0024_Arithmetic_traits_0040_K_0040std_0040_00402HB/* Not supported: data(06 00 00 00) */;

	internal static int _003F_Rank_0040_003F_0024_Arithmetic_traits_0040_J_0040std_0040_00402HB/* Not supported: data(06 00 00 00) */;

	internal static int _003F_Rank_0040_003F_0024_Arithmetic_traits_0040K_0040std_0040_00402HB/* Not supported: data(05 00 00 00) */;

	internal static int _003F_Rank_0040_003F_0024_Arithmetic_traits_0040J_0040std_0040_00402HB/* Not supported: data(05 00 00 00) */;

	internal static int _003F_Rank_0040_003F_0024_Arithmetic_traits_0040I_0040std_0040_00402HB/* Not supported: data(04 00 00 00) */;

	internal static int _003F_Rank_0040_003F_0024_Arithmetic_traits_0040H_0040std_0040_00402HB/* Not supported: data(04 00 00 00) */;

	internal static int _003F_Rank_0040_003F_0024_Arithmetic_traits_0040G_0040std_0040_00402HB/* Not supported: data(03 00 00 00) */;

	internal static int _003F_Rank_0040_003F_0024_Arithmetic_traits_0040F_0040std_0040_00402HB/* Not supported: data(03 00 00 00) */;

	internal static int _003F_Rank_0040_003F_0024_Arithmetic_traits_0040E_0040std_0040_00402HB/* Not supported: data(02 00 00 00) */;

	internal static int _003F_Rank_0040_003F_0024_Arithmetic_traits_0040C_0040std_0040_00402HB/* Not supported: data(02 00 00 00) */;

	internal static int _003F_Rank_0040_003F_0024_Arithmetic_traits_0040D_0040std_0040_00402HB/* Not supported: data(02 00 00 00) */;

	internal static int _003F_Rank_0040_003F_0024_Arithmetic_traits_0040_N_0040std_0040_00402HB/* Not supported: data(01 00 00 00) */;

	internal static uint _003Fvalue_0040_003F_0024integral_constant_0040I_00240A_0040_0040tr1_0040std_0040_00402IB/* Not supported: data(00 00 00 00) */;

	internal static bool _003Fvalue_0040_003F_0024integral_constant_0040_N_002400_0040tr1_0040std_0040_00402_NB/* Not supported: data(01) */;

	internal static bool _003Fvalue_0040_003F_0024integral_constant_0040_N_00240A_0040_0040tr1_0040std_0040_00402_NB/* Not supported: data(00) */;

	internal static _0024ArrayType_0024_0024_0024BY02Q6AXXZ _003F_003F_7bad_alloc_0040std_0040_00406B_0040/* Not supported: data(40 11 00 10 40 31 00 10 C4 62 00 10) */;

	internal static int ___0040_0040_PchSym__004000_0040UzfglyfrowUrmxzUormvBGUhkJUhemUsziwdzivzxxvhhUxlwrmtuiznvdlipUkilqvxgUuvzgfivglttovUAFPuvzgfivglttovmvgwooUivovzhvUhgwzucOlyq_0040/* Not supported: data(00 00 00 00) */;

	internal static global::__s_GUID _GUID_90f1a06e_7712_4762_86b5_7a5eba6bdb02/* Not supported: data(6E A0 F1 90 12 77 62 47 86 B5 7A 5E BA 6B DB 02) */;

	internal static global::__s_GUID _GUID_cb2f6722_ab3a_11d2_9c40_00c04fa30a3e/* Not supported: data(22 67 2F CB 3A AB D2 11 9C 40 00 C0 4F A3 0A 3E) */;

	internal static _003CCppImplementationDetails_003E._0024ArrayType_0024_0024_0024BY00Q6MPBXXZ _003FA0xf26aa9b7_002E__xc_mp_z/* Not supported: data(00 00 00 00) */;

	[FixedAddressValueType]
	internal static int _003FUninitialized_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2HA;

	internal unsafe static delegate*<void> _003FA0xf26aa9b7_002E_003FUninitialized_0024initializer_0024_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2P6MXXZA/* Not supported: data(77 00 00 06) */;

	internal static _003CCppImplementationDetails_003E._0024ArrayType_0024_0024_0024BY00Q6MPBXXZ _003FA0xf26aa9b7_002E__xi_vt_a/* Not supported: data(00 00 00 00) */;

	[FixedAddressValueType]
	internal static _003CCrtImplementationDetails_003E.Progress.State _003FInitializedPerAppDomain_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2W4State_0040Progress_00402_0040A;

	internal unsafe static delegate*<void> _003FA0xf26aa9b7_002E_003FInitializedPerAppDomain_0024initializer_0024_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2P6MXXZA/* Not supported: data(7C 00 00 06) */;

	[FixedAddressValueType]
	internal static bool _003FIsDefaultDomain_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2_NA;

	internal unsafe static delegate*<void> _003FA0xf26aa9b7_002E_003FIsDefaultDomain_0024initializer_0024_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2P6MXXZA/* Not supported: data(78 00 00 06) */;

	internal static _003CCppImplementationDetails_003E._0024ArrayType_0024_0024_0024BY00Q6MPBXXZ _003FA0xf26aa9b7_002E__xc_ma_a/* Not supported: data(00 00 00 00) */;

	[FixedAddressValueType]
	internal static _003CCrtImplementationDetails_003E.Progress.State _003FInitializedNative_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2W4State_0040Progress_00402_0040A;

	internal unsafe static delegate*<void> _003FA0xf26aa9b7_002E_003FInitializedNative_0024initializer_0024_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2P6MXXZA/* Not supported: data(7A 00 00 06) */;

	[FixedAddressValueType]
	internal static int _003FInitialized_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2HA;

	internal unsafe static delegate*<void> _003FA0xf26aa9b7_002E_003FInitialized_0024initializer_0024_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2P6MXXZA/* Not supported: data(76 00 00 06) */;

	internal static _003CCppImplementationDetails_003E._0024ArrayType_0024_0024_0024BY00Q6MPBXXZ _003FA0xf26aa9b7_002E__xc_ma_z/* Not supported: data(00 00 00 00) */;

	[FixedAddressValueType]
	internal static _003CCrtImplementationDetails_003E.Progress.State _003FInitializedVtables_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2W4State_0040Progress_00402_0040A;

	internal unsafe static delegate*<void> _003FA0xf26aa9b7_002E_003FInitializedVtables_0024initializer_0024_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2P6MXXZA/* Not supported: data(79 00 00 06) */;

	internal static global::__s_GUID _GUID_cb2f6723_ab3a_11d2_9c40_00c04fa30a3e/* Not supported: data(23 67 2F CB 3A AB D2 11 9C 40 00 C0 4F A3 0A 3E) */;

	internal static _003CCppImplementationDetails_003E._0024ArrayType_0024_0024_0024BY00Q6MPBXXZ _003FA0xf26aa9b7_002E__xi_vt_z/* Not supported: data(00 00 00 00) */;

	[FixedAddressValueType]
	internal static _003CCrtImplementationDetails_003E.Progress.State _003FInitializedPerProcess_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2W4State_0040Progress_00402_0040A;

	internal unsafe static delegate*<void> _003FA0xf26aa9b7_002E_003FInitializedPerProcess_0024initializer_0024_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2P6MXXZA/* Not supported: data(7B 00 00 06) */;

	internal static bool _003FInitializedPerProcess_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00402_NA/*Field data (rva=0x19873) could not be foundin any section!*/;

	internal static bool _003FEntered_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00402_NA/*Field data (rva=0x19870) could not be foundin any section!*/;

	internal static bool _003FInitializedNative_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00402_NA/*Field data (rva=0x19871) could not be foundin any section!*/;

	internal static int _003FCount_0040AllDomains_0040_003CCrtImplementationDetails_003E_0040_00402HA/*Field data (rva=0x1986c) could not be foundin any section!*/;

	internal static uint _003FProcessAttach_0040NativeDll_0040_003CCrtImplementationDetails_003E_0040_00400IB/* Not supported: data(01 00 00 00) */;

	internal static uint _003FThreadAttach_0040NativeDll_0040_003CCrtImplementationDetails_003E_0040_00400IB/* Not supported: data(02 00 00 00) */;

	internal static _003CCrtImplementationDetails_003E.TriBool.State _003FhasNative_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00400W4State_0040TriBool_00402_0040A/* Not supported: data() */;

	internal static uint _003FProcessDetach_0040NativeDll_0040_003CCrtImplementationDetails_003E_0040_00400IB/* Not supported: data(00 00 00 00) */;

	internal static uint _003FThreadDetach_0040NativeDll_0040_003CCrtImplementationDetails_003E_0040_00400IB/* Not supported: data(03 00 00 00) */;

	internal static uint _003FProcessVerifier_0040NativeDll_0040_003CCrtImplementationDetails_003E_0040_00400IB/* Not supported: data(04 00 00 00) */;

	internal static _003CCrtImplementationDetails_003E.TriBool.State _003FhasPerProcess_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00400W4State_0040TriBool_00402_0040A/* Not supported: data() */;

	internal static bool _003FInitializedNativeFromCCTOR_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00402_NA/*Field data (rva=0x19872) could not be foundin any section!*/;

	internal static _003CCppImplementationDetails_003E._0024ArrayType_0024_0024_0024BY00Q6MPBXXZ _003FA0xf26aa9b7_002E__xc_mp_a/* Not supported: data(00 00 00 00) */;

	internal static global::__s_GUID _GUID_90f1a06c_7712_4762_86b5_7a5eba6bdb02/* Not supported: data(6C A0 F1 90 12 77 62 47 86 B5 7A 5E BA 6B DB 02) */;

	public unsafe static int** __unep_0040_003FDoNothing_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024FCGJPAX_0040Z/* Not supported: data(11 41 00 10) */;

	public unsafe static int** __unep_0040_003F_UninitializeDefaultDomain_0040LanguageSupport_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024FCGJPAX_0040Z/* Not supported: data(BD 42 00 10) */;

	[FixedAddressValueType]
	internal static uint __exit_list_size_app_domain;

	[FixedAddressValueType]
	internal unsafe static delegate*<void>* __onexitbegin_app_domain;

	internal static uint _003FA0xc6172590_002E__exit_list_size/*Field data (rva=0x199f8) could not be foundin any section!*/;

	[FixedAddressValueType]
	internal unsafe static delegate*<void>* __onexitend_app_domain;

	internal unsafe static delegate*<void>* _003FA0xc6172590_002E__onexitbegin_m/*Field data (rva=0x199f0) could not be foundin any section!*/;

	internal unsafe static delegate*<void>* _003FA0xc6172590_002E__onexitend_m/*Field data (rva=0x199f4) could not be foundin any section!*/;

	[FixedAddressValueType]
	internal unsafe static void* _003F_lock_0040AtExitLock_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q0PAXA;

	[FixedAddressValueType]
	internal static int _003F_ref_count_0040AtExitLock_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q0HA;

	internal static _0024ArrayType_0024_0024_0024BY01Q6AXXZ _003F_003F_7type_info_0040_00406B_0040/* Not supported: data(EF 30 00 10 00 00 00 00) */;

	internal static _003CCppImplementationDetails_003E._0024ArrayType_0024_0024_0024BY0A_0040P6AXXZ __xc_z/* Not supported: data(00) */;

	internal static volatile uint __native_vcclrit_reason/* Not supported: data(FF FF FF FF) */;

	internal static _003CCppImplementationDetails_003E._0024ArrayType_0024_0024_0024BY0A_0040P6AXXZ __xc_a/* Not supported: data(00) */;

	internal static _003CCppImplementationDetails_003E._0024ArrayType_0024_0024_0024BY0A_0040P6AHXZ __xi_a/* Not supported: data(00) */;

	internal static volatile __enative_startup_state __native_startup_state/* Not supported: data() */;

	internal static _003CCppImplementationDetails_003E._0024ArrayType_0024_0024_0024BY0A_0040P6AHXZ __xi_z/* Not supported: data(00) */;

	internal unsafe static volatile void* __native_startup_lock/*Field data (rva=0x19a24) could not be foundin any section!*/;

	internal static volatile uint __native_dllmain_reason/* Not supported: data(FF FF FF FF) */;

	internal unsafe static FeatureToggle* Etas_002EBase_002EToggles_002EFeatureToggle_002E_007Bctor_007D(FeatureToggle* P_0, sbyte* feature)
	{
		*(bool*)P_0 = InitAndCheckFeatureToggle(feature);
		return P_0;
	}

	[return: MarshalAs(UnmanagedType.U1)]
	internal unsafe static bool Etas_002EBase_002EToggles_002EFeatureToggle_002E_002E_N(FeatureToggle* P_0)
	{
		return *(bool*)P_0;
	}

	internal unsafe static bad_alloc* std_002Ebad_alloc_002E_007Bctor_007D(bad_alloc* P_0, sbyte* _Message)
	{
		std_002Eexception_002E_007Bctor_007D((exception*)P_0, &_Message);
		try
		{
			*(int*)P_0 = (int)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_7bad_alloc_0040std_0040_00406B_0040);
			return P_0;
		}
		catch
		{
			//try-fault
			___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<exception*, void>)(&std_002Eexception_002E_007Bdtor_007D), P_0);
			throw;
		}
	}

	internal unsafe static void std_002Ebad_alloc_002E_007Bdtor_007D(bad_alloc* P_0)
	{
		*(int*)P_0 = (int)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_7bad_alloc_0040std_0040_00406B_0040);
		std_002Eexception_002E_007Bdtor_007D((exception*)P_0);
	}

	internal unsafe static void* std_002Ebad_alloc_002E__vecDelDtor(bad_alloc* P_0, uint P_1)
	{
		if ((P_1 & 2) != 0)
		{
			bad_alloc* ptr = (bad_alloc*)((byte*)P_0 - 4);
			__ehvec_dtor(P_0, 12u, *(int*)ptr, (delegate*<void*, void>)(delegate*<bad_alloc*, void>)(&std_002Ebad_alloc_002E_007Bdtor_007D));
			if ((P_1 & 1) != 0)
			{
				delete(ptr);
			}
			return ptr;
		}
		*(int*)P_0 = (int)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_7bad_alloc_0040std_0040_00406B_0040);
		std_002Eexception_002E_007Bdtor_007D((exception*)P_0);
		if ((P_1 & 1) != 0)
		{
			delete(P_0);
		}
		return P_0;
	}

	[SpecialName]
	internal unsafe static _Exception_ptr* std_002E_Exception_ptr_002E_007Bctor_007D(_Exception_ptr* P_0, _Exception_ptr* _Rhs)
	{
		__ExceptionPtrCopy(P_0, _Rhs);
		return P_0;
	}

	internal unsafe static char* wmemcpy(char* _S1, char* _S2, uint _N)
	{
		// IL cpblk instruction
		System.Runtime.CompilerServices.Unsafe.CopyBlock(_S1, _S2, _N << 1);
		return _S1;
	}

	internal unsafe static char* wmemmove(char* _S1, char* _S2, uint _N)
	{
		return (char*)memmove(_S1, _S2, _N << 1);
	}

	internal unsafe static char* std_002Echar_traits_003Cwchar_t_003E_002Ecopy(char* _First1, char* _First2, uint _Count)
	{
		// IL cpblk instruction
		System.Runtime.CompilerServices.Unsafe.CopyBlock(_First1, _First2, _Count << 1);
		return _First1;
	}

	internal unsafe static char* std_002Echar_traits_003Cwchar_t_003E_002Emove(char* _First1, char* _First2, uint _Count)
	{
		return (char*)memmove(_First1, _First2, _Count << 1);
	}

	internal unsafe static void std_002Echar_traits_003Cwchar_t_003E_002Eassign(char* _Left, char* _Right)
	{
		*_Left = *_Right;
	}

	internal unsafe static sbyte* std_002Echar_traits_003Cchar_003E_002Ecopy(sbyte* _First1, sbyte* _First2, uint _Count)
	{
		// IL cpblk instruction
		System.Runtime.CompilerServices.Unsafe.CopyBlock(_First1, _First2, _Count);
		return _First1;
	}

	internal unsafe static sbyte* std_002Echar_traits_003Cchar_003E_002Emove(sbyte* _First1, sbyte* _First2, uint _Count)
	{
		return (sbyte*)memmove(_First1, _First2, _Count);
	}

	internal unsafe static sbyte* std_002Echar_traits_003Cchar_003E_002Eassign(sbyte* _First, uint _Count, sbyte _Ch)
	{
		// IL initblk instruction
		System.Runtime.CompilerServices.Unsafe.InitBlock(_First, _Ch, _Count);
		return _First;
	}

	internal unsafe static void std_002Echar_traits_003Cchar_003E_002Eassign(sbyte* _Left, sbyte* _Right)
	{
		*_Left = *_Right;
	}

	[SpecialName]
	internal unsafe static _Iterator_base12* std_002E_Iterator_base12_002E_007Bctor_007D(_Iterator_base12* P_0, _Iterator_base12* _Right)
	{
		*(int*)P_0 = 0;
		((int*)P_0)[1] = 0;
		std_002E_Iterator_base12_002E_003D(P_0, _Right);
		return P_0;
	}

	internal unsafe static _Iterator_base12* std_002E_Iterator_base12_002E_003D(_Iterator_base12* P_0, _Iterator_base12* _Right)
	{
		uint num = *(uint*)_Right;
		if (*(int*)P_0 != (int)num)
		{
			if (num != 0)
			{
				_Container_base12* ptr = (_Container_base12*)(int)(*(uint*)(int)num);
				if (ptr == null)
				{
					System.Runtime.CompilerServices.Unsafe.SkipInit(out _Lockit lockit);
					std_002E_Lockit_002E_007Bctor_007D(&lockit, 3);
					std_002E_Lockit_002E_007Bdtor_007D(&lockit);
				}
				else
				{
					*(int*)P_0 = *(int*)ptr;
				}
			}
			else
			{
				System.Runtime.CompilerServices.Unsafe.SkipInit(out _Lockit lockit2);
				std_002E_Lockit_002E_007Bctor_007D(&lockit2, 3);
				std_002E_Lockit_002E_007Bdtor_007D(&lockit2);
			}
		}
		return P_0;
	}

	internal unsafe static void std_002E_Iterator_base12_002E_Adopt(_Iterator_base12* P_0, _Container_base12* _Parent)
	{
		if (_Parent == null)
		{
			System.Runtime.CompilerServices.Unsafe.SkipInit(out _Lockit lockit);
			std_002E_Lockit_002E_007Bctor_007D(&lockit, 3);
			std_002E_Lockit_002E_007Bdtor_007D(&lockit);
		}
		else
		{
			*(int*)P_0 = *(int*)_Parent;
		}
	}

	internal unsafe static void std_002E_Iterator_base12_002E_Orphan_me(_Iterator_base12* P_0)
	{
	}

	[SpecialName]
	internal unsafe static allocator_003Cvoid_003E* std_002Eallocator_003Cvoid_003E_002E_007Bctor_007D(allocator_003Cvoid_003E* P_0, allocator_003Cvoid_003E* P_1)
	{
		return P_0;
	}

	internal unsafe static void* std_002Eruntime_error_002E__vecDelDtor(runtime_error* P_0, uint P_1)
	{
		if ((P_1 & 2) != 0)
		{
			runtime_error* ptr = (runtime_error*)((byte*)P_0 - 4);
			__ehvec_dtor(P_0, 12u, *(int*)ptr, (delegate*<void*, void>)(delegate*<runtime_error*, void>)(&std_002Eruntime_error_002E_007Bdtor_007D));
			if ((P_1 & 1) != 0)
			{
				delete_005B_005D(ptr);
			}
			return ptr;
		}
		std_002Eexception_002E_007Bdtor_007D((exception*)P_0);
		if ((P_1 & 1) != 0)
		{
			delete(P_0);
		}
		return P_0;
	}

	internal unsafe static void std_002Eruntime_error_002E_007Bdtor_007D(runtime_error* P_0)
	{
		std_002Eexception_002E_007Bdtor_007D((exception*)P_0);
	}

	[SpecialName]
	internal unsafe static runtime_error* std_002Eruntime_error_002E_007Bctor_007D(runtime_error* P_0, runtime_error* P_1)
	{
		std_002Eexception_002E_007Bctor_007D((exception*)P_0, (exception*)P_1);
		try
		{
			*(int*)P_0 = (int)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_7runtime_error_0040std_0040_00406B_0040);
			return P_0;
		}
		catch
		{
			//try-fault
			___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<exception*, void>)(&std_002Eexception_002E_007Bdtor_007D), P_0);
			throw;
		}
	}

	[SpecialName]
	internal unsafe static locale* std_002Elocale_002E_007Bctor_007D(locale* P_0, locale* _Right)
	{
		std_002Elocale_002Efacet_002E_Incref((locale.facet*)(*(int*)P_0 = *(int*)_Right));
		return P_0;
	}

	internal unsafe static void* std_002Esystem_error_002E__vecDelDtor(system_error* P_0, uint P_1)
	{
		if ((P_1 & 2) != 0)
		{
			system_error* ptr = (system_error*)((byte*)P_0 - 4);
			__ehvec_dtor(P_0, 20u, *(int*)ptr, (delegate*<void*, void>)(delegate*<system_error*, void>)(&std_002Esystem_error_002E_007Bdtor_007D));
			if ((P_1 & 1) != 0)
			{
				delete_005B_005D(ptr);
			}
			return ptr;
		}
		std_002Eexception_002E_007Bdtor_007D((exception*)P_0);
		if ((P_1 & 1) != 0)
		{
			delete(P_0);
		}
		return P_0;
	}

	internal unsafe static void std_002Esystem_error_002E_007Bdtor_007D(system_error* P_0)
	{
		std_002Eexception_002E_007Bdtor_007D((exception*)P_0);
	}

	internal unsafe static void* std_002Eios_base_002Efailure_002E__vecDelDtor(ios_base.failure* P_0, uint P_1)
	{
		if ((P_1 & 2) != 0)
		{
			ios_base.failure* ptr = (ios_base.failure*)((byte*)P_0 - 4);
			__ehvec_dtor(P_0, 20u, *(int*)ptr, (delegate*<void*, void>)(delegate*<ios_base.failure*, void>)(&std_002Eios_base_002Efailure_002E_007Bdtor_007D));
			if ((P_1 & 1) != 0)
			{
				delete_005B_005D(ptr);
			}
			return ptr;
		}
		std_002Eexception_002E_007Bdtor_007D((exception*)P_0);
		if ((P_1 & 1) != 0)
		{
			delete(P_0);
		}
		return P_0;
	}

	internal unsafe static void std_002Eios_base_002Efailure_002E_007Bdtor_007D(ios_base.failure* P_0)
	{
		std_002Eexception_002E_007Bdtor_007D((exception*)P_0);
	}

	[SpecialName]
	internal unsafe static ios_base.failure* std_002Eios_base_002Efailure_002E_007Bctor_007D(ios_base.failure* P_0, ios_base.failure* P_1)
	{
		std_002Eexception_002E_007Bctor_007D((exception*)P_0, (exception*)P_1);
		try
		{
			*(int*)P_0 = (int)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_7runtime_error_0040std_0040_00406B_0040);
		}
		catch
		{
			//try-fault
			___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<exception*, void>)(&std_002Eexception_002E_007Bdtor_007D), P_0);
			throw;
		}
		try
		{
			*(int*)P_0 = (int)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_7system_error_0040std_0040_00406B_0040);
			// IL cpblk instruction
			System.Runtime.CompilerServices.Unsafe.CopyBlock((byte*)P_0 + 12, (byte*)P_1 + 12, 8);
		}
		catch
		{
			//try-fault
			___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<runtime_error*, void>)(&std_002Eruntime_error_002E_007Bdtor_007D), P_0);
			throw;
		}
		try
		{
			*(int*)P_0 = (int)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_7failure_0040ios_base_0040std_0040_00406B_0040);
			return P_0;
		}
		catch
		{
			//try-fault
			___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<system_error*, void>)(&std_002Esystem_error_002E_007Bdtor_007D), P_0);
			throw;
		}
	}

	[SpecialName]
	internal unsafe static system_error* std_002Esystem_error_002E_007Bctor_007D(system_error* P_0, system_error* P_1)
	{
		std_002Eexception_002E_007Bctor_007D((exception*)P_0, (exception*)P_1);
		try
		{
			*(int*)P_0 = (int)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_7runtime_error_0040std_0040_00406B_0040);
		}
		catch
		{
			//try-fault
			___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<exception*, void>)(&std_002Eexception_002E_007Bdtor_007D), P_0);
			throw;
		}
		try
		{
			*(int*)P_0 = (int)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_7system_error_0040std_0040_00406B_0040);
			// IL cpblk instruction
			System.Runtime.CompilerServices.Unsafe.CopyBlock((byte*)P_0 + 12, (byte*)P_1 + 12, 8);
			return P_0;
		}
		catch
		{
			//try-fault
			___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<runtime_error*, void>)(&std_002Eruntime_error_002E_007Bdtor_007D), P_0);
			throw;
		}
	}

	internal unsafe static ref char PtrToStringChars(string s)
	{
		ref byte reference = ref *(byte*)s;
		if (System.Runtime.CompilerServices.Unsafe.AsPointer(ref reference) != null)
		{
			reference = ref *(byte*)((ref *(_003F*)RuntimeHelpers.OffsetToStringData) + (ref System.Runtime.CompilerServices.Unsafe.As<byte, _003F>(ref reference)));
		}
		return ref System.Runtime.CompilerServices.Unsafe.As<byte, char>(ref reference);
	}

	internal unsafe static uint msclr_002Einterop_002Edetails_002EGetAnsiStringSize(string _str)
	{
		ref byte reference = ref *(byte*)_str;
		if (System.Runtime.CompilerServices.Unsafe.AsPointer(ref reference) != null)
		{
			reference = ref *(byte*)((ref *(_003F*)RuntimeHelpers.OffsetToStringData) + (ref System.Runtime.CompilerServices.Unsafe.As<byte, _003F>(ref reference)));
		}
		fixed (char* ptr = &System.Runtime.CompilerServices.Unsafe.As<byte, char>(ref reference))
		{
			uint num = (uint)WideCharToMultiByte(3u, 1024u, ptr, _str.Length, null, 0, null, null);
			if (num == 0 && _str.Length != 0)
			{
				throw new ArgumentException("Conversion from WideChar to MultiByte failed.  Please check the content of the string and/or locale settings.");
			}
			return num + 1;
		}
	}

	internal unsafe static void msclr_002Einterop_002Edetails_002EWriteAnsiString(sbyte* _buf, uint _size, string _str)
	{
		ref byte reference = ref *(byte*)_str;
		if (System.Runtime.CompilerServices.Unsafe.AsPointer(ref reference) != null)
		{
			reference = ref *(byte*)((ref *(_003F*)RuntimeHelpers.OffsetToStringData) + (ref System.Runtime.CompilerServices.Unsafe.As<byte, _003F>(ref reference)));
		}
		fixed (char* ptr = &System.Runtime.CompilerServices.Unsafe.As<byte, char>(ref reference))
		{
			if (_size > int.MaxValue)
			{
				throw new ArgumentOutOfRangeException("Size of string exceeds INT_MAX.");
			}
			uint num = (uint)WideCharToMultiByte(3u, 1024u, ptr, _str.Length, _buf, (int)_size, null, null);
			if (num < _size && (num != 0 || _size == 1))
			{
				*((int)num + _buf) = 0;
				return;
			}
			throw new ArgumentException("Conversion from WideChar to MultiByte failed.  Please check the content of the string and/or locale settings.");
		}
	}

	internal unsafe static basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* msclr_002Einterop_002Emarshal_as_003Cclass_0020std_003A_003Abasic_string_003Cchar_002Cstruct_0020std_003A_003Achar_traits_003Cchar_003E_002Cclass_0020std_003A_003Aallocator_003Cchar_003E_0020_003E_002Cclass_0020System_003A_003AString_0020_005E_003E(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0, string* _from_obj)
	{
		System.Runtime.CompilerServices.Unsafe.SkipInit(out uint num);
		try
		{
			num = 0u;
			if (*_from_obj == null)
			{
				throw new ArgumentNullException("NULLPTR is not supported for this conversion.");
			}
			basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* ptr = (basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E*)((byte*)P_0 + 20);
			*(int*)ptr = 15;
			basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* ptr2 = (basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E*)((byte*)P_0 + 16);
			*(int*)ptr2 = 0;
			*(sbyte*)P_0 = 0;
			num = 1u;
			uint num2 = msclr_002Einterop_002Edetails_002EGetAnsiStringSize(*_from_obj);
			if (num2 > 1)
			{
				uint num3 = num2 - 1;
				uint num4 = *(uint*)ptr2;
				if (num3 <= num4)
				{
					std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Eerase(P_0, num3, uint.MaxValue);
				}
				else
				{
					std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Eappend(P_0, num3 - num4, 0);
				}
				msclr_002Einterop_002Edetails_002EWriteAnsiString((16u > (uint)(*(int*)ptr)) ? ((sbyte*)P_0) : ((sbyte*)(int)(*(uint*)P_0)), num2, *_from_obj);
			}
			return P_0;
		}
		catch
		{
			//try-fault
			if ((num & 1) != 0)
			{
				num &= 0xFFFFFFFEu;
				___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E*, void>)(&std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_007Bdtor_007D), P_0);
			}
			throw;
		}
	}

	internal unsafe static basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_007Bctor_007D(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0)
	{
		((int*)P_0)[5] = 15;
		((int*)P_0)[4] = 0;
		*(sbyte*)P_0 = 0;
		return P_0;
	}

	internal unsafe static basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_007Bctor_007D(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0, basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* _Right)
	{
		((int*)P_0)[5] = 15;
		((int*)P_0)[4] = 0;
		*(sbyte*)P_0 = 0;
		global::_003CModule_003E.std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Eassign(P_0, _Right);
		return P_0;
	}

	internal unsafe static void std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_007Bdtor_007D(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0)
	{
		if (16u <= (uint)((int*)P_0)[5])
		{
			delete((void*)(int)(*(uint*)P_0));
		}
		((int*)P_0)[5] = 15;
		((int*)P_0)[4] = 0;
		*(sbyte*)P_0 = 0;
	}

	internal unsafe static sbyte* std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_005B_005D(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0, uint _Off)
	{
		return (sbyte*)(((16u > (uint)((int*)P_0)[5]) ? ((nint)P_0) : ((nint)(*(int*)P_0))) + (int)_Off);
	}

	internal unsafe static sbyte* std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Ec_str(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0)
	{
		return (16u > (uint)((int*)P_0)[5]) ? ((sbyte*)P_0) : ((sbyte*)(int)(*(uint*)P_0));
	}

	internal unsafe static uint std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Esize(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0)
	{
		return ((uint*)P_0)[4];
	}

	internal unsafe static void std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Eresize(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0, uint _Newsize)
	{
		uint num = ((uint*)P_0)[4];
		if (_Newsize <= num)
		{
			std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Eerase(P_0, _Newsize, uint.MaxValue);
		}
		else
		{
			std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Eappend(P_0, _Newsize - num, 0);
		}
	}

	[SpecialName]
	internal unsafe static basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002E_007Bctor_007D(basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* P_0, basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* _Right)
	{
		((int*)P_0)[5] = 7;
		((int*)P_0)[4] = 0;
		*(short*)P_0 = 0;
		std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002Eassign(P_0, _Right, 0u, uint.MaxValue);
		return P_0;
	}

	internal unsafe static void std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002E_007Bdtor_007D(basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* P_0)
	{
		if (8u <= (uint)((int*)P_0)[5])
		{
			delete((void*)(int)(*(uint*)P_0));
		}
		((int*)P_0)[5] = 7;
		((int*)P_0)[4] = 0;
		*(short*)P_0 = 0;
	}

	internal unsafe static uint std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002Esize(basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* P_0)
	{
		return ((uint*)P_0)[4];
	}

	internal unsafe static char_buffer_003Cchar_003E* msclr_002Einterop_002Edetails_002Echar_buffer_003Cchar_003E_002E_007Bctor_007D(char_buffer_003Cchar_003E* P_0, uint _size)
	{
		*(int*)P_0 = (int)new_005B_005D(_size);
		return P_0;
	}

	internal unsafe static void msclr_002Einterop_002Edetails_002Echar_buffer_003Cchar_003E_002E_007Bdtor_007D(char_buffer_003Cchar_003E* P_0)
	{
		delete_005B_005D((void*)(int)(*(uint*)P_0));
	}

	internal unsafe static sbyte* msclr_002Einterop_002Edetails_002Echar_buffer_003Cchar_003E_002Eget(char_buffer_003Cchar_003E* P_0)
	{
		return (sbyte*)(int)(*(uint*)P_0);
	}

	internal unsafe static sbyte* msclr_002Einterop_002Edetails_002Echar_buffer_003Cchar_003E_002Erelease(char_buffer_003Cchar_003E* P_0)
	{
		int num = *(int*)P_0;
		*(int*)P_0 = 0;
		return (sbyte*)num;
	}

	internal unsafe static basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Eassign(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0, basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* _Right)
	{
		if (P_0 != _Right)
		{
			if (16u <= (uint)((int*)P_0)[5])
			{
				delete((void*)(int)(*(uint*)P_0));
			}
			((int*)P_0)[5] = 15;
			((int*)P_0)[4] = 0;
			*(sbyte*)P_0 = 0;
			if ((uint)((int*)_Right)[5] < 16u)
			{
				memmove(P_0, _Right, (uint)(((int*)_Right)[4] + 1));
			}
			else
			{
				*(int*)P_0 = *(int*)_Right;
				*(int*)_Right = 0;
			}
			((int*)P_0)[4] = ((int*)_Right)[4];
			((int*)P_0)[5] = ((int*)_Right)[5];
			((int*)_Right)[5] = 15;
			((int*)_Right)[4] = 0;
			*(sbyte*)_Right = 0;
		}
		return P_0;
	}

	internal unsafe static void std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Eresize(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0, uint _Newsize, sbyte _Ch)
	{
		uint num = ((uint*)P_0)[4];
		if (_Newsize <= num)
		{
			std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Eerase(P_0, _Newsize, uint.MaxValue);
		}
		else
		{
			std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Eappend(P_0, _Newsize - num, _Ch);
		}
	}

	internal unsafe static void std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_Tidy(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0, [MarshalAs(UnmanagedType.U1)] bool _Built, uint _Newsize)
	{
		if (_Built && 16u <= (uint)((int*)P_0)[5])
		{
			sbyte* ptr = (sbyte*)(int)(*(uint*)P_0);
			if (0 < _Newsize)
			{
				// IL cpblk instruction
				System.Runtime.CompilerServices.Unsafe.CopyBlock(P_0, ptr, _Newsize);
			}
			delete(ptr);
		}
		((int*)P_0)[5] = 15;
		((int*)P_0)[4] = (int)_Newsize;
		*((int)_Newsize + (sbyte*)P_0) = 0;
	}

	internal unsafe static sbyte* std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_Myptr(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0)
	{
		return (16u > (uint)((int*)P_0)[5]) ? ((sbyte*)P_0) : ((sbyte*)(int)(*(uint*)P_0));
	}

	internal unsafe static sbyte* std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_Myptr(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0)
	{
		return (16u > (uint)((int*)P_0)[5]) ? ((sbyte*)P_0) : ((sbyte*)(int)(*(uint*)P_0));
	}

	internal unsafe static _String_val_003Cchar_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* std_002E_String_val_003Cchar_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_007Bctor_007D(_String_val_003Cchar_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0, allocator_003Cchar_003E* _Al)
	{
		return P_0;
	}

	internal unsafe static void std_002E_String_val_003Cchar_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_007Bdtor_007D(_String_val_003Cchar_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0)
	{
	}

	internal unsafe static allocator_003Cchar_003E* std_002Eallocator_003Cchar_003E_002E_007Bctor_007D(allocator_003Cchar_003E* P_0)
	{
		return P_0;
	}

	[SpecialName]
	internal unsafe static allocator_003Cchar_003E* std_002Eallocator_003Cchar_003E_002E_007Bctor_007D(allocator_003Cchar_003E* P_0, allocator_003Cchar_003E* P_1)
	{
		return P_0;
	}

	internal unsafe static basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002Eassign(basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* P_0, basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* _Right, uint _Roff, uint _Count)
	{
		uint num = ((uint*)_Right)[4];
		if (num < _Roff)
		{
			std_002E_Xout_of_range((sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_C_0040_0BI_0040CFPLBAOH_0040invalid_003F5string_003F5position_003F_0024AA_0040));
		}
		uint num2 = num - _Roff;
		if (_Count < num2)
		{
			num2 = _Count;
		}
		if (P_0 == _Right)
		{
			std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002Eerase(P_0, num2 + _Roff, uint.MaxValue);
			std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002Eerase(P_0, 0u, _Roff);
			goto IL_00d4;
		}
		if (2147483646 < num2)
		{
			std_002E_Xlength_error((sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_C_0040_0BA_0040JFNIOLAK_0040string_003F5too_003F5long_003F_0024AA_0040));
		}
		uint num3 = ((uint*)P_0)[5];
		if (num3 < num2)
		{
			std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002E_Copy(P_0, num2, ((uint*)P_0)[4]);
		}
		else if (num2 == 0)
		{
			((int*)P_0)[4] = 0;
			*((8 > num3) ? ((short*)P_0) : ((short*)(int)(*(uint*)P_0))) = 0;
			goto IL_008a;
		}
		if (0 >= num2)
		{
			goto IL_008a;
		}
		int num4 = 1;
		goto IL_008d;
		IL_008a:
		num4 = 0;
		goto IL_008d;
		IL_008d:
		if ((byte)num4 != 0)
		{
			char* ptr = ((8u > (uint)((int*)_Right)[5]) ? ((char*)_Right) : ((char*)(int)(*(uint*)_Right)));
			IntPtr intPtr = ((8u > (uint)((int*)P_0)[5]) ? ((IntPtr)(nint)P_0) : ((IntPtr)(*(int*)P_0)));
			uint num5 = num2 * 2;
			// IL cpblk instruction
			System.Runtime.CompilerServices.Unsafe.CopyBlock(intPtr, (int)(_Roff * 2) + (byte*)ptr, num5);
			((int*)P_0)[4] = (int)num2;
			char* ptr2 = ((8u > (uint)((int*)P_0)[5]) ? ((char*)P_0) : ((char*)(int)(*(uint*)P_0)));
			*(short*)((int)num5 + (byte*)ptr2) = 0;
		}
		goto IL_00d4;
		IL_00d4:
		return P_0;
	}

	internal unsafe static void std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002E_Tidy(basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* P_0, [MarshalAs(UnmanagedType.U1)] bool _Built, uint _Newsize)
	{
		if (_Built && 8u <= (uint)((int*)P_0)[5])
		{
			char* ptr = (char*)(int)(*(uint*)P_0);
			if (0 < _Newsize)
			{
				// IL cpblk instruction
				System.Runtime.CompilerServices.Unsafe.CopyBlock(P_0, ptr, _Newsize << 1);
			}
			delete(ptr);
		}
		((int*)P_0)[5] = 7;
		((int*)P_0)[4] = (int)_Newsize;
		*(short*)((int)(_Newsize * 2) + (byte*)P_0) = 0;
	}

	internal unsafe static char* std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002E_Myptr(basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* P_0)
	{
		return (8u > (uint)((int*)P_0)[5]) ? ((char*)P_0) : ((char*)(int)(*(uint*)P_0));
	}

	internal unsafe static _String_val_003Cwchar_t_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* std_002E_String_val_003Cwchar_t_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002E_007Bctor_007D(_String_val_003Cwchar_t_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* P_0, allocator_003Cwchar_t_003E* _Al)
	{
		return P_0;
	}

	internal unsafe static void std_002E_String_val_003Cwchar_t_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002E_007Bdtor_007D(_String_val_003Cwchar_t_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* P_0)
	{
	}

	[SpecialName]
	internal unsafe static allocator_003Cwchar_t_003E* std_002Eallocator_003Cwchar_t_003E_002E_007Bctor_007D(allocator_003Cwchar_t_003E* P_0, allocator_003Cwchar_t_003E* P_1)
	{
		return P_0;
	}

	internal unsafe static basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_003D(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0, basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* _Right)
	{
		return std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Eassign(P_0, _Right, 0u, uint.MaxValue);
	}

	internal unsafe static basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Eappend(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0, uint _Count, sbyte _Ch)
	{
		uint num = ((uint*)P_0)[4];
		if ((uint)(-1 - (int)num) <= _Count)
		{
			std_002E_Xlength_error((sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_C_0040_0BA_0040JFNIOLAK_0040string_003F5too_003F5long_003F_0024AA_0040));
		}
		uint num2;
		int num4;
		if (0 < _Count)
		{
			num2 = num + _Count;
			if (4294967294u < num2)
			{
				std_002E_Xlength_error((sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_C_0040_0BA_0040JFNIOLAK_0040string_003F5too_003F5long_003F_0024AA_0040));
			}
			uint num3 = ((uint*)P_0)[5];
			if (num3 < num2)
			{
				std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_Copy(P_0, num2, num);
			}
			else if (num2 == 0)
			{
				((int*)P_0)[4] = 0;
				*((16 > num3) ? ((sbyte*)P_0) : ((sbyte*)(int)(*(uint*)P_0))) = 0;
				goto IL_0060;
			}
			if (0 >= num2)
			{
				goto IL_0060;
			}
			num4 = 1;
			goto IL_0062;
		}
		goto IL_008b;
		IL_008b:
		return P_0;
		IL_0062:
		if ((byte)num4 != 0)
		{
			std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_Chassign(P_0, ((uint*)P_0)[4], _Count, _Ch);
			((int*)P_0)[4] = (int)num2;
			*(sbyte*)(((16u > (uint)((int*)P_0)[5]) ? ((nint)P_0) : ((nint)(*(int*)P_0))) + (int)num2) = 0;
		}
		goto IL_008b;
		IL_0060:
		num4 = 0;
		goto IL_0062;
	}

	internal unsafe static basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Eerase(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0, uint _Off, uint _Count)
	{
		uint num = ((uint*)P_0)[4];
		if (num < _Off)
		{
			std_002E_Xout_of_range((sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_C_0040_0BI_0040CFPLBAOH_0040invalid_003F5string_003F5position_003F_0024AA_0040));
		}
		uint num2 = num - _Off;
		if (num2 < _Count)
		{
			_Count = num2;
		}
		if (0 < _Count)
		{
			uint num3 = ((uint*)P_0)[5];
			sbyte* ptr = ((16 > num3) ? ((sbyte*)P_0) : ((sbyte*)(int)(*(uint*)P_0)));
			memmove((void*)(((16 > num3) ? ((nint)P_0) : ((nint)(*(int*)P_0))) + (int)_Off), ptr + (int)_Off + (int)_Count, num2 - _Count);
			uint num4 = (uint)(((int*)P_0)[4] -= (int)_Count);
			*(sbyte*)(((16u > (uint)((int*)P_0)[5]) ? ((nint)P_0) : ((nint)(*(int*)P_0))) + (int)num4) = 0;
		}
		return P_0;
	}

	internal unsafe static allocator_003Cchar_003E* std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Eget_allocator(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0, allocator_003Cchar_003E* P_1)
	{
		return P_1;
	}

	internal unsafe static void std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_Eos(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0, uint _Newsize)
	{
		((int*)P_0)[4] = (int)_Newsize;
		*(sbyte*)(((16u > (uint)((int*)P_0)[5]) ? ((nint)P_0) : ((nint)(*(int*)P_0))) + (int)_Newsize) = 0;
	}

	internal unsafe static void std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_Xran(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0)
	{
		std_002E_Xout_of_range((sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_C_0040_0BI_0040CFPLBAOH_0040invalid_003F5string_003F5position_003F_0024AA_0040));
	}

	internal unsafe static void std_002Eallocator_003Cchar_003E_002Edeallocate(allocator_003Cchar_003E* P_0, sbyte* _Ptr, uint __unnamed001)
	{
		delete(_Ptr);
	}

	internal unsafe static basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002Eerase(basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* P_0, uint _Off, uint _Count)
	{
		uint num = ((uint*)P_0)[4];
		if (num < _Off)
		{
			std_002E_Xout_of_range((sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_C_0040_0BI_0040CFPLBAOH_0040invalid_003F5string_003F5position_003F_0024AA_0040));
		}
		uint num2 = num - _Off;
		if (num2 < _Count)
		{
			_Count = num2;
		}
		if (0 < _Count)
		{
			uint num3 = ((uint*)P_0)[5];
			char* ptr = ((8 > num3) ? ((char*)P_0) : ((char*)(int)(*(uint*)P_0)));
			char* ptr2 = ((8 > num3) ? ((char*)P_0) : ((char*)(int)(*(uint*)P_0)));
			memmove((int)(_Off * 2) + (byte*)ptr2, (int)((_Off + _Count) * 2) + (byte*)ptr, num2 - _Count << 1);
			uint num4 = (uint)(((int*)P_0)[4] -= (int)_Count);
			char* ptr3 = ((8u > (uint)((int*)P_0)[5]) ? ((char*)P_0) : ((char*)(int)(*(uint*)P_0)));
			*(short*)((int)(num4 * 2) + (byte*)ptr3) = 0;
		}
		return P_0;
	}

	internal unsafe static void std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002E_Eos(basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* P_0, uint _Newsize)
	{
		((int*)P_0)[4] = (int)_Newsize;
		char* ptr = ((8u > (uint)((int*)P_0)[5]) ? ((char*)P_0) : ((char*)(int)(*(uint*)P_0)));
		*(short*)((int)(_Newsize * 2) + (byte*)ptr) = 0;
	}

	[return: MarshalAs(UnmanagedType.U1)]
	internal unsafe static bool std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002E_Grow(basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* P_0, uint _Newsize, [MarshalAs(UnmanagedType.U1)] bool _Trim)
	{
		if (2147483646 < _Newsize)
		{
			std_002E_Xlength_error((sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_C_0040_0BA_0040JFNIOLAK_0040string_003F5too_003F5long_003F_0024AA_0040));
		}
		uint num = ((uint*)P_0)[5];
		if (num < _Newsize)
		{
			std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002E_Copy(P_0, _Newsize, ((uint*)P_0)[4]);
		}
		else if (_Trim && _Newsize < 8)
		{
			uint num2 = ((uint*)P_0)[4];
			uint newsize = ((_Newsize >= num2) ? num2 : _Newsize);
			std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002E_Tidy(P_0, true, newsize);
		}
		else if (_Newsize == 0)
		{
			((int*)P_0)[4] = 0;
			*((8 > num) ? ((short*)P_0) : ((short*)(int)(*(uint*)P_0))) = 0;
			goto IL_0069;
		}
		if (0 >= _Newsize)
		{
			goto IL_0069;
		}
		int num3 = 1;
		goto IL_006b;
		IL_0069:
		num3 = 0;
		goto IL_006b;
		IL_006b:
		return (byte)num3 != 0;
	}

	internal unsafe static char* std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002E_Myptr(basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* P_0)
	{
		return (8u > (uint)((int*)P_0)[5]) ? ((char*)P_0) : ((char*)(int)(*(uint*)P_0));
	}

	internal unsafe static void std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002E_Xran(basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* P_0)
	{
		std_002E_Xout_of_range((sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_C_0040_0BI_0040CFPLBAOH_0040invalid_003F5string_003F5position_003F_0024AA_0040));
	}

	internal unsafe static void std_002Eallocator_003Cwchar_t_003E_002Edeallocate(allocator_003Cwchar_t_003E* P_0, char* _Ptr, uint __unnamed001)
	{
		delete(_Ptr);
	}

	internal unsafe static basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Eassign(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0, basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* _Right)
	{
		return std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Eassign(P_0, _Right, 0u, uint.MaxValue);
	}

	internal unsafe static basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Eassign(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0, basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* _Right, uint _Roff, uint _Count)
	{
		uint num = ((uint*)_Right)[4];
		if (num < _Roff)
		{
			std_002E_Xout_of_range((sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_C_0040_0BI_0040CFPLBAOH_0040invalid_003F5string_003F5position_003F_0024AA_0040));
		}
		uint num2 = num - _Roff;
		if (_Count < num2)
		{
			num2 = _Count;
		}
		if (P_0 == _Right)
		{
			std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Eerase(P_0, num2 + _Roff, uint.MaxValue);
			std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Eerase(P_0, 0u, _Roff);
			goto IL_00c6;
		}
		if (4294967294u < num2)
		{
			std_002E_Xlength_error((sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_C_0040_0BA_0040JFNIOLAK_0040string_003F5too_003F5long_003F_0024AA_0040));
		}
		uint num3 = ((uint*)P_0)[5];
		if (num3 < num2)
		{
			std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_Copy(P_0, num2, ((uint*)P_0)[4]);
		}
		else if (num2 == 0)
		{
			((int*)P_0)[4] = 0;
			*((16 > num3) ? ((sbyte*)P_0) : ((sbyte*)(int)(*(uint*)P_0))) = 0;
			goto IL_0084;
		}
		if (0 >= num2)
		{
			goto IL_0084;
		}
		int num4 = 1;
		goto IL_0086;
		IL_0084:
		num4 = 0;
		goto IL_0086;
		IL_0086:
		if ((byte)num4 != 0)
		{
			sbyte* ptr = ((16u > (uint)((int*)_Right)[5]) ? ((sbyte*)_Right) : ((sbyte*)(int)(*(uint*)_Right)));
			// IL cpblk instruction
			System.Runtime.CompilerServices.Unsafe.CopyBlock((16u > (uint)((int*)P_0)[5]) ? ((nint)P_0) : ((nint)(*(int*)P_0)), ptr + (int)_Roff, num2);
			((int*)P_0)[4] = (int)num2;
			*(sbyte*)(((16u > (uint)((int*)P_0)[5]) ? ((nint)P_0) : ((nint)(*(int*)P_0))) + (int)num2) = 0;
		}
		goto IL_00c6;
		IL_00c6:
		return P_0;
	}

	internal unsafe static void std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_Chassign(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0, uint _Off, uint _Count, sbyte _Ch)
	{
		if (_Count == 1)
		{
			*(sbyte*)(((16u > (uint)((int*)P_0)[5]) ? ((nint)P_0) : ((nint)(*(int*)P_0))) + (int)_Off) = _Ch;
		}
		else
		{
			// IL initblk instruction
			System.Runtime.CompilerServices.Unsafe.InitBlock(((16u > (uint)((int*)P_0)[5]) ? ((nint)P_0) : ((nint)(*(int*)P_0))) + (int)_Off, _Ch, _Count);
		}
	}

	[return: MarshalAs(UnmanagedType.U1)]
	internal unsafe static bool std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_Grow(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0, uint _Newsize, [MarshalAs(UnmanagedType.U1)] bool _Trim)
	{
		if (4294967294u < _Newsize)
		{
			std_002E_Xlength_error((sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_C_0040_0BA_0040JFNIOLAK_0040string_003F5too_003F5long_003F_0024AA_0040));
		}
		uint num = ((uint*)P_0)[5];
		if (num < _Newsize)
		{
			std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_Copy(P_0, _Newsize, ((uint*)P_0)[4]);
		}
		else if (_Trim && _Newsize < 16)
		{
			uint num2 = ((uint*)P_0)[4];
			uint num3 = ((_Newsize >= num2) ? num2 : _Newsize);
			if (16 <= num)
			{
				sbyte* ptr = (sbyte*)(int)(*(uint*)P_0);
				if (0 < num3)
				{
					// IL cpblk instruction
					System.Runtime.CompilerServices.Unsafe.CopyBlock(P_0, ptr, num3);
				}
				delete(ptr);
			}
			((int*)P_0)[5] = 15;
			((int*)P_0)[4] = (int)num3;
			*((int)num3 + (sbyte*)P_0) = 0;
		}
		else if (_Newsize == 0)
		{
			((int*)P_0)[4] = 0;
			*((16 > num) ? ((sbyte*)P_0) : ((sbyte*)(int)(*(uint*)P_0))) = 0;
			goto IL_008c;
		}
		if (0 >= _Newsize)
		{
			goto IL_008c;
		}
		int num4 = 1;
		goto IL_008e;
		IL_008c:
		num4 = 0;
		goto IL_008e;
		IL_008e:
		return (byte)num4 != 0;
	}

	internal unsafe static void std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_Xlen(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0)
	{
		std_002E_Xlength_error((sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_C_0040_0BA_0040JFNIOLAK_0040string_003F5too_003F5long_003F_0024AA_0040));
	}

	internal unsafe static uint std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002Emax_size(basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* P_0)
	{
		return 2147483646u;
	}

	internal unsafe static void std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002E_Copy(basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* P_0, uint _Newsize, uint _Oldlen)
	{
		uint num = (uint)__CxxQueryExceptionSize();
		int num2 = (int)stackalloc byte[(int)(num << 1)];
		uint num3 = _Newsize | 7;
		if (2147483646 < num3)
		{
			num3 = _Newsize;
		}
		else
		{
			uint num4 = ((uint*)P_0)[5];
			uint num5 = num4 >> 1;
			if (num5 > num3 / 3)
			{
				num3 = ((num4 > 2147483646 - num5) ? 2147483646u : (num5 + num4));
			}
		}
		System.Runtime.CompilerServices.Unsafe.SkipInit(out int num6);
		System.Runtime.CompilerServices.Unsafe.SkipInit(out char* ptr);
		try
		{
			num6 = (int)num + num2;
			ptr = std_002E_Allocate_003Cwchar_t_003E(num3 + 1, null);
		}
		catch when (((Func<bool>)delegate
		{
			// Could not convert BlockContainer to single expression
			uint exceptionCode = (uint)Marshal.GetExceptionCode();
			return (byte)__CxxExceptionFilter((void*)Marshal.GetExceptionPointers(), null, 0, null) != 0;
		}).Invoke())
		{
			uint num7 = 0u;
			__CxxRegisterExceptionObject((void*)Marshal.GetExceptionPointers(), (void*)num6);
			try
			{
				try
				{
					num3 = _Newsize;
					try
					{
						ptr = std_002E_Allocate_003Cwchar_t_003E(_Newsize + 1, null);
					}
					catch when (((Func<bool>)delegate
					{
						// Could not convert BlockContainer to single expression
						uint exceptionCode2 = (uint)Marshal.GetExceptionCode();
						return (byte)__CxxExceptionFilter((void*)Marshal.GetExceptionPointers(), null, 0, null) != 0;
					}).Invoke())
					{
						uint num8 = 0u;
						__CxxRegisterExceptionObject((void*)Marshal.GetExceptionPointers(), (void*)num2);
						try
						{
							try
							{
								std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002E_Tidy(P_0, true, 0u);
								_CxxThrowException(null, null);
							}
							catch when (((Func<bool>)delegate
							{
								// Could not convert BlockContainer to single expression
								num8 = (uint)__CxxDetectRethrow((void*)Marshal.GetExceptionPointers());
								return (byte)num8 != 0;
							}).Invoke())
							{
							}
							if (num8 != 0)
							{
								throw;
							}
							goto end_IL_00b0;
						}
						finally
						{
							__CxxUnregisterExceptionObject((void*)num2, (int)num8);
						}
						end_IL_00b0:;
					}
					goto end_IL_008b;
				}
				catch when (((Func<bool>)delegate
				{
					// Could not convert BlockContainer to single expression
					num7 = (uint)__CxxDetectRethrow((void*)Marshal.GetExceptionPointers());
					return (byte)num7 != 0;
				}).Invoke())
				{
				}
				if (num7 != 0)
				{
					throw;
				}
				end_IL_008b:;
			}
			finally
			{
				__CxxUnregisterExceptionObject((void*)num6, (int)num7);
			}
		}
		if (0 < _Oldlen)
		{
			char* ptr2 = ((8u > (uint)((int*)P_0)[5]) ? ((char*)P_0) : ((char*)(int)(*(uint*)P_0)));
			// IL cpblk instruction
			System.Runtime.CompilerServices.Unsafe.CopyBlock(ptr, ptr2, _Oldlen << 1);
		}
		if (8u <= (uint)((int*)P_0)[5])
		{
			delete((void*)(int)(*(uint*)P_0));
		}
		*(short*)P_0 = 0;
		*(int*)P_0 = (int)ptr;
		((int*)P_0)[5] = (int)num3;
		((int*)P_0)[4] = (int)_Oldlen;
		char* ptr3 = ((8 > num3) ? ((char*)P_0) : ptr);
		*(short*)((int)(_Oldlen * 2) + (byte*)ptr3) = 0;
	}

	internal unsafe static void std_002Ebasic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E_002E_Xlen(basic_string_003Cwchar_t_002Cstd_003A_003Achar_traits_003Cwchar_t_003E_002Cstd_003A_003Aallocator_003Cwchar_t_003E_0020_003E* P_0)
	{
		std_002E_Xlength_error((sbyte*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_C_0040_0BA_0040JFNIOLAK_0040string_003F5too_003F5long_003F_0024AA_0040));
	}

	internal unsafe static uint std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002Emax_size(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0)
	{
		return 4294967294u;
	}

	internal unsafe static void std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_Copy(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* P_0, uint _Newsize, uint _Oldlen)
	{
		uint num = (uint)__CxxQueryExceptionSize();
		int num2 = (int)stackalloc byte[(int)(num << 1)];
		uint num3 = _Newsize | 0xF;
		if (4294967294u < num3)
		{
			num3 = _Newsize;
		}
		else
		{
			uint num4 = ((uint*)P_0)[5];
			uint num5 = num4 >> 1;
			if (num5 > num3 / 3)
			{
				num3 = ((num4 > (uint)(-2 - (int)num5)) ? 4294967294u : (num5 + num4));
			}
		}
		System.Runtime.CompilerServices.Unsafe.SkipInit(out int num6);
		System.Runtime.CompilerServices.Unsafe.SkipInit(out sbyte* ptr);
		try
		{
			num6 = (int)num + num2;
			ptr = std_002Eallocator_003Cchar_003E_002Eallocate((allocator_003Cchar_003E*)((byte*)P_0 + 24), num3 + 1);
		}
		catch when (((Func<bool>)delegate
		{
			// Could not convert BlockContainer to single expression
			uint exceptionCode = (uint)Marshal.GetExceptionCode();
			return (byte)__CxxExceptionFilter((void*)Marshal.GetExceptionPointers(), null, 0, null) != 0;
		}).Invoke())
		{
			uint num7 = 0u;
			__CxxRegisterExceptionObject((void*)Marshal.GetExceptionPointers(), (void*)num6);
			try
			{
				try
				{
					num3 = _Newsize;
					try
					{
						ptr = std_002Eallocator_003Cchar_003E_002Eallocate((allocator_003Cchar_003E*)((byte*)P_0 + 24), _Newsize + 1);
					}
					catch when (((Func<bool>)delegate
					{
						// Could not convert BlockContainer to single expression
						uint exceptionCode2 = (uint)Marshal.GetExceptionCode();
						return (byte)__CxxExceptionFilter((void*)Marshal.GetExceptionPointers(), null, 0, null) != 0;
					}).Invoke())
					{
						uint num8 = 0u;
						__CxxRegisterExceptionObject((void*)Marshal.GetExceptionPointers(), (void*)num2);
						try
						{
							try
							{
								std_002Ebasic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E_002E_Tidy(P_0, true, 0u);
								_CxxThrowException(null, null);
							}
							catch when (((Func<bool>)delegate
							{
								// Could not convert BlockContainer to single expression
								num8 = (uint)__CxxDetectRethrow((void*)Marshal.GetExceptionPointers());
								return (byte)num8 != 0;
							}).Invoke())
							{
							}
							if (num8 != 0)
							{
								throw;
							}
							goto end_IL_00ae;
						}
						finally
						{
							__CxxUnregisterExceptionObject((void*)num2, (int)num8);
						}
						end_IL_00ae:;
					}
					goto end_IL_0086;
				}
				catch when (((Func<bool>)delegate
				{
					// Could not convert BlockContainer to single expression
					num7 = (uint)__CxxDetectRethrow((void*)Marshal.GetExceptionPointers());
					return (byte)num7 != 0;
				}).Invoke())
				{
				}
				if (num7 != 0)
				{
					throw;
				}
				end_IL_0086:;
			}
			finally
			{
				__CxxUnregisterExceptionObject((void*)num6, (int)num7);
			}
		}
		if (0 < _Oldlen)
		{
			sbyte* ptr2 = ((16u > (uint)((int*)P_0)[5]) ? ((sbyte*)P_0) : ((sbyte*)(int)(*(uint*)P_0)));
			// IL cpblk instruction
			System.Runtime.CompilerServices.Unsafe.CopyBlock(ptr, ptr2, _Oldlen);
		}
		if (16u <= (uint)((int*)P_0)[5])
		{
			delete((void*)(int)(*(uint*)P_0));
		}
		*(sbyte*)P_0 = 0;
		*(int*)P_0 = (int)ptr;
		((int*)P_0)[5] = (int)num3;
		((int*)P_0)[4] = (int)_Oldlen;
		*(sbyte*)(((16 > num3) ? ((nint)P_0) : ((nint)ptr)) + (int)_Oldlen) = 0;
	}

	internal unsafe static char* std_002Eallocator_003Cwchar_t_003E_002Eallocate(allocator_003Cwchar_t_003E* P_0, uint _Count)
	{
		return std_002E_Allocate_003Cwchar_t_003E(_Count, null);
	}

	internal unsafe static uint std_002Eallocator_003Cwchar_t_003E_002Emax_size(allocator_003Cwchar_t_003E* P_0)
	{
		return 2147483647u;
	}

	internal unsafe static sbyte* std_002Eallocator_003Cchar_003E_002Eallocate(allocator_003Cchar_003E* P_0, uint _Count)
	{
		void* ptr = null;
		if (_Count != 0)
		{
			if (uint.MaxValue >= _Count)
			{
				ptr = @new(_Count);
				if (ptr != null)
				{
					goto IL_0014;
				}
			}
			sbyte* ptr2 = null;
			System.Runtime.CompilerServices.Unsafe.SkipInit(out bad_alloc bad_alloc);
			std_002Eexception_002E_007Bctor_007D((exception*)(&bad_alloc), &ptr2);
			try
			{
				*(int*)(&bad_alloc) = (int)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_7bad_alloc_0040std_0040_00406B_0040);
			}
			catch
			{
				//try-fault
				___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<exception*, void>)(&std_002Eexception_002E_007Bdtor_007D), &bad_alloc);
				throw;
			}
			_CxxThrowException(&bad_alloc, (_s__ThrowInfo*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _TI2_003FAVbad_alloc_0040std_0040_0040));
			return null;
		}
		goto IL_0014;
		IL_0014:
		return (sbyte*)ptr;
	}

	internal unsafe static uint std_002Eallocator_003Cchar_003E_002Emax_size(allocator_003Cchar_003E* P_0)
	{
		return uint.MaxValue;
	}

	internal unsafe static allocator_003Cchar_003E* std_002Eforward_003Cclass_0020std_003A_003Aallocator_003Cchar_003E_0020_003E(allocator_003Cchar_003E* _Arg)
	{
		return _Arg;
	}

	internal unsafe static basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* std_002Eforward_003Cclass_0020std_003A_003Abasic_string_003Cchar_002Cstruct_0020std_003A_003Achar_traits_003Cchar_003E_002Cclass_0020std_003A_003Aallocator_003Cchar_003E_0020_003E_0020_003E(basic_string_003Cchar_002Cstd_003A_003Achar_traits_003Cchar_003E_002Cstd_003A_003Aallocator_003Cchar_003E_0020_003E* _Arg)
	{
		return _Arg;
	}

	[return: MarshalAs(UnmanagedType.U1)]
	internal unsafe static bool std_002Eoperator_0021_003D_003Cchar_002Cchar_003E(allocator_003Cchar_003E* _Left, allocator_003Cchar_003E* _Right)
	{
		return false;
	}

	internal unsafe static char* std_002E_Allocate_003Cwchar_t_003E(uint _Count, char* __unnamed001)
	{
		void* ptr = null;
		if (_Count != 0)
		{
			if (int.MaxValue >= _Count)
			{
				ptr = @new(_Count << 1);
				if (ptr != null)
				{
					goto IL_001a;
				}
			}
			sbyte* ptr2 = null;
			System.Runtime.CompilerServices.Unsafe.SkipInit(out bad_alloc bad_alloc);
			std_002Eexception_002E_007Bctor_007D((exception*)(&bad_alloc), &ptr2);
			try
			{
				*(int*)(&bad_alloc) = (int)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_7bad_alloc_0040std_0040_00406B_0040);
			}
			catch
			{
				//try-fault
				___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<exception*, void>)(&std_002Eexception_002E_007Bdtor_007D), &bad_alloc);
				throw;
			}
			_CxxThrowException(&bad_alloc, (_s__ThrowInfo*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _TI2_003FAVbad_alloc_0040std_0040_0040));
			return null;
		}
		goto IL_001a;
		IL_001a:
		return (char*)ptr;
	}

	internal unsafe static sbyte* std_002E_Allocate_003Cchar_003E(uint _Count, sbyte* __unnamed001)
	{
		void* ptr = null;
		if (_Count != 0)
		{
			if (uint.MaxValue >= _Count)
			{
				ptr = @new(_Count);
				if (ptr != null)
				{
					goto IL_0014;
				}
			}
			sbyte* ptr2 = null;
			System.Runtime.CompilerServices.Unsafe.SkipInit(out bad_alloc bad_alloc);
			std_002Eexception_002E_007Bctor_007D((exception*)(&bad_alloc), &ptr2);
			try
			{
				*(int*)(&bad_alloc) = (int)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_7bad_alloc_0040std_0040_00406B_0040);
			}
			catch
			{
				//try-fault
				___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<exception*, void>)(&std_002Eexception_002E_007Bdtor_007D), &bad_alloc);
				throw;
			}
			_CxxThrowException(&bad_alloc, (_s__ThrowInfo*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _TI2_003FAVbad_alloc_0040std_0040_0040));
			return null;
		}
		goto IL_0014;
		IL_0014:
		return (sbyte*)ptr;
	}

	[SpecialName]
	internal unsafe static bad_alloc* std_002Ebad_alloc_002E_007Bctor_007D(bad_alloc* P_0, bad_alloc* P_1)
	{
		std_002Eexception_002E_007Bctor_007D((exception*)P_0, (exception*)P_1);
		try
		{
			*(int*)P_0 = (int)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003F_003F_7bad_alloc_0040std_0040_00406B_0040);
			return P_0;
		}
		catch
		{
			//try-fault
			___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<exception*, void>)(&std_002Eexception_002E_007Bdtor_007D), P_0);
			throw;
		}
	}

	[return: MarshalAs(UnmanagedType.U1)]
	internal unsafe static bool std_002Eoperator_003D_003D_003Cchar_002Cchar_003E(allocator_003Cchar_003E* P_0, allocator_003Cchar_003E* P_1)
	{
		return true;
	}

	[return: MarshalAs(UnmanagedType.U1)]
	internal static bool _003CCrtImplementationDetails_003E_002ENativeDll_002EIsInDllMain()
	{
		return __native_dllmain_reason != uint.MaxValue;
	}

	[return: MarshalAs(UnmanagedType.U1)]
	internal static bool _003CCrtImplementationDetails_003E_002ENativeDll_002EIsInProcessAttach()
	{
		return __native_dllmain_reason == 1;
	}

	[return: MarshalAs(UnmanagedType.U1)]
	internal static bool _003CCrtImplementationDetails_003E_002ENativeDll_002EIsInProcessDetach()
	{
		return __native_dllmain_reason == 0;
	}

	[return: MarshalAs(UnmanagedType.U1)]
	internal static bool _003CCrtImplementationDetails_003E_002ENativeDll_002EIsInVcclrit()
	{
		return __native_vcclrit_reason != uint.MaxValue;
	}

	[return: MarshalAs(UnmanagedType.U1)]
	internal static bool _003CCrtImplementationDetails_003E_002ENativeDll_002EIsSafeForManagedCode()
	{
		if (!(__native_dllmain_reason != uint.MaxValue))
		{
			return true;
		}
		if (__native_vcclrit_reason != uint.MaxValue)
		{
			return true;
		}
		int num = ((__native_dllmain_reason != 1 && __native_dllmain_reason != 0) ? 1 : 0);
		return (byte)num != 0;
	}

	internal static void _003CCrtImplementationDetails_003E_002EThrowNestedModuleLoadException(System.Exception innerException, System.Exception nestedException)
	{
		throw new _003CCrtImplementationDetails_003E.ModuleLoadExceptionHandlerException("A nested exception occurred after the primary exception that caused the C++ module to fail to load.\n", innerException, nestedException);
	}

	internal static void _003CCrtImplementationDetails_003E_002EThrowModuleLoadException(string errorMessage)
	{
		throw new _003CCrtImplementationDetails_003E.ModuleLoadException(errorMessage);
	}

	internal static void _003CCrtImplementationDetails_003E_002EThrowModuleLoadException(string errorMessage, System.Exception innerException)
	{
		throw new _003CCrtImplementationDetails_003E.ModuleLoadException(errorMessage, innerException);
	}

	internal static void _003CCrtImplementationDetails_003E_002ERegisterModuleUninitializer(EventHandler handler)
	{
		_003CCrtImplementationDetails_003E.ModuleUninitializer._ModuleUninitializer.AddHandler(handler);
	}

	[SecuritySafeCritical]
	internal unsafe static Guid _003CCrtImplementationDetails_003E_002EFromGUID(global::_GUID* guid)
	{
		return new Guid(*(uint*)guid, ((ushort*)guid)[2], ((ushort*)guid)[3], ((byte*)guid)[8], ((byte*)guid)[9], ((byte*)guid)[10], ((byte*)guid)[11], ((byte*)guid)[12], ((byte*)guid)[13], ((byte*)guid)[14], ((byte*)guid)[15]);
	}

	[SecurityCritical]
	internal unsafe static int __get_default_appdomain(global::IUnknown** ppUnk)
	{
		global::ICorRuntimeHost* ptr = null;
		int num;
		try
		{
			Guid guid = _003CCrtImplementationDetails_003E_002EFromGUID((global::_GUID*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _GUID_cb2f6722_ab3a_11d2_9c40_00c04fa30a3e));
			Guid guid2 = guid;
			Guid guid3 = _003CCrtImplementationDetails_003E_002EFromGUID((global::_GUID*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _GUID_cb2f6723_ab3a_11d2_9c40_00c04fa30a3e));
			Guid guid4 = guid3;
			ptr = (global::ICorRuntimeHost*)RuntimeEnvironment.GetRuntimeInterfaceAsIntPtr(guid3, guid).ToPointer();
		}
		catch (System.Exception e)
		{
			num = Marshal.GetHRForException(e);
			goto IL_0039;
		}
		goto IL_003d;
		IL_0039:
		if (num >= 0)
		{
			goto IL_003d;
		}
		goto IL_0057;
		IL_003d:
		num = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, global::IUnknown**, int>)(int)(*(uint*)(*(int*)ptr + 52)))((nint)ptr, ppUnk);
		global::ICorRuntimeHost* intPtr = ptr;
		((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)intPtr + 8)))((nint)intPtr);
		goto IL_0057;
		IL_0057:
		return num;
	}

	internal unsafe static void __release_appdomain(global::IUnknown* ppUnk)
	{
		((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)ppUnk + 8)))((nint)ppUnk);
	}

	[SecurityCritical]
	internal unsafe static AppDomain _003CCrtImplementationDetails_003E_002EGetDefaultDomain()
	{
		global::IUnknown* ptr = null;
		int num = __get_default_appdomain(&ptr);
		if (num >= 0)
		{
			try
			{
				IntPtr pUnk = new IntPtr(ptr);
				return (AppDomain)Marshal.GetObjectForIUnknown(pUnk);
			}
			finally
			{
				__release_appdomain(ptr);
			}
		}
		Marshal.ThrowExceptionForHR(num);
		return null;
	}

	[SecurityCritical]
	internal unsafe static void _003CCrtImplementationDetails_003E_002EDoCallBackInDefaultDomain(delegate* unmanaged[Stdcall, Stdcall]<void*, int> function, void* cookie)
	{
		Guid riid = _003CCrtImplementationDetails_003E_002EFromGUID((global::_GUID*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _GUID_90f1a06c_7712_4762_86b5_7a5eba6bdb02));
		global::ICLRRuntimeHost* ptr = (global::ICLRRuntimeHost*)RuntimeEnvironment.GetRuntimeInterfaceAsIntPtr(_003CCrtImplementationDetails_003E_002EFromGUID((global::_GUID*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _GUID_90f1a06e_7712_4762_86b5_7a5eba6bdb02)), riid).ToPointer();
		try
		{
			AppDomain appDomain = _003CCrtImplementationDetails_003E_002EGetDefaultDomain();
			int num = *(int*)ptr + 32;
			int num2 = ((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint, delegate* unmanaged[Stdcall, Stdcall]<void*, int>, void*, int>)(int)(*(uint*)num))((nint)ptr, (uint)appDomain.Id, function, cookie);
			if (num2 < 0)
			{
				Marshal.ThrowExceptionForHR(num2);
			}
		}
		finally
		{
			((delegate* unmanaged[Stdcall, Stdcall]<IntPtr, uint>)(int)(*(uint*)(*(int*)ptr + 8)))((nint)ptr);
		}
	}

	[SecuritySafeCritical]
	internal unsafe static int _003CCrtImplementationDetails_003E_002EDefaultDomain_002EDoNothing(void* cookie)
	{
		GC.KeepAlive(int.MaxValue);
		return 0;
	}

	[SecuritySafeCritical]
	[return: MarshalAs(UnmanagedType.U1)]
	internal unsafe static bool _003CCrtImplementationDetails_003E_002EDefaultDomain_002EHasPerProcess()
	{
		if (_003FhasPerProcess_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00400W4State_0040TriBool_00402_0040A == (_003CCrtImplementationDetails_003E.TriBool.State)2)
		{
			void** ptr = (void**)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003FA0xf26aa9b7_002E__xc_mp_a);
			if (System.Runtime.CompilerServices.Unsafe.IsAddressLessThan(ref _003FA0xf26aa9b7_002E__xc_mp_a, ref _003FA0xf26aa9b7_002E__xc_mp_z))
			{
				do
				{
					if (*(int*)ptr == 0)
					{
						ptr = (void**)((byte*)ptr + 4);
						continue;
					}
					_003FhasPerProcess_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00400W4State_0040TriBool_00402_0040A = (_003CCrtImplementationDetails_003E.TriBool.State)(-1);
					return true;
				}
				while (ptr < System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003FA0xf26aa9b7_002E__xc_mp_z));
			}
			_003FhasPerProcess_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00400W4State_0040TriBool_00402_0040A = (_003CCrtImplementationDetails_003E.TriBool.State)0;
			return false;
		}
		return _003FhasPerProcess_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00400W4State_0040TriBool_00402_0040A == (_003CCrtImplementationDetails_003E.TriBool.State)(-1);
	}

	[SecuritySafeCritical]
	[return: MarshalAs(UnmanagedType.U1)]
	internal unsafe static bool _003CCrtImplementationDetails_003E_002EDefaultDomain_002EHasNative()
	{
		if (_003FhasNative_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00400W4State_0040TriBool_00402_0040A == (_003CCrtImplementationDetails_003E.TriBool.State)2)
		{
			void** ptr = (void**)System.Runtime.CompilerServices.Unsafe.AsPointer(ref __xi_a);
			if (System.Runtime.CompilerServices.Unsafe.IsAddressLessThan(ref __xi_a, ref __xi_z))
			{
				do
				{
					if (*(int*)ptr == 0)
					{
						ptr = (void**)((byte*)ptr + 4);
						continue;
					}
					_003FhasNative_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00400W4State_0040TriBool_00402_0040A = (_003CCrtImplementationDetails_003E.TriBool.State)(-1);
					return true;
				}
				while (ptr < System.Runtime.CompilerServices.Unsafe.AsPointer(ref __xi_z));
			}
			void** ptr2 = (void**)System.Runtime.CompilerServices.Unsafe.AsPointer(ref __xc_a);
			if (System.Runtime.CompilerServices.Unsafe.IsAddressLessThan(ref __xc_a, ref __xc_z))
			{
				do
				{
					if (*(int*)ptr2 == 0)
					{
						ptr2 = (void**)((byte*)ptr2 + 4);
						continue;
					}
					_003FhasNative_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00400W4State_0040TriBool_00402_0040A = (_003CCrtImplementationDetails_003E.TriBool.State)(-1);
					return true;
				}
				while (ptr2 < System.Runtime.CompilerServices.Unsafe.AsPointer(ref __xc_z));
			}
			_003FhasNative_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00400W4State_0040TriBool_00402_0040A = (_003CCrtImplementationDetails_003E.TriBool.State)0;
			return false;
		}
		return _003FhasNative_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00400W4State_0040TriBool_00402_0040A == (_003CCrtImplementationDetails_003E.TriBool.State)(-1);
	}

	[SecuritySafeCritical]
	[return: MarshalAs(UnmanagedType.U1)]
	internal static bool _003CCrtImplementationDetails_003E_002EDefaultDomain_002ENeedsInitialization()
	{
		int num = (((_003CCrtImplementationDetails_003E_002EDefaultDomain_002EHasPerProcess() && !_003FInitializedPerProcess_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00402_NA) || (_003CCrtImplementationDetails_003E_002EDefaultDomain_002EHasNative() && !_003FInitializedNative_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00402_NA && __native_startup_state == (__enative_startup_state)0)) ? 1 : 0);
		return (byte)num != 0;
	}

	[return: MarshalAs(UnmanagedType.U1)]
	internal static bool _003CCrtImplementationDetails_003E_002EDefaultDomain_002ENeedsUninitialization()
	{
		return _003FEntered_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00402_NA;
	}

	[SecurityCritical]
	internal unsafe static void _003CCrtImplementationDetails_003E_002EDefaultDomain_002EInitialize()
	{
		_003CCrtImplementationDetails_003E_002EDoCallBackInDefaultDomain((delegate* unmanaged[Stdcall, Stdcall]<void*, int>)__unep_0040_003FDoNothing_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024FCGJPAX_0040Z, null);
	}

	internal static void _003FA0xf26aa9b7_002E_003F_003F__E_003FInitialized_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2HA_0040_0040YMXXZ()
	{
		_003FInitialized_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2HA = 0;
	}

	internal static void _003FA0xf26aa9b7_002E_003F_003F__E_003FUninitialized_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2HA_0040_0040YMXXZ()
	{
		_003FUninitialized_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2HA = 0;
	}

	internal static void _003FA0xf26aa9b7_002E_003F_003F__E_003FIsDefaultDomain_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2_NA_0040_0040YMXXZ()
	{
		_003FIsDefaultDomain_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2_NA = false;
	}

	internal static void _003FA0xf26aa9b7_002E_003F_003F__E_003FInitializedVtables_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2W4State_0040Progress_00402_0040A_0040_0040YMXXZ()
	{
		_003FInitializedVtables_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2W4State_0040Progress_00402_0040A = (_003CCrtImplementationDetails_003E.Progress.State)0;
	}

	internal static void _003FA0xf26aa9b7_002E_003F_003F__E_003FInitializedNative_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2W4State_0040Progress_00402_0040A_0040_0040YMXXZ()
	{
		_003FInitializedNative_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2W4State_0040Progress_00402_0040A = (_003CCrtImplementationDetails_003E.Progress.State)0;
	}

	internal static void _003FA0xf26aa9b7_002E_003F_003F__E_003FInitializedPerProcess_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2W4State_0040Progress_00402_0040A_0040_0040YMXXZ()
	{
		_003FInitializedPerProcess_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2W4State_0040Progress_00402_0040A = (_003CCrtImplementationDetails_003E.Progress.State)0;
	}

	internal static void _003FA0xf26aa9b7_002E_003F_003F__E_003FInitializedPerAppDomain_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2W4State_0040Progress_00402_0040A_0040_0040YMXXZ()
	{
		_003FInitializedPerAppDomain_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2W4State_0040Progress_00402_0040A = (_003CCrtImplementationDetails_003E.Progress.State)0;
	}

	[SecurityCritical]
	[DebuggerStepThrough]
	internal unsafe static void _003CCrtImplementationDetails_003E_002ELanguageSupport_002EInitializeVtables(_003CCrtImplementationDetails_003E.LanguageSupport* P_0)
	{
		gcroot_003CSystem_003A_003AString_0020_005E_003E_002E_003D((global::gcroot_003CSystem_003A_003AString_0020_005E_003E*)P_0, "The C++ module failed to load during vtable initialization.\n");
		_003FInitializedVtables_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2W4State_0040Progress_00402_0040A = (_003CCrtImplementationDetails_003E.Progress.State)1;
		_initterm_m((delegate*<void*>*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003FA0xf26aa9b7_002E__xi_vt_a), (delegate*<void*>*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003FA0xf26aa9b7_002E__xi_vt_z));
		_003FInitializedVtables_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2W4State_0040Progress_00402_0040A = (_003CCrtImplementationDetails_003E.Progress.State)2;
	}

	[SecurityCritical]
	internal unsafe static void _003CCrtImplementationDetails_003E_002ELanguageSupport_002EInitializeDefaultAppDomain(_003CCrtImplementationDetails_003E.LanguageSupport* P_0)
	{
		gcroot_003CSystem_003A_003AString_0020_005E_003E_002E_003D((global::gcroot_003CSystem_003A_003AString_0020_005E_003E*)P_0, "The C++ module failed to load while attempting to initialize the default appdomain.\n");
		_003CCrtImplementationDetails_003E_002EDefaultDomain_002EInitialize();
	}

	[DebuggerStepThrough]
	[SecurityCritical]
	internal unsafe static void _003CCrtImplementationDetails_003E_002ELanguageSupport_002EInitializeNative(_003CCrtImplementationDetails_003E.LanguageSupport* P_0)
	{
		gcroot_003CSystem_003A_003AString_0020_005E_003E_002E_003D((global::gcroot_003CSystem_003A_003AString_0020_005E_003E*)P_0, "The C++ module failed to load during native initialization.\n");
		__security_init_cookie();
		_003FInitializedNative_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00402_NA = true;
		if (!_003CCrtImplementationDetails_003E_002ENativeDll_002EIsSafeForManagedCode())
		{
			_amsg_exit(33);
		}
		if (__native_startup_state == (__enative_startup_state)1)
		{
			_amsg_exit(33);
		}
		else if (__native_startup_state == (__enative_startup_state)0)
		{
			_003FInitializedNative_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2W4State_0040Progress_00402_0040A = (_003CCrtImplementationDetails_003E.Progress.State)1;
			__native_startup_state = (__enative_startup_state)1;
			if (_initterm_e((delegate* unmanaged[Cdecl, Cdecl]<int>*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref __xi_a), (delegate* unmanaged[Cdecl, Cdecl]<int>*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref __xi_z)) != 0)
			{
				_003CCrtImplementationDetails_003E_002EThrowModuleLoadException(gcroot_003CSystem_003A_003AString_0020_005E_003E_002E_002EP_0024AAVString_0040System_0040_0040((global::gcroot_003CSystem_003A_003AString_0020_005E_003E*)P_0));
			}
			_initterm((delegate* unmanaged[Cdecl, Cdecl]<void>*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref __xc_a), (delegate* unmanaged[Cdecl, Cdecl]<void>*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref __xc_z));
			__native_startup_state = (__enative_startup_state)2;
			_003FInitializedNativeFromCCTOR_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00402_NA = true;
			_003FInitializedNative_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2W4State_0040Progress_00402_0040A = (_003CCrtImplementationDetails_003E.Progress.State)2;
		}
	}

	[SecurityCritical]
	[DebuggerStepThrough]
	internal unsafe static void _003CCrtImplementationDetails_003E_002ELanguageSupport_002EInitializePerProcess(_003CCrtImplementationDetails_003E.LanguageSupport* P_0)
	{
		gcroot_003CSystem_003A_003AString_0020_005E_003E_002E_003D((global::gcroot_003CSystem_003A_003AString_0020_005E_003E*)P_0, "The C++ module failed to load during process initialization.\n");
		_003FInitializedPerProcess_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2W4State_0040Progress_00402_0040A = (_003CCrtImplementationDetails_003E.Progress.State)1;
		_initatexit_m();
		_initterm_m((delegate*<void*>*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003FA0xf26aa9b7_002E__xc_mp_a), (delegate*<void*>*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003FA0xf26aa9b7_002E__xc_mp_z));
		_003FInitializedPerProcess_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2W4State_0040Progress_00402_0040A = (_003CCrtImplementationDetails_003E.Progress.State)2;
		_003FInitializedPerProcess_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00402_NA = true;
	}

	[DebuggerStepThrough]
	[SecurityCritical]
	internal unsafe static void _003CCrtImplementationDetails_003E_002ELanguageSupport_002EInitializePerAppDomain(_003CCrtImplementationDetails_003E.LanguageSupport* P_0)
	{
		gcroot_003CSystem_003A_003AString_0020_005E_003E_002E_003D((global::gcroot_003CSystem_003A_003AString_0020_005E_003E*)P_0, "The C++ module failed to load during appdomain initialization.\n");
		_003FInitializedPerAppDomain_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2W4State_0040Progress_00402_0040A = (_003CCrtImplementationDetails_003E.Progress.State)1;
		_initatexit_app_domain();
		_initterm_m((delegate*<void*>*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003FA0xf26aa9b7_002E__xc_ma_a), (delegate*<void*>*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003FA0xf26aa9b7_002E__xc_ma_z));
		_003FInitializedPerAppDomain_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2W4State_0040Progress_00402_0040A = (_003CCrtImplementationDetails_003E.Progress.State)2;
	}

	[DebuggerStepThrough]
	[SecurityCritical]
	internal unsafe static void _003CCrtImplementationDetails_003E_002ELanguageSupport_002EInitializeUninitializer(_003CCrtImplementationDetails_003E.LanguageSupport* P_0)
	{
		gcroot_003CSystem_003A_003AString_0020_005E_003E_002E_003D((global::gcroot_003CSystem_003A_003AString_0020_005E_003E*)P_0, "The C++ module failed to load during registration for the unload events.\n");
		_003CCrtImplementationDetails_003E_002ERegisterModuleUninitializer([ReliabilityContract(Consistency.WillNotCorruptState, Cer.Success)] [SecurityCritical] [PrePrepareMethod] (object source, EventArgs arguments) =>
		{
			if (_003FInitialized_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2HA != 0 && Interlocked.Exchange(ref _003FUninitialized_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2HA, 1) == 0)
			{
				bool num = Interlocked.Decrement(ref _003FCount_0040AllDomains_0040_003CCrtImplementationDetails_003E_0040_00402HA) == 0;
				_003CCrtImplementationDetails_003E_002ELanguageSupport_002EUninitializeAppDomain();
				if (num)
				{
					_003CCrtImplementationDetails_003E_002ELanguageSupport_002EUninitializeDefaultDomain();
				}
			}
		});
	}

	[ReliabilityContract(Consistency.WillNotCorruptState, Cer.Success)]
	[SecurityCritical]
	[DebuggerStepThrough]
	internal unsafe static void _003CCrtImplementationDetails_003E_002ELanguageSupport_002E_Initialize(_003CCrtImplementationDetails_003E.LanguageSupport* P_0)
	{
		_003FIsDefaultDomain_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2_NA = AppDomain.CurrentDomain.IsDefaultAppDomain();
		if (_003FIsDefaultDomain_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2_NA)
		{
			_003FEntered_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00402_NA = true;
		}
		void* ptr = _getFiberPtrId();
		int num = 0;
		int num2 = 0;
		int num3 = 0;
		RuntimeHelpers.PrepareConstrainedRegions();
		try
		{
			while (num2 == 0)
			{
				try
				{
				}
				finally
				{
					IntPtr intPtr = (IntPtr)0;
					IntPtr intPtr2 = intPtr;
					IntPtr intPtr3 = (IntPtr)ptr;
					IntPtr intPtr4 = intPtr3;
					IntPtr intPtr5 = Interlocked.CompareExchange(ref System.Runtime.CompilerServices.Unsafe.As<void*, IntPtr>(ref __native_startup_lock), intPtr3, intPtr);
					IntPtr intPtr6 = intPtr5;
					void* ptr2 = (void*)intPtr5;
					if (ptr2 == null)
					{
						num2 = 1;
					}
					else if (ptr2 == ptr)
					{
						num = 1;
						num2 = 1;
					}
				}
				if (num2 == 0)
				{
					Sleep(1000u);
				}
			}
			_003CCrtImplementationDetails_003E_002ELanguageSupport_002EInitializeVtables(P_0);
			if (_003FIsDefaultDomain_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2_NA)
			{
				_003CCrtImplementationDetails_003E_002ELanguageSupport_002EInitializeNative(P_0);
				_003CCrtImplementationDetails_003E_002ELanguageSupport_002EInitializePerProcess(P_0);
			}
			else if (_003CCrtImplementationDetails_003E_002EDefaultDomain_002ENeedsInitialization())
			{
				num3 = 1;
			}
		}
		finally
		{
			if (num == 0)
			{
				IntPtr value = (IntPtr)0;
				Interlocked.Exchange(ref System.Runtime.CompilerServices.Unsafe.As<void*, IntPtr>(ref __native_startup_lock), value);
			}
		}
		if (num3 != 0)
		{
			_003CCrtImplementationDetails_003E_002ELanguageSupport_002EInitializeDefaultAppDomain(P_0);
		}
		_003CCrtImplementationDetails_003E_002ELanguageSupport_002EInitializePerAppDomain(P_0);
		_003FInitialized_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2HA = 1;
		_003CCrtImplementationDetails_003E_002ELanguageSupport_002EInitializeUninitializer(P_0);
	}

	[SecurityCritical]
	internal static void _003CCrtImplementationDetails_003E_002ELanguageSupport_002EUninitializeAppDomain()
	{
		_app_exit_callback();
	}

	[SecurityCritical]
	internal unsafe static int _003CCrtImplementationDetails_003E_002ELanguageSupport_002E_UninitializeDefaultDomain(void* cookie)
	{
		_exit_callback();
		_003FInitializedPerProcess_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00402_NA = false;
		if (_003FInitializedNativeFromCCTOR_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00402_NA)
		{
			_cexit();
			__native_startup_state = (__enative_startup_state)0;
			_003FInitializedNativeFromCCTOR_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00402_NA = false;
		}
		_003FInitializedNative_0040DefaultDomain_0040_003CCrtImplementationDetails_003E_0040_00402_NA = false;
		return 0;
	}

	[SecurityCritical]
	internal unsafe static void _003CCrtImplementationDetails_003E_002ELanguageSupport_002EUninitializeDefaultDomain()
	{
		if (_003CCrtImplementationDetails_003E_002EDefaultDomain_002ENeedsUninitialization())
		{
			if (AppDomain.CurrentDomain.IsDefaultAppDomain())
			{
				_003CCrtImplementationDetails_003E_002ELanguageSupport_002E_UninitializeDefaultDomain(null);
			}
			else
			{
				_003CCrtImplementationDetails_003E_002EDoCallBackInDefaultDomain((delegate* unmanaged[Stdcall, Stdcall]<void*, int>)__unep_0040_003F_UninitializeDefaultDomain_0040LanguageSupport_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024FCGJPAX_0040Z, null);
			}
		}
	}

	[ReliabilityContract(Consistency.WillNotCorruptState, Cer.Success)]
	[SecurityCritical]
	[PrePrepareMethod]
	internal static void _003CCrtImplementationDetails_003E_002ELanguageSupport_002EDomainUnload(object source, EventArgs arguments)
	{
		if (_003FInitialized_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2HA != 0 && Interlocked.Exchange(ref _003FUninitialized_0040CurrentDomain_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q2HA, 1) == 0)
		{
			bool num = Interlocked.Decrement(ref _003FCount_0040AllDomains_0040_003CCrtImplementationDetails_003E_0040_00402HA) == 0;
			_003CCrtImplementationDetails_003E_002ELanguageSupport_002EUninitializeAppDomain();
			if (num)
			{
				_003CCrtImplementationDetails_003E_002ELanguageSupport_002EUninitializeDefaultDomain();
			}
		}
	}

	[ReliabilityContract(Consistency.WillNotCorruptState, Cer.Success)]
	[DebuggerStepThrough]
	[SecurityCritical]
	internal unsafe static void _003CCrtImplementationDetails_003E_002ELanguageSupport_002ECleanup(_003CCrtImplementationDetails_003E.LanguageSupport* P_0, System.Exception innerException)
	{
		try
		{
			bool flag = Interlocked.Decrement(ref _003FCount_0040AllDomains_0040_003CCrtImplementationDetails_003E_0040_00402HA) == 0;
			_003CCrtImplementationDetails_003E_002ELanguageSupport_002EUninitializeAppDomain();
			if (flag)
			{
				_003CCrtImplementationDetails_003E_002ELanguageSupport_002EUninitializeDefaultDomain();
			}
		}
		catch (System.Exception nestedException)
		{
			_003CCrtImplementationDetails_003E_002EThrowNestedModuleLoadException(innerException, nestedException);
		}
		catch
		{
			_003CCrtImplementationDetails_003E_002EThrowNestedModuleLoadException(innerException, null);
		}
	}

	[SecurityCritical]
	internal unsafe static _003CCrtImplementationDetails_003E.LanguageSupport* _003CCrtImplementationDetails_003E_002ELanguageSupport_002E_007Bctor_007D(_003CCrtImplementationDetails_003E.LanguageSupport* P_0)
	{
		gcroot_003CSystem_003A_003AString_0020_005E_003E_002E_007Bctor_007D((global::gcroot_003CSystem_003A_003AString_0020_005E_003E*)P_0);
		return P_0;
	}

	[SecurityCritical]
	internal unsafe static void _003CCrtImplementationDetails_003E_002ELanguageSupport_002E_007Bdtor_007D(_003CCrtImplementationDetails_003E.LanguageSupport* P_0)
	{
		gcroot_003CSystem_003A_003AString_0020_005E_003E_002E_007Bdtor_007D((global::gcroot_003CSystem_003A_003AString_0020_005E_003E*)P_0);
	}

	[DebuggerStepThrough]
	[SecurityCritical]
	[ReliabilityContract(Consistency.WillNotCorruptState, Cer.Success)]
	internal unsafe static void _003CCrtImplementationDetails_003E_002ELanguageSupport_002EInitialize(_003CCrtImplementationDetails_003E.LanguageSupport* P_0)
	{
		bool flag = false;
		RuntimeHelpers.PrepareConstrainedRegions();
		try
		{
			gcroot_003CSystem_003A_003AString_0020_005E_003E_002E_003D((global::gcroot_003CSystem_003A_003AString_0020_005E_003E*)P_0, "The C++ module failed to load.\n");
			RuntimeHelpers.PrepareConstrainedRegions();
			try
			{
			}
			finally
			{
				Interlocked.Increment(ref _003FCount_0040AllDomains_0040_003CCrtImplementationDetails_003E_0040_00402HA);
				flag = true;
			}
			_003CCrtImplementationDetails_003E_002ELanguageSupport_002E_Initialize(P_0);
		}
		catch (System.Exception innerException)
		{
			if (flag)
			{
				_003CCrtImplementationDetails_003E_002ELanguageSupport_002ECleanup(P_0, innerException);
			}
			_003CCrtImplementationDetails_003E_002EThrowModuleLoadException(gcroot_003CSystem_003A_003AString_0020_005E_003E_002E_002EP_0024AAVString_0040System_0040_0040((global::gcroot_003CSystem_003A_003AString_0020_005E_003E*)P_0), innerException);
		}
		catch
		{
			if (flag)
			{
				_003CCrtImplementationDetails_003E_002ELanguageSupport_002ECleanup(P_0, null);
			}
			_003CCrtImplementationDetails_003E_002EThrowModuleLoadException(gcroot_003CSystem_003A_003AString_0020_005E_003E_002E_002EP_0024AAVString_0040System_0040_0040((global::gcroot_003CSystem_003A_003AString_0020_005E_003E*)P_0), null);
		}
	}

	[SecurityCritical]
	[DebuggerStepThrough]
	static unsafe _003CModule_003E()
	{
		System.Runtime.CompilerServices.Unsafe.SkipInit(out _003CCrtImplementationDetails_003E.LanguageSupport languageSupport);
		_003CCrtImplementationDetails_003E_002ELanguageSupport_002E_007Bctor_007D(&languageSupport);
		try
		{
			_003CCrtImplementationDetails_003E_002ELanguageSupport_002EInitialize(&languageSupport);
		}
		catch
		{
			//try-fault
			___CxxCallUnwindDtor((delegate*<void*, void>)(delegate*<_003CCrtImplementationDetails_003E.LanguageSupport*, void>)(&_003CCrtImplementationDetails_003E_002ELanguageSupport_002E_007Bdtor_007D), &languageSupport);
			throw;
		}
		_003CCrtImplementationDetails_003E_002ELanguageSupport_002E_007Bdtor_007D(&languageSupport);
	}

	[SecuritySafeCritical]
	[DebuggerStepThrough]
	internal unsafe static global::gcroot_003CSystem_003A_003AString_0020_005E_003E* gcroot_003CSystem_003A_003AString_0020_005E_003E_002E_007Bctor_007D(global::gcroot_003CSystem_003A_003AString_0020_005E_003E* P_0)
	{
		*(int*)P_0 = (int)((IntPtr)GCHandle.Alloc(null)).ToPointer();
		return P_0;
	}

	[DebuggerStepThrough]
	[SecurityCritical]
	internal unsafe static void gcroot_003CSystem_003A_003AString_0020_005E_003E_002E_007Bdtor_007D(global::gcroot_003CSystem_003A_003AString_0020_005E_003E* P_0)
	{
		IntPtr intPtr = new IntPtr((void*)(int)(*(uint*)P_0));
		((GCHandle)intPtr).Free();
		*(int*)P_0 = 0;
	}

	[DebuggerStepThrough]
	[SecurityCritical]
	internal unsafe static global::gcroot_003CSystem_003A_003AString_0020_005E_003E* gcroot_003CSystem_003A_003AString_0020_005E_003E_002E_003D(global::gcroot_003CSystem_003A_003AString_0020_005E_003E* P_0, string t)
	{
		IntPtr intPtr = new IntPtr((void*)(int)(*(uint*)P_0));
		GCHandle gCHandle = (GCHandle)intPtr;
		gCHandle.Target = t;
		return P_0;
	}

	[SecuritySafeCritical]
	internal unsafe static string gcroot_003CSystem_003A_003AString_0020_005E_003E_002E_002EP_0024AAVString_0040System_0040_0040(global::gcroot_003CSystem_003A_003AString_0020_005E_003E* P_0)
	{
		IntPtr intPtr = new IntPtr((void*)(int)(*(uint*)P_0));
		return (string)((GCHandle)intPtr).Target;
	}

	[SecurityCritical]
	[HandleProcessCorruptedStateExceptions]
	[ReliabilityContract(Consistency.WillNotCorruptState, Cer.Success)]
	[SecurityPermission(SecurityAction.Assert, UnmanagedCode = true)]
	internal unsafe static void ___CxxCallUnwindDtor(delegate*<void*, void> pDtor, void* pThis)
	{
		try
		{
			pDtor(pThis);
		}
		catch when (__FrameUnwindFilter((global::_EXCEPTION_POINTERS*)Marshal.GetExceptionPointers()) != 0)
		{
		}
	}

	[SecurityCritical]
	[HandleProcessCorruptedStateExceptions]
	[ReliabilityContract(Consistency.WillNotCorruptState, Cer.Success)]
	[SecurityPermission(SecurityAction.Assert, UnmanagedCode = true)]
	internal unsafe static void ___CxxCallUnwindDelDtor(delegate*<void*, void> pDtor, void* pThis)
	{
		try
		{
			pDtor(pThis);
		}
		catch when (__FrameUnwindFilter((global::_EXCEPTION_POINTERS*)Marshal.GetExceptionPointers()) != 0)
		{
		}
	}

	[ReliabilityContract(Consistency.WillNotCorruptState, Cer.Success)]
	[SecurityCritical]
	[HandleProcessCorruptedStateExceptions]
	[SecurityPermission(SecurityAction.Assert, UnmanagedCode = true)]
	internal unsafe static void ___CxxCallUnwindVecDtor(delegate*<void*, uint, int, delegate*<void*, void>, void> pVecDtor, void* ptr, uint size, int count, delegate*<void*, void> pDtor)
	{
		try
		{
			pVecDtor(ptr, size, count, pDtor);
		}
		catch when (__FrameUnwindFilter((global::_EXCEPTION_POINTERS*)Marshal.GetExceptionPointers()) != 0)
		{
		}
	}

	[ReliabilityContract(Consistency.WillNotCorruptState, Cer.Success)]
	[HandleProcessCorruptedStateExceptions]
	[SecurityCritical]
	internal unsafe static void __ehvec_dtor(void* ptr, uint size, int count, delegate*<void*, void> pDtor)
	{
		int num = 0;
		ptr = (int)size * count + (byte*)ptr;
		try
		{
			while (true)
			{
				count--;
				if (count < 0)
				{
					break;
				}
				ptr = (byte*)ptr - (int)size;
				pDtor(ptr);
			}
			num = 1;
		}
		finally
		{
			if (num == 0)
			{
				__ArrayUnwind(ptr, size, count, pDtor);
			}
		}
	}

	[ReliabilityContract(Consistency.WillNotCorruptState, Cer.Success)]
	[SecurityCritical]
	[SecurityPermission(SecurityAction.Assert, UnmanagedCode = true)]
	internal unsafe static int _003FA0x66596ba5_002EArrayUnwindFilter(global::_EXCEPTION_POINTERS* pExPtrs)
	{
		if (*(int*)(int)(*(uint*)pExPtrs) != -529697949)
		{
			return 0;
		}
		terminate();
		return 0;
	}

	[SecurityCritical]
	[HandleProcessCorruptedStateExceptions]
	[ReliabilityContract(Consistency.WillNotCorruptState, Cer.Success)]
	internal unsafe static void __ArrayUnwind(void* ptr, uint size, int count, delegate*<void*, void> pDtor)
	{
		try
		{
			while (true)
			{
				count--;
				if (count >= 0)
				{
					ptr = (byte*)ptr - (int)size;
					pDtor(ptr);
					continue;
				}
				break;
			}
		}
		catch when (_003FA0x66596ba5_002EArrayUnwindFilter((global::_EXCEPTION_POINTERS*)Marshal.GetExceptionPointers()) != 0)
		{
		}
	}

	[SecurityCritical]
	[DebuggerStepThrough]
	internal unsafe static ValueType _003CCrtImplementationDetails_003E_002EAtExitLock_002E_handle()
	{
		if (_003F_lock_0040AtExitLock_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q0PAXA != null)
		{
			IntPtr value = new IntPtr(_003F_lock_0040AtExitLock_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q0PAXA);
			return GCHandle.FromIntPtr(value);
		}
		return null;
	}

	[DebuggerStepThrough]
	[SecurityCritical]
	internal unsafe static void _003CCrtImplementationDetails_003E_002EAtExitLock_002E_lock_Construct(object value)
	{
		_003F_lock_0040AtExitLock_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q0PAXA = null;
		_003CCrtImplementationDetails_003E_002EAtExitLock_002E_lock_Set(value);
	}

	[SecurityCritical]
	[DebuggerStepThrough]
	internal unsafe static void _003CCrtImplementationDetails_003E_002EAtExitLock_002E_lock_Set(object value)
	{
		ValueType valueType = _003CCrtImplementationDetails_003E_002EAtExitLock_002E_handle();
		if (valueType == null)
		{
			valueType = GCHandle.Alloc(value);
			_003F_lock_0040AtExitLock_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q0PAXA = GCHandle.ToIntPtr((GCHandle)valueType).ToPointer();
		}
		else
		{
			((GCHandle)valueType).Target = value;
		}
	}

	[SecurityCritical]
	[DebuggerStepThrough]
	internal static object _003CCrtImplementationDetails_003E_002EAtExitLock_002E_lock_Get()
	{
		ValueType valueType = _003CCrtImplementationDetails_003E_002EAtExitLock_002E_handle();
		if (valueType != null)
		{
			return ((GCHandle)valueType).Target;
		}
		return null;
	}

	[SecurityCritical]
	[DebuggerStepThrough]
	internal unsafe static void _003CCrtImplementationDetails_003E_002EAtExitLock_002E_lock_Destruct()
	{
		ValueType valueType = _003CCrtImplementationDetails_003E_002EAtExitLock_002E_handle();
		if (valueType != null)
		{
			((GCHandle)valueType).Free();
			_003F_lock_0040AtExitLock_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q0PAXA = null;
		}
	}

	[SecuritySafeCritical]
	[DebuggerStepThrough]
	[return: MarshalAs(UnmanagedType.U1)]
	internal static bool _003CCrtImplementationDetails_003E_002EAtExitLock_002EIsInitialized()
	{
		return _003CCrtImplementationDetails_003E_002EAtExitLock_002E_lock_Get() != null;
	}

	[DebuggerStepThrough]
	[SecurityCritical]
	internal static void _003CCrtImplementationDetails_003E_002EAtExitLock_002EAddRef()
	{
		if (!_003CCrtImplementationDetails_003E_002EAtExitLock_002EIsInitialized())
		{
			_003CCrtImplementationDetails_003E_002EAtExitLock_002E_lock_Construct(new object());
			_003F_ref_count_0040AtExitLock_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q0HA = 0;
		}
		_003F_ref_count_0040AtExitLock_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q0HA++;
	}

	[DebuggerStepThrough]
	[SecurityCritical]
	internal static void _003CCrtImplementationDetails_003E_002EAtExitLock_002ERemoveRef()
	{
		_003F_ref_count_0040AtExitLock_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q0HA--;
		if (_003F_ref_count_0040AtExitLock_0040_003CCrtImplementationDetails_003E_0040_0040_0024_0024Q0HA == 0)
		{
			_003CCrtImplementationDetails_003E_002EAtExitLock_002E_lock_Destruct();
		}
	}

	[SecurityCritical]
	[DebuggerStepThrough]
	internal static void _003CCrtImplementationDetails_003E_002EAtExitLock_002EEnter()
	{
		Monitor.Enter(_003CCrtImplementationDetails_003E_002EAtExitLock_002E_lock_Get());
	}

	[SecurityCritical]
	[DebuggerStepThrough]
	internal static void _003CCrtImplementationDetails_003E_002EAtExitLock_002EExit()
	{
		Monitor.Exit(_003CCrtImplementationDetails_003E_002EAtExitLock_002E_lock_Get());
	}

	[SecurityCritical]
	[DebuggerStepThrough]
	[return: MarshalAs(UnmanagedType.U1)]
	internal static bool _003FA0xc6172590_002E__global_lock()
	{
		bool result = false;
		if (_003CCrtImplementationDetails_003E_002EAtExitLock_002EIsInitialized())
		{
			_003CCrtImplementationDetails_003E_002EAtExitLock_002EEnter();
			result = true;
		}
		return result;
	}

	[DebuggerStepThrough]
	[SecurityCritical]
	[return: MarshalAs(UnmanagedType.U1)]
	internal static bool _003FA0xc6172590_002E__global_unlock()
	{
		bool result = false;
		if (_003CCrtImplementationDetails_003E_002EAtExitLock_002EIsInitialized())
		{
			_003CCrtImplementationDetails_003E_002EAtExitLock_002EExit();
			result = true;
		}
		return result;
	}

	[DebuggerStepThrough]
	[SecurityCritical]
	[return: MarshalAs(UnmanagedType.U1)]
	internal static bool _003FA0xc6172590_002E__alloc_global_lock()
	{
		_003CCrtImplementationDetails_003E_002EAtExitLock_002EAddRef();
		return _003CCrtImplementationDetails_003E_002EAtExitLock_002EIsInitialized();
	}

	[DebuggerStepThrough]
	[SecurityCritical]
	internal static void _003FA0xc6172590_002E__dealloc_global_lock()
	{
		_003CCrtImplementationDetails_003E_002EAtExitLock_002ERemoveRef();
	}

	[SecurityCritical]
	internal unsafe static int _atexit_helper(delegate*<void> func, uint* __pexit_list_size, delegate*<void>** __ponexitend_e, delegate*<void>** __ponexitbegin_e)
	{
		delegate*<void> delegate_002A = null;
		if (func == (delegate*<void>)null)
		{
			return -1;
		}
		if (_003FA0xc6172590_002E__global_lock())
		{
			try
			{
				delegate*<void>* ptr = (delegate*<void>*)DecodePointer((void*)(int)(*(uint*)__ponexitbegin_e));
				delegate*<void>* ptr2 = (delegate*<void>*)DecodePointer((void*)(int)(*(uint*)__ponexitend_e));
				int num = (int)((byte*)ptr2 - (nuint)ptr);
				if (*__pexit_list_size - 1 < (uint)(num >>> 2))
				{
					try
					{
						uint num2 = *__pexit_list_size * 4;
						uint num3 = ((num2 >= 2048) ? 2048u : num2);
						IntPtr cb = new IntPtr((int)(num2 + num3));
						IntPtr pv = new IntPtr(ptr);
						IntPtr intPtr = Marshal.ReAllocHGlobal(pv, cb);
						IntPtr intPtr2 = intPtr;
						IntPtr intPtr3 = intPtr;
						ptr2 = (delegate*<void>*)((byte*)intPtr3.ToPointer() + num);
						ptr = (delegate*<void>*)intPtr3.ToPointer();
						uint num4 = *__pexit_list_size;
						uint num5 = ((512 >= num4) ? num4 : 512u);
						*__pexit_list_size = num4 + num5;
					}
					catch (OutOfMemoryException)
					{
						IntPtr cb2 = new IntPtr((int)(*__pexit_list_size * 4 + 8));
						IntPtr pv2 = new IntPtr(ptr);
						IntPtr intPtr4 = Marshal.ReAllocHGlobal(pv2, cb2);
						IntPtr intPtr5 = intPtr4;
						IntPtr intPtr6 = intPtr4;
						ptr2 = (delegate*<void>*)((byte*)intPtr6.ToPointer() - (nuint)ptr + (nuint)ptr2);
						ptr = (delegate*<void>*)intPtr6.ToPointer();
						*__pexit_list_size += 4u;
					}
				}
				*(int*)ptr2 = (int)func;
				ptr2 = (delegate*<void>*)((byte*)ptr2 + 4);
				delegate_002A = func;
				*(int*)__ponexitbegin_e = (int)EncodePointer(ptr);
				*(int*)__ponexitend_e = (int)EncodePointer(ptr2);
			}
			catch (OutOfMemoryException)
			{
			}
			finally
			{
				_003FA0xc6172590_002E__global_unlock();
			}
			if (delegate_002A != (delegate*<void>)null)
			{
				return 0;
			}
		}
		return -1;
	}

	[SecurityCritical]
	internal unsafe static void _exit_callback()
	{
		if (_003FA0xc6172590_002E__exit_list_size == 0)
		{
			return;
		}
		delegate*<void>* ptr = (delegate*<void>*)DecodePointer(_003FA0xc6172590_002E__onexitbegin_m);
		delegate*<void>* ptr2 = (delegate*<void>*)DecodePointer(_003FA0xc6172590_002E__onexitend_m);
		if (ptr != (delegate*<void>*)(-1) && ptr != null && ptr2 != null)
		{
			delegate*<void>* ptr3 = ptr;
			delegate*<void>* ptr4 = ptr2;
			while (true)
			{
				ptr2 = (delegate*<void>*)((byte*)ptr2 - 4);
				if (ptr2 < ptr)
				{
					break;
				}
				if ((void*)(*(int*)ptr2) != _encoded_null())
				{
					void* intPtr = DecodePointer((void*)(int)(*(uint*)ptr2));
					*(int*)ptr2 = (int)_encoded_null();
					((delegate*<void>)intPtr)();
					delegate*<void>* ptr5 = (delegate*<void>*)DecodePointer(_003FA0xc6172590_002E__onexitbegin_m);
					delegate*<void>* ptr6 = (delegate*<void>*)DecodePointer(_003FA0xc6172590_002E__onexitend_m);
					if (ptr3 != ptr5 || ptr4 != ptr6)
					{
						ptr3 = ptr5;
						ptr = ptr5;
						ptr4 = ptr6;
						ptr2 = ptr6;
					}
				}
			}
			IntPtr hglobal = new IntPtr(ptr);
			Marshal.FreeHGlobal(hglobal);
		}
		_003FA0xc6172590_002E__dealloc_global_lock();
	}

	[DebuggerStepThrough]
	[SecurityCritical]
	internal unsafe static int _initatexit_m()
	{
		int result = 0;
		if (_003FA0xc6172590_002E__alloc_global_lock())
		{
			_003FA0xc6172590_002E__onexitbegin_m = (delegate*<void>*)EncodePointer(Marshal.AllocHGlobal(128).ToPointer());
			_003FA0xc6172590_002E__onexitend_m = _003FA0xc6172590_002E__onexitbegin_m;
			_003FA0xc6172590_002E__exit_list_size = 32u;
			result = 1;
		}
		return result;
	}

	internal unsafe static delegate*<int> _onexit_m(delegate*<int> _Function)
	{
		return (_atexit_m((delegate*<void>)_Function) != -1) ? _Function : null;
	}

	[SecurityCritical]
	internal unsafe static int _atexit_m(delegate*<void> func)
	{
		return _atexit_helper((delegate*<void>)EncodePointer(func), (uint*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003FA0xc6172590_002E__exit_list_size), (delegate*<void>**)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003FA0xc6172590_002E__onexitend_m), (delegate*<void>**)System.Runtime.CompilerServices.Unsafe.AsPointer(ref _003FA0xc6172590_002E__onexitbegin_m));
	}

	[SecurityCritical]
	[DebuggerStepThrough]
	internal unsafe static int _initatexit_app_domain()
	{
		if (_003FA0xc6172590_002E__alloc_global_lock())
		{
			__onexitbegin_app_domain = (delegate*<void>*)EncodePointer(Marshal.AllocHGlobal(128).ToPointer());
			__onexitend_app_domain = __onexitbegin_app_domain;
			__exit_list_size_app_domain = 32u;
		}
		return 1;
	}

	[SecurityCritical]
	[HandleProcessCorruptedStateExceptions]
	internal unsafe static void _app_exit_callback()
	{
		if (__exit_list_size_app_domain == 0)
		{
			return;
		}
		delegate*<void>* ptr = (delegate*<void>*)DecodePointer(__onexitbegin_app_domain);
		delegate*<void>* ptr2 = (delegate*<void>*)DecodePointer(__onexitend_app_domain);
		try
		{
			if (ptr == (delegate*<void>*)(-1) || ptr == null || ptr2 == null)
			{
				return;
			}
			delegate*<void> delegate_002A = null;
			delegate*<void>* ptr3 = ptr;
			delegate*<void>* ptr4 = ptr2;
			while (true)
			{
				delegate*<void>* ptr5 = null;
				delegate*<void>* ptr6 = null;
				do
				{
					ptr2 = (delegate*<void>*)((byte*)ptr2 - 4);
				}
				while (ptr2 >= ptr && (void*)(*(int*)ptr2) == _encoded_null());
				if (ptr2 >= ptr)
				{
					delegate_002A = (delegate*<void>)DecodePointer((void*)(int)(*(uint*)ptr2));
					*(int*)ptr2 = (int)_encoded_null();
					delegate_002A();
					delegate*<void>* ptr7 = (delegate*<void>*)DecodePointer(__onexitbegin_app_domain);
					delegate*<void>* ptr8 = (delegate*<void>*)DecodePointer(__onexitend_app_domain);
					if (ptr3 != ptr7 || ptr4 != ptr8)
					{
						ptr3 = ptr7;
						ptr = ptr7;
						ptr4 = ptr8;
						ptr2 = ptr8;
					}
					continue;
				}
				break;
			}
		}
		finally
		{
			IntPtr hglobal = new IntPtr(ptr);
			Marshal.FreeHGlobal(hglobal);
			_003FA0xc6172590_002E__dealloc_global_lock();
		}
	}

	[SecurityCritical]
	internal unsafe static delegate*<int> _onexit_m_appdomain(delegate*<int> _Function)
	{
		return (_atexit_m_appdomain((delegate*<void>)_Function) != -1) ? _Function : null;
	}

	[DebuggerStepThrough]
	[SecurityCritical]
	internal unsafe static int _atexit_m_appdomain(delegate*<void> func)
	{
		return _atexit_helper((delegate*<void>)EncodePointer(func), (uint*)System.Runtime.CompilerServices.Unsafe.AsPointer(ref __exit_list_size_app_domain), (delegate*<void>**)System.Runtime.CompilerServices.Unsafe.AsPointer(ref __onexitend_app_domain), (delegate*<void>**)System.Runtime.CompilerServices.Unsafe.AsPointer(ref __onexitbegin_app_domain));
	}

	[DllImport("KERNEL32.dll")]
	[SuppressUnmanagedCodeSecurity]
	[SecurityCritical]
	[ReliabilityContract(Consistency.WillNotCorruptState, Cer.Success)]
	public unsafe static extern void* DecodePointer(void* Ptr);

	[DllImport("MSVCR100.dll", CallingConvention = CallingConvention.Cdecl)]
	[ReliabilityContract(Consistency.WillNotCorruptState, Cer.Success)]
	[SuppressUnmanagedCodeSecurity]
	[SecurityCritical]
	public unsafe static extern void* _encoded_null();

	[DllImport("KERNEL32.dll")]
	[SecurityCritical]
	[ReliabilityContract(Consistency.WillNotCorruptState, Cer.Success)]
	[SuppressUnmanagedCodeSecurity]
	public unsafe static extern void* EncodePointer(void* Ptr);

	[DebuggerStepThrough]
	[SecurityCritical]
	internal unsafe static int _initterm_e(delegate* unmanaged[Cdecl, Cdecl]<int>* pfbegin, delegate* unmanaged[Cdecl, Cdecl]<int>* pfend)
	{
		int num = 0;
		if (pfbegin < pfend)
		{
			while (num == 0)
			{
				uint num2 = *(uint*)pfbegin;
				if (num2 != 0)
				{
					num = ((delegate* unmanaged[Cdecl, Cdecl]<int>)(int)num2)();
				}
				pfbegin = (delegate* unmanaged[Cdecl, Cdecl]<int>*)((byte*)pfbegin + 4);
				if (pfbegin >= pfend)
				{
					break;
				}
			}
		}
		return num;
	}

	[DebuggerStepThrough]
	[SecurityCritical]
	internal unsafe static void _initterm(delegate* unmanaged[Cdecl, Cdecl]<void>* pfbegin, delegate* unmanaged[Cdecl, Cdecl]<void>* pfend)
	{
		if (pfbegin >= pfend)
		{
			return;
		}
		do
		{
			uint num = *(uint*)pfbegin;
			if (num != 0)
			{
				((delegate* unmanaged[Cdecl, Cdecl]<void>)(int)num)();
			}
			pfbegin = (delegate* unmanaged[Cdecl, Cdecl]<void>*)((byte*)pfbegin + 4);
		}
		while (pfbegin < pfend);
	}

	[DebuggerStepThrough]
	internal static ModuleHandle _003CCrtImplementationDetails_003E_002EThisModule_002EHandle()
	{
		return typeof(_003CCrtImplementationDetails_003E.ThisModule).Module.ModuleHandle;
	}

	[DebuggerStepThrough]
	[SecurityCritical]
	[SecurityPermission(SecurityAction.Assert, UnmanagedCode = true)]
	internal unsafe static void _initterm_m(delegate*<void*>* pfbegin, delegate*<void*>* pfend)
	{
		if (pfbegin >= pfend)
		{
			return;
		}
		do
		{
			uint num = *(uint*)pfbegin;
			if (num != 0)
			{
				_003CCrtImplementationDetails_003E_002EThisModule_002EResolveMethod_003Cvoid_0020const_0020_002A_0020__clrcall_0028void_0029_003E((delegate*<void*>)(int)num)();
			}
			pfbegin = (delegate*<void*>*)((byte*)pfbegin + 4);
		}
		while (pfbegin < pfend);
	}

	[SecurityCritical]
	[DebuggerStepThrough]
	internal unsafe static delegate*<void*> _003CCrtImplementationDetails_003E_002EThisModule_002EResolveMethod_003Cvoid_0020const_0020_002A_0020__clrcall_0028void_0029_003E(delegate*<void*> methodToken)
	{
		return (delegate*<void*>)_003CCrtImplementationDetails_003E_002EThisModule_002EHandle().ResolveMethodHandle((int)methodToken).GetFunctionPointer().ToPointer();
	}

	[DllImport("", CallingConvention = CallingConvention.ThisCall, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern void std_002Elocale_002Efacet_002E_Incref(locale.facet* P_0);

	[DllImport("", CallingConvention = CallingConvention.Cdecl, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern void std_002E_Xlength_error(sbyte* P_0);

	[DllImport("", CallingConvention = CallingConvention.StdCall, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern int WideCharToMultiByte(uint P_0, uint P_1, char* P_2, int P_3, sbyte* P_4, int P_5, sbyte* P_6, int* P_7);

	[DllImport("", CallingConvention = CallingConvention.Cdecl, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern void std_002E_Xout_of_range(sbyte* P_0);

	[MethodImpl(MethodImplOptions.Unmanaged | MethodImplOptions.PreserveSig, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern void* new_005B_005D(uint P_0);

	[DllImport("", CallingConvention = CallingConvention.Cdecl, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern void __CxxUnregisterExceptionObject(void* P_0, int P_1);

	[DllImport("", CallingConvention = CallingConvention.Cdecl, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal static extern int __CxxQueryExceptionSize();

	[DllImport("", CallingConvention = CallingConvention.Cdecl, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern int __CxxDetectRethrow(void* P_0);

	[DllImport("", CallingConvention = CallingConvention.Cdecl, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern int __CxxRegisterExceptionObject(void* P_0, void* P_1);

	[DllImport("", CallingConvention = CallingConvention.Cdecl, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern int __CxxExceptionFilter(void* P_0, void* P_1, int P_2, void* P_3);

	[DllImport("", CallingConvention = CallingConvention.Cdecl, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern void* @new(uint P_0);

	[DllImport("", CallingConvention = CallingConvention.ThisCall, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern exception* std_002Eexception_002E_007Bctor_007D(exception* P_0, exception* P_1);

	[DllImport("", CallingConvention = CallingConvention.StdCall, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern void _CxxThrowException(void* P_0, _s__ThrowInfo* P_1);

	[DllImport("", CallingConvention = CallingConvention.ThisCall, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern void std_002E_Lockit_002E_007Bdtor_007D(_Lockit* P_0);

	[DllImport("", CallingConvention = CallingConvention.ThisCall, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern _Lockit* std_002E_Lockit_002E_007Bctor_007D(_Lockit* P_0, int P_1);

	[DllImport("", CallingConvention = CallingConvention.Cdecl, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern void delete_005B_005D(void* P_0);

	[DllImport("", CallingConvention = CallingConvention.Cdecl, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern void* memmove(void* P_0, void* P_1, uint P_2);

	[DllImport("", CallingConvention = CallingConvention.Cdecl, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern void __ExceptionPtrCopy(void* P_0, void* P_1);

	[DllImport("", CallingConvention = CallingConvention.Cdecl, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern void delete(void* P_0);

	[DllImport("", CallingConvention = CallingConvention.ThisCall, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern void std_002Eexception_002E_007Bdtor_007D(exception* P_0);

	[DllImport("", CallingConvention = CallingConvention.ThisCall, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern exception* std_002Eexception_002E_007Bctor_007D(exception* P_0, sbyte** P_1);

	[DllImport("", CallingConvention = CallingConvention.Cdecl, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	[return: MarshalAs(UnmanagedType.U1)]
	internal unsafe static extern bool InitAndCheckFeatureToggle(sbyte* P_0);

	[MethodImpl(MethodImplOptions.Unmanaged | MethodImplOptions.PreserveSig, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern void* _getFiberPtrId();

	[DllImport("", CallingConvention = CallingConvention.Cdecl, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal static extern void _amsg_exit(int P_0);

	[MethodImpl(MethodImplOptions.Unmanaged | MethodImplOptions.PreserveSig, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal static extern void __security_init_cookie();

	[DllImport("", CallingConvention = CallingConvention.StdCall, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal static extern void Sleep(uint P_0);

	[DllImport("", CallingConvention = CallingConvention.Cdecl, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal static extern void _cexit();

	[DllImport("", CallingConvention = CallingConvention.Cdecl, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal unsafe static extern int __FrameUnwindFilter(global::_EXCEPTION_POINTERS* P_0);

	[DllImport("", CallingConvention = CallingConvention.Cdecl, SetLastError = true)]
	[MethodImpl(MethodImplOptions.Unmanaged, MethodCodeType = MethodCodeType.Native)]
	[SuppressUnmanagedCodeSecurity]
	internal static extern void terminate();
}
