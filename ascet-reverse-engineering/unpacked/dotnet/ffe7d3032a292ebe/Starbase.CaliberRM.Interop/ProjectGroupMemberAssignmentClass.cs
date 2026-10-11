using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[ClassInterface(0)]
[Guid("104300B4-72AE-11D5-B316-0800309CC2CE")]
public class ProjectGroupMemberAssignmentClass : IProjectGroupMemberAssignment, ProjectGroupMemberAssignment
{
	[DispId(1610744334)]
	public virtual extern Collection AssignedMembers
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744334)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744336)]
	public virtual extern Group Group
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744336)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744335)]
	public virtual extern Collection NonAssignedMembers
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744335)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744401)]
	public virtual extern bool SendEmailDiscussionPosted
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744401)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744401)]
		[param: In]
		set;
	}

	[DispId(1610744399)]
	public virtual extern bool SendEmailRequirementCreated
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744399)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744399)]
		[param: In]
		set;
	}

	[DispId(1610744400)]
	public virtual extern bool SendEmailRequirementDeleted
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744400)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744400)]
		[param: In]
		set;
	}

	[DispId(1610744398)]
	public virtual extern bool SendEmailRequirementModified
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744398)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744398)]
		[param: In]
		set;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744337)]
	public virtual extern void removeAssignedMember([In][MarshalAs(UnmanagedType.Interface)] User usr);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744338)]
	public virtual extern bool isMemberAssigned([In][MarshalAs(UnmanagedType.Interface)] UserID uid);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744339)]
	public virtual extern bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744340)]
	public virtual extern void addAssignedMember([In][MarshalAs(UnmanagedType.Interface)] User usr);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744341)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string toString();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744342)]
	[return: MarshalAs(UnmanagedType.Struct)]
	public virtual extern object Clone();
}
