using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("1043017A-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
public class IntegrationManagerClass : IIntegrationManager, IntegrationManager
{
	[DispId(1610744134)]
	public virtual extern CaliberObjectCache Cache
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

	[DispId(1610744757)]
	public virtual extern Collection All
	{
		[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
		[DispId(1610744757)]
		[return: MarshalAs(UnmanagedType.Interface)]
		get;
	}

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744135)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern CaliberObject get([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID oid);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744136)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Collection getAll([In][MarshalAs(UnmanagedType.Interface)] Collection caliberObjectIDs);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744137)]
	public virtual extern void Remove([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID oid);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744138)]
	public virtual extern void modify([In][MarshalAs(UnmanagedType.Interface)] MutableCaliberObject obj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744758)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern trace createTrace1([In][MarshalAs(UnmanagedType.BStr)] string fromIntegrationName, [In][MarshalAs(UnmanagedType.BStr)] string fromIntegrationObjID, [In][MarshalAs(UnmanagedType.BStr)] string toIntegrationName, [In][MarshalAs(UnmanagedType.BStr)] string toIntegrationObjID);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744759)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern Integration getIntegrationByName([In][MarshalAs(UnmanagedType.BStr)] string systemName);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744760)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern trace createTrace3([In][MarshalAs(UnmanagedType.Interface)] Requirement internalParticipant, [In] bool traceFromInternalObj, [In][MarshalAs(UnmanagedType.Interface)] IntegrationObject integrationObj);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744761)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern trace createTrace2([In][MarshalAs(UnmanagedType.Interface)] Requirement internalParticipant, [In] bool traceFromInternalObj, [In][MarshalAs(UnmanagedType.BStr)] string integrName, [In][MarshalAs(UnmanagedType.BStr)] string objectID);
}
