using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300E9-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IRequirementTypeIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744494)]
	[return: MarshalAs(UnmanagedType.Interface)]
	RequirementTypeID Create([In] int idNum);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744495)]
	[return: MarshalAs(UnmanagedType.Interface)]
	RequirementTypeID Create1([In] int idNum, [In] int ver);
}
