using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104300C3-72AE-11D5-B316-0800309CC2CE")]
public interface IRequirementDescriptionFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744456)]
	[return: MarshalAs(UnmanagedType.Interface)]
	RequirementDescription Create([In][MarshalAs(UnmanagedType.BStr)] string sText);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744457)]
	[return: MarshalAs(UnmanagedType.Interface)]
	RequirementDescription Create2();
}
