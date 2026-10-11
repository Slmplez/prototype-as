using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430035-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface ICaliberObjectEvent_Type
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744170)]
	int hashCode();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744171)]
	int compareTo([In][MarshalAs(UnmanagedType.Struct)] object o);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744172)]
	bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744173)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string toString();

	[DispId(1610744167)]
	CaliberObjectEvent_Type CREATED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744167)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744168)]
	CaliberObjectEvent_Type DELETED
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744168)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744169)]
	CaliberObjectEvent_Type Modified
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744169)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}
}
