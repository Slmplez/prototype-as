using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("10430179-72AE-11D5-B316-0800309CC2CE")]
public interface IIntegrationManager : IMutableCaliberObjectManager
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
	[DispId(1610744758)]
	[return: MarshalAs(UnmanagedType.Interface)]
	trace createTrace1([In][MarshalAs(UnmanagedType.BStr)] string fromIntegrationName, [In][MarshalAs(UnmanagedType.BStr)] string fromIntegrationObjID, [In][MarshalAs(UnmanagedType.BStr)] string toIntegrationName, [In][MarshalAs(UnmanagedType.BStr)] string toIntegrationObjID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744759)]
	[return: MarshalAs(UnmanagedType.Interface)]
	Integration getIntegrationByName([In][MarshalAs(UnmanagedType.BStr)] string systemName);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744760)]
	[return: MarshalAs(UnmanagedType.Interface)]
	trace createTrace3([In][MarshalAs(UnmanagedType.Interface)] Requirement internalParticipant, [In] bool traceFromInternalObj, [In][MarshalAs(UnmanagedType.Interface)] IntegrationObject integrationObj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744761)]
	[return: MarshalAs(UnmanagedType.Interface)]
	trace createTrace2([In][MarshalAs(UnmanagedType.Interface)] Requirement internalParticipant, [In] bool traceFromInternalObj, [In][MarshalAs(UnmanagedType.BStr)] string integrName, [In][MarshalAs(UnmanagedType.BStr)] string objectID);

	[DispId(1610744757)]
	Collection All
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744757)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}
}
