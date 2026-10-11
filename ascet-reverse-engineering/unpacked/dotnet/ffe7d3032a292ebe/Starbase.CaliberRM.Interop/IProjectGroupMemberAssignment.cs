using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300B3-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IProjectGroupMemberAssignment : IGroupMemberAssignment
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744337)]
	new void removeAssignedMember([In][MarshalAs(UnmanagedType.Interface)] User usr);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744338)]
	new bool isMemberAssigned([In][MarshalAs(UnmanagedType.Interface)] UserID uid);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744339)]
	new bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744340)]
	new void addAssignedMember([In][MarshalAs(UnmanagedType.Interface)] User usr);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744341)]
	[return: MarshalAs(UnmanagedType.BStr)]
	new string toString();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744342)]
	[return: MarshalAs(UnmanagedType.Struct)]
	new object Clone();

	[DispId(1610744334)]
	new Collection AssignedMembers
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744334)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744336)]
	new Group Group
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744336)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744335)]
	new Collection NonAssignedMembers
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744335)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744401)]
	bool SendEmailDiscussionPosted
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
	bool SendEmailRequirementCreated
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
	bool SendEmailRequirementDeleted
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
	bool SendEmailRequirementModified
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744398)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744398)]
		[param: In]
		set;
	}
}
