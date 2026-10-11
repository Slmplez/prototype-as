using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104300DB-72AE-11D5-B316-0800309CC2CE")]
public interface IRequirementTreeIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744473)]
	[return: MarshalAs(UnmanagedType.Interface)]
	RequirementTreeID Create([In] int baselineIDNum, [In] int projectIDNum);
}
