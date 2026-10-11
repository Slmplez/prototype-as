using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104301B7-72AE-11D5-B316-0800309CC2CE")]
[TypeLibType(4160)]
public interface IXGenericObjectManager : ICaliberObjectManager
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
	[DispId(1610744808)]
	[return: MarshalAs(UnmanagedType.Interface)]
	trace createRBTFileTrace([In][MarshalAs(UnmanagedType.Interface)] Requirement internalParticipant, [In] bool traceFromInternalObj, [In][MarshalAs(UnmanagedType.BStr)] string sName, [In][MarshalAs(UnmanagedType.BStr)] string sPath);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744809)]
	[return: MarshalAs(UnmanagedType.Interface)]
	trace createSCMFileTrace([In][MarshalAs(UnmanagedType.Interface)] Requirement internalParticipant, [In] bool traceFromInternalObj, [In][MarshalAs(UnmanagedType.BStr)] string sName, [In][MarshalAs(UnmanagedType.BStr)] string sPath, [In][MarshalAs(UnmanagedType.BStr)] string sVendorName);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744810)]
	[return: MarshalAs(UnmanagedType.Interface)]
	trace createFileTrace([In][MarshalAs(UnmanagedType.Interface)] Requirement internalParticipant, [In] bool traceFromInternalObj, [In][MarshalAs(UnmanagedType.BStr)] string sName, [In][MarshalAs(UnmanagedType.BStr)] string sPath);
}
