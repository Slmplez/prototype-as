using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("104300B6-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(2)]
public class ProjectGroupMemberAssignmentFactoryClass : IProjectGroupMemberAssignmentFactory, ProjectGroupMemberAssignmentFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744402)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern ProjectGroupMemberAssignment Create([In][MarshalAs(UnmanagedType.Interface)] Group grp, [In] bool assignAllMembers, [In][MarshalAs(UnmanagedType.Interface)] Session sessn);
}
