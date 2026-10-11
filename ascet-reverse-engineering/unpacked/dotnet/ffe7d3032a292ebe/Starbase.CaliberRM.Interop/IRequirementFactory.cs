using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104300BD-72AE-11D5-B316-0800309CC2CE")]
public interface IRequirementFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744441)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Requirement Create2([In][MarshalAs(UnmanagedType.BStr)] string sName, [In][MarshalAs(UnmanagedType.Interface)] Requirement parentReq, [In] int childIndex, [In][MarshalAs(UnmanagedType.Interface)] Session sessn);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744442)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Requirement Create1([In][MarshalAs(UnmanagedType.BStr)] string sName, [In][MarshalAs(UnmanagedType.Interface)] Project proj, [In][MarshalAs(UnmanagedType.Interface)] RequirementType reqType, [In] int Index, [In][MarshalAs(UnmanagedType.Interface)] Session sessn);
}
