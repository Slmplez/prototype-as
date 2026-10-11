using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[TypeLibType(2)]
[Guid("10430096-72AE-11D5-B316-0800309CC2CE")]
public class GroupMemberAssignmentFactoryClass : IGroupMemberAssignmentFactory, GroupMemberAssignmentFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744343)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern GroupMemberAssignment Create2();
}
