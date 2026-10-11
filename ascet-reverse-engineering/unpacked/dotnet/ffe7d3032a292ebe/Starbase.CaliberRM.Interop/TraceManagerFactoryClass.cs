using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[Guid("10430104-72AE-11D5-B316-0800309CC2CE")]
[ClassInterface(0)]
[TypeLibType(2)]
public class TraceManagerFactoryClass : ITraceManagerFactory, TraceManagerFactory
{
	[MethodImpl(MethodImplOptions.InternalCall, MethodCodeType = MethodCodeType.Runtime)]
	[DispId(1610744556)]
	[return: MarshalAs(UnmanagedType.Interface)]
	public virtual extern TraceManager Create([In][MarshalAs(UnmanagedType.Interface)] Session caliberSession, [In][MarshalAs(UnmanagedType.Interface)] CaliberObjectCache objectCache);
}
