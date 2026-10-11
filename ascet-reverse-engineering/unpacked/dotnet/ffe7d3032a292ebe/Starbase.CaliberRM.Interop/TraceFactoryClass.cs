using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("104300FA-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
[TypeLibType(2)]
public class TraceFactoryClass : ITraceFactory, TraceFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744547)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern trace Create([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID objTraceFromID, [In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID objTraceToID, [In] int remoteTraceID, [In] bool bSuspect, [In][MarshalAs(UnmanagedType.Interface)] Session sessn);

	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744548)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern trace Create1([In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID objTraceFromID, [In][MarshalAs(UnmanagedType.Interface)] CaliberObjectID objTraceToID, [In][MarshalAs(UnmanagedType.Interface)] Session sessn);
}
