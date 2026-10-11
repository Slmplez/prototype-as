using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430093-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IGroupMemberAssignment
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744337)]
	void removeAssignedMember([In][MarshalAs(UnmanagedType.Interface)] User usr);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744338)]
	bool isMemberAssigned([In][MarshalAs(UnmanagedType.Interface)] UserID uid);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744339)]
	bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744340)]
	void addAssignedMember([In][MarshalAs(UnmanagedType.Interface)] User usr);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744341)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string toString();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744342)]
	[return: MarshalAs(UnmanagedType.Struct)]
	object Clone();

	[DispId(1610744334)]
	Collection AssignedMembers
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744334)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744336)]
	Group Group
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744336)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744335)]
	Collection NonAssignedMembers
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744335)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}
}
