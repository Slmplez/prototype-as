using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300B5-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IProjectGroupMemberAssignmentFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744402)]
	[return: MarshalAs(UnmanagedType.Interface)]
	ProjectGroupMemberAssignment Create([In][MarshalAs(UnmanagedType.Interface)] Group grp, [In] bool assignAllMembers, [In][MarshalAs(UnmanagedType.Interface)] Session sessn);
}
