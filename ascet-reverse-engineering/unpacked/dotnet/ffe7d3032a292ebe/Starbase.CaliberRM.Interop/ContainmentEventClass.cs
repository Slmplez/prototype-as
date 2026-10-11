using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430154-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class ContainmentEventClass : IContainmentEvent, ContainmentEvent
{
	[DispId(1610744695)]
	public virtual extern bool OriginatedInSession
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744695)]
		get;
	}

	[DispId(1610744698)]
	public virtual extern CaliberObjectID ChildObjectID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744698)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744697)]
	public virtual extern CaliberObjectID ParentObjectID
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744697)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744696)]
	public virtual extern bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744699)]
	[return: MarshalAs(UnmanagedType.BStr)]
	public virtual extern string toString();
}
