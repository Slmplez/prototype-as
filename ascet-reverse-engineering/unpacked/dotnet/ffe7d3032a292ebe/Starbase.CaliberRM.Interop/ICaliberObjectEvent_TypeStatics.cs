using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430037-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface ICaliberObjectEvent_TypeStatics
{
	[DispId(1610744174)]
	CaliberObjectEvent_Type CREATED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744174)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744175)]
	CaliberObjectEvent_Type DELETED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744175)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744176)]
	CaliberObjectEvent_Type Modified
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744176)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}
}
