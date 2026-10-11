using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430158-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class DiscussionMessageEventClass : IDiscussionMessageEvent, DiscussionMessageEvent
{
	[DispId(1610744695)]
	public virtual extern bool OriginatedInSession
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744695)]
		get;
	}

	[DispId(1610744702)]
	public virtual extern CaliberObjectID AssociatedObjectID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744702)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744703)]
	public virtual extern CaliberObjectID SourceID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744703)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744696)]
	public virtual extern bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744704)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string toString();
}
