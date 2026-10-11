using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104300CB-72AE-11D5-B316-0800309CC2CE")]
public interface IRequirementEvent_Type : ICaliberObjectEvent_Type
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744170)]
	new int hashCode();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744171)]
	new int compareTo([In][MarshalAs(UnmanagedType.Struct)] object o);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744172)]
	new bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744173)]
	[return: MarshalAs(UnmanagedType.BStr)]
	new string toString();

	[DispId(1610744167)]
	new CaliberObjectEvent_Type CREATED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744167)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744168)]
	new CaliberObjectEvent_Type DELETED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744168)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744169)]
	new CaliberObjectEvent_Type Modified
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744169)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744463)]
	RequirementEvent_Type MOVED_TO_TRASHCAN
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744463)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744464)]
	RequirementEvent_Type RESTORED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744464)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}
}
