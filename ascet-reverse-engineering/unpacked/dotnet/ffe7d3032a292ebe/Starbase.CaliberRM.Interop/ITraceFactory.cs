using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(4160)]
[Guid("104300F9-72AE-11D5-B316-0800309CC2CE")]
public interface ITraceFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744547)]
	[return: MarshalAs(UnmanagedType.Interface)]
	trace Create([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID objTraceFromID, [In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID objTraceToID, [In] int remoteTraceID, [In] bool bSuspect, [In][MarshalAs(UnmanagedType.Interface)] Session sessn);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744548)]
	[return: MarshalAs(UnmanagedType.Interface)]
	trace Create1([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID objTraceFromID, [In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID objTraceToID, [In][MarshalAs(UnmanagedType.Interface)] Session sessn);
}
