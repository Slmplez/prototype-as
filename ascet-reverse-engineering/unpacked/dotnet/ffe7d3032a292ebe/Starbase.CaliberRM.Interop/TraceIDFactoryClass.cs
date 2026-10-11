using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[TypeLibType(2)]
[ClassInterface(0)]
[Guid("10430100-72AE-11D5-B316-0800309CC2CE")]
public class TraceIDFactoryClass : ITraceIDFactory, TraceIDFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744549)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern traceID Create([In] int idNum);
}
