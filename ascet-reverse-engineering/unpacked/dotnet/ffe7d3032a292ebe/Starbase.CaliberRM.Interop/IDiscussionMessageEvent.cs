using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("10430157-72AE-11D5-B316-0800309CC2CE")]
public interface IDiscussionMessageEvent : IEvent
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744696)]
	new bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[DispId(1610744695)]
	new bool OriginatedInSession
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744695)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744704)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string toString();

	[DispId(1610744702)]
	CaliberObjectID AssociatedObjectID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744702)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744703)]
	CaliberObjectID SourceID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744703)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}
}
