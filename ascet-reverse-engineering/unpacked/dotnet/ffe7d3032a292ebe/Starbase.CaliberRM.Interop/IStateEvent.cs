using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430165-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IStateEvent : IEvent
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
	[DispId(1610744735)]
	[return: MarshalAs(UnmanagedType.BStr)]
	string toString();

	[DispId(1610744734)]
	CaliberObjectID SourceID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744734)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}
}
