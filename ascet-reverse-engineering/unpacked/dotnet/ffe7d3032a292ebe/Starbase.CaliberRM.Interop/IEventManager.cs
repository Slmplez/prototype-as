using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("1043015B-72AE-11D5-B316-0800309CC2CE")]
public interface IEventManager
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744713)]
	void destroyRemoteEventSource();

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744714)]
	void destroyEventSource();

	[DispId(1610744711)]
	EventSource EventSource
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744711)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744708)]
	bool EventSourceEnabled
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744708)]
		get;
	}

	[DispId(1610744712)]
	LocalEventSource LocalEventSource
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744712)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744710)]
	EventSource RemoteEventSource
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744710)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[DispId(1610744709)]
	bool RemoteEventSourceEnabled
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744709)]
		get;
	}
}
