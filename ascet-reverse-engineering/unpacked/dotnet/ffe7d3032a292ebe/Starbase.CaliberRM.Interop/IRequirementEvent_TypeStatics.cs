using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104300CD-72AE-11D5-B316-0800309CC2CE")]
public interface IRequirementEvent_TypeStatics : ICaliberObjectEvent_TypeStatics
{
	[DispId(1610744174)]
	new CaliberObjectEvent_Type CREATED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744174)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744175)]
	new CaliberObjectEvent_Type DELETED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744175)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744176)]
	new CaliberObjectEvent_Type Modified
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744176)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744465)]
	RequirementEvent_Type MOVED_TO_TRASHCAN
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744465)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744466)]
	RequirementEvent_Type RESTORED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744466)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}
}
