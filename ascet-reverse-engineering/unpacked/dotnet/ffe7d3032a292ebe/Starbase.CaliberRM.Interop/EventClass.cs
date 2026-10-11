using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430152-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class EventClass : IEvent, Event
{
	[DispId(1610744695)]
	public virtual extern bool OriginatedInSession
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744695)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744696)]
	public virtual extern bool equals([In][MarshalAs(UnmanagedType.Struct)] object obj);
}
