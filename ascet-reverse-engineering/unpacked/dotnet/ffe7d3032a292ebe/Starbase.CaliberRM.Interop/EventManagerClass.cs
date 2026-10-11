using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043015C-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class EventManagerClass : IEventManager, EventManager
{
	[DispId(1610744711)]
	public virtual extern EventSource EventSource
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744711)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744708)]
	public virtual extern bool EventSourceEnabled
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744708)]
		get;
	}

	[DispId(1610744712)]
	public virtual extern LocalEventSource LocalEventSource
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744712)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744710)]
	public virtual extern EventSource RemoteEventSource
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744710)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744709)]
	public virtual extern bool RemoteEventSourceEnabled
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744709)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744713)]
	public virtual extern void destroyRemoteEventSource();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744714)]
	public virtual extern void destroyEventSource();
}
