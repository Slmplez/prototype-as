using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("10430101-72AE-11D5-B316-0800309CC2CE")]
public interface ITraceManager : ILockableCaliberObjectManager
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744135)]
	[return: MarshalAs(UnmanagedType.Interface)]
	new CaliberObject get([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID oid);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744136)]
	[return: MarshalAs(UnmanagedType.Interface)]
	new Collection getAll([In][MarshalAs(UnmanagedType.Interface)] Collection caliberObjectIDs);

	[DispId(1610744134)]
	new CaliberObjectCache Cache
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744134)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744134)]
		[param: In]
		[param: MarshalAs(UnmanagedType.Interface)]
		set;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744137)]
	new void Remove([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID oid);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744138)]
	new void modify([In][MarshalAs(UnmanagedType.Interface)] MutableCaliberObject obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744371)]
	new void @lock([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID oid);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744372)]
	new void unlock([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID oid);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744550)]
	[return: MarshalAs(UnmanagedType.Interface)]
	trace createTrace1([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID traceFrom, [In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID traceTo, [In] bool bSuspect);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744551)]
	[return: MarshalAs(UnmanagedType.Interface)]
	trace get([In] int traceIDNumber);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744552)]
	void deleteTrace([In][MarshalAs(UnmanagedType.Interface)] trace traceToDelete);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744553)]
	void setTraceSuspectStatus2([In][MarshalAs(UnmanagedType.Interface)] trace trace, [In] bool bSuspect);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744554)]
	void setTraceSuspectStatus1([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID traceID, [In] bool bSuspect);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744555)]
	[return: MarshalAs(UnmanagedType.Interface)]
	trace createTrace2([In][MarshalAs(UnmanagedType.Interface)] CaliberObject traceFrom, [In][MarshalAs(UnmanagedType.Interface)] CaliberObject traceTo, [In] bool bSuspect);
}
