using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300C7-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IRequirementDescriptionMappedFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744460)]
	[return: MarshalAs(UnmanagedType.Interface)]
	RequirementDescriptionMapped Create([In][MarshalAs(UnmanagedType.Interface)] Requirement req, [In][MarshalAs(UnmanagedType.Interface)] Session s);
}
