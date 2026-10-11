using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("10430153-72AE-11D5-B316-0800309CC2CE")]
public interface IContainmentEvent : IEvent
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
	[DispId(1610744699)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string toString();

	[DispId(1610744698)]
	CaliberObjectID ChildObjectID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744698)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744697)]
	CaliberObjectID ParentObjectID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744697)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}
}
